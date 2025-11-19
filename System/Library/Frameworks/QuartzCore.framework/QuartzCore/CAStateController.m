@interface CAStateController
- (CAStateController)initWithLayer:(id)a3;
- (id)removeAllStateChanges;
- (id)stateOfLayer:(id)a3;
- (void)_addAnimation:(id)a3 forKey:(id)a4 target:(id)a5 undo:(id)a6;
- (void)_applyTransition:(id)a3 layer:(id)a4 undo:(id)a5 speed:(float)a6;
- (void)_applyTransitionElement:(id)a3 layer:(id)a4 undo:(id)a5 speed:(float)a6;
- (void)_nextStateTimer:(id)a3;
- (void)_removeTransition:(id)a3 layer:(id)a4;
- (void)cancelTimers;
- (void)dealloc;
- (void)restoreStateChanges:(id)a3;
- (void)setInitialStatesOfLayer:(id)a3 transitionSpeed:(float)a4;
- (void)setState:(id)a3 ofLayer:(id)a4 transitionSpeed:(float)a5;
@end

@implementation CAStateController

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  data = self->_data;
  if (data)
  {

    v4 = self->_data;
    var1 = v4->var1;
    if (var1)
    {
      CFDictionaryApplyFunction(var1, release_layer, 0);
      CFRelease(self->_data->var1);
      v4 = self->_data;
    }

    objc_storeWeak(&v4->var2, 0);
    free(self->_data);
  }

  v6.receiver = self;
  v6.super_class = CAStateController;
  [(CAStateController *)&v6 dealloc];
}

- (void)_applyTransitionElement:(id)a3 layer:(id)a4 undo:(id)a5 speed:(float)a6
{
  if ([a3 isEnabled])
  {
    v10 = [a3 animation];
    if (v10)
    {
      v11 = v10;
      v12 = [a3 target];
      if (v12)
      {
        v13 = v12;
        [v11 duration];
        v15 = v14;
        v16 = begin_time(self->_data->var3);
        [v11 beginTime];
        v18 = v17 / a6 + v16 + v15 / a6;
        [v13 convertTime:0 fromLayer:?];
        v20 = v19;
        [v13 convertTime:0 fromLayer:v18];
        v22 = v21;
        [v11 speed];
        v24 = v15 * v23 / (v22 - v20);
        v25 = v20 < 0.0 || v22 <= v20;
        if (!v25 && COERCE_UNSIGNED_INT(fabs(v15 * v23 / (v22 - v20))) < 0x7F800000)
        {
          v30 = [v11 copy];
          [v30 setBeginTime:v20];
          if (v15 != v22 - v20)
          {
            *&v26 = v24;
            [v30 setSpeed:v26];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v30 fromValue] && !objc_msgSend(v30, "toValue") && !objc_msgSend(v30, "byValue"))
          {
            v27 = [v13 presentationLayer];
            v28 = [v30 keyPath];
            if (!v28)
            {
              v28 = [a3 key];
            }

            [v30 setFromValue:{objc_msgSend(v27, "valueForKeyPath:", v28)}];
          }

          v29 = [a3 key];
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v30 keyPath])
          {
            [v30 setKeyPath:v29];
          }

          [(CAStateController *)self _addAnimation:v30 forKey:v29 target:v13 undo:a5];
        }
      }
    }
  }
}

- (void)_removeTransition:(id)a3 layer:(id)a4
{
  Value = CFDictionaryGetValue(self->_data->var1, a4);

  [Value removeTransition:a3];
}

- (void)_applyTransition:(id)a3 layer:(id)a4 undo:(id)a5 speed:(float)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(CAStateControllerTransition);
  v11->_controller = self;
  v11->_layer = a4;
  v11->_transition = a3;
  [a3 duration];
  v11->_duration = v12;
  v11->_speed = a6;
  +[CATransaction commitTime];
  v11->_beginTime = beginTime;
  if (beginTime == 0.0)
  {
    v14 = mach_absolute_time();
    v11->_beginTime = CATimeWithHostTime(v14);
    [CATransaction setCommitTime:?];
    beginTime = v11->_beginTime;
  }

  v15 = v11->_duration / v11->_speed + beginTime;
  [a4 convertTime:0 fromLayer:?];
  v17 = v16;
  [a4 convertTime:0 fromLayer:v15];
  v19 = v18;
  v11->_masterKey = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(a3, "fromState"), objc_msgSend(a3, "toState")];
  v20 = +[CAAnimationGroup animation];
  [(CAAnimation *)v20 setBeginTime:v17];
  [(CAAnimation *)v20 setDuration:v19 - v17];
  [(CAAnimation *)v20 setDelegate:v11];
  [(CAAnimation *)v20 setCAStateControllerTransition:v11];
  [a4 addAnimation:v20 forKey:v11->_masterKey];
  self->_data->var3 = v11;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [a3 elements];
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v33;
    do
    {
      v26 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v21);
        }

        *&v23 = a6;
        [(CAStateController *)self _applyTransitionElement:*(*(&v32 + 1) + 8 * v26++) layer:a4 undo:a5 speed:v23];
      }

      while (v24 != v26);
      v24 = [v21 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v24);
  }

  if (a5)
  {
    [a5 addTransition:v11];
  }

  data = self->_data;
  data->var3 = 0;
  Value = CFDictionaryGetValue(data->var1, a4);
  if (Value)
  {
    [Value addTransition:v11];
  }

  WeakRetained = objc_loadWeakRetained(&self->_data->var2);
  if (objc_opt_respondsToSelector())
  {
    *&v30 = a6;
    [WeakRetained stateController:self transitionDidStart:a3 speed:v30];
  }
}

- (void)_addAnimation:(id)a3 forKey:(id)a4 target:(id)a5 undo:(id)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = @"transition";
  }

  [a3 setRemovedOnCompletion:0];
  [a3 setCAStateControllerTransition:self->_data->var3];
  [a5 addAnimation:a3 forKey:a4];
  if (a3)
  {
    v10 = [[CAStateControllerAnimation alloc] initWithLayer:a5 key:a4];
    [self->_data->var3 addAnimation:v10];
  }
}

- (void)_nextStateTimer:(id)a3
{
  Value = CFDictionaryGetValue(self->_data->var1, [a3 userInfo]);
  if (Value)
  {
    v6 = Value[6];
    Value[5] = 0;
    Value[6] = 0;
    LODWORD(v5) = *(Value + 14);
    [CAStateController setState:"setState:ofLayer:transitionSpeed:" ofLayer:v5 transitionSpeed:?];
  }
}

- (void)cancelTimers
{
  var1 = self->_data->var1;
  if (var1)
  {
    CFDictionaryApplyFunction(var1, cancelTimer, 0);
  }
}

- (void)restoreStateChanges:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        -[CAStateController setState:ofLayer:transitionSpeed:](self, "setState:ofLayer:transitionSpeed:", [a3 objectForKey:*(*(&v10 + 1) + 8 * v8)], *(*(&v10 + 1) + 8 * v8), 0.0);
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (id)removeAllStateChanges
{
  v17 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  var1 = self->_data->var1;
  v5 = [(__CFDictionary *)var1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(var1);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [CFDictionaryGetValue(self->_data->var1 v9)];
        if (v10)
        {
          CFDictionarySetValue(Mutable, v9, v10);
          [(CAStateController *)self setState:0 ofLayer:v9 transitionSpeed:0.0];
        }
      }

      v6 = [(__CFDictionary *)var1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  return Mutable;
}

- (void)setInitialStatesOfLayer:(id)a3 transitionSpeed:(float)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = [a3 states];
  if (v7)
  {
    v8 = v7;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v31;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        if ([v14 isInitial])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v14 = 0;
    }

    *&v10 = a4;
    [(CAStateController *)self setState:v14 ofLayer:a3 transitionSpeed:v10];
  }

  v15 = [a3 sublayers];
  if (v15)
  {
    v16 = v15;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [v15 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v16);
          }

          *&v18 = a4;
          [(CAStateController *)self setInitialStatesOfLayer:*(*(&v25 + 1) + 8 * i) transitionSpeed:v18];
        }

        v19 = [v16 countByEnumeratingWithState:&v25 objects:v24 count:16];
      }

      while (v19);
    }
  }

  v22 = [a3 mask];
  if (v22)
  {
    *&v23 = a4;
    [(CAStateController *)self setInitialStatesOfLayer:v22 transitionSpeed:v23];
  }
}

- (void)setState:(id)a3 ofLayer:(id)a4 transitionSpeed:(float)a5
{
  v95 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Value = CFDictionaryGetValue(self->_data->var1, a4);
    v10 = [(CAStateControllerLayer *)Value currentState];
    if (v10 == a3)
    {
      return;
    }

    v11 = v10;
    if (Value)
    {
      nextTimer = Value->_nextTimer;
      if (nextTimer)
      {
        [(NSTimer *)nextTimer invalidate];
        Value->_nextTimer = 0;

        Value->_nextState = 0;
      }
    }

    v13 = [a4 states];
    v14 = [a4 stateTransitions];
    v15 = v14;
    if (a3)
    {
      if ([(NSArray *)v13 indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if (x_log_get_states(void)::once != -1)
        {
          dispatch_once(&x_log_get_states(void)::once, &__block_literal_global_9551);
        }

        v16 = x_log_get_states(void)::log;
        if (os_log_type_enabled(x_log_get_states(void)::log, OS_LOG_TYPE_ERROR))
        {
          v84[0] = 0;
          v17 = "trying to set state not in given layer.";
LABEL_16:
          _os_log_error_impl(&dword_183AA6000, v16, OS_LOG_TYPE_ERROR, v17, v84, 2u);
          return;
        }

        return;
      }

      v77 = v15;
      if (!Value)
      {
        Value = [[CAStateControllerLayer alloc] initWithLayer:a4];
        var1 = self->_data->var1;
        v19 = CFRetain(Value);
        CFDictionarySetValue(var1, a4, v19);
      }
    }

    else
    {
      v77 = v14;
    }

    state = +[CATransaction disableActions];
    v21 = state;
    if ((state & 1) == 0)
    {
      state = [CATransaction setDisableActions:1];
    }

    if (a3)
    {
      if (!v11 || (state = find_state(v13, [(CAState *)v11 basedOn]), v22 = a3, state != a3))
      {
        state = find_state(v13, [a3 basedOn]);
        v22 = state == v11 ? v11 : 0;
        if (v11 && state != v11)
        {
          v23 = v11;
          while (2)
          {
            state = a3;
            do
            {
              if (v23 == state)
              {
                v22 = v23;
                goto LABEL_38;
              }

              state = find_state(v13, [state basedOn]);
            }

            while (state);
            state = find_state(v13, [(CAState *)v23 basedOn]);
            v23 = state;
            v22 = 0;
            if (state)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_38:
    v80 = v11;
    if (Value)
    {
      undoStack = Value->_undoStack;
    }

    else
    {
      undoStack = 0;
    }

    v81 = a4;
    v82 = Value;
    v79 = self;
    v78 = v21;
    v83 = a3;
    if (v22 == a3)
    {
      v25 = 0;
      if (!undoStack)
      {
        goto LABEL_56;
      }
    }

    else
    {
      do
      {
        MEMORY[0x1EEE9AC00](state);
        v25 = &v76 - 4;
        *(&v76 - 3) = a3;
        *(&v76 - 2) = 0;
        *(&v76 - 4) = v26;
        *(&v76 - 2) = objc_alloc_init(CAStateControllerUndo);
        state = find_state(v13, [a3 basedOn]);
        a3 = state;
      }

      while (state != v22);
      if (!undoStack)
      {
        goto LABEL_56;
      }
    }

    v27 = undoStack;
    do
    {
      if (v27->_state == v22)
      {
        break;
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      transitions = v27->_transitions;
      v29 = [(NSMutableArray *)transitions countByEnumeratingWithState:&v91 objects:v90 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v92;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v92 != v31)
            {
              objc_enumerationMutation(transitions);
            }

            [*(*(&v91 + 1) + 8 * i) invalidate];
          }

          v30 = [(NSMutableArray *)transitions countByEnumeratingWithState:&v91 objects:v90 count:16];
        }

        while (v30);
      }

      v27 = v27->_next;
    }

    while (v27);
LABEL_56:
    v33 = v81;
    v34 = v79;
    v35 = v77;
    if (a5 > 0.0)
    {
      v36 = [(CAState *)v80 name];
      transition = find_transition(v35, v36, [v83 name]);
      if (transition)
      {
        *&v38 = a5;
        [(CAStateController *)v34 _applyTransition:transition layer:v33 undo:undoStack speed:v38];
      }

      else
      {
        if (undoStack)
        {
          v39 = undoStack;
          do
          {
            v40 = v39->_state;
            if (v40 == v22)
            {
              break;
            }

            v41 = find_transition(v35, [(CAState *)v40 name], @"*");
            if (v41)
            {
              *&v42 = a5;
              [(CAStateController *)v34 _applyTransition:v41 layer:v33 undo:0 speed:v42];
            }

            v39 = v39->_next;
          }

          while (v39);
        }

        if (v25)
        {
          v43 = v25;
          do
          {
            v44 = find_transition(v35, @"*", [v43[1] name]);
            if (v44)
            {
              *&v45 = a5;
              [(CAStateController *)v34 _applyTransition:v44 layer:v33 undo:v43[2] speed:v45];
            }

            v43 = *v43;
          }

          while (v43);
        }
      }
    }

    if (undoStack)
    {
      do
      {
        if (undoStack->_state == v22)
        {
          break;
        }

        v46 = [(CAStateControllerUndo *)undoStack elements];
        v47 = [(NSMutableArray *)v46 count];
        if (v47)
        {
          v48 = v47 - 1;
          do
          {
            [-[NSMutableArray objectAtIndex:](v46 objectAtIndex:{v48--), "apply:", 0}];
          }

          while (v48 != -1);
        }

        next = undoStack->_next;

        undoStack = next;
      }

      while (next);
    }

    for (j = v34; v25; v25 = *v25)
    {
      *(v25[2] + 8) = undoStack;
      undoStack = v25[2];
      [(CAStateControllerUndo *)undoStack setState:v25[1]];
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v51 = [v25[1] elements];
      v52 = [v51 countByEnumeratingWithState:&v86 objects:v85 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v87;
        do
        {
          for (k = 0; k != v53; ++k)
          {
            if (*v87 != v54)
            {
              objc_enumerationMutation(v51);
            }

            [*(*(&v86 + 1) + 8 * k) apply:undoStack];
          }

          v53 = [v51 countByEnumeratingWithState:&v86 objects:v85 count:16];
        }

        while (v53);
      }
    }

    v56 = v82;
    if (v82)
    {
      [(CAStateControllerLayer *)v82 setCurrentState:v83];
      v57 = j;
    }

    else
    {
      v61 = v83;
      v57 = j;
      if (!(v83 | undoStack))
      {
        [0 setCurrentState:0];
LABEL_113:
        WeakRetained = objc_loadWeakRetained(&v57->_data->var2);
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained stateController:v57 didSetStateOfLayer:v81];
        }

        if ((v78 & 1) == 0)
        {
          [CATransaction setDisableActions:0];
        }

        return;
      }

      v56 = [[CAStateControllerLayer alloc] initWithLayer:v33];
      v62 = j->_data->var1;
      v63 = CFRetain(v56);
      CFDictionarySetValue(v62, v33, v63);

      [(CAStateControllerLayer *)v56 setCurrentState:v61];
      if (!v56)
      {
        v82 = 0;
LABEL_88:
        v58 = v80;
        if (v83 && a5 > 0.0)
        {
          v59 = [(NSArray *)v13 indexOfObjectIdenticalTo:v83];
          v60 = v58 ? [(NSArray *)v13 indexOfObjectIdenticalTo:v58]: -1;
          if (v60 >= v59)
          {
            [v83 previousDelay];
          }

          else
          {
            [v83 nextDelay];
          }

          v65 = v64;
          if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v66 = [(NSArray *)v13 count];
            if (v60 < v59)
            {
              v67 = 1;
            }

            else
            {
              v67 = -1;
            }

            v68 = v67 + v59;
            while (v68 >= -1)
            {
              v69 = v68;
              if (v68 < v66 && v68 != -1)
              {
                v70 = [-[NSArray objectAtIndex:](v13 objectAtIndex:{v68), "isEnabled"}];
                v68 = v69 + v67;
                if (!v70)
                {
                  continue;
                }
              }

              if (v69 < v66)
              {
                v71 = v82;
                if ((v69 & 0x80000000) == 0)
                {
                  v71->_nextState = [(NSArray *)v13 objectAtIndex:v69];
                }

                v72 = begin_time(v57->_data->var3) + v65 / a5;
                v73 = mach_absolute_time();
                v71->_nextTimer = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v57 target:sel__nextStateTimer_ selector:v33 userInfo:0 repeats:{fmax(v72 - CATimeWithHostTime(v73), 0.0)}];
                v74 = [MEMORY[0x1E695DFD0] mainRunLoop];
                [v74 addTimer:v71->_nextTimer forMode:*MEMORY[0x1E695DA28]];
                v71->_nextSpeed = a5;
              }

              goto LABEL_113;
            }
          }
        }

        goto LABEL_113;
      }
    }

    v82 = v56;
    v56->_undoStack = undoStack;
    goto LABEL_88;
  }

  if (x_log_get_states(void)::once != -1)
  {
    dispatch_once(&x_log_get_states(void)::once, &__block_literal_global_9551);
  }

  v16 = x_log_get_states(void)::log;
  if (os_log_type_enabled(x_log_get_states(void)::log, OS_LOG_TYPE_ERROR))
  {
    v84[0] = 0;
    v17 = "trying to set state of nil layer.";
    goto LABEL_16;
  }
}

- (id)stateOfLayer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Value = CFDictionaryGetValue(self->_data->var1, a3);

    return [Value currentState];
  }

  else
  {
    if (x_log_get_states(void)::once != -1)
    {
      dispatch_once(&x_log_get_states(void)::once, &__block_literal_global_9551);
    }

    v5 = x_log_get_states(void)::log;
    if (os_log_type_enabled(x_log_get_states(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "trying to read state of nil layer.", v6, 2u);
    }

    return 0;
  }
}

- (CAStateController)initWithLayer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateController;
  v4 = [(CAStateController *)&v6 init];
  if (v4)
  {
    v4->_data = malloc_type_calloc(1uLL, 0x20uLL, 0xA0040069AE433uLL);
    v4->_data->var0 = a3;
    v4->_data->var1 = CFDictionaryCreateMutable(0, 0, 0, 0);
  }

  return v4;
}

@end