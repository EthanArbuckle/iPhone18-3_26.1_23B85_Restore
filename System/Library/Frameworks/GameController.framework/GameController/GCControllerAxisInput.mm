@interface GCControllerAxisInput
- (BOOL)_setValue:(float)a3 queue:(id)a4;
- (BOOL)isAnalog;
- (GCControllerAxisInput)initWithCollection:(id)a3 horizontal:(BOOL)a4;
- (float)value;
- (id)debugDescription;
- (id)description;
- (id)localizedName;
- (id)unmappedLocalizedName;
- (void)setMinValue:(float)a3 andMaxValue:(float)a4;
- (void)setValue:(float)value;
- (void)value;
@end

@implementation GCControllerAxisInput

- (GCControllerAxisInput)initWithCollection:(id)a3 horizontal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v20.receiver = self;
  v20.super_class = GCControllerAxisInput;
  v7 = [(GCControllerElement *)&v20 init];
  v8 = v7;
  if (v7)
  {
    [(GCControllerElement *)v7 setCollection:v6];
    v8->_horizontal = v4;
    v9 = @"Y Axis";
    if (v4)
    {
      v9 = @"X Axis";
    }

    v10 = MEMORY[0x1E696AD60];
    v11 = v9;
    v12 = [v10 alloc];
    v13 = [v6 primaryAlias];
    v14 = [v12 initWithString:v13];

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

- (void)setMinValue:(float)a3 andMaxValue:(float)a4
{
  if (a3 < a4)
  {
    self->_minValue = a3;
    self->_maxValue = a4;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCControllerElement *)self primaryAlias];
  [(GCControllerAxisInput *)self value];
  v6 = [v3 stringWithFormat:@"%@ (%+.3f)", v4, v5];

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
  v2 = [(GCControllerElement *)self collection];
  v3 = [v2 isAnalog];

  return v3;
}

- (BOOL)_setValue:(float)a3 queue:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self;
  v8 = v6;
  value = v7->_value;
  if (value != a3)
  {
    v10 = _gc_log_signpost();
    v11 = [(GCControllerElement *)v7 device];
    v12 = [(GCControllerElement *)v7 primaryAlias];
    v13 = [(GCControllerElement *)v7 device];
    v14 = [v13 physicalInputProfile];
    [v14 lastEventTimestamp];
    v16 = v15;

    v17 = _gc_log_signpost();
    LODWORD(v14) = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

    if (v14 && os_signpost_enabled(v10))
    {
      *block = 134218755;
      *&block[4] = v11;
      *&block[12] = 2117;
      *&block[14] = v12;
      *&block[22] = 2048;
      v39 = v16;
      LOWORD(v40) = 2053;
      *(&v40 + 2) = a3;
      _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Axis.value.set", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", block, 0x2Au);
    }

    [(GCControllerAxisInput *)v7 minValue];
    v19 = v18;
    [(GCControllerAxisInput *)v7 maxValue];
    v21 = clamp(a3, v19, v20);
    v7->_value = v21;
    [(GCControllerAxisInput *)v7 minValue];
    LODWORD(v19) = v22;
    [(GCControllerAxisInput *)v7 maxValue];
    *&v19 = (-(v23 - (a3 * 2.0)) - *&v19) / (v23 - *&v19);
    LODWORD(v24) = LODWORD(v19);
    [(GCControllerButtonInput *)v7->_negative _setValue:v8 queue:v24];
    LODWORD(v25) = LODWORD(v19);
    [(GCControllerButtonInput *)v7->_positive _setValue:v8 queue:v25];
    v26 = _Block_copy(v7->_valueChangedHandler);
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
            *&block[4] = v11;
            *&block[12] = 2117;
            *&block[14] = v12;
            *&block[22] = 2048;
            v39 = v16;
            LOWORD(v40) = 2053;
            *(&v40 + 2) = a3;
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
      *&v40 = v7;
      v43 = a3;
      *(&v40 + 1) = v10;
      v42 = v27;
      dispatch_async(v8, block);
    }

    v30 = [(GCControllerElement *)v7 collection];

    if (v30)
    {
      v31 = [(GCControllerElement *)v7 collection];
      [v31 _fireValueChangedWithQueue:v8];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return value != a3;
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
  v12 = [(GCControllerElement *)self device];
  if (v12)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v12;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = [v12 isSnapshot];
    v6 = v12;
    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = [v12 handlerQueue];
  }

  else
  {
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  v10 = self;
  *&v11 = value;
  if ([(GCControllerAxisInput *)v10 _setValue:v8 queue:v11])
  {
    [0 addObject:v10];
  }

  v6 = v12;
LABEL_9:
}

- (id)localizedName
{
  v3 = [(GCControllerElement *)self nameLocalizationKey];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(GCControllerElement *)self nameLocalizationKey];
    v6 = _GCFConvertStringToLocalizedString();
    v7 = [(GCControllerElement *)self collection];
    v8 = [v7 localizedName];
    v9 = [v4 stringWithFormat:v6, v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GCControllerAxisInput;
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
    v7 = [(GCControllerElement *)self collection];
    v8 = [v7 unmappedLocalizedName];
    v9 = [v4 stringWithFormat:v6, v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GCControllerAxisInput;
    v9 = [(GCControllerElement *)&v11 unmappedLocalizedName];
  }

  return v9;
}

- (void)value
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _gc_log_signpost();
  if (os_signpost_enabled(v4))
  {
    v5 = [a1 device];
    v6 = [a1 primaryAlias];
    v7 = [a1 device];
    v8 = [v7 physicalInputProfile];
    [v8 lastEventTimestamp];
    v11 = 134218755;
    v12 = v5;
    v13 = 2117;
    v14 = v6;
    v15 = 2048;
    v16 = v9;
    v17 = 2053;
    v18 = a2;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Axis.value.read", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end