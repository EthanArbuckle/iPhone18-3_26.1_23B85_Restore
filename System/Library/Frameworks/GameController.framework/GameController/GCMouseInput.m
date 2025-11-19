@interface GCMouseInput
- (GCMouseInput)initWithIdentifier:(id)a3 additionalButtons:(unsigned int)a4;
- (id)liveInputFacade;
- (id)physicalInputQueue:(id)a3;
- (uint64_t)_liveInput;
- (uint64_t)_physicalInputQueue;
- (void)_bufferEvent:(uint64_t)a1;
- (void)_drainBufferedEvents:(id)a3 latestOnly:(BOOL)a4;
- (void)_handleButtonEventType:(unint64_t)a3 buttonMask:;
- (void)handleMouseMovementEventWithDelta:(double)a3;
- (void)handleScrollEventWithDelta:(double)a3;
- (void)physicalInputTransactionQueueDepthDidChange:(id)a3;
- (void)setButtonEventSource:(id)a3;
- (void)setDigitizerEventSource:(id)a3;
- (void)setPointerEventSource:(id)a3;
- (void)setScrollEventSource:(id)a3;
- (void)set_liveInput:(uint64_t)a1;
- (void)set_physicalInputQueue:(uint64_t)a1;
@end

@implementation GCMouseInput

- (GCMouseInput)initWithIdentifier:(id)a3 additionalButtons:(unsigned int)a4
{
  v6 = a3;
  v76.receiver = self;
  v76.super_class = GCMouseInput;
  v7 = [(GCPhysicalInputProfile *)&v76 initWithIdentifier:v6];
  if (v7)
  {
    v74 = 0;
    v75 = 0;
    v73 = 0;
    v69 = 1;
    v72 = 0;
    v71 = 0;
    v68 = @"Scroll";
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v67, &v68);
    v8 = [(GCPhysicalInputProfile *)v7 _cursorWithInfo:v67];
    scroll = v7->_scroll;
    v7->_scroll = v8;

    v10 = v68;
    v68 = @"Left Button";

    HIBYTE(v69) = 1;
    v70 = 0;
    __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v66, &v68);
    v11 = [(GCPhysicalInputProfile *)v7 _buttonWithInfo:v66];
    leftButton = v7->_leftButton;
    v7->_leftButton = v11;

    if (a4)
    {
      HIBYTE(v69) = 1;
      v13 = v68;
      v68 = @"Right Button";

      __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v65, &v68);
      v14 = [(GCPhysicalInputProfile *)v7 _buttonWithInfo:v65];
      rightButton = v7->_rightButton;
      v7->_rightButton = v14;

      if (a4 != 1)
      {
        HIBYTE(v69) = 1;
        v16 = v68;
        v68 = @"Middle Button";

        __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v64, &v68);
        v17 = [(GCPhysicalInputProfile *)v7 _buttonWithInfo:v64];
        middleButton = v7->_middleButton;
        v7->_middleButton = v17;

        if (a4 >= 3)
        {
          v19 = objc_opt_new();
          if (a4 != 3)
          {
            v20 = 3;
            do
            {
              HIBYTE(v69) = 1;
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Auxiliary Button %u", v20];
              v22 = v68;
              v68 = v21;

              __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v63, &v68);
              v23 = [(GCPhysicalInputProfile *)v7 _buttonWithInfo:v63];
              [v19 addObject:v23];

              v20 = (v20 + 1);
            }

            while (a4 != v20);
          }

          v24 = [v19 copy];
          auxiliaryButtons = v7->_auxiliaryButtons;
          v7->_auxiliaryButtons = v24;
        }
      }
    }

    v7->_buttons = 0;
    v26 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"primaryMouseButton"];
    v27 = [MEMORY[0x1E695DFD8] setWithObject:@"Primary Button"];
    [(_GCDevicePhysicalInputElementParameters *)v26 setAliases:v27, v28];

    v29 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v26 setLocalizedName:v29, v30];

    v62 = [[_GCDevicePhysicalInputElement alloc] initWithParameters:v26];
    v31 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"secondaryMouseButton"];

    v32 = [MEMORY[0x1E695DFD8] setWithObject:@"Secondary Button"];
    [(_GCDevicePhysicalInputElementParameters *)v31 setAliases:v32, v33];

    v34 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v31 setLocalizedName:v34, v35];

    v36 = [[_GCDevicePhysicalInputElement alloc] initWithParameters:v31];
    v37 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputButtonElementParameters parametersWithIdentifier:@"thirdMouseButton"];

    v38 = [MEMORY[0x1E695DFD8] setWithObject:@"Third Button"];
    [(_GCDevicePhysicalInputElementParameters *)v37 setAliases:v38, v39];

    v40 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v37 setLocalizedName:v40, v41];

    v42 = [[_GCDevicePhysicalInputElement alloc] initWithParameters:v37];
    v43 = [(_GCDevicePhysicalInputElementParameters *)GCCursorElementParameters parametersWithIdentifier:@"mouseCursor"];

    v44 = [MEMORY[0x1E695DFD8] setWithObject:@"Cursor"];
    [(_GCDevicePhysicalInputElementParameters *)v43 setAliases:v44, v45];

    v46 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v43 setLocalizedName:v46, v47];

    v48 = [(_GCDevicePhysicalInputElement *)[GCCursorElement alloc] initWithParameters:v43];
    v49 = [(_GCDevicePhysicalInputElementParameters *)_GCDevicePhysicalInputDirectionPadElementParameters parametersWithIdentifier:@"mouseScrollWheel"];

    v50 = [MEMORY[0x1E695DFD8] setWithObject:@"Scroll Wheel"];
    [(_GCDevicePhysicalInputElementParameters *)v49 setAliases:v50, v51];

    v52 = _GCFConvertStringToLocalizedString();
    [(_GCDevicePhysicalInputElementParameters *)v49 setLocalizedName:v52, v53];

    v54 = [[_GCDevicePhysicalInputElement alloc] initWithParameters:v49];
    v55 = [MEMORY[0x1E695DFD8] setWithObjects:{v62, v36, v42, v48, v54, 0}];
    v56 = objc_opt_new();
    v57 = [[_GCDevicePhysicalInput alloc] initWithFacade:v56 elements:v55];
    liveInput = v7->_liveInput;
    v7->_liveInput = v57;

    [(_GCDevicePhysicalInput *)v7->_liveInput setDataSource:v7];
    v7->_eventBufferLock._os_unfair_lock_opaque = 0;
    v59 = objc_opt_new();
    eventBuffer = v7->_eventBuffer;
    v7->_eventBuffer = v59;

    v7->_eventBufferDepth = [(_GCDevicePhysicalInput *)&v7->_liveInput->super.super.isa transactionQueueDepth];
    __destructor_8_s0_s48_s56_s64(&v68);
  }

  return v7;
}

- (void)_bufferEvent:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 648));
    if ([*(a1 + 656) count] >= *(a1 + 664))
    {
      *(a2 + 8) = 0;
      [*(a1 + 656) removeAllObjects];
    }

    v4 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:a2 objCType:"{?=QQ(?={?=ff}q)}"];
    [*(a1 + 656) addObject:v4];
    [(GCMouseInput *)v4 _bufferEvent:a1, &v5];
  }
}

void __29__GCMouseInput__bufferEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _drainBufferedEvents:WeakRetained[93] latestOnly:0];
    WeakRetained = v2;
  }
}

- (void)_drainBufferedEvents:(id)a3 latestOnly:(BOOL)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_eventBufferLock);
  v6 = [(NSMutableArray *)self->_eventBuffer count];
  if (v6)
  {
    v7 = 0;
    do
    {
      v11 = 0uLL;
      v12 = 0;
      v8 = [(NSMutableArray *)self->_eventBuffer objectAtIndexedSubscript:v7, v9, v10];
      [v8 getValue:&v11 size:24];

      v9 = v11;
      v10 = v12;
      [_GCDevicePhysicalInput handleMouseEvent:v5];
      ++v7;
    }

    while (v6 != v7);
  }

  [(NSMutableArray *)self->_eventBuffer removeAllObjects:v9];
  os_unfair_lock_unlock(&self->_eventBufferLock);
}

- (id)physicalInputQueue:(id)a3
{
  if (!self || (v4 = self->_physicalInputQueue) == 0)
  {
    v5 = [(GCPhysicalInputProfile *)self controller];
    v4 = [v5 handlerQueue];
  }

  return v4;
}

- (void)physicalInputTransactionQueueDepthDidChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_eventBufferLock);
  self->_eventBufferDepth = [(_GCDevicePhysicalInput *)v4 transactionQueueDepth];
  os_unfair_lock_unlock(&self->_eventBufferLock);
}

- (void)_handleButtonEventType:(unint64_t)a3 buttonMask:
{
  if (a1)
  {
    if ((a2 - 3) >= 3)
    {
      v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unknown button event type" userInfo:0];
      objc_exception_throw(v19);
    }

    v23[0] = 0;
    v23[1] = a2;
    v23[2] = a3;
    [(GCMouseInput *)a1 _bufferEvent:v23];
    v5 = [a1 handlerQueue];
    *(a1 + 704) = a3;
    v6 = [a1 leftButton];
    *&v7 = (a3 & 1);
    [v6 _setValue:v5 queue:v7];

    v8 = [a1 rightButton];
    *&v9 = (a3 & 2);
    [v8 _setValue:v5 queue:v9];

    v10 = [a1 middleButton];
    *&v11 = (a3 & 4);
    [v10 _setValue:v5 queue:v11];

    if ([*(a1 + 784) count])
    {
      v12 = 0;
      do
      {
        if (((8 << v12) & a3) != 0)
        {
          v13 = 1.0;
        }

        else
        {
          v13 = 0.0;
        }

        v14 = [*(a1 + 784) objectAtIndexedSubscript:v12];
        *&v15 = v13;
        [v14 _setValue:v5 queue:v15];

        ++v12;
      }

      while ([*(a1 + 784) count] > v12);
    }

    v16 = _Block_copy(*(a1 + 728));
    v17 = [a1 handlerQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__GCMouseInput_PubSub___handleButtonEventType_buttonMask___block_invoke;
    v20[3] = &unk_1E8419080;
    v20[4] = a1;
    v21 = v16;
    v22 = a3;
    v18 = v16;
    dispatch_async(v17, v20);
  }
}

uint64_t __58__GCMouseInput_PubSub___handleButtonEventType_buttonMask___block_invoke(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[6]);
  }

  return result;
}

void __58__GCMouseInput_PubSub__handleMouseMovementEventWithDelta___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  (*(*(a1 + 48) + 16))(v3, v4);
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    __58__GCMouseInput_PubSub__handleMouseMovementEventWithDelta___block_invoke_cold_1(a1);
  }
}

uint64_t __58__GCMouseInput_PubSub__handleMouseMovementEventWithDelta___block_invoke_286(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  return (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), v1, v2);
}

- (void)setButtonEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  buttonEventObservation = self->_buttonEventObservation;
  self->_buttonEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__GCMouseInput_PubSub__setButtonEventSource___block_invoke;
  v8[3] = &unk_1E84190F8;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observeButtonEvents:v8];
  v7 = self->_buttonEventObservation;
  self->_buttonEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setScrollEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  scrollEventObservation = self->_scrollEventObservation;
  self->_scrollEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__GCMouseInput_PubSub__setScrollEventSource___block_invoke;
  v8[3] = &unk_1E8419120;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observeScrollEvents:v8];
  v7 = self->_scrollEventObservation;
  self->_scrollEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setDigitizerEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  digitizerEventObservation = self->_digitizerEventObservation;
  self->_digitizerEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__GCMouseInput_PubSub__setDigitizerEventSource___block_invoke;
  v8[3] = &unk_1E8419148;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observeDigitizerEvents:v8];
  v7 = self->_digitizerEventObservation;
  self->_digitizerEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setPointerEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  pointerEventObservation = self->_pointerEventObservation;
  self->_pointerEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__GCMouseInput_PubSub__setPointerEventSource___block_invoke;
  v8[3] = &unk_1E8419170;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observePointerEvents:v8];
  v7 = self->_pointerEventObservation;
  self->_pointerEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (uint64_t)_physicalInputQueue
{
  if (result)
  {
    return *(result + 736);
  }

  return result;
}

- (uint64_t)_liveInput
{
  if (result)
  {
    return *(result + 744);
  }

  return result;
}

- (void)set_physicalInputQueue:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1, a2, 736);
  }
}

- (void)set_liveInput:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1, a2, 744);
  }
}

- (id)liveInputFacade
{
  if (a1)
  {
    a1 = a1[93];
    v1 = vars8;
  }

  return a1;
}

- (void)handleScrollEventWithDelta:(double)a3
{
  if (a1)
  {
    v4 = a2;
    v5 = -v4;
    v32 = xmmword_1D2DEE1A0;
    v6 = a3;
    v33 = -v4;
    v34 = v6;
    [(GCMouseInput *)a1 _bufferEvent:?];
    v7 = [a1 scroll];
    v8 = [a1 handlerQueue];
    v9 = v7;
    v10 = v8;
    [v9 frame];
    MinX = CGRectGetMinX(v35);
    if (MinX >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = MinX;
    }

    v31 = v5;
    v36.origin.x = OUTLINED_FUNCTION_4_0();
    MaxX = CGRectGetMaxX(v36);
    if (MaxX >= v5)
    {
      v14 = MaxX;
    }

    else
    {
      v14 = v5;
    }

    v30 = v14;
    v37.origin.x = OUTLINED_FUNCTION_4_0();
    MinY = CGRectGetMinY(v37);
    v16 = v6;
    v17 = v6;
    if (MinY >= v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = MinY;
    }

    v38.origin.x = OUTLINED_FUNCTION_4_0();
    MaxY = CGRectGetMaxY(v38);
    if (MaxY >= v17)
    {
      v20 = MaxY;
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    [v9 setFrame:{v12, v18, (v30 - v12), (v21 - v18)}];
    v22 = v9;
    v23 = v10;
    v24 = [v22 xAxis];
    *&v25 = v31;
    v26 = [v24 _setValue:v23 queue:v25];

    v27 = [v22 yAxis];
    *&v28 = v16;
    v29 = [v27 _setValue:v23 queue:v28];

    if ((v26 & 1) != 0 || v29)
    {
      [0 addObject:v22];
    }
  }
}

- (void)handleMouseMovementEventWithDelta:(double)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = -a3;
    v7 = a2;
    *buf = xmmword_1D2DEE1B0;
    v8 = -a3;
    *&buf[16] = v7;
    *&buf[20] = v8;
    [(GCMouseInput *)a1 _bufferEvent:buf];
    v9 = _gc_log_signpost();
    [a1 device];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_8_0() handlerQueue];
    v11 = _Block_copy(a1[89]);
    if (v11)
    {
      v12 = os_signpost_id_generate(v9);
      v13 = _gc_log_signpost();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

      if (v14)
      {
        v18 = v9;
        v19 = v18;
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          [a1 lastEventTimestamp];
          *buf = 134218240;
          *&buf[4] = v3;
          *&buf[12] = 2048;
          *&buf[14] = v20;
          _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v12, "GCMouseInput.callback", "{device: %p, lastEventTimestamp: %f}", buf, 0x16u);
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__GCMouseInput_PubSub__handleMouseMovementEventWithDelta___block_invoke;
      block[3] = &unk_1E84190A8;
      v27 = v11;
      block[4] = a1;
      v28 = a2;
      v29 = v6;
      v26 = v9;
      v30 = v12;
      dispatch_async(v10, block);
    }

    v15 = _Block_copy(a1[90]);
    v16 = v15;
    if (v15)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __58__GCMouseInput_PubSub__handleMouseMovementEventWithDelta___block_invoke_286;
      v21[3] = &unk_1E84190D0;
      v21[4] = a1;
      v22 = v15;
      v23 = a2;
      v24 = v6;
      dispatch_async(v10, v21);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __45__GCMouseInput_PubSub__setButtonEventSource___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = OUTLINED_FUNCTION_12_0();
  v7 = v6;
  if (v6)
  {
    [v6 device];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_8_0() _receivedEvent];
    v8 = _gc_log_signpost();
    os_signpost_id_generate(v8);
    v9 = _gc_log_signpost();
    v10 = OUTLINED_FUNCTION_7_0(v9);

    if (v10)
    {
      v14 = v8;
      OUTLINED_FUNCTION_1_2();
      if (!(!v16 & v15) && os_signpost_enabled(v4))
      {
        [v2 timestamp];
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_2_1(&dword_1D2CD5000, v17, v18, v19, "GCMouseInput.handle.ButtonEvent", "{device: %p, eventTimestamp: %llu, lastEventTimestamp: %f}", v20, v21, v28);
      }
    }

    [v7 handleMouseButtonEventSettingButtonMask:{objc_msgSend(v2, "mask")}];
    v11 = _gc_log_signpost();
    v12 = OUTLINED_FUNCTION_7_0(v11);

    if (v12)
    {
      v22 = v8;
      OUTLINED_FUNCTION_1_2();
      if (!(!v16 & v15) && os_signpost_enabled(v4))
      {
        OUTLINED_FUNCTION_3_0(&dword_1D2CD5000, v23, v24, v25, "GCMouseInput.handle.ButtonEvent", "{}", v26, v27, 0);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_bufferEvent:(id *)a3 .cold.1(void *a1, uint64_t a2, id *a3)
{
  os_unfair_lock_unlock((a2 + 648));
  v5 = *(a2 + 736);
  if (v5)
  {
    v6 = v5;
    objc_initWeak(&location, a2);
    *a3 = MEMORY[0x1E69E9820];
    a3[1] = 3221225472;
    a3[2] = __29__GCMouseInput__bufferEvent___block_invoke;
    a3[3] = &unk_1E8418D18;
    objc_copyWeak(a3 + 4, &location);
    dispatch_async(v6, a3);

    objc_destroyWeak(a3 + 4);
    objc_destroyWeak(&location);
  }
}

void __58__GCMouseInput_PubSub__handleMouseMovementEventWithDelta___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v3, OS_SIGNPOST_INTERVAL_END, v4, "GCMouseInput.callback", "{}", v5, 2u);
  }
}

@end