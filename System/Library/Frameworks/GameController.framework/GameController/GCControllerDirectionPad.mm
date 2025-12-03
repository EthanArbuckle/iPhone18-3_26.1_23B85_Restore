@interface GCControllerDirectionPad
- (BOOL)_commitPendingValueOnQueue:(id)queue;
- (GCControllerDirectionPad)initWithDigital:(BOOL)digital descriptionName:(id)name;
- (id)debugDescription;
- (id)description;
- (int)getAndResetTimesPressed;
- (void)_fireValueChangedWithQueue:(id)queue;
- (void)setUnmappedLocalizedName:(id)name;
- (void)setUnmappedNameLocalizationKey:(id)key;
- (void)setValueForXAxis:(float)xAxis yAxis:(float)yAxis;
@end

@implementation GCControllerDirectionPad

- (GCControllerDirectionPad)initWithDigital:(BOOL)digital descriptionName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = GCControllerDirectionPad;
  v7 = [(GCControllerElement *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_nonAnalog = digital;
    if (nameCopy)
    {
      v9 = [nameCopy copy];
      [(GCControllerElement *)v8 setPrimaryAlias:v9];
    }

    else
    {
      [(GCControllerElement *)v7 setPrimaryAlias:@"Direction Pad"];
    }

    v10 = [[GCControllerAxisInput alloc] initWithCollection:v8 horizontal:1];
    xAxis = v8->_xAxis;
    v8->_xAxis = v10;

    v12 = [[GCControllerAxisInput alloc] initWithCollection:v8 horizontal:0];
    yAxis = v8->_yAxis;
    v8->_yAxis = v12;

    v8->_wasZeroed = 1;
    v8->_timesPressed = 0;
  }

  return v8;
}

- (void)_fireValueChangedWithQueue:(id)queue
{
  v42 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v5 = _gc_log_signpost();
  device = [(GCControllerElement *)self device];
  primaryAlias = [(GCControllerElement *)self primaryAlias];
  device2 = [(GCControllerElement *)self device];
  physicalInputProfile = [device2 physicalInputProfile];
  [physicalInputProfile lastEventTimestamp];
  v11 = v10;

  [(GCControllerAxisInput *)self->_xAxis value];
  v13 = v12;
  [(GCControllerAxisInput *)self->_yAxis value];
  v15 = v14;
  v16 = _Block_copy(self->_valueChangedHandler);
  if (v16)
  {
    v17 = os_signpost_id_generate(v5);
    v18 = _gc_log_signpost();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

    if (v19)
    {
      v24 = v5;
      v25 = v24;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 134219011;
        v33 = device;
        v34 = 2117;
        v35 = primaryAlias;
        v36 = 2048;
        v37 = v11;
        v38 = 2053;
        v39 = v13;
        v40 = 2053;
        v41 = v15;
        _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v17, "GCPhysicalInputProfile.DirectionPad.value.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: {x: %{sensitive}f, y: %{sensitive}f}}", buf, 0x34u);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__GCControllerDirectionPad__fireValueChangedWithQueue___block_invoke;
    block[3] = &unk_1E8419BE8;
    v28 = v16;
    block[4] = self;
    v30 = v13;
    v31 = v15;
    v27 = v5;
    v29 = v17;
    dispatch_async(queueCopy, block);
  }

  selfCopy = self;
  v21 = fmaxf(fabsf(v13), fabsf(v15)) > 0.0019531;
  if (selfCopy->_wasZeroed && v21)
  {
    ++selfCopy->_timesPressed;
    selfCopy->_wasZeroed = 0;
  }

  if (!v21)
  {
    selfCopy->_wasZeroed = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __55__GCControllerDirectionPad__fireValueChangedWithQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))(*(a1 + 64), *(a1 + 68));
  v3 = _gc_log_signpost();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    __55__GCControllerDirectionPad__fireValueChangedWithQueue___block_invoke_cold_1(a1);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  primaryAlias = [(GCControllerElement *)self primaryAlias];
  xAxis = [(GCControllerDirectionPad *)self xAxis];
  [xAxis value];
  v7 = v6;
  yAxis = [(GCControllerDirectionPad *)self yAxis];
  [yAxis value];
  v10 = [v3 stringWithFormat:@"%@ (x: %+.3f, y: %+.3f)", primaryAlias, *&v7, v9];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCControllerDirectionPad *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (BOOL)_commitPendingValueOnQueue:(id)queue
{
  selfCopy = self;
  xAxis = self->_xAxis;
  queueCopy = queue;
  LOBYTE(xAxis) = [(GCControllerElement *)xAxis _commitPendingValueOnQueue:queueCopy];
  LOBYTE(selfCopy) = [(GCControllerElement *)selfCopy->_yAxis _commitPendingValueOnQueue:queueCopy];

  return (xAxis | selfCopy) & 1;
}

- (void)setValueForXAxis:(float)xAxis yAxis:(float)yAxis
{
  device = [(GCControllerElement *)self device];
  if (device)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = device;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_10;
    }

    isSnapshot = [device isSnapshot];
    v8 = device;
    if ((isSnapshot & 1) == 0)
    {
      goto LABEL_10;
    }

    handlerQueue = [device handlerQueue];
  }

  else
  {
    handlerQueue = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  selfCopy = self;
  v13 = handlerQueue;
  xAxis = [(GCControllerDirectionPad *)selfCopy xAxis];
  *&v15 = xAxis;
  v16 = [xAxis _setValue:v13 queue:v15];

  yAxis = [(GCControllerDirectionPad *)selfCopy yAxis];
  *&v18 = yAxis;
  v19 = [yAxis _setValue:v13 queue:v18];

  if ((v16 & 1) != 0 || v19)
  {
    [0 addObject:selfCopy];
  }

  v8 = device;
LABEL_10:
}

- (int)getAndResetTimesPressed
{
  timesPressed = self->_timesPressed;
  self->_timesPressed = 0;
  return timesPressed;
}

- (void)setUnmappedLocalizedName:(id)name
{
  v35.receiver = self;
  v35.super_class = GCControllerDirectionPad;
  [(GCControllerElement *)&v35 setUnmappedLocalizedName:name];
  unmappedLocalizedName = [(GCControllerElement *)self unmappedLocalizedName];

  if (unmappedLocalizedName)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _GCFConvertStringToLocalizedString();
    unmappedLocalizedName2 = [(GCControllerElement *)self unmappedLocalizedName];
    v8 = [v5 stringWithFormat:v6, unmappedLocalizedName2];
    v9 = [(GCControllerDirectionPad *)self up];
    [v9 setUnmappedLocalizedName:v8];

    v10 = MEMORY[0x1E696AEC0];
    v11 = _GCFConvertStringToLocalizedString();
    unmappedLocalizedName3 = [(GCControllerElement *)self unmappedLocalizedName];
    v13 = [v10 stringWithFormat:v11, unmappedLocalizedName3];
    down = [(GCControllerDirectionPad *)self down];
    [down setUnmappedLocalizedName:v13];

    v15 = MEMORY[0x1E696AEC0];
    v16 = _GCFConvertStringToLocalizedString();
    unmappedLocalizedName4 = [(GCControllerElement *)self unmappedLocalizedName];
    v18 = [v15 stringWithFormat:v16, unmappedLocalizedName4];
    left = [(GCControllerDirectionPad *)self left];
    [left setUnmappedLocalizedName:v18];

    v20 = MEMORY[0x1E696AEC0];
    v21 = _GCFConvertStringToLocalizedString();
    unmappedLocalizedName5 = [(GCControllerElement *)self unmappedLocalizedName];
    v23 = [v20 stringWithFormat:v21, unmappedLocalizedName5];
    right = [(GCControllerDirectionPad *)self right];
    [right setUnmappedLocalizedName:v23];

    v25 = MEMORY[0x1E696AEC0];
    v26 = _GCFConvertStringToLocalizedString();
    unmappedLocalizedName6 = [(GCControllerElement *)self unmappedLocalizedName];
    v28 = [v25 stringWithFormat:v26, unmappedLocalizedName6];
    xAxis = [(GCControllerDirectionPad *)self xAxis];
    [xAxis setUnmappedLocalizedName:v28];

    v30 = MEMORY[0x1E696AEC0];
    v31 = _GCFConvertStringToLocalizedString();
    unmappedLocalizedName7 = [(GCControllerElement *)self unmappedLocalizedName];
    v33 = [v30 stringWithFormat:v31, unmappedLocalizedName7];
    yAxis = [(GCControllerDirectionPad *)self yAxis];
    [yAxis setUnmappedLocalizedName:v33];
  }
}

- (void)setUnmappedNameLocalizationKey:(id)key
{
  v11.receiver = self;
  v11.super_class = GCControllerDirectionPad;
  [(GCControllerElement *)&v11 setUnmappedNameLocalizationKey:key];
  unmappedNameLocalizationKey = [(GCControllerElement *)self unmappedNameLocalizationKey];

  if (unmappedNameLocalizationKey)
  {
    v5 = [(GCControllerDirectionPad *)self up];
    [v5 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_UP"];

    down = [(GCControllerDirectionPad *)self down];
    [down setUnmappedNameLocalizationKey:@"DIRECTION_PAD_DOWN"];

    left = [(GCControllerDirectionPad *)self left];
    [left setUnmappedNameLocalizationKey:@"DIRECTION_PAD_LEFT"];

    right = [(GCControllerDirectionPad *)self right];
    [right setUnmappedNameLocalizationKey:@"DIRECTION_PAD_RIGHT"];

    xAxis = [(GCControllerDirectionPad *)self xAxis];
    [xAxis setUnmappedNameLocalizationKey:@"DIRECTION_PAD_X_AXIS"];

    yAxis = [(GCControllerDirectionPad *)self yAxis];
    [yAxis setUnmappedNameLocalizationKey:@"DIRECTION_PAD_Y_AXIS"];
  }
}

void __55__GCControllerDirectionPad__fireValueChangedWithQueue___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v3, OS_SIGNPOST_INTERVAL_END, v4, "GCPhysicalInputProfile.DirectionPad.value.callback", "{}", v5, 2u);
  }
}

@end