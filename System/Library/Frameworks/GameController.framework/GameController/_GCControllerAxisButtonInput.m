@interface _GCControllerAxisButtonInput
- (BOOL)_commitPendingValueOnQueue:(id)a3;
- (BOOL)_setValueFromAxisButton:(float)a3 queue:(id)a4;
- (BOOL)isAnalog;
- (GCControllerAxisInput)axis;
- (_GCControllerAxisButtonInput)initWithAxis:(id)a3 positive:(BOOL)a4;
- (float)value;
- (id)collection;
- (id)localizedName;
- (id)unmappedLocalizedName;
- (void)_setPendingValue:(float)a3;
@end

@implementation _GCControllerAxisButtonInput

- (_GCControllerAxisButtonInput)initWithAxis:(id)a3 positive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17.receiver = self;
  v17.super_class = _GCControllerAxisButtonInput;
  v7 = [(GCControllerElement *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_axis, v6);
    v8->_positive = v4;
    v9 = [v6 collection];
    v10 = [v9 primaryAlias];

    v11 = [v6 isHorizontal];
    v12 = @"Down";
    if (v4)
    {
      v12 = @"Up";
    }

    v13 = @"Right";
    if (!v4)
    {
      v13 = @"Left";
    }

    if (v11)
    {
      v12 = v13;
    }

    v14 = v12;
    v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v10];
    [v15 appendString:@" "];
    [v15 appendString:v14];
    [(GCControllerElement *)v8 setPrimaryAlias:v15];
  }

  return v8;
}

- (id)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v3 = [WeakRetained collection];

  return v3;
}

- (BOOL)isAnalog
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v3 = [WeakRetained isAnalog];

  return v3;
}

- (BOOL)_setValueFromAxisButton:(float)a3 queue:(id)a4
{
  positive = self->_positive;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v9 = WeakRetained;
  *&v10 = -a3;
  if (positive)
  {
    *&v10 = a3;
  }

  v11 = [WeakRetained _setValue:v7 queue:v10];

  return v11;
}

- (void)_setPendingValue:(float)a3
{
  v5 = -a3;
  if (self->_positive)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v8 = [WeakRetained updatePending];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_axis);
    [v9 pendingValue];
    v11 = fabsf(v10);

    if (fabsf(a3) <= v11)
    {
      return;
    }

    v15 = objc_loadWeakRetained(&self->_axis);
    *&v12 = v6;
    [v15 setPendingValue:v12];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_axis);
    *&v14 = v6;
    [v13 setPendingValue:v14];

    v15 = objc_loadWeakRetained(&self->_axis);
    [v15 setUpdatePending:1];
  }
}

- (BOOL)_commitPendingValueOnQueue:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_axis);
  v6 = [WeakRetained _commitPendingValueOnQueue:v4];

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
  v3 = [(GCControllerElement *)self nameLocalizationKey];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(GCControllerElement *)self nameLocalizationKey];
    v6 = _GCFConvertStringToLocalizedString();
    v7 = [(_GCControllerAxisButtonInput *)self collection];
    v8 = [v7 localizedName];
    v9 = [v4 stringWithFormat:v6, v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _GCControllerAxisButtonInput;
    v9 = [(GCControllerElement *)&v11 localizedName];
  }

  return v9;
}

- (id)unmappedLocalizedName
{
  v3 = [(GCControllerElement *)self unmappedNameLocalizationKey];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(GCControllerElement *)self unmappedNameLocalizationKey];
    v6 = _GCFConvertStringToLocalizedString();
    v7 = [(_GCControllerAxisButtonInput *)self collection];
    v8 = [v7 unmappedLocalizedName];
    v9 = [v4 stringWithFormat:v6, v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _GCControllerAxisButtonInput;
    v9 = [(GCControllerElement *)&v11 unmappedLocalizedName];
  }

  return v9;
}

- (GCControllerAxisInput)axis
{
  WeakRetained = objc_loadWeakRetained(&self->_axis);

  return WeakRetained;
}

@end