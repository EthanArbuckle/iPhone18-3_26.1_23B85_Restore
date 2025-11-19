@interface GCControllerDirectionPad
- (BOOL)_commitPendingValueOnQueue:(id)a3;
- (GCControllerDirectionPad)initWithDigital:(BOOL)a3 descriptionName:(id)a4;
- (id)debugDescription;
- (id)description;
- (int)getAndResetTimesPressed;
- (void)_fireValueChangedWithQueue:(id)a3;
- (void)setUnmappedLocalizedName:(id)a3;
- (void)setUnmappedNameLocalizationKey:(id)a3;
- (void)setValueForXAxis:(float)xAxis yAxis:(float)yAxis;
@end

@implementation GCControllerDirectionPad

- (GCControllerDirectionPad)initWithDigital:(BOOL)a3 descriptionName:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = GCControllerDirectionPad;
  v7 = [(GCControllerElement *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_nonAnalog = a3;
    if (v6)
    {
      v9 = [v6 copy];
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

- (void)_fireValueChangedWithQueue:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _gc_log_signpost();
  v6 = [(GCControllerElement *)self device];
  v7 = [(GCControllerElement *)self primaryAlias];
  v8 = [(GCControllerElement *)self device];
  v9 = [v8 physicalInputProfile];
  [v9 lastEventTimestamp];
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
        v33 = v6;
        v34 = 2117;
        v35 = v7;
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
    dispatch_async(v4, block);
  }

  v20 = self;
  v21 = fmaxf(fabsf(v13), fabsf(v15)) > 0.0019531;
  if (v20->_wasZeroed && v21)
  {
    ++v20->_timesPressed;
    v20->_wasZeroed = 0;
  }

  if (!v21)
  {
    v20->_wasZeroed = 1;
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
  v4 = [(GCControllerElement *)self primaryAlias];
  v5 = [(GCControllerDirectionPad *)self xAxis];
  [v5 value];
  v7 = v6;
  v8 = [(GCControllerDirectionPad *)self yAxis];
  [v8 value];
  v10 = [v3 stringWithFormat:@"%@ (x: %+.3f, y: %+.3f)", v4, *&v7, v9];

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

- (BOOL)_commitPendingValueOnQueue:(id)a3
{
  v3 = self;
  xAxis = self->_xAxis;
  v5 = a3;
  LOBYTE(xAxis) = [(GCControllerElement *)xAxis _commitPendingValueOnQueue:v5];
  LOBYTE(v3) = [(GCControllerElement *)v3->_yAxis _commitPendingValueOnQueue:v5];

  return (xAxis | v3) & 1;
}

- (void)setValueForXAxis:(float)xAxis yAxis:(float)yAxis
{
  v20 = [(GCControllerElement *)self device];
  if (v20)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v20;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_10;
    }

    v9 = [v20 isSnapshot];
    v8 = v20;
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = [v20 handlerQueue];
  }

  else
  {
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v12 = self;
  v13 = v10;
  v14 = [(GCControllerDirectionPad *)v12 xAxis];
  *&v15 = xAxis;
  v16 = [v14 _setValue:v13 queue:v15];

  v17 = [(GCControllerDirectionPad *)v12 yAxis];
  *&v18 = yAxis;
  v19 = [v17 _setValue:v13 queue:v18];

  if ((v16 & 1) != 0 || v19)
  {
    [0 addObject:v12];
  }

  v8 = v20;
LABEL_10:
}

- (int)getAndResetTimesPressed
{
  timesPressed = self->_timesPressed;
  self->_timesPressed = 0;
  return timesPressed;
}

- (void)setUnmappedLocalizedName:(id)a3
{
  v35.receiver = self;
  v35.super_class = GCControllerDirectionPad;
  [(GCControllerElement *)&v35 setUnmappedLocalizedName:a3];
  v4 = [(GCControllerElement *)self unmappedLocalizedName];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = _GCFConvertStringToLocalizedString();
    v7 = [(GCControllerElement *)self unmappedLocalizedName];
    v8 = [v5 stringWithFormat:v6, v7];
    v9 = [(GCControllerDirectionPad *)self up];
    [v9 setUnmappedLocalizedName:v8];

    v10 = MEMORY[0x1E696AEC0];
    v11 = _GCFConvertStringToLocalizedString();
    v12 = [(GCControllerElement *)self unmappedLocalizedName];
    v13 = [v10 stringWithFormat:v11, v12];
    v14 = [(GCControllerDirectionPad *)self down];
    [v14 setUnmappedLocalizedName:v13];

    v15 = MEMORY[0x1E696AEC0];
    v16 = _GCFConvertStringToLocalizedString();
    v17 = [(GCControllerElement *)self unmappedLocalizedName];
    v18 = [v15 stringWithFormat:v16, v17];
    v19 = [(GCControllerDirectionPad *)self left];
    [v19 setUnmappedLocalizedName:v18];

    v20 = MEMORY[0x1E696AEC0];
    v21 = _GCFConvertStringToLocalizedString();
    v22 = [(GCControllerElement *)self unmappedLocalizedName];
    v23 = [v20 stringWithFormat:v21, v22];
    v24 = [(GCControllerDirectionPad *)self right];
    [v24 setUnmappedLocalizedName:v23];

    v25 = MEMORY[0x1E696AEC0];
    v26 = _GCFConvertStringToLocalizedString();
    v27 = [(GCControllerElement *)self unmappedLocalizedName];
    v28 = [v25 stringWithFormat:v26, v27];
    v29 = [(GCControllerDirectionPad *)self xAxis];
    [v29 setUnmappedLocalizedName:v28];

    v30 = MEMORY[0x1E696AEC0];
    v31 = _GCFConvertStringToLocalizedString();
    v32 = [(GCControllerElement *)self unmappedLocalizedName];
    v33 = [v30 stringWithFormat:v31, v32];
    v34 = [(GCControllerDirectionPad *)self yAxis];
    [v34 setUnmappedLocalizedName:v33];
  }
}

- (void)setUnmappedNameLocalizationKey:(id)a3
{
  v11.receiver = self;
  v11.super_class = GCControllerDirectionPad;
  [(GCControllerElement *)&v11 setUnmappedNameLocalizationKey:a3];
  v4 = [(GCControllerElement *)self unmappedNameLocalizationKey];

  if (v4)
  {
    v5 = [(GCControllerDirectionPad *)self up];
    [v5 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_UP"];

    v6 = [(GCControllerDirectionPad *)self down];
    [v6 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_DOWN"];

    v7 = [(GCControllerDirectionPad *)self left];
    [v7 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_LEFT"];

    v8 = [(GCControllerDirectionPad *)self right];
    [v8 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_RIGHT"];

    v9 = [(GCControllerDirectionPad *)self xAxis];
    [v9 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_X_AXIS"];

    v10 = [(GCControllerDirectionPad *)self yAxis];
    [v10 setUnmappedNameLocalizationKey:@"DIRECTION_PAD_Y_AXIS"];
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