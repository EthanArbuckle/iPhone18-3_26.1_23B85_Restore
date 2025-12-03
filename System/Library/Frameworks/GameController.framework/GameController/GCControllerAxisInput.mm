@interface GCControllerAxisInput
- (BOOL)_setValue:(float)value queue:(id)queue;
- (BOOL)isAnalog;
- (GCControllerAxisInput)initWithCollection:(id)collection horizontal:(BOOL)horizontal;
- (float)value;
- (id)debugDescription;
- (id)description;
- (id)localizedName;
- (id)unmappedLocalizedName;
- (void)setMinValue:(float)value andMaxValue:(float)maxValue;
- (void)setValue:(float)value;
- (void)value;
@end

@implementation GCControllerAxisInput

- (GCControllerAxisInput)initWithCollection:(id)collection horizontal:(BOOL)horizontal
{
  horizontalCopy = horizontal;
  collectionCopy = collection;
  v20.receiver = self;
  v20.super_class = GCControllerAxisInput;
  v7 = [(GCControllerElement *)&v20 init];
  v8 = v7;
  if (v7)
  {
    [(GCControllerElement *)v7 setCollection:collectionCopy];
    v8->_horizontal = horizontalCopy;
    v9 = @"Y Axis";
    if (horizontalCopy)
    {
      v9 = @"X Axis";
    }

    v10 = MEMORY[0x1E696AD60];
    v11 = v9;
    v12 = [v10 alloc];
    primaryAlias = [collectionCopy primaryAlias];
    v14 = [v12 initWithString:primaryAlias];

    [v14 appendString:@" "];
    [v14 appendString:v11];

    [(GCControllerElement *)v8 setPrimaryAlias:v14];
    v15 = [[_GCControllerAxisButtonInput alloc] initWithAxis:v8 positive:0];
    negative = v8->_negative;
    v8->_negative = &v15->super;

    v17 = [[_GCControllerAxisButtonInput alloc] initWithAxis:v8 positive:1];
    positive = v8->_positive;
    v8->_positive = &v17->super;

    v8->_minValue = -1.0;
    v8->_maxValue = 1.0;
  }

  return v8;
}

- (void)setMinValue:(float)value andMaxValue:(float)maxValue
{
  if (value < maxValue)
  {
    self->_minValue = value;
    self->_maxValue = maxValue;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  primaryAlias = [(GCControllerElement *)self primaryAlias];
  [(GCControllerAxisInput *)self value];
  v6 = [v3 stringWithFormat:@"%@ (%+.3f)", primaryAlias, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCControllerAxisInput *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (BOOL)isAnalog
{
  collection = [(GCControllerElement *)self collection];
  isAnalog = [collection isAnalog];

  return isAnalog;
}

- (BOOL)_setValue:(float)value queue:(id)queue
{
  v44 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  selfCopy = self;
  v8 = queueCopy;
  value = selfCopy->_value;
  if (value != value)
  {
    v10 = _gc_log_signpost();
    device = [(GCControllerElement *)selfCopy device];
    primaryAlias = [(GCControllerElement *)selfCopy primaryAlias];
    device2 = [(GCControllerElement *)selfCopy device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    v16 = v15;

    v17 = _gc_log_signpost();
    LODWORD(physicalInputProfile) = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

    if (physicalInputProfile && os_signpost_enabled(v10))
    {
      *block = 134218755;
      *&block[4] = device;
      *&block[12] = 2117;
      *&block[14] = primaryAlias;
      *&block[22] = 2048;
      v39 = v16;
      LOWORD(v40) = 2053;
      *(&v40 + 2) = value;
      _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Axis.value.set", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", block, 0x2Au);
    }

    [(GCControllerAxisInput *)selfCopy minValue];
    v19 = v18;
    [(GCControllerAxisInput *)selfCopy maxValue];
    v21 = clamp(value, v19, v20);
    selfCopy->_value = v21;
    [(GCControllerAxisInput *)selfCopy minValue];
    LODWORD(v19) = v22;
    [(GCControllerAxisInput *)selfCopy maxValue];
    *&v19 = (-(v23 - (value * 2.0)) - *&v19) / (v23 - *&v19);
    LODWORD(v24) = LODWORD(v19);
    [(GCControllerButtonInput *)selfCopy->_negative _setValue:v8 queue:v24];
    LODWORD(v25) = LODWORD(v19);
    [(GCControllerButtonInput *)selfCopy->_positive _setValue:v8 queue:v25];
    v26 = _Block_copy(selfCopy->_valueChangedHandler);
    if (v26)
    {
      v27 = os_signpost_id_generate(v10);
      v28 = _gc_log_signpost();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

      if (v29)
      {
        v34 = v10;
        v35 = v34;
        if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          log = v34;
          v36 = os_signpost_enabled(v34);
          v35 = log;
          if (v36)
          {
            *block = 134218755;
            *&block[4] = device;
            *&block[12] = 2117;
            *&block[14] = primaryAlias;
            *&block[22] = 2048;
            v39 = v16;
            LOWORD(v40) = 2053;
            *(&v40 + 2) = value;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v27, "GCPhysicalInputProfile.Axis.value.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", block, 0x2Au);
            v35 = log;
          }
        }
      }

      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __ControllerAxisInputSetValue_block_invoke;
      v39 = &unk_1E84192E0;
      v41 = v26;
      *&v40 = selfCopy;
      valueCopy = value;
      *(&v40 + 1) = v10;
      v42 = v27;
      dispatch_async(v8, block);
    }

    collection = [(GCControllerElement *)selfCopy collection];

    if (collection)
    {
      collection2 = [(GCControllerElement *)selfCopy collection];
      [collection2 _fireValueChangedWithQueue:v8];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return value != value;
}

- (float)value
{
  value = self->_value;
  v4 = _gc_log_signpost();
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    [(GCControllerAxisInput *)self value];
  }

  return value;
}

- (void)setValue:(float)value
{
  device = [(GCControllerElement *)self device];
  if (device)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = device;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    isSnapshot = [device isSnapshot];
    v6 = device;
    if ((isSnapshot & 1) == 0)
    {
      goto LABEL_9;
    }

    handlerQueue = [device handlerQueue];
  }

  else
  {
    handlerQueue = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  selfCopy = self;
  *&v11 = value;
  if ([(GCControllerAxisInput *)selfCopy _setValue:handlerQueue queue:v11])
  {
    [0 addObject:selfCopy];
  }

  v6 = device;
LABEL_9:
}

- (id)localizedName
{
  nameLocalizationKey = [(GCControllerElement *)self nameLocalizationKey];

  if (nameLocalizationKey)
  {
    v4 = MEMORY[0x1E696AEC0];
    nameLocalizationKey2 = [(GCControllerElement *)self nameLocalizationKey];
    v6 = _GCFConvertStringToLocalizedString();
    collection = [(GCControllerElement *)self collection];
    localizedName = [collection localizedName];
    localizedName2 = [v4 stringWithFormat:v6, localizedName];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GCControllerAxisInput;
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
    collection = [(GCControllerElement *)self collection];
    unmappedLocalizedName = [collection unmappedLocalizedName];
    unmappedLocalizedName2 = [v4 stringWithFormat:v6, unmappedLocalizedName];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GCControllerAxisInput;
    unmappedLocalizedName2 = [(GCControllerElement *)&v11 unmappedLocalizedName];
  }

  return unmappedLocalizedName2;
}

- (void)value
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _gc_log_signpost();
  if (os_signpost_enabled(v4))
  {
    device = [self device];
    primaryAlias = [self primaryAlias];
    device2 = [self device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    v11 = 134218755;
    v12 = device;
    v13 = 2117;
    v14 = primaryAlias;
    v15 = 2048;
    v16 = v9;
    v17 = 2053;
    v18 = a2;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Axis.value.read", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end