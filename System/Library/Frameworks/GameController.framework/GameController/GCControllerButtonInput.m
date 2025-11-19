@interface GCControllerButtonInput
- (BOOL)_setTouched:(BOOL)a3 queue:(id)a4;
- (BOOL)_setValue:(float)a3 queue:(id)a4;
- (BOOL)isPressed;
- (BOOL)isTouched;
- (GCControllerButtonInput)initWithDescriptionName:(id)a3;
- (float)value;
- (id)debugDescription;
- (id)description;
- (int)getAndResetTimesPressed;
- (void)isPressed;
- (void)isTouched;
- (void)setDeadzone:(float)a3;
- (void)setValue:(float)value;
- (void)value;
@end

@implementation GCControllerButtonInput

- (GCControllerButtonInput)initWithDescriptionName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCControllerButtonInput;
  v5 = [(GCControllerElement *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 copy];
      [(GCControllerElement *)v6 setPrimaryAlias:v7];
    }

    else
    {
      [(GCControllerElement *)v5 setPrimaryAlias:@"Button"];
    }

    v6->_pressCounter = 0;
  }

  return v6;
}

- (BOOL)_setValue:(float)a3 queue:(id)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = clamp(a3, 0.0, 1.0);
  value = self->_value;
  if (value != v7)
  {
    v9 = _gc_log_signpost();
    v10 = [(GCControllerElement *)self device];
    v47 = [(GCControllerElement *)self primaryAlias];
    v11 = [(GCControllerElement *)self device];
    v12 = [v11 physicalInputProfile];
    [v12 lastEventTimestamp];
    v14 = v13;

    v15 = _gc_log_signpost();
    v16 = _gc_log_signpost();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      v34 = _gc_log_signpost();
      if (os_signpost_enabled(v34))
      {
        *buf = 134218755;
        v68 = v10;
        v69 = 2117;
        v70 = v47;
        v71 = 2048;
        v72 = v14;
        v73 = 2053;
        v74 = v7;
        _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Button.value.set", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", buf, 0x2Au);
      }
    }

    v18 = self->_value;
    deadzone = self->_deadzone;
    self->_value = v7;
    v20 = _Block_copy(self->_valueChangedHandler);
    v21 = _Block_copy(self->_touchedChangedHandler);
    v22 = _Block_copy(self->_pressedChangedHandler);
    if (v20)
    {
      v23 = os_signpost_id_generate(v9);
      v24 = _gc_log_signpost();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);

      if (v25)
      {
        v35 = v9;
        v36 = v35;
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          log = v35;
          v37 = os_signpost_enabled(v35);
          v36 = log;
          if (v37)
          {
            *buf = 134218499;
            v68 = v10;
            v69 = 2117;
            v70 = v47;
            v71 = 2048;
            v72 = v14;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v23, "GCPhysicalInputProfile.Button.value.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
            v36 = log;
          }
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__GCControllerButtonInput__setValue_queue___block_invoke;
      block[3] = &unk_1E841ACD0;
      v63 = v20;
      block[4] = self;
      v65 = v7;
      v66 = deadzone < v7;
      v62 = v9;
      v64 = v23;
      dispatch_async(v6, block);
    }

    if (!self->_touchedAndValueDistinct && v7 > 0.0019531 == v18 <= 0.0019531)
    {
      self->_touched = v7 > 0.0019531;
      if (v21)
      {
        v26 = os_signpost_id_generate(v9);
        v27 = _gc_log_signpost();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (v28)
        {
          v41 = v9;
          v42 = v41;
          if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            logb = v41;
            v43 = os_signpost_enabled(v41);
            v42 = logb;
            if (v43)
            {
              *buf = 134218499;
              v68 = v10;
              v69 = 2117;
              v70 = v47;
              v71 = 2048;
              v72 = v14;
              _os_signpost_emit_with_name_impl(&dword_1D2CD5000, logb, OS_SIGNPOST_INTERVAL_BEGIN, v26, "GCPhysicalInputProfile.Button.touched.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
              v42 = logb;
            }
          }
        }

        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __43__GCControllerButtonInput__setValue_queue___block_invoke_89;
        v54[3] = &unk_1E841ACF8;
        v56 = v21;
        v54[4] = self;
        v58 = v7;
        v59 = deadzone < v7;
        v60 = v7 > 0.0019531;
        v55 = v9;
        v57 = v26;
        dispatch_async(v6, v54);
      }
    }

    if (v18 > deadzone != deadzone < v7 && v22)
    {
      v29 = os_signpost_id_generate(v9);
      v30 = _gc_log_signpost();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);

      if (v31)
      {
        v38 = v9;
        v39 = v38;
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          loga = v38;
          v40 = os_signpost_enabled(v38);
          v39 = loga;
          if (v40)
          {
            *buf = 134218499;
            v68 = v10;
            v69 = 2117;
            v70 = v47;
            v71 = 2048;
            v72 = v14;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, loga, OS_SIGNPOST_INTERVAL_BEGIN, v29, "GCPhysicalInputProfile.Button.pressed.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
            v39 = loga;
          }
        }
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __43__GCControllerButtonInput__setValue_queue___block_invoke_90;
      v48[3] = &unk_1E841ACD0;
      v50 = v22;
      v48[4] = self;
      v52 = v7;
      v53 = deadzone < v7;
      v49 = v9;
      v51 = v29;
      dispatch_async(v6, v48);
    }

    if (v18 <= deadzone && deadzone < v7)
    {
      ++self->_pressCounter;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return value != v7;
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 68);
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v4 = _gc_log_signpost();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_cold_1(a1);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_89(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 68);
  v4 = *(a1 + 69);
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_89_cold_1(a1);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 68);
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v4 = _gc_log_signpost();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_90_cold_1(a1);
  }
}

- (BOOL)_setTouched:(BOOL)a3 queue:(id)a4
{
  v4 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_touchedAndValueDistinct && self->_touched != v4)
  {
    v8 = _gc_log_signpost();
    v9 = [(GCControllerElement *)self device];
    v10 = [(GCControllerElement *)self primaryAlias];
    v11 = [(GCControllerElement *)self device];
    v12 = [v11 physicalInputProfile];
    [v12 lastEventTimestamp];
    v14 = v13;

    v15 = _gc_log_signpost();
    v16 = _gc_log_signpost();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      v27 = _gc_log_signpost();
      if (os_signpost_enabled(v27))
      {
        *buf = 134218755;
        v40 = v9;
        v41 = 2117;
        v42 = v10;
        v43 = 2048;
        v44 = v14;
        v45 = 1029;
        v46 = v4;
        _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Button.touched.set", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}u", buf, 0x26u);
      }
    }

    self->_touched = v4;
    v18 = _Block_copy(self->_touchedChangedHandler);
    value = self->_value;
    v20 = [(GCControllerButtonInput *)self isPressed];
    if (v18)
    {
      v21 = v20;
      v22 = os_signpost_id_generate(v8);
      v23 = _gc_log_signpost();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

      if (v24)
      {
        v28 = v8;
        v29 = v28;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          log = v28;
          v30 = os_signpost_enabled(v28);
          v29 = log;
          if (v30)
          {
            *buf = 134218499;
            v40 = v9;
            v41 = 2117;
            v42 = v10;
            v43 = 2048;
            v44 = v14;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v22, "GCPhysicalInputProfile.Button.touched.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
            v29 = log;
          }
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__GCControllerButtonInput__setTouched_queue___block_invoke;
      block[3] = &unk_1E841AD20;
      v34 = v18;
      block[4] = self;
      v36 = value;
      v37 = v21;
      v38 = v4;
      v33 = v8;
      v35 = v22;
      dispatch_async(v6, block);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

void __45__GCControllerButtonInput__setTouched_queue___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u32[0] = *(a1 + 64);
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), *(a1 + 68) != 0.0, *(a1 + 72), a2);
  v3 = _gc_log_signpost();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_89_cold_1(a1);
  }
}

- (int)getAndResetTimesPressed
{
  pressCounter = self->_pressCounter;
  self->_pressCounter = 0;
  return pressCounter;
}

- (BOOL)isPressed
{
  [(GCControllerButtonInput *)self value];
  v4 = v3;
  [(GCControllerButtonInput *)self deadzone];
  v6 = v5;
  v7 = _gc_log_signpost();
  v8 = _gc_log_signpost();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    [(GCControllerButtonInput *)self isPressed];
  }

  return v4 > v6;
}

- (BOOL)isTouched
{
  touched = self->_touched;
  v4 = _gc_log_signpost();
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    [(GCControllerButtonInput *)self isTouched];
  }

  return touched;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCControllerElement *)self primaryAlias];
  [(GCControllerButtonInput *)self value];
  v6 = [v3 stringWithFormat:@"%@ (value: %.3f, pressed: %d)", v4, v5, -[GCControllerButtonInput isPressed](self, "isPressed")];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCControllerButtonInput *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
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
  if ([(GCControllerButtonInput *)v10 _setValue:v8 queue:v11])
  {
    [0 addObject:v10];
  }

  v6 = v12;
LABEL_9:
}

- (float)value
{
  value = self->_value;
  v4 = _gc_log_signpost();
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    [(GCControllerButtonInput *)self value];
  }

  return value;
}

- (void)setDeadzone:(float)a3
{
  if (a3 <= 0.0019531)
  {
    a3 = 0.0019531;
  }

  self->_deadzone = a3;
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_22();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_2_16(&dword_1D2CD5000, v4, v5, v6, "GCPhysicalInputProfile.Button.value.callback", "{}", v7, v8, 0);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_89_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_22();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_2_16(&dword_1D2CD5000, v4, v5, v6, "GCPhysicalInputProfile.Button.touched.callback", "{}", v7, v8, 0);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_90_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_22();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_2_16(&dword_1D2CD5000, v4, v5, v6, "GCPhysicalInputProfile.Button.pressed.callback", "{}", v7, v8, 0);
  }
}

- (void)isPressed
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_signpost();
  if (os_signpost_enabled(v2))
  {
    v3 = [a1 device];
    v4 = [a1 primaryAlias];
    v5 = [a1 device];
    v6 = [v5 physicalInputProfile];
    [v6 lastEventTimestamp];
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_0_28();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, 0x26u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)isTouched
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_signpost();
  if (os_signpost_enabled(v2))
  {
    v3 = [a1 device];
    v4 = [a1 primaryAlias];
    v5 = [a1 device];
    v6 = [v5 physicalInputProfile];
    [v6 lastEventTimestamp];
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_0_28();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, 0x26u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)value
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_signpost();
  if (os_signpost_enabled(v2))
  {
    v3 = [a1 device];
    v4 = [a1 primaryAlias];
    v5 = [a1 device];
    v6 = [v5 physicalInputProfile];
    [v6 lastEventTimestamp];
    OUTLINED_FUNCTION_0_28();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end