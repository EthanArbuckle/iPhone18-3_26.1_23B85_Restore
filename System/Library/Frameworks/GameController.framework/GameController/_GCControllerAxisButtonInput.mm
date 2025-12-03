@interface _GCControllerAxisButtonInput
- (BOOL)_commitPendingValueOnQueue:(id)queue;
- (BOOL)_setValueFromAxisButton:(float)button queue:(id)queue;
- (BOOL)isAnalog;
- (GCControllerAxisInput)axis;
- (_GCControllerAxisButtonInput)initWithAxis:(id)axis positive:(BOOL)positive;
- (float)value;
- (id)collection;
- (id)localizedName;
- (id)unmappedLocalizedName;
- (void)_setPendingValue:(float)value;
@end

@implementation _GCControllerAxisButtonInput

- (_GCControllerAxisButtonInput)initWithAxis:(id)axis positive:(BOOL)positive
{
  positiveCopy = positive;
  axisCopy = axis;
  v17.receiver = self;
  v17.super_class = _GCControllerAxisButtonInput;
  v7 = [(GCControllerElement *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_axis, axisCopy);
    v8->_positive = positiveCopy;
    collection = [axisCopy collection];
    primaryAlias = [collection primaryAlias];

    isHorizontal = [axisCopy isHorizontal];
    v12 = @"Down";
    if (positiveCopy)
    {
      v12 = @"Up";
    }

    v13 = @"Right";
    if (!positiveCopy)
    {
      v13 = @"Left";
    }

    if (isHorizontal)
    {
      v12 = v13;
    }

    v14 = v12;
    v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:primaryAlias];
    [v15 appendString:@" "];
    [v15 appendString:v14];
    [(GCControllerElement *)v8 setPrimaryAlias:v15];
  }

  return v8;
}

- (id)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  collection = [WeakRetained collection];

  return collection;
}

- (BOOL)isAnalog
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  isAnalog = [WeakRetained isAnalog];

  return isAnalog;
}

- (BOOL)_setValueFromAxisButton:(float)button queue:(id)queue
{
  positive = self->_positive;
  queueCopy = queue;
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v9 = WeakRetained;
  *&v10 = -button;
  if (positive)
  {
    *&v10 = button;
  }

  v11 = [WeakRetained _setValue:queueCopy queue:v10];

  return v11;
}

- (void)_setPendingValue:(float)value
{
  v5 = -value;
  if (self->_positive)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = v5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_axis);
  updatePending = [WeakRetained updatePending];

  if (updatePending)
  {
    v9 = objc_loadWeakRetained(&self->_axis);
    [v9 pendingValue];
    v11 = fabsf(v10);

    if (fabsf(value) <= v11)
    {
      return;
    }

    v15 = objc_loadWeakRetained(&self->_axis);
    *&v12 = valueCopy;
    [v15 setPendingValue:v12];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_axis);
    *&v14 = valueCopy;
    [v13 setPendingValue:v14];

    v15 = objc_loadWeakRetained(&self->_axis);
    [v15 setUpdatePending:1];
  }
}

- (BOOL)_commitPendingValueOnQueue:(id)queue
{
  queueCopy = queue;
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v6 = [WeakRetained _commitPendingValueOnQueue:queueCopy];

  return v6;
}

- (float)value
{
  positive = self->_positive;
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  [WeakRetained value];
  if (positive)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return fmaxf(v5, 0.0);
}

- (id)localizedName
{
  nameLocalizationKey = [(GCControllerElement *)self nameLocalizationKey];

  if (nameLocalizationKey)
  {
    v4 = MEMORY[0x1E696AEC0];
    nameLocalizationKey2 = [(GCControllerElement *)self nameLocalizationKey];
    v6 = _GCFConvertStringToLocalizedString();
    collection = [(_GCControllerAxisButtonInput *)self collection];
    localizedName = [collection localizedName];
    localizedName2 = [v4 stringWithFormat:v6, localizedName];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _GCControllerAxisButtonInput;
    localizedName2 = [(GCControllerElement *)&v11 localizedName];
  }

  return localizedName2;
}

- (id)unmappedLocalizedName
{
  unmappedNameLocalizationKey = [(GCControllerElement *)self unmappedNameLocalizationKey];

  if (unmappedNameLocalizationKey)
  {
    v4 = MEMORY[0x1E696AEC0];
    unmappedNameLocalizationKey2 = [(GCControllerElement *)self unmappedNameLocalizationKey];
    v6 = _GCFConvertStringToLocalizedString();
    collection = [(_GCControllerAxisButtonInput *)self collection];
    unmappedLocalizedName = [collection unmappedLocalizedName];
    unmappedLocalizedName2 = [v4 stringWithFormat:v6, unmappedLocalizedName];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _GCControllerAxisButtonInput;
    unmappedLocalizedName2 = [(GCControllerElement *)&v11 unmappedLocalizedName];
  }

  return unmappedLocalizedName2;
}

- (GCControllerAxisInput)axis
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);

  return WeakRetained;
}

@end