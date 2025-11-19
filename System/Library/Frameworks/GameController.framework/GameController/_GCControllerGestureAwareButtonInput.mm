@interface _GCControllerGestureAwareButtonInput
- (BOOL)_commitPendingValueOnQueue:(id)a3;
- (BOOL)_setValue:(float)a3 queue:(id)a4;
- (_GCControllerGestureAwareButtonInput)initWithDescriptionName:(id)a3;
- (int64_t)actualSystemGestureState;
- (void)__onqueue_executeDoublePressRecognizerForEvent:(id)a3 queue:(id)a4;
- (void)__onqueue_executeLongPressRecognizerForEvent:(id)a3 queue:(id)a4;
- (void)__onqueue_executeSinglePressRecognizerForEvent:(id)a3 queue:(id)a4;
- (void)__onqueue_forwardEvent:(id)a3 queue:(id)a4;
- (void)registerSetValueEvent:(float)a3 queue:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setPreferredSystemGestureState:(int64_t)a3;
- (void)setValue:(float)a3;
@end

@implementation _GCControllerGestureAwareButtonInput

- (_GCControllerGestureAwareButtonInput)initWithDescriptionName:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCControllerGestureAwareButtonInput;
  v3 = [(GCControllerButtonInput *)&v7 initWithDescriptionName:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    doublePressEventQueue = v3->_doublePressEventQueue;
    v3->_doublePressEventQueue = v4;

    v3->_longPressInterval = 0.5;
    v3->_singlePressInterval = 0.5;
    v3->_doublePressInterval = 0.5;
    v3->_longPressMuted = 0;
    v3->_doublePressMuted = 0;
    v3->_singlePressMuted = 0;
    v3->_enabled = 1;
    v3->_requiredDoublePressCount = 2;
  }

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
  }
}

- (int64_t)actualSystemGestureState
{
  if ([(_GCControllerGestureAwareButtonInput *)self isDoublePressGestureRecognizerEnabled]|| [(_GCControllerGestureAwareButtonInput *)self isSinglePressGestureRecognizerEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = ![(_GCControllerGestureAwareButtonInput *)self isLongPressGestureRecognizerEnabled];
  }

  v4 = [(GCControllerElement *)self device];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && (([v6 isSnapshot] | v3) & 1) == 0 && self->_enabled)
  {
    v8 = [(_GCControllerGestureAwareButtonInput *)self preferredSystemGestureState];
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (void)setPreferredSystemGestureState:(int64_t)a3
{
  if (self->_preferredSystemGestureState != a3)
  {
    self->_preferredSystemGestureState = a3;
    v10 = [(GCControllerElement *)self device];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v10;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 systemGestureComponent];

    if (v6)
    {
      preferredSystemGestureState = self->_preferredSystemGestureState;
      v8 = [v5 systemGestureComponent];
      v9 = [(GCControllerElement *)self primaryAlias];
      if (preferredSystemGestureState == 2)
      {
        [v8 disableSystemGestureForInput:v9];
      }

      else
      {
        [v8 enableSystemGestureForInput:v9];
      }
    }
  }
}

- (BOOL)_setValue:(float)a3 queue:(id)a4
{
  v6 = a4;
  v7 = clamp(a3, 0.0, 1.0);
  self->_realValue = v7;
  v8 = [(_GCControllerGestureAwareButtonInput *)self actualSystemGestureState];
  switch(v8)
  {
    case 2:
      v13 = self;
      v14 = _GCControllerGestureAwareButtonInput;
      v11 = &v13;
      goto LABEL_8;
    case 1:
      *&v9 = a3;
      [(_GCControllerGestureAwareButtonInput *)self registerSetValueEvent:v6 queue:v9];
      v15 = self;
      v16 = _GCControllerGestureAwareButtonInput;
      v11 = &v15;
LABEL_8:
      *&v9 = a3;
      v10 = objc_msgSendSuper2(v11, sel__setValue_queue_, v6, v9, v13, v14, v15, v16);
      goto LABEL_9;
    case 0:
      *&v9 = a3;
      [(_GCControllerGestureAwareButtonInput *)self registerSetValueEvent:v6 queue:v9];
      break;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)setValue:(float)a3
{
  v5 = [(GCControllerElement *)self device];
  if (!v5)
  {
    v6 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isSnapshot])
  {
    v6 = [v5 handlerQueue];
LABEL_6:
    v9.receiver = self;
    v9.super_class = _GCControllerGestureAwareButtonInput;
    *&v7 = a3;
    [(GCControllerButtonInput *)&v9 _setValue:v6 queue:v7];
  }
}

- (BOOL)_commitPendingValueOnQueue:(id)a3
{
  v4 = a3;
  if ([(GCControllerElement *)self updatePending])
  {
    [(GCControllerElement *)self pendingValue];
    if (v5 == self->_realValue)
    {
      v6 = 0;
    }

    else
    {
      [(GCControllerElement *)self pendingValue];
      v6 = [(_GCControllerGestureAwareButtonInput *)self _setValue:v4 queue:?];
    }

    [(GCControllerElement *)self _resetPendingValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)registerSetValueEvent:(float)a3 queue:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  if (gc_isInternalBuild())
  {
    v8 = getGCLogger();
    [_GCControllerGestureAwareButtonInput registerSetValueEvent:v8 queue:?];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke;
  block[3] = &unk_1E841A700;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  block[4] = self;
  v10 = v6;
  v7 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)__onqueue_forwardEvent:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_GCControllerGestureAwareButtonInput *)self actualSystemGestureState]&& (v6[17] & 1) == 0 && v6[20] == 1 && v6[19] == 1 && v6[21] == 1)
  {
    v6[17] = 1;
    if (gc_isInternalBuild())
    {
      [_GCControllerGestureAwareButtonInput __onqueue_forwardEvent:v6 queue:?];
    }

    LOBYTE(v8) = v6[16];
    *&v8 = LODWORD(v8);
    v11.receiver = self;
    v11.super_class = _GCControllerGestureAwareButtonInput;
    if ([(GCControllerButtonInput *)&v11 _setValue:v7 queue:v8])
    {
      v9 = [(GCControllerElement *)self device];
      v10 = [v9 physicalInputProfile];
      [v10 _triggerValueChangedHandlerForElement:self queue:v7];
    }
  }
}

- (void)__onqueue_executeDoublePressRecognizerForEvent:(id)a3 queue:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableArray *)self->_doublePressEventQueue lastObject];
  v9 = v8;
  if (!v8 || *(v8 + 16) != v6[16])
  {
    v43 = v8;
    [(NSMutableArray *)self->_doublePressEventQueue addObject:v6];
    [(_GCControllerGestureAwareButtonInput *)self doublePressInterval];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke;
    block[3] = &unk_1E8419BC0;
    v54 = v6;
    v55 = self;
    v56 = v7;
    dispatch_after(v11, v56, block);

    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSince1970];
    v14 = v13;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = self->_doublePressEventQueue;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v16)
    {
      v17 = v16;
      log = v7;
      v42 = v6;
      v18 = 0;
      v19 = *v50;
      while (2)
      {
        v20 = 0;
        v21 = v18;
        v18 += v17;
        do
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v49 + 1) + 8 * v20);
          v23 = v14 - *(v22 + 8);
          [(_GCControllerGestureAwareButtonInput *)self doublePressInterval];
          if (v23 < v24)
          {
            v18 = v21;
            goto LABEL_13;
          }

          ++v21;
          *(v22 + 20) = 1;
          ++v20;
        }

        while (v17 != v20);
        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_13:

      v7 = log;
      v6 = v42;
      if (v18 >= 1)
      {
        [(NSMutableArray *)self->_doublePressEventQueue removeObjectsInRange:0, v18];
      }
    }

    else
    {
    }

    v9 = v43;
    if ([(NSMutableArray *)self->_doublePressEventQueue count])
    {
      v25 = [(NSMutableArray *)self->_doublePressEventQueue firstObject];
      v26 = v25[16];

      if ([(NSMutableArray *)self->_doublePressEventQueue count])
      {
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v29 = [(NSMutableArray *)self->_doublePressEventQueue objectAtIndexedSubscript:v27];
          if (v26)
          {
            v28 += v29[16] ^ 1;
          }

          if (v28 == self->_requiredDoublePressCount)
          {
            break;
          }

          v26 = v29[16];

          if ([(NSMutableArray *)self->_doublePressEventQueue count]<= ++v27)
          {
            goto LABEL_45;
          }
        }

        if ([(NSMutableArray *)self->_doublePressEventQueue count]> v27)
        {
          v30 = v27;
          do
          {
            v31 = [(NSMutableArray *)self->_doublePressEventQueue objectAtIndexedSubscript:v27];
            v31[18] = 0;
            if (gc_isInternalBuild())
            {
              loga = getGCLogger();
              if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
              {
                v32 = v31[18];
                *buf = 138412546;
                v59 = v31;
                v60 = 1024;
                v61 = v32;
                _os_log_impl(&dword_1D2CD5000, loga, OS_LOG_TYPE_INFO, "[CLEAR] %@ tentativeSinglePress resetting to %d", buf, 0x12u);
              }
            }

            ++v30;
          }

          while ([(NSMutableArray *)self->_doublePressEventQueue count]> v30);
        }

        v33 = v7;
        if (gc_isInternalBuild())
        {
          [_GCControllerGestureAwareButtonInput __onqueue_executeDoublePressRecognizerForEvent:queue:];
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v34 = self->_doublePressEventQueue;
        v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v46;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v46 != v37)
              {
                objc_enumerationMutation(v34);
              }

              if (self->_doublePressHandler)
              {
                *(*(*(&v45 + 1) + 8 * i) + 17) = 1;
              }
            }

            v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v36);
        }

        [(NSMutableArray *)self->_doublePressEventQueue removeAllObjects];
        v7 = v33;
        v9 = v43;
        if (self->_doublePressHandler)
        {
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113;
          v44[3] = &unk_1E8418C28;
          v44[4] = self;
          dispatch_async(MEMORY[0x1E69E96A0], v44);
        }
      }
    }
  }

LABEL_45:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)__onqueue_executeLongPressRecognizerForEvent:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  longPressDownEvent = self->_longPressDownEvent;
  if (longPressDownEvent)
  {
    if ((v7[2] & 1) == 0)
    {
      v10 = v7[1] - longPressDownEvent->timestamp;
      [(_GCControllerGestureAwareButtonInput *)self longPressInterval];
      v12 = self->_longPressDownEvent;
      if (v10 <= v11)
      {
        v12->ignoredByLongPressRecognizer = 1;
        *(v7 + 19) = 1;
        if ((*(v7 + 17) & 1) != 0 || *(v7 + 18) != 1 || *(v7 + 20) != 1)
        {
          if (gc_isInternalBuild())
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeLongPressRecognizerForEvent:? queue:?];
          }

          [(_GCControllerGestureAwareButtonInput *)self __onqueue_forwardEvent:self->_longPressDownEvent queue:v8];
          v20 = dispatch_time(0, (v10 * 1000000000.0));
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117;
          v21[3] = &unk_1E8419BC0;
          v22 = v7;
          v23 = self;
          v24 = v8;
          dispatch_after(v20, v24, v21);

          goto LABEL_23;
        }

        *(v7 + 17) = 1;
        self->_longPressDownEvent->consumed = 1;
        if (!self->_singlePressHandler)
        {
LABEL_23:
          v17 = self->_longPressDownEvent;
          self->_longPressDownEvent = 0;
          goto LABEL_24;
        }

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116;
        v25[3] = &unk_1E8418C28;
        v25[4] = self;
        v18 = MEMORY[0x1E69E96A0];
        v19 = v25;
      }

      else
      {
        consumed = v12->consumed;
        isInternalBuild = gc_isInternalBuild();
        if (consumed)
        {
          if (isInternalBuild)
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeLongPressRecognizerForEvent:queue:];
          }

          *(v7 + 17) = 1;
          goto LABEL_23;
        }

        if (isInternalBuild)
        {
          [_GCControllerGestureAwareButtonInput __onqueue_executeLongPressRecognizerForEvent:queue:];
        }

        self->_longPressDownEvent->consumed = 1;
        *(v7 + 17) = 1;
        if (!self->_longPressHandler)
        {
          goto LABEL_23;
        }

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_115;
        v26[3] = &unk_1E8418C28;
        v26[4] = self;
        v18 = MEMORY[0x1E69E96A0];
        v19 = v26;
      }

      dispatch_async(v18, v19);
      goto LABEL_23;
    }
  }

  else if (*(v7 + 16))
  {
    objc_storeStrong(&self->_longPressDownEvent, a3);
    [(_GCControllerGestureAwareButtonInput *)self longPressInterval];
    v16 = dispatch_time(0, (v15 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke;
    block[3] = &unk_1E8418C50;
    v28 = v7;
    v29 = self;
    dispatch_after(v16, v8, block);
    v17 = v28;
LABEL_24:
  }
}

- (void)__onqueue_executeSinglePressRecognizerForEvent:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  singlePressDownEvent = self->_singlePressDownEvent;
  if (singlePressDownEvent)
  {
    if ((v7[2] & 1) == 0)
    {
      if ((*(v7 + 17) & 1) == 0)
      {
        v10 = v7[1] - singlePressDownEvent->timestamp;
        [(_GCControllerGestureAwareButtonInput *)self singlePressInterval];
        if (v10 >= v11)
        {
          self->_singlePressDownEvent->ignoredBySinglePressRecognizer = 1;
          *(v7 + 21) = 1;
          if (gc_isInternalBuild())
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeSinglePressRecognizerForEvent:? queue:?];
          }

          [(_GCControllerGestureAwareButtonInput *)self __onqueue_forwardEvent:self->_singlePressDownEvent queue:v8];
          v12 = dispatch_time(0, (v10 * 1000000000.0));
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118;
          v14[3] = &unk_1E8419BC0;
          v15 = v7;
          v16 = self;
          v17 = v8;
          dispatch_after(v12, v17, v14);
        }

        else
        {
          if (gc_isInternalBuild())
          {
            [_GCControllerGestureAwareButtonInput __onqueue_executeSinglePressRecognizerForEvent:queue:];
          }

          if (*(v7 + 20) == 1 && *(v7 + 19) == 1)
          {
            self->_singlePressDownEvent->consumed = 1;
            *(v7 + 17) = 1;
            if (self->_singlePressHandler)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke;
              block[3] = &unk_1E8418C28;
              block[4] = self;
              dispatch_async(MEMORY[0x1E69E96A0], block);
            }
          }

          else
          {
            *(v7 + 18) = 1;
          }
        }
      }

      v13 = self->_singlePressDownEvent;
      self->_singlePressDownEvent = 0;
    }
  }

  else if (*(v7 + 16))
  {
    objc_storeStrong(&self->_singlePressDownEvent, a3);
  }
}

- (void)registerSetValueEvent:(NSObject *)a1 queue:.cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)__onqueue_forwardEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 16);
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__onqueue_executeDoublePressRecognizerForEvent:queue:.cold.1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)__onqueue_executeLongPressRecognizerForEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(*a1 + 16);
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__onqueue_executeLongPressRecognizerForEvent:queue:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)__onqueue_executeLongPressRecognizerForEvent:queue:.cold.3()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)__onqueue_executeSinglePressRecognizerForEvent:(uint64_t)a1 queue:.cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(*a1 + 16);
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__onqueue_executeSinglePressRecognizerForEvent:queue:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end