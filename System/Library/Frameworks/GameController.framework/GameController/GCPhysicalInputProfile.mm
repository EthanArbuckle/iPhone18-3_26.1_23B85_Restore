@interface GCPhysicalInputProfile
- (BOOL)_isDeallocating;
- (BOOL)_tryRetain;
- (BOOL)settingsProfile:(id)a3 differsFrom:(id)a4;
- (GCController)controller;
- (GCPhysicalInputProfile)capture;
- (GCPhysicalInputProfile)init;
- (GCPhysicalInputProfile)initWithController:(id)a3;
- (GCPhysicalInputProfile)initWithIdentifier:(id)a3;
- (GCPhysicalInputProfile)initWithIdentifier:(id)a3 andPool:(id)a4;
- (GCPhysicalInputProfile)retain;
- (NSSet)mappedPhysicalInputNamesForElementAlias:(NSString *)elementAlias;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)mappedElementAliasForPhysicalInputName:(NSString *)inputName;
- (OS_dispatch_queue)handlerQueue;
- (id)_buttonWithDescription:(id)a3;
- (id)_buttonWithInfo:(id *)a3;
- (id)_cursorWithInfo:(id *)a3;
- (id)_directionPadWithDescription:(id)a3;
- (id)_directionPadWithInfo:(id *)a3;
- (id)_keyboardButtonWithInfo:(id *)a3;
- (id)_touchpadWithInfo:(id *)a3;
- (id)device;
- (id)remappedElementForIndex:(int64_t)a3;
- (void)_receivedEvent;
- (void)_receivedEventWithTimestamp:(unint64_t)a3;
- (void)_registerAxis:(id)a3;
- (void)_registerButton:(id)a3;
- (void)_registerDirectionPad:(id)a3;
- (void)_registerTopLevelButton:(id)a3;
- (void)_registerTopLevelDirectionPad:(id)a3;
- (void)_registerTopLevelTouchpad:(id)a3;
- (void)_registerTouchpad:(id)a3;
- (void)_triggerValueChangedHandlerForElement:(id)a3 queue:(id)a4;
- (void)_triggerValueChangedHandlerForElements:(id)a3 queue:(id)a4;
- (void)applyGestureSettingsToButton:(id)a3 withSettings:(id)a4;
- (void)applySettingsProfile:(_BYTE *)a1;
- (void)registerPhysicalInputName:(id)a3 toElementAlias:(id)a4 withPhysicalToElementMapping:(id)a5 withElementToPhysicalMapping:(id)a6;
- (void)release;
- (void)setButton:(id)a3 pressed:(BOOL)a4;
- (void)setButton:(id)a3 value:(double)a4;
- (void)setDevice:(id)a3;
- (void)setDpad:(id)a3 x:(double)a4 y:(double)a5;
- (void)setGamepadEventSource:(id)a3;
- (void)setSettingsProfile:(id)a3;
- (void)setStateFromPhysicalInput:(GCPhysicalInputProfile *)physicalInput;
- (void)setSyntheticDeviceElementValueChangedHandler:(id)a3;
- (void)updateElementDeviceReferences;
@end

@implementation GCPhysicalInputProfile

- (GCPhysicalInputProfile)initWithController:(id)a3
{
  v4 = a3;
  v5 = [(GCPhysicalInputProfile *)self init];
  v6 = v5;
  if (v5)
  {
    [(GCPhysicalInputProfile *)v5 setController:v4];
  }

  return v6;
}

- (void)setDpad:(id)a3 x:(double)a4 y:(double)a5
{
  v8 = a3;
  v9 = [(GCPhysicalInputProfile *)self handlerQueue];
  v10 = [v8 xAxis];
  *&v11 = a4;
  v12 = [v10 _setValue:v9 queue:v11];

  v13 = [v8 yAxis];
  *&v14 = a5;
  v15 = [v13 _setValue:v9 queue:v14];

  if ((v12 & 1) != 0 || v15)
  {
    if (v9)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __46__GCPhysicalInputProfile_Legacy__setDpad_x_y___block_invoke;
      v18[3] = &unk_1E8418C50;
      v18[4] = self;
      v19 = v8;
      dispatch_async(v9, v18);
    }

    else
    {
      v16 = [(GCPhysicalInputProfile *)self valueChangedHandler];

      if (v16)
      {
        v17 = [(GCPhysicalInputProfile *)self valueChangedHandler];
        (v17)[2](v17, self, v8);
      }
    }
  }
}

void __46__GCPhysicalInputProfile_Legacy__setDpad_x_y___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) valueChangedHandler];
    (*(v3 + 2))(v3, *(a1 + 32), *(a1 + 40));
  }
}

- (void)setButton:(id)a3 value:(double)a4
{
  v6 = a3;
  v7 = [(GCPhysicalInputProfile *)self handlerQueue];
  *&v8 = a4;
  if ([v6 _setValue:v7 queue:v8])
  {
    if (v7)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50__GCPhysicalInputProfile_Legacy__setButton_value___block_invoke;
      v11[3] = &unk_1E8418C50;
      v11[4] = self;
      v12 = v6;
      dispatch_async(v7, v11);
    }

    else
    {
      v9 = [(GCPhysicalInputProfile *)self valueChangedHandler];

      if (v9)
      {
        v10 = [(GCPhysicalInputProfile *)self valueChangedHandler];
        (v10)[2](v10, self, v6);
      }
    }
  }
}

void __50__GCPhysicalInputProfile_Legacy__setButton_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueChangedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) valueChangedHandler];
    (*(v3 + 2))(v3, *(a1 + 32), *(a1 + 40));
  }
}

- (void)setButton:(id)a3 pressed:(BOOL)a4
{
  v4 = 0.0;
  if (a4)
  {
    v4 = 1.0;
  }

  [(GCPhysicalInputProfile *)self setButton:a3 value:v4];
}

- (GCPhysicalInputProfile)retain
{
  if (atomic_fetch_add(&self->_inlineRefcount, 2uLL) <= -3)
  {
    __break(1u);
  }

  return self;
}

- (void)release
{
  add = atomic_fetch_add(&self->_inlineRefcount, 0xFFFFFFFFFFFFFFFELL);
  if (add <= 0)
  {
    if (add < 0)
    {
      goto LABEL_7;
    }

    objc_removeAssociatedObjects(self);
    objc_clear_deallocating();
    v4 = objc_autoreleasePoolPush();
    Weak = objc_loadWeak(&self->weakPool);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __refcountZeroed_block_invoke;
    v8[3] = &unk_1E841B360;
    v8[4] = self;
    v6 = [Weak addObjectWith:v8];
    objc_autoreleasePoolPop(v4);
    if (v6)
    {
      return;
    }

    v7 = -2;
    atomic_compare_exchange_strong(&self->_inlineRefcount, &v7, 1uLL);
    if (v7 != -2)
    {
LABEL_7:
      __break(1u);
      return;
    }

    [(GCPhysicalInputProfile *)self dealloc];
  }
}

- (BOOL)_tryRetain
{
  while (1)
  {
    inlineRefcount = self->_inlineRefcount;
    v3 = (inlineRefcount & 1) != 0 || inlineRefcount == -2;
    v4 = !v3;
    if (v3)
    {
LABEL_10:
      LOBYTE(self) = v4;
      return self;
    }

    if (inlineRefcount <= -3)
    {
      break;
    }

    v5 = self->_inlineRefcount;
    atomic_compare_exchange_strong(&self->_inlineRefcount, &v5, inlineRefcount + 2);
    if (v5 == inlineRefcount)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return self;
}

- (BOOL)_isDeallocating
{
  inlineRefcount = self->_inlineRefcount;
  if (inlineRefcount == -2)
  {
    LOBYTE(self) = 1;
  }

  else if (inlineRefcount <= -3)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = inlineRefcount & 1;
  }

  return self;
}

- (GCPhysicalInputProfile)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCPhysicalInputProfile *)self initWithIdentifier:v3];

  return v4;
}

- (GCPhysicalInputProfile)initWithIdentifier:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = GCPhysicalInputProfile;
  v5 = [(GCPhysicalInputProfile *)&v43 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    elements = v5->_elements;
    v5->_elements = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    buttons = v5->_buttons;
    v5->_buttons = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    axes = v5->_axes;
    v5->_axes = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    dpads = v5->_dpads;
    v5->_dpads = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    touchpads = v5->_touchpads;
    v5->_touchpads = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    allElements = v5->_allElements;
    v5->_allElements = v18;

    v20 = [MEMORY[0x1E695DFA8] set];
    allButtons = v5->_allButtons;
    v5->_allButtons = v20;

    v22 = [MEMORY[0x1E695DFA8] set];
    allAxes = v5->_allAxes;
    v5->_allAxes = v22;

    v24 = [MEMORY[0x1E695DFA8] set];
    allDpads = v5->_allDpads;
    v5->_allDpads = v24;

    v26 = [MEMORY[0x1E695DFA8] set];
    allTouchpads = v5->_allTouchpads;
    v5->_allTouchpads = v26;

    v28 = [MEMORY[0x1E695DFA8] set];
    allGestureAwareButtons = v5->_allGestureAwareButtons;
    v5->_allGestureAwareButtons = v28;

    v30 = [MEMORY[0x1E695DFA8] set];
    topLevelElements = v5->__topLevelElements;
    v5->__topLevelElements = v30;

    v32 = [MEMORY[0x1E695DFA8] set];
    topLevelButtons = v5->__topLevelButtons;
    v5->__topLevelButtons = v32;

    v34 = [MEMORY[0x1E695DFA8] set];
    topLevelDirectionPads = v5->__topLevelDirectionPads;
    v5->__topLevelDirectionPads = v34;

    v36 = [MEMORY[0x1E695DFA8] set];
    topLevelTouchpads = v5->__topLevelTouchpads;
    v5->__topLevelTouchpads = v36;

    physicalInputNameToElementAlias = v5->_physicalInputNameToElementAlias;
    v5->_physicalInputNameToElementAlias = 0;

    elementAliasToPhysicalInputNames = v5->_elementAliasToPhysicalInputNames;
    v5->_elementAliasToPhysicalInputNames = 0;

    if (!v5->pooled)
    {
      v40 = objc_alloc_init(GCObjectPool);
      pool = v5->pool;
      v5->pool = v40;
    }
  }

  return v5;
}

- (GCPhysicalInputProfile)initWithIdentifier:(id)a3 andPool:(id)a4
{
  self->pooled = 1;
  v6 = a4;
  v7 = [(GCPhysicalInputProfile *)self initWithIdentifier:a3];
  objc_storeWeak(&v7->weakPool, v6);

  return v7;
}

- (id)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (void)setDevice:(id)a3
{
  objc_storeWeak(&self->_device, a3);

  [(GCPhysicalInputProfile *)self updateElementDeviceReferences];
}

- (GCController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_loadWeakRetained(&self->_device);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (OS_dispatch_queue)handlerQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained handlerQueue];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return v4;
}

- (BOOL)settingsProfile:(id)a3 differsFrom:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (v5 && v6)
    {
      v9 = [v5 uuid];
      v10 = [v7 uuid];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = [v5 name];
      v13 = [v7 name];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = [v5 elementMappings];
      v16 = [v15 count];
      v17 = [v7 elementMappings];
      v18 = [v17 count];

      if (v16 == v18)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = [v5 elementMappings];
        v20 = [v19 keyEnumerator];

        obj = v20;
        v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v43;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v43 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v42 + 1) + 8 * i);
              v26 = [v5 elementMappings];
              v27 = [v26 objectForKeyedSubscript:v25];

              v28 = [v7 elementMappings];
              v29 = [v28 objectForKeyedSubscript:v25];

              if (!v29)
              {
                goto LABEL_35;
              }

              v30 = [v27 remappingOrder];
              if (v30 != [v29 remappingOrder] || (objc_msgSend(v27, "mappingKey"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "mappingKey"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "isEqual:", v32), v32, v31, (v33 & 1) == 0))
              {
                if (gc_isInternalBuild())
                {
                  v34 = getGCLogger();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    [GCPhysicalInputProfile settingsProfile:v27 differsFrom:v29];
                  }

LABEL_34:
                }

LABEL_35:

                v8 = 1;
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = v27;
                  v35 = v29;
                  v36 = [v34 invertHorizontally];
                  if (v36 != [v35 invertHorizontally] || (v37 = -[NSObject invertVertically](v34, "invertVertically"), v37 != objc_msgSend(v35, "invertVertically")) || (v38 = -[NSObject swapAxes](v34, "swapAxes"), v38 != objc_msgSend(v35, "swapAxes")))
                  {
                    if (gc_isInternalBuild())
                    {
                      [GCPhysicalInputProfile settingsProfile:v34 differsFrom:?];
                    }

                    goto LABEL_34;
                  }
                }
              }
            }

            v22 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
            v8 = 0;
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v8 = 0;
        }

LABEL_36:
      }

      else
      {
LABEL_25:
        v8 = 1;
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setSettingsProfile:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_settingsProfile;
  objc_storeStrong(&v6->_settingsProfile, a3);
  [(GCPhysicalInputProfile *)v6 applySettingsProfile:?];
  v8 = [(GCPhysicalInputProfile *)v6 handlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__GCPhysicalInputProfile_setSettingsProfile___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = v6;
  v12 = v7;
  v13 = v5;
  v9 = v5;
  v10 = v7;
  dispatch_async(v8, block);

  objc_sync_exit(v6);
}

- (void)applySettingsProfile:(_BYTE *)a1
{
  v251 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v230 = a1;
  if (a1 && v3)
  {
    v220 = v3;
    a1[600] = 0;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v5 = [a1 allButtons];
    v6 = [v5 countByEnumeratingWithState:&v243 objects:v250 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v244;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v244 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v243 + 1) + 8 * i);
          if (([v10 remappingKey] & 0x80000000) == 0)
          {
            objc_storeStrong(&v230[8 * [v10 remappingKey] + 184], v10);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v243 objects:v250 count:16];
      }

      while (v7);
    }

    v11 = *(v230 + 71);
    *(v230 + 71) = 0;

    v12 = *(v230 + 72);
    *(v230 + 72) = 0;

    v228 = objc_opt_new();
    v227 = objc_opt_new();
    v222 = objc_opt_new();
    v221 = objc_opt_new();
    v13 = [*(v230 + 17) objectForKeyedSubscript:@"Button Share"];

    v14 = @"Button Options";
    if (v13)
    {
      v14 = @"Button Share";
    }

    v15 = v14;
    v16 = objc_alloc_init(GCReplayKitGestureSettings);
    v210 = v15;
    [(GCReplayKitGestureSettings *)v16 setControllerElementMappingKey:v15];
    [(GCReplayKitGestureSettings *)v16 setSinglePressGesture:-1];
    v4 = v220;
    -[GCReplayKitGestureSettings setDoublePressGesture:](v16, "setDoublePressGesture:", [v220 doublePressShareGesture] - 1);
    v229 = v16;
    -[GCReplayKitGestureSettings setLongPressGesture:](v16, "setLongPressGesture:", [v220 longPressShareGesture] - 1);
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    obj = [v230 _topLevelButtons];
    v17 = [obj countByEnumeratingWithState:&v239 objects:v249 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v240;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v240 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v239 + 1) + 8 * j);
          if ([v21 remappable])
          {
            v22 = [v4 elementMappingForPhysicalPress:v21];

            if (v22)
            {
              v23 = [v4 logicalButtonForPhysicalPressOf:v21 onPhysicalInputProfile:v230];
            }

            else
            {
              v23 = v21;
            }

            v24 = v23;
            if (v23)
            {
              objc_storeStrong(&v230[8 * [v21 remappingKey] + 184], v23);
              v25 = [v21 primaryAlias];
              v26 = [v24 primaryAlias];
              [v230 registerPhysicalInputName:v25 toElementAlias:v26 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v27 = [v24 unmappedSfSymbolsName];
              if (!v27)
              {
                goto LABEL_26;
              }

              v28 = v27;
              v29 = [v24 primaryAlias];
              v30 = [v222 objectForKeyedSubscript:v29];
              v31 = [v24 unmappedSfSymbolsName];
              v32 = [v30 isEqualToString:v31];

              if ((v32 & 1) == 0)
              {
LABEL_26:
                v33 = [v21 unmappedSfSymbolsName];
                v34 = [v24 primaryAlias];
                [v222 setObject:v33 forKeyedSubscript:v34];
              }

              v35 = [v24 unmappedNameLocalizationKey];
              if (!v35)
              {
                goto LABEL_29;
              }

              v36 = v35;
              v37 = [v24 primaryAlias];
              v38 = [v221 objectForKeyedSubscript:v37];
              v39 = [v24 unmappedNameLocalizationKey];
              v40 = [v38 isEqualToString:v39];

              if ((v40 & 1) == 0)
              {
LABEL_29:
                v41 = [v21 unmappedNameLocalizationKey];
                v42 = [v24 primaryAlias];
                [v221 setObject:v41 forKeyedSubscript:v42];
              }
            }

            v4 = v220;
          }

          [v230 applyGestureSettingsToButton:v21 withSettings:v229];
        }

        v18 = [obj countByEnumeratingWithState:&v239 objects:v249 count:16];
      }

      while (v18);
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v213 = *(v230 + 15);
    v43 = [v213 countByEnumeratingWithState:&v235 objects:v248 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v236;
      v46 = v230 + 184;
      v211 = *v236;
      do
      {
        v47 = 0;
        v212 = v44;
        do
        {
          if (*v236 != v45)
          {
            objc_enumerationMutation(v213);
          }

          v48 = *(*(&v235 + 1) + 8 * v47);
          if ([v48 remappable])
          {
            v49 = [v4 directionPadMappingForPhysicalPress:v48];
            if (v49)
            {
              v50 = [v4 logicalDirectionPadForPhysicalPressOf:v48 onPhysicalInputProfile:v230];
            }

            else
            {
              v50 = v48;
            }

            v51 = v50;
            if (v50)
            {
              v52 = [v48 primaryAlias];
              v53 = [v51 primaryAlias];
              [v230 registerPhysicalInputName:v52 toElementAlias:v53 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              LODWORD(v53) = [v49 swapAxes];
              v54 = [v49 invertHorizontally];
              v55 = [v49 invertVertically];
              v217 = v49;
              if (v53)
              {
                v219 = [v51 yAxis];
                v218 = [v51 xAxis];
                obja = [v48 yAxis];
                v224 = [v48 xAxis];
                if (v54)
                {
                  v56 = [v51 left];
                  v57 = [v48 up];
                  v58 = [v57 remappingKey];
                  v59 = *&v46[8 * v58];
                  *&v46[8 * v58] = v56;

                  v223 = [v48 left];
                  v60 = [v51 right];
                  v61 = [v48 down];
                  v62 = [v61 remappingKey];
                  v63 = *&v46[8 * v62];
                  *&v46[8 * v62] = v60;

                  [v48 right];
                }

                else
                {
                  v72 = [v51 right];
                  v73 = [v48 up];
                  v74 = [v73 remappingKey];
                  v75 = *&v46[8 * v74];
                  *&v46[8 * v74] = v72;

                  v223 = [v48 right];
                  v76 = [v51 left];
                  v77 = [v48 down];
                  v78 = [v77 remappingKey];
                  v79 = *&v46[8 * v78];
                  *&v46[8 * v78] = v76;

                  [v48 left];
                }
                v216 = ;
                if (v55)
                {
                  v80 = [v51 up];
                  v81 = [v48 left];
                  v82 = [v81 remappingKey];
                  v83 = *&v46[8 * v82];
                  *&v46[8 * v82] = v80;

                  v215 = [v48 up];
                  v84 = [v51 down];
                  v85 = [v48 right];
                  v86 = [v85 remappingKey];
                  v87 = *&v46[8 * v86];
                  *&v46[8 * v86] = v84;

                  [v48 down];
                }

                else
                {
                  v105 = [v51 down];
                  v106 = [v48 left];
                  v107 = [v106 remappingKey];
                  v108 = *&v46[8 * v107];
                  *&v46[8 * v107] = v105;

                  v215 = [v48 down];
                  v109 = [v51 up];
                  v110 = [v48 right];
                  v111 = [v110 remappingKey];
                  v112 = *&v46[8 * v111];
                  *&v46[8 * v111] = v109;

                  [v48 up];
                }
              }

              else
              {
                v219 = [v51 xAxis];
                v218 = [v51 yAxis];
                obja = [v48 xAxis];
                v224 = [v48 yAxis];
                if (v55)
                {
                  v64 = [v51 down];
                  v65 = [v48 up];
                  v66 = [v65 remappingKey];
                  v67 = *&v46[8 * v66];
                  *&v46[8 * v66] = v64;

                  v223 = [v48 down];
                  v68 = [v51 up];
                  v69 = [v48 down];
                  v70 = [v69 remappingKey];
                  v71 = *&v46[8 * v70];
                  *&v46[8 * v70] = v68;

                  [v48 up];
                }

                else
                {
                  v89 = [v51 up];
                  v90 = [v48 up];
                  v91 = [v90 remappingKey];
                  v92 = *&v46[8 * v91];
                  *&v46[8 * v91] = v89;

                  v223 = [v48 up];
                  v93 = [v51 down];
                  v94 = [v48 down];
                  v95 = [v94 remappingKey];
                  v96 = *&v46[8 * v95];
                  *&v46[8 * v95] = v93;

                  [v48 down];
                }
                v216 = ;
                if (v54)
                {
                  v97 = [v51 right];
                  v98 = [v48 left];
                  v99 = [v98 remappingKey];
                  v100 = *&v46[8 * v99];
                  *&v46[8 * v99] = v97;

                  v215 = [v48 right];
                  v101 = [v51 left];
                  v102 = [v48 right];
                  v103 = [v102 remappingKey];
                  v104 = *&v46[8 * v103];
                  *&v46[8 * v103] = v101;

                  [v48 left];
                }

                else
                {
                  v113 = [v51 left];
                  v114 = [v48 left];
                  v115 = [v114 remappingKey];
                  v116 = *&v46[8 * v115];
                  *&v46[8 * v115] = v113;

                  v215 = [v48 left];
                  v117 = [v51 right];
                  v118 = [v48 right];
                  v119 = [v118 remappingKey];
                  v120 = *&v46[8 * v119];
                  *&v46[8 * v119] = v117;

                  [v48 right];
                }
              }
              v88 = ;
              v214 = v88;
              v121 = [v51 unmappedSfSymbolsName];
              if (!v121)
              {
                goto LABEL_59;
              }

              v122 = v121;
              v123 = [v51 primaryAlias];
              v124 = [v222 objectForKeyedSubscript:v123];
              v125 = [v51 unmappedSfSymbolsName];
              v126 = [v124 isEqualToString:v125];

              if ((v126 & 1) == 0)
              {
LABEL_59:
                v127 = [v48 unmappedSfSymbolsName];
                v128 = [v51 primaryAlias];
                [v222 setObject:v127 forKeyedSubscript:v128];

                v129 = [v48 up];
                v130 = [v129 unmappedSfSymbolsName];
                v131 = [v48 up];
                v132 = [*&v46[8 * objc_msgSend(v131 "remappingKey")]];
                [v222 setObject:v130 forKeyedSubscript:v132];

                v133 = [v48 down];
                v134 = [v133 unmappedSfSymbolsName];
                v135 = [v48 down];
                v136 = [*&v46[8 * objc_msgSend(v135 "remappingKey")]];
                [v222 setObject:v134 forKeyedSubscript:v136];

                v137 = [v48 left];
                v138 = [v137 unmappedSfSymbolsName];
                v139 = [v48 left];
                v140 = [*&v46[8 * objc_msgSend(v139 "remappingKey")]];
                [v222 setObject:v138 forKeyedSubscript:v140];

                v141 = [v48 right];
                v142 = [v141 unmappedSfSymbolsName];
                v143 = [v48 right];
                v144 = [*&v46[8 * objc_msgSend(v143 "remappingKey")]];
                [v222 setObject:v142 forKeyedSubscript:v144];
              }

              v145 = [v51 unmappedNameLocalizationKey];
              if (!v145)
              {
                goto LABEL_62;
              }

              v146 = v145;
              v147 = [v51 primaryAlias];
              v148 = [v221 objectForKeyedSubscript:v147];
              v149 = [v51 unmappedNameLocalizationKey];
              v150 = [v148 isEqualToString:v149];

              if ((v150 & 1) == 0)
              {
LABEL_62:
                v151 = [v48 unmappedNameLocalizationKey];
                v152 = [v51 primaryAlias];
                [v221 setObject:v151 forKeyedSubscript:v152];

                v153 = [v51 primaryAlias];
                v154 = [v221 objectForKeyedSubscript:v153];

                if (v154)
                {
                  v155 = [v48 up];
                  v156 = [*&v46[8 * objc_msgSend(v155 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_UP" forKeyedSubscript:v156];

                  v157 = [v48 down];
                  v158 = [*&v46[8 * objc_msgSend(v157 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_DOWN" forKeyedSubscript:v158];

                  v159 = [v48 left];
                  v160 = [*&v46[8 * objc_msgSend(v159 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_LEFT" forKeyedSubscript:v160];

                  v161 = [v48 right];
                  v162 = [*&v46[8 * objc_msgSend(v161 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_RIGHT" forKeyedSubscript:v162];

                  v163 = MEMORY[0x1E696AEC0];
                  v164 = _GCFConvertStringToLocalizedString();
                  v165 = [v163 stringWithFormat:v164, v154];
                  v166 = [v219 primaryAlias];
                  [v221 setObject:v165 forKeyedSubscript:v166];

                  v167 = MEMORY[0x1E696AEC0];
                  v168 = _GCFConvertStringToLocalizedString();
                  v169 = [v167 stringWithFormat:v168, v154];
                  v170 = [v218 primaryAlias];
                  [v221 setObject:v169 forKeyedSubscript:v170];
                }
              }

              v171 = [obja primaryAlias];
              v172 = [v51 xAxis];
              v173 = [v172 primaryAlias];
              [v230 registerPhysicalInputName:v171 toElementAlias:v173 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v174 = [v224 primaryAlias];
              v175 = [v51 yAxis];
              v176 = [v175 primaryAlias];
              [v230 registerPhysicalInputName:v174 toElementAlias:v176 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v177 = [v223 primaryAlias];
              v178 = [v51 up];
              v179 = [v178 primaryAlias];
              [v230 registerPhysicalInputName:v177 toElementAlias:v179 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v180 = [v216 primaryAlias];
              v181 = [v51 down];
              v182 = [v181 primaryAlias];
              [v230 registerPhysicalInputName:v180 toElementAlias:v182 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v183 = [v215 primaryAlias];
              v184 = [v51 left];
              v185 = [v184 primaryAlias];
              [v230 registerPhysicalInputName:v183 toElementAlias:v185 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v186 = [v214 primaryAlias];
              v187 = [v51 right];
              v188 = [v187 primaryAlias];
              [v230 registerPhysicalInputName:v186 toElementAlias:v188 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v46 = v230 + 184;
              v4 = v220;
              v45 = v211;
              v44 = v212;
              v49 = v217;
            }
          }

          ++v47;
        }

        while (v44 != v47);
        v44 = [v213 countByEnumeratingWithState:&v235 objects:v248 count:16];
      }

      while (v44);
    }

    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    v189 = [v230 allElements];
    v190 = [v189 countByEnumeratingWithState:&v231 objects:v247 count:16];
    if (v190)
    {
      v191 = v190;
      v192 = *v232;
      do
      {
        for (k = 0; k != v191; ++k)
        {
          if (*v232 != v192)
          {
            objc_enumerationMutation(v189);
          }

          v194 = *(*(&v231 + 1) + 8 * k);
          if (([v194 remappable] & 1) == 0)
          {
            v195 = [v194 collection];
            v196 = [v195 remappable];

            if (!v196)
            {
              continue;
            }
          }

          v197 = [v194 primaryAlias];
          v198 = [v221 objectForKeyedSubscript:v197];

          if (v198)
          {
            v199 = [v194 primaryAlias];
            v200 = [v221 objectForKeyedSubscript:v199];
            [v194 setNameLocalizationKey:v200];
          }

          else
          {
            [v194 setNameLocalizationKey:0];
          }

          v201 = [v194 primaryAlias];
          v202 = [v222 objectForKeyedSubscript:v201];

          if (v202)
          {
            v203 = [v194 primaryAlias];
            v204 = [v222 objectForKeyedSubscript:v203];
            [v194 setSfSymbolsName:v204];
          }

          else
          {
            [v194 setSfSymbolsName:0];
          }
        }

        v191 = [v189 countByEnumeratingWithState:&v231 objects:v247 count:16];
      }

      while (v191);
    }

    v205 = *(v230 + 72);
    *(v230 + 72) = v227;
    v206 = v227;

    v207 = *(v230 + 71);
    *(v230 + 71) = v228;
    v208 = v228;
  }

  v209 = *MEMORY[0x1E69E9840];
}

void __45__GCPhysicalInputProfile_setSettingsProfile___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v6 = [*(a1 + 32) controller];
  if ([v6 isPublished])
  {
    v3 = [*(a1 + 32) settingsProfile:*(a1 + 40) differsFrom:*(a1 + 48)];

    if (v3)
    {
      if (gc_isInternalBuild())
      {
        __45__GCPhysicalInputProfile_setSettingsProfile___block_invoke_cold_1(v2);
      }

      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      v5 = [*v2 controller];
      [v4 postNotificationName:@"GCControllerUserCustomizationsDidChangeNotification" object:v5 userInfo:0];
    }
  }

  else
  {
  }
}

- (void)registerPhysicalInputName:(id)a3 toElementAlias:(id)a4 withPhysicalToElementMapping:(id)a5 withElementToPhysicalMapping:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  if (([v16 isEqualToString:v10] & 1) == 0)
  {
    self->_hasRemappedElements = 1;
  }

  [v12 setObject:v10 forKeyedSubscript:v16];

  v13 = [v11 objectForKeyedSubscript:v10];

  if (!v13)
  {
    v14 = objc_opt_new();
    [v11 setObject:v14 forKeyedSubscript:v10];
  }

  v15 = [v11 objectForKeyedSubscript:v10];
  [v15 addObject:v16];
}

- (void)applyGestureSettingsToButton:(id)a3 withSettings:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = getGCSettingsLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v8;
      _os_log_impl(&dword_1D2CD5000, v9, OS_LOG_TYPE_INFO, "applyGestureSettingsToButton: %@", buf, 0xCu);
    }

    v10 = getGCSettingsLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v7;
      _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_INFO, "replayKitSettings: %@", buf, 0xCu);
    }

    [v8 setSinglePressHandler:0];
    [v8 setLongPressHandler:0];
    [v8 setDoublePressHandler:0];
    v11 = [v7 controllerElementMappingKey];
    v12 = [v8 primaryAlias];
    v13 = [v12 isEqualToString:v11];

    if (v13)
    {
      v14 = [v7 gestureTypeForGestureMode:0];
      v15 = [v7 gestureTypeForGestureMode:1];
      v16 = [v7 gestureTypeForGestureMode:2];
      if (v14 != -1)
      {
        v17 = getGCSettingsLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v8;
          _os_log_impl(&dword_1D2CD5000, v17, OS_LOG_TYPE_INFO, "Configuring screenshot button: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __68__GCPhysicalInputProfile_applyGestureSettingsToButton_withSettings___block_invoke;
        aBlock[3] = &unk_1E841B7D8;
        objc_copyWeak(&v46, buf);
        v18 = _Block_copy(aBlock);
        switch(v14)
        {
          case 2:
            v21 = getGCSettingsLogger();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v21, OS_LOG_TYPE_INFO, "Double press for screenshot", v44, 2u);
            }

            [v8 setDoublePressHandler:v18];
            break;
          case 1:
            v20 = getGCSettingsLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v20, OS_LOG_TYPE_INFO, "Long press for screenshot", v44, 2u);
            }

            [v8 setLongPressHandler:v18];
            break;
          case 0:
            v19 = getGCSettingsLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_INFO, "Single press for screenshot", v44, 2u);
            }

            [v8 setSinglePressHandler:v18];
            break;
        }

        objc_destroyWeak(&v46);
        objc_destroyWeak(buf);
      }

      if (v15 != -1)
      {
        v22 = getGCSettingsLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v8;
          _os_log_impl(&dword_1D2CD5000, v22, OS_LOG_TYPE_INFO, "Configuring video recording button: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __68__GCPhysicalInputProfile_applyGestureSettingsToButton_withSettings___block_invoke_132;
        v42[3] = &unk_1E841B7D8;
        objc_copyWeak(&v43, buf);
        v23 = _Block_copy(v42);
        switch(v15)
        {
          case 2:
            v26 = getGCSettingsLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v26, OS_LOG_TYPE_INFO, "Double press for video", v44, 2u);
            }

            [v8 setDoublePressHandler:v23];
            break;
          case 1:
            v25 = getGCSettingsLogger();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v25, OS_LOG_TYPE_INFO, "Long press for video", v44, 2u);
            }

            [v8 setLongPressHandler:v23];
            break;
          case 0:
            v24 = getGCSettingsLogger();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v24, OS_LOG_TYPE_INFO, "Single press for video", v44, 2u);
            }

            [v8 setSinglePressHandler:v23];
            break;
        }

        objc_destroyWeak(&v43);
        objc_destroyWeak(buf);
      }

      if (v16 != -1)
      {
        v27 = getGCSettingsLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v8;
          _os_log_impl(&dword_1D2CD5000, v27, OS_LOG_TYPE_INFO, "Configuring replay capture button: %@", buf, 0xCu);
        }

        v28 = currentProcessBundleIdentifier();
        v29 = [v28 isEqualToString:@"com.apple.Preferences"];

        if ((v29 & 1) == 0)
        {
          v30 = [MEMORY[0x1E696AD88] defaultCenter];
          v31 = [(GCPhysicalInputProfile *)self controller];
          [v30 postNotificationName:@"GCControllerStartVideoRecordingBuffering" object:v31];
        }

        objc_initWeak(buf, self);
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = __68__GCPhysicalInputProfile_applyGestureSettingsToButton_withSettings___block_invoke_141;
        v40 = &unk_1E841B7D8;
        objc_copyWeak(&v41, buf);
        v32 = _Block_copy(&v37);
        switch(v16)
        {
          case 2:
            v35 = getGCSettingsLogger();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v35, OS_LOG_TYPE_INFO, "Double press for replay capture", v44, 2u);
            }

            [v8 setDoublePressHandler:{v32, v37, v38, v39, v40}];
            break;
          case 1:
            v34 = getGCSettingsLogger();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v34, OS_LOG_TYPE_INFO, "Long press for replay capture", v44, 2u);
            }

            [v8 setLongPressHandler:{v32, v37, v38, v39, v40}];
            break;
          case 0:
            v33 = getGCSettingsLogger();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *v44 = 0;
              _os_log_impl(&dword_1D2CD5000, v33, OS_LOG_TYPE_INFO, "Single press for replay capture", v44, 2u);
            }

            [v8 setSinglePressHandler:{v32, v37, v38, v39, v40}];
            break;
        }

        objc_destroyWeak(&v41);
        objc_destroyWeak(buf);
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __68__GCPhysicalInputProfile_applyGestureSettingsToButton_withSettings___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained controller];
  [v4 postNotificationName:@"GCControllerScreenshotTriggered" object:v3];
}

void __68__GCPhysicalInputProfile_applyGestureSettingsToButton_withSettings___block_invoke_132(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained controller];
  [v4 postNotificationName:@"GCControllerVideoRecordingToggled" object:v3 userInfo:&unk_1F4E8F3E8];
}

void __68__GCPhysicalInputProfile_applyGestureSettingsToButton_withSettings___block_invoke_141(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained controller];
  [v4 postNotificationName:@"GCControllerVideoRecordingToggled" object:v3 userInfo:&unk_1F4E8F410];
}

- (id)remappedElementForIndex:(int64_t)a3
{
  if (a3 <= 0x2E)
  {
    v4 = self->_remappedElements[a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)mappedElementAliasForPhysicalInputName:(NSString *)inputName
{
  v4 = inputName;
  if ([(GCPhysicalInputProfile *)self hasRemappedElements])
  {
    v5 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v4];
    if (([v5 remappable] & 1) != 0 || (objc_msgSend(v5, "collection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "remappable"), v6, v7))
    {
      v8 = [(NSDictionary *)self->_physicalInputNameToElementAlias objectForKeyedSubscript:v4];
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (NSSet)mappedPhysicalInputNamesForElementAlias:(NSString *)elementAlias
{
  v4 = elementAlias;
  if ([(GCPhysicalInputProfile *)self hasRemappedElements])
  {
    v5 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v4];
    if (([v5 remappable] & 1) != 0 || (objc_msgSend(v5, "collection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "remappable"), v6, v7))
    {
      v8 = [(NSDictionary *)self->_elementAliasToPhysicalInputNames objectForKeyedSubscript:v4];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v4, 0}];
    }

    v9 = v8;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v4, 0}];
  }

  return v9;
}

- (void)updateElementDeviceReferences
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_allElements;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_device);
        [v8 setDevice:{WeakRetained, v11}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_directionPadWithInfo:(id *)a3
{
  if (!a3->var1)
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = [[GCControllerDirectionPad alloc] initWithDigital:a3->var2 descriptionName:a3->var0];
  [(GCControllerElement *)v5 setRemappable:a3->var5];
  [(GCControllerElement *)v5 setMappableToSystemGestures:a3->var7];
  [(GCControllerElement *)v5 setBoundToSystemGesture:a3->var6];
  [(GCControllerDirectionPad *)v5 setUnmappedNameLocalizationKey:a3->var9];
  [(GCControllerElement *)v5 setUnmappedSfSymbolsName:a3->var8];
  [(GCControllerElement *)v5 setAliases:a3->var10];
  if ([(GCControllerElement *)v5 isBoundToSystemGesture])
  {
    var6 = a3->var6;
    v7 = [(GCControllerDirectionPad *)v5 up];
    [v7 setBoundToSystemGesture:var6];

    v8 = a3->var6;
    v9 = [(GCControllerDirectionPad *)v5 down];
    [v9 setBoundToSystemGesture:v8];

    v10 = a3->var6;
    v11 = [(GCControllerDirectionPad *)v5 left];
    [v11 setBoundToSystemGesture:v10];

    v12 = a3->var6;
    v13 = [(GCControllerDirectionPad *)v5 right];
    [v13 setBoundToSystemGesture:v12];
  }

  if (a3->var4 <= 0)
  {
    v62 = [(GCControllerDirectionPad *)v5 up];
    [v62 setRemappingKey:0xFFFFFFFFLL];

    v63 = [(GCControllerDirectionPad *)v5 down];
    [v63 setRemappingKey:0xFFFFFFFFLL];

    v64 = [(GCControllerDirectionPad *)v5 left];
    [v64 setRemappingKey:0xFFFFFFFFLL];

    v65 = [(GCControllerDirectionPad *)v5 right];
    [v65 setRemappingKey:0xFFFFFFFFLL];

    [(GCControllerElement *)v5 setRemappingKey:0xFFFFFFFFLL];
    v66 = [(GCControllerDirectionPad *)v5 xAxis];
    [v66 setRemappingKey:0xFFFFFFFFLL];

    v60 = [(GCControllerDirectionPad *)v5 yAxis];
    [v60 setRemappingKey:0xFFFFFFFFLL];
  }

  else
  {
    var0 = a3->var3.var0.var0;
    v15 = [(GCControllerDirectionPad *)v5 up];
    [v15 setRemappingKey:var0];

    var1 = a3->var3.var1.var1;
    v17 = [(GCControllerDirectionPad *)v5 down];
    [v17 setRemappingKey:var1];

    var2 = a3->var3.var1.var2;
    v19 = [(GCControllerDirectionPad *)v5 left];
    [v19 setRemappingKey:var2];

    var3 = a3->var3.var1.var3;
    v21 = [(GCControllerDirectionPad *)v5 right];
    [v21 setRemappingKey:var3];

    v22 = [(GCControllerDirectionPad *)v5 up];
    -[GCControllerElement setRemappingKey:](v5, "setRemappingKey:", [v22 remappingKey]);

    v23 = [(GCControllerDirectionPad *)v5 up];
    v24 = [v23 remappingKey];
    v25 = [(GCControllerDirectionPad *)v5 xAxis];
    [v25 setRemappingKey:v24];

    v26 = [(GCControllerDirectionPad *)v5 up];
    v27 = [v26 remappingKey];
    v28 = [(GCControllerDirectionPad *)v5 yAxis];
    [v28 setRemappingKey:v27];

    v29 = [(GCControllerDirectionPad *)v5 up];
    LODWORD(v27) = [v29 remappingKey];

    if ((v27 & 0x80000000) == 0)
    {
      v30 = [(GCControllerDirectionPad *)v5 up];
      v31 = [(GCControllerDirectionPad *)v5 up];
      v32 = [v31 remappingKey];
      v33 = self->_remappedElements[v32];
      self->_remappedElements[v32] = v30;
    }

    v34 = [(GCControllerDirectionPad *)v5 down];
    v35 = [v34 remappingKey];

    if ((v35 & 0x80000000) == 0)
    {
      v36 = [(GCControllerDirectionPad *)v5 down];
      v37 = [(GCControllerDirectionPad *)v5 down];
      v38 = [v37 remappingKey];
      v39 = self->_remappedElements[v38];
      self->_remappedElements[v38] = v36;
    }

    v40 = [(GCControllerDirectionPad *)v5 left];
    v41 = [v40 remappingKey];

    if ((v41 & 0x80000000) == 0)
    {
      v42 = [(GCControllerDirectionPad *)v5 left];
      v43 = [(GCControllerDirectionPad *)v5 left];
      v44 = [v43 remappingKey];
      v45 = self->_remappedElements[v44];
      self->_remappedElements[v44] = v42;
    }

    v46 = [(GCControllerDirectionPad *)v5 right];
    v47 = [v46 remappingKey];

    if ((v47 & 0x80000000) == 0)
    {
      v48 = [(GCControllerDirectionPad *)v5 right];
      v49 = [(GCControllerDirectionPad *)v5 right];
      v50 = [v49 remappingKey];
      v51 = self->_remappedElements[v50];
      self->_remappedElements[v50] = v48;
    }

    v52 = [a3->var8 isEqualToString:@"dpad"];
    var8 = a3->var8;
    if (v52)
    {
      v54 = [var8 stringByAppendingString:@".up.fill"];
      v55 = [(GCControllerDirectionPad *)v5 up];
      [v55 setUnmappedSfSymbolsName:v54];

      v56 = [a3->var8 stringByAppendingString:@".down.fill"];
      v57 = [(GCControllerDirectionPad *)v5 down];
      [v57 setUnmappedSfSymbolsName:v56];

      v58 = [a3->var8 stringByAppendingString:@".left.fill"];
      v59 = [(GCControllerDirectionPad *)v5 left];
      [v59 setUnmappedSfSymbolsName:v58];

      v60 = [a3->var8 stringByAppendingString:@".right.fill"];
      v61 = [(GCControllerDirectionPad *)v5 right];
      [v61 setUnmappedSfSymbolsName:v60];
    }

    else
    {
      if (([var8 isEqualToString:@"l.joystick"] & 1) == 0 && !objc_msgSend(a3->var8, "isEqualToString:", @"r.joystick"))
      {
        goto LABEL_22;
      }

      v67 = [a3->var8 stringByAppendingString:@".tilt.up"];
      v68 = [(GCControllerDirectionPad *)v5 up];
      [v68 setUnmappedSfSymbolsName:v67];

      v69 = [a3->var8 stringByAppendingString:@".tilt.down"];
      v70 = [(GCControllerDirectionPad *)v5 down];
      [v70 setUnmappedSfSymbolsName:v69];

      v71 = [a3->var8 stringByAppendingString:@".tilt.left"];
      v72 = [(GCControllerDirectionPad *)v5 left];
      [v72 setUnmappedSfSymbolsName:v71];

      v60 = [a3->var8 stringByAppendingString:@".tilt.right"];
      v61 = [(GCControllerDirectionPad *)v5 right];
      [v61 setUnmappedSfSymbolsName:v60];
    }
  }

LABEL_22:
  [(GCPhysicalInputProfile *)self _registerTopLevelDirectionPad:v5];
LABEL_23:
  __destructor_8_s0_s48_s56_s64(a3);

  return v5;
}

- (id)_directionPadWithDescription:(id)a3
{
  v4 = a3;
  v7 = [v4 name];
  v8 = 1;
  v9 = [v4 isDigital];
  v10 = [v4 sourceUpExtendedEventFieldIndex];
  v11 = [v4 sourceDownExtendedEventFieldIndex];
  v12 = [v4 sourceLeftExtendedEventFieldIndex];
  v13 = [v4 sourceRightExtendedEventFieldIndex];
  v14 = 1;
  v15 = [v4 isRemappable];
  v16 = [v4 isBoundToSystemGesture];
  v17 = [v4 isMappableToSystemGestures];
  v18 = [v4 symbolName];

  v19 = [v4 nameLocalizationKey];

  v20 = [v4 additionalAliases];

  __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v6, &v7);
  if (self)
  {
    self = [(GCPhysicalInputProfile *)self _directionPadWithInfo:v6];
  }

  else
  {
    __destructor_8_s0_s48_s56_s64(v6);
  }

  __destructor_8_s0_s48_s56_s64(&v7);

  return self;
}

- (id)_cursorWithInfo:(id *)a3
{
  if (a3->var1)
  {
    v5 = [[GCDeviceCursor alloc] initWithDigital:a3->var2 descriptionName:a3->var0];
    [(GCPhysicalInputProfile *)self _registerTopLevelDirectionPad:v5];
  }

  else
  {
    v5 = 0;
  }

  __destructor_8_s0_s48_s56_s64(a3);

  return v5;
}

- (id)_buttonWithInfo:(id *)a3
{
  if (a3->var1)
  {
    if (a3->var7)
    {
      v5 = [[_GCControllerGestureAwareButtonInput alloc] initWithDescriptionName:a3->var0];
      [(NSMutableSet *)self->_allGestureAwareButtons addObject:v5];
    }

    else
    {
      v6 = off_1E84180B8;
      if (a3->var3.var0.var3 != 1)
      {
        v6 = off_1E8418008;
      }

      v5 = [objc_alloc(*v6) initWithDescriptionName:a3->var0];
    }

    [(GCControllerButtonInput *)v5 setNonAnalog:a3->var2];
    [(GCControllerButtonInput *)v5 setTouchedAndValueDistinct:a3->var3.var0.var1];
    LODWORD(v7) = a3->var3.var1.var2;
    [(GCControllerButtonInput *)v5 setDeadzone:v7];
    [(GCControllerElement *)v5 setRemappable:a3->var5];
    [(GCControllerElement *)v5 setUnmappedNameLocalizationKey:a3->var9];
    [(GCControllerElement *)v5 setUnmappedSfSymbolsName:a3->var8];
    [(GCControllerElement *)v5 setMappableToSystemGestures:a3->var7];
    [(GCControllerElement *)v5 setBoundToSystemGesture:a3->var6];
    [(GCControllerElement *)v5 setAliases:a3->var10];
    if (a3->var4 <= 0)
    {
      [(GCControllerElement *)v5 setRemappingKey:0xFFFFFFFFLL];
    }

    else
    {
      [(GCControllerElement *)v5 setRemappingKey:a3->var3.var0.var0];
      if (([(GCControllerElement *)v5 remappingKey]& 0x80000000) == 0)
      {
        objc_storeStrong(&self->_remappedElements[[(GCControllerElement *)v5 remappingKey]], v5);
      }
    }

    [(GCPhysicalInputProfile *)self _registerTopLevelButton:v5];
  }

  else
  {
    v5 = 0;
  }

  __destructor_8_s0_s48_s56_s64(a3);

  return v5;
}

- (id)_buttonWithDescription:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v5 = [v4 sourceExtendedEventFieldIndex];
  v16 = [v4 name];

  v17 = 1;
  v18 = [v4 isDigital];
  if (v5 > 0x7FFFFFFFFFFFFFFELL)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  v19 = v6;
  v20 = [v4 supportsTouch];
  [v4 sourcePressedThreshold];
  v21 = v7;
  v22 = 0;
  v23 = 1;
  v24 = [v4 isRemappable];
  v25 = [v4 isBoundToSystemGesture];
  v26 = [v4 isMappableToSystemGestures];
  v8 = [v4 symbolName];
  v9 = v27;
  v27 = v8;

  v10 = [v4 nameLocalizationKey];
  v11 = v28;
  v28 = v10;

  v12 = [v4 additionalAliases];
  v13 = v29;
  v29 = v12;

  __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v15, &v16);
  if (self)
  {
    self = [(GCPhysicalInputProfile *)self _buttonWithInfo:v15];
  }

  else
  {
    __destructor_8_s0_s48_s56_s64(v15);
  }

  __destructor_8_s0_s48_s56_s64(&v16);

  return self;
}

- (id)_keyboardButtonWithInfo:(id *)a3
{
  v5 = [(GCControllerButtonInput *)[GCKeyboardButtonElement alloc] initWithDescriptionName:a3->var0];
  [(GCControllerButtonInput *)v5 setNonAnalog:a3->var2];
  [(GCControllerButtonInput *)v5 setTouchedAndValueDistinct:a3->var3.var0.var1];
  LODWORD(v6) = a3->var3.var1.var2;
  [(GCControllerButtonInput *)v5 setDeadzone:v6];
  [(GCControllerElement *)v5 setRemappable:a3->var5];
  [(GCControllerElement *)v5 setUnmappedNameLocalizationKey:a3->var9];
  [(GCControllerElement *)v5 setUnmappedSfSymbolsName:a3->var8];
  [(GCControllerElement *)v5 setMappableToSystemGestures:a3->var7];
  [(GCControllerElement *)v5 setBoundToSystemGesture:a3->var6];
  [(GCControllerElement *)v5 setAliases:a3->var10];
  if (a3->var4 <= 0)
  {
    [(GCControllerElement *)v5 setRemappingKey:0xFFFFFFFFLL];
  }

  else
  {
    [(GCControllerElement *)v5 setRemappingKey:a3->var3.var0.var0];
    if (([(GCControllerElement *)v5 remappingKey]& 0x80000000) == 0)
    {
      objc_storeStrong(&self->_remappedElements[[(GCControllerElement *)v5 remappingKey]], v5);
    }
  }

  [(GCPhysicalInputProfile *)self _registerTopLevelButton:v5];
  __destructor_8_s0_s48_s56_s64(a3);

  return v5;
}

- (id)_touchpadWithInfo:(id *)a3
{
  if (a3->var1)
  {
    v5 = [[GCControllerTouchpad alloc] initWithDescriptionName:a3->var0];
    [(GCControllerElement *)v5 setRemappable:a3->var5];
    [(GCControllerElement *)v5 setMappableToSystemGestures:a3->var7];
    [(GCControllerElement *)v5 setBoundToSystemGesture:a3->var6];
    [(GCControllerElement *)v5 setUnmappedNameLocalizationKey:a3->var9];
    [(GCControllerElement *)v5 setUnmappedSfSymbolsName:a3->var8];
    [(GCControllerElement *)v5 setAliases:a3->var10];
    [(GCPhysicalInputProfile *)self _registerTopLevelTouchpad:v5];
  }

  else
  {
    v5 = 0;
  }

  __destructor_8_s0_s48_s56_s64(a3);

  return v5;
}

- (void)_registerTopLevelButton:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_allButtons containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__topLevelElements addObject:v4];
    [(NSMutableSet *)self->__topLevelButtons addObject:v4];
    [(GCPhysicalInputProfile *)self _registerButton:v4];
  }
}

- (void)_registerTopLevelDirectionPad:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_allDpads containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__topLevelElements addObject:v4];
    [(NSMutableSet *)self->__topLevelDirectionPads addObject:v4];
    [(GCPhysicalInputProfile *)self _registerDirectionPad:v4];
  }
}

- (void)_registerTopLevelTouchpad:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->__topLevelElements containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__topLevelElements addObject:v4];
    [(NSMutableSet *)self->__topLevelTouchpads addObject:v4];
    [(GCPhysicalInputProfile *)self _registerTouchpad:v4];
  }
}

- (void)_registerDirectionPad:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 aliases];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:v4 forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_dpads setObject:v4 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:v4];
  [(NSMutableSet *)self->_allDpads addObject:v4];
  v11 = [v4 xAxis];
  [(GCPhysicalInputProfile *)self _registerAxis:v11];

  v12 = [v4 yAxis];
  [(GCPhysicalInputProfile *)self _registerAxis:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_registerAxis:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 aliases];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:v4 forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_axes setObject:v4 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:v4];
  [(NSMutableSet *)self->_allAxes addObject:v4];
  v11 = [v4 positive];
  [(GCPhysicalInputProfile *)self _registerButton:v11];

  v12 = [v4 negative];
  [(GCPhysicalInputProfile *)self _registerButton:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_registerButton:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 aliases];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:v4 forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_buttons setObject:v4 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:v4];
  [(NSMutableSet *)self->_allButtons addObject:v4];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_registerTouchpad:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 aliases];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:v4 forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_touchpads setObject:v4 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:v4];
  [(NSMutableSet *)self->_allTouchpads addObject:v4];
  v11 = [v4 button];
  [(GCPhysicalInputProfile *)self _registerButton:v11];

  v12 = [v4 touchSurface];
  [(GCPhysicalInputProfile *)self _registerDirectionPad:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_triggerValueChangedHandlerForElement:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GCPhysicalInputProfile *)self valueDidChangeHandler];
  v9 = v8;
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__GCPhysicalInputProfile__triggerValueChangedHandlerForElement_queue___block_invoke;
    block[3] = &unk_1E841B800;
    v12 = v8;
    block[4] = self;
    v11 = v6;
    dispatch_async(v7, block);
  }
}

- (void)_triggerValueChangedHandlerForElements:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GCPhysicalInputProfile *)self valueDidChangeHandler];
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__GCPhysicalInputProfile__triggerValueChangedHandlerForElements_queue___block_invoke;
    block[3] = &unk_1E841A968;
    v10 = v6;
    v11 = self;
    v12 = v8;
    dispatch_async(v7, block);
  }
}

void __71__GCPhysicalInputProfile__triggerValueChangedHandlerForElements_queue___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        (*(*(a1 + 48) + 16))(*(a1 + 48));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_receivedEventWithTimestamp:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_device);
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = objc_loadWeakRetained(&self->_device);
    [v8 _becomeCurrent];
  }

  [(GCPhysicalInputProfile *)self setLastEventTimestamp:v6];
}

- (void)_receivedEvent
{
  v3 = mach_absolute_time();

  [(GCPhysicalInputProfile *)self _receivedEventWithTimestamp:v3];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCPhysicalInputProfile *)self allElements];
  v5 = [v4 count];
  v6 = [(GCPhysicalInputProfile *)self allButtons];
  v7 = [v6 count];
  v8 = [(GCPhysicalInputProfile *)self allAxes];
  v9 = [v8 count];
  v10 = [(GCPhysicalInputProfile *)self allDpads];
  v11 = [v3 stringWithFormat:@"%lu elements (%lu buttons, %lu axes, %lu dpads)", v5, v7, v9, objc_msgSend(v10, "count")];

  return v11;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCPhysicalInputProfile *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (GCPhysicalInputProfile)capture
{
  v133 = *MEMORY[0x1E69E9840];
  if (self->pooled)
  {
    WeakRetained = objc_loadWeakRetained(&self->weakPool);
  }

  else
  {
    WeakRetained = self->pool;
  }

  v103 = WeakRetained;
  if (WeakRetained)
  {
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __33__GCPhysicalInputProfile_capture__block_invoke;
    v128[3] = &unk_1E841B828;
    v128[4] = self;
    v129 = WeakRetained;
    v115 = [(GCObjectPool *)v129 takeObjectOrCreateWith:v128, v103];
  }

  else
  {
    v115 = [objc_alloc(objc_opt_class()) initWithIdentifier:{self->_identifier, 0}];
  }

  v114 = [MEMORY[0x1E695DF70] array];
  v113 = [(GCPhysicalInputProfile *)self handlerQueue];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v108 = self;
  v4 = self->__topLevelButtons;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v124 objects:v132 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v125;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v125 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v124 + 1) + 8 * i);
        v10 = [v115 buttons];
        v11 = [v9 primaryAlias];
        v12 = [v10 objectForKeyedSubscript:v11];

        v13 = [v9 sfSymbolsName];
        [v12 setSfSymbolsName:v13];

        v14 = [v9 localizedName];
        [v12 setLocalizedName:v14];

        [v9 value];
        v16 = v15;
        [v9 value];
        if (v17 <= 0.0)
        {
          v18 = [v9 isTouched];
        }

        else
        {
          v18 = 1;
        }

        v19 = v12;
        v20 = v113;
        v21 = v114;
        v23 = v18 ^ 1;
        if (v16 <= 0.0)
        {
          v23 = 1;
        }

        if (v16 != 0.0 && v23 != 0)
        {
          [GCControllerTouchpad setValueForXAxis:yAxis:touchDown:buttonValue:];
        }

        v25 = v21;
        *&v22 = v16;
        v26 = [v19 _setValue:v20 queue:v22];
        v27 = [v19 _setTouched:v18 queue:v20];
        if ((v26 & 1) != 0 || v27)
        {
          [v25 addObject:v19];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v124 objects:v132 count:16];
    }

    while (v6);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v108->__topLevelDirectionPads;
  v28 = [(NSMutableSet *)obj countByEnumeratingWithState:&v120 objects:v131 count:16];
  if (v28)
  {
    v29 = v28;
    v111 = *v121;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v121 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v120 + 1) + 8 * j);
        v32 = [v115 dpads];
        v33 = [v31 primaryAlias];
        v34 = [v32 objectForKeyedSubscript:v33];

        v35 = [v31 sfSymbolsName];
        [v34 setSfSymbolsName:v35];

        v36 = [v31 localizedName];
        [v34 setLocalizedName:v36];

        v37 = [v31 up];
        v38 = [v37 sfSymbolsName];

        if (v38)
        {
          v39 = [v31 up];
          v40 = [v39 sfSymbolsName];
          v41 = [v34 up];
          [v41 setSfSymbolsName:v40];
        }

        v42 = [v31 down];
        v43 = [v42 sfSymbolsName];

        if (v43)
        {
          v44 = [v31 down];
          v45 = [v44 sfSymbolsName];
          v46 = [v34 down];
          [v46 setSfSymbolsName:v45];
        }

        v47 = [v31 left];
        v48 = [v47 sfSymbolsName];

        if (v48)
        {
          v49 = [v31 left];
          v50 = [v49 sfSymbolsName];
          v51 = [v34 left];
          [v51 setSfSymbolsName:v50];
        }

        v52 = [v31 right];
        v53 = [v52 sfSymbolsName];

        if (v53)
        {
          v54 = [v31 right];
          v55 = [v54 sfSymbolsName];
          v56 = [v34 right];
          [v56 setSfSymbolsName:v55];
        }

        v57 = [v31 xAxis];
        [v57 value];
        v59 = v58;
        v60 = [v31 yAxis];
        [v60 value];
        v62 = v61;
        v63 = v34;
        v64 = v113;
        v65 = v114;
        v66 = [v63 xAxis];
        LODWORD(v67) = v59;
        v68 = [v66 _setValue:v64 queue:v67];

        v69 = [v63 yAxis];
        LODWORD(v70) = v62;
        v71 = [v69 _setValue:v64 queue:v70];

        if ((v68 & 1) != 0 || v71)
        {
          [v65 addObject:v63];
        }
      }

      v29 = [(NSMutableSet *)obj countByEnumeratingWithState:&v120 objects:v131 count:16];
    }

    while (v29);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v105 = v108->__topLevelTouchpads;
  v107 = [(NSMutableSet *)v105 countByEnumeratingWithState:&v116 objects:v130 count:16];
  if (v107)
  {
    v106 = *v117;
    do
    {
      for (k = 0; k != v107; ++k)
      {
        if (*v117 != v106)
        {
          objc_enumerationMutation(v105);
        }

        v73 = *(*(&v116 + 1) + 8 * k);
        v74 = [v115 touchpads];
        v75 = [v73 primaryAlias];
        v76 = [v74 objectForKeyedSubscript:v75];

        v77 = [v73 sfSymbolsName];
        [v76 setSfSymbolsName:v77];

        v78 = [v73 localizedName];
        [v76 setLocalizedName:v78];

        v79 = [v73 touchSurface];
        v80 = [v79 xAxis];
        [v80 value];
        v82 = v81;
        v83 = [v73 touchSurface];
        v112 = [v83 yAxis];
        [v112 value];
        v85 = v84;
        v86 = [v73 touchState];
        v87 = [v73 button];
        [v87 value];
        v89 = v88;
        v90 = v76;
        v91 = v113;
        v92 = v114;
        v93 = [v90 button];
        v94 = v91;
        v96 = v89 <= 0.0;
        if (!v86)
        {
          v96 = 1;
        }

        if (v89 != 0.0 && v96)
        {
          [GCControllerTouchpad setValueForXAxis:yAxis:touchDown:buttonValue:];
        }

        obja = v80;
        *&v95 = v89;
        v97 = [v93 _setValue:v94 queue:v95];
        v98 = [v93 _setTouched:v86 != 0 queue:v94];
        if ((v97 & 1) != 0 || v98)
        {
          [0 addObject:v93];
        }

        LODWORD(v99) = v82;
        LODWORD(v100) = v85;
        if ([v90 setDigitizerX:v86 != 0 digitizerY:v94 touchDown:v99 queue:v100])
        {
          [v92 addObject:v90];
        }
      }

      v107 = [(NSMutableSet *)v105 countByEnumeratingWithState:&v116 objects:v130 count:16];
    }

    while (v107);
  }

  v101 = *MEMORY[0x1E69E9840];

  return v115;
}

id __33__GCPhysicalInputProfile_capture__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(objc_opt_class()) initWithIdentifier:*(*(a1 + 32) + 608) andPool:*(a1 + 40)];

  return v3;
}

- (void)setStateFromPhysicalInput:(GCPhysicalInputProfile *)physicalInput
{
  v99 = *MEMORY[0x1E69E9840];
  v71 = physicalInput;
  v4 = [(GCPhysicalInputProfile *)self device];
  if (!v4 || (v5 = v4, -[GCPhysicalInputProfile controller](self, "controller"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSnapshot], v6, v5, v7))
  {
    v83 = [MEMORY[0x1E695DF70] array];
    v82 = [(GCPhysicalInputProfile *)self handlerQueue];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v8 = v71->__topLevelButtons;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v92 objects:v98 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v93;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v93 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v92 + 1) + 8 * i);
          buttons = self->_buttons;
          v15 = [v13 primaryAlias];
          v16 = [(NSMutableDictionary *)buttons objectForKeyedSubscript:v15];

          if (v16)
          {
            [v13 value];
            v18 = v17;
            v19 = v16;
            v20 = v83;
            LODWORD(v21) = v18;
            if ([v19 _setValue:v82 queue:v21])
            {
              [v20 addObject:v19];
            }
          }
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v92 objects:v98 count:16];
      }

      while (v10);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v71->__topLevelDirectionPads;
    v79 = [(NSMutableSet *)obj countByEnumeratingWithState:&v88 objects:v97 count:16];
    v81 = self;
    if (v79)
    {
      v77 = *v89;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v89 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v88 + 1) + 8 * j);
          dpads = self->_dpads;
          v25 = [v23 primaryAlias];
          v26 = [(NSMutableDictionary *)dpads objectForKeyedSubscript:v25];

          if (v26)
          {
            v27 = [v23 xAxis];
            [v27 value];
            v29 = v28;
            v30 = [v23 yAxis];
            [v30 value];
            v32 = v31;
            v33 = v26;
            v34 = v82;
            v35 = v83;
            v36 = [v33 xAxis];
            LODWORD(v37) = v29;
            v38 = [v36 _setValue:v34 queue:v37];

            v39 = [v33 yAxis];
            LODWORD(v40) = v32;
            v41 = [v39 _setValue:v34 queue:v40];

            if ((v38 & 1) != 0 || v41)
            {
              [v35 addObject:v33];
            }

            self = v81;
          }
        }

        v79 = [(NSMutableSet *)obj countByEnumeratingWithState:&v88 objects:v97 count:16];
      }

      while (v79);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v72 = v71->__topLevelTouchpads;
    v74 = [(NSMutableSet *)v72 countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v74)
    {
      v73 = *v85;
      do
      {
        for (k = 0; k != v74; ++k)
        {
          if (*v85 != v73)
          {
            objc_enumerationMutation(v72);
          }

          v43 = *(*(&v84 + 1) + 8 * k);
          touchpads = self->_touchpads;
          v45 = [v43 primaryAlias];
          v46 = [(NSMutableDictionary *)touchpads objectForKeyedSubscript:v45];

          if (v46)
          {
            v47 = [v43 touchSurface];
            v80 = [v47 xAxis];
            [v80 value];
            v49 = v48;
            v78 = [v43 touchSurface];
            v50 = [v78 yAxis];
            [v50 value];
            v52 = v51;
            v53 = [v43 touchState];
            v54 = [v43 button];
            [v54 value];
            v56 = v55;
            v57 = v46;
            v58 = v82;
            v59 = v83;
            v60 = [v57 button];
            v61 = v58;
            v63 = v56 <= 0.0;
            if (!v53)
            {
              v63 = 1;
            }

            if (v56 != 0.0 && v63)
            {
              [GCControllerTouchpad setValueForXAxis:yAxis:touchDown:buttonValue:];
            }

            v65 = v61;
            obja = v46;
            *&v62 = v56;
            v66 = [v60 _setValue:v61 queue:v62];
            v67 = [v60 _setTouched:v53 != 0 queue:v65];
            if ((v66 & 1) != 0 || v67)
            {
              [0 addObject:v60];
            }

            LODWORD(v68) = v49;
            LODWORD(v69) = v52;
            self = v81;
            if ([v57 setDigitizerX:v53 != 0 digitizerY:v65 touchDown:v68 queue:v69])
            {
              [v59 addObject:v57];
            }

            v46 = obja;
          }
        }

        v74 = [(NSMutableSet *)v72 countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v74);
    }
  }

  v70 = *MEMORY[0x1E69E9840];
}

- (void)setSyntheticDeviceElementValueChangedHandler:(id)a3
{
  v5 = _Block_copy(a3);
  objc_setProperty(self, a2, 592, v5, 1, 1);
}

- (void)setGamepadEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  gamepadEventObservation = self->_gamepadEventObservation;
  self->_gamepadEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke;
  v8[3] = &unk_1E841A588;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observeGamepadEvents:v8];
  v7 = self->_gamepadEventObservation;
  self->_gamepadEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke_2(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) __deprecated_controllerPausedHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) __deprecated_controllerPausedHandler];
    v3[2](v3, *(a1 + 32));
  }
}

void __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke_430(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 timestamp];
    [WeakRetained _receivedEventWithTimestamp:v5];
    v6 = [WeakRetained controller];
    if (v6)
    {
      v33 = v5;
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = [v6 handlerQueue];
      for (i = 0; i != 47; ++i)
      {
        if (i != 23 && [v3 hasValidValueForElement:i])
        {
          v10 = [WeakRetained remappedElementForIndex:i];
          if (v10)
          {
            [v3 floatValueForElement:i];
            [v10 _setPendingValue:?];
            v11 = [v10 collection];

            if (v11)
            {
              v12 = [v10 collection];
              [v7 addObject:v12];
            }

            else
            {
              [v7 addObject:v10];
            }
          }
        }
      }

      v13 = [WeakRetained[18] objectForKeyedSubscript:@"Button Menu"];
      if (v13)
      {
        v14 = [v3 hasValidValueForElement:23];

        if (v14)
        {
          [v3 floatValueForElement:23];
          v16 = v15;
          v13 = [WeakRetained[18] objectForKeyedSubscript:@"Button Menu"];
          v17 = [WeakRetained[18] objectForKeyedSubscript:@"Button Menu"];
          *&v18 = v16;
          [v17 _setPendingValue:v18];

          v19 = [WeakRetained[18] objectForKeyedSubscript:@"Button Menu"];
          [v7 addObject:v19];

          if (v16 > 0.0 && ([v13 isPressed] & 1) == 0)
          {
            v20 = [v6 handlerQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke_2;
            block[3] = &unk_1E8418C28;
            v43 = v6;
            dispatch_async(v20, block);
          }
        }

        else
        {
          v13 = 0;
        }
      }

      v21 = [MEMORY[0x1E695DFA8] set];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v22 = v7;
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v38 + 1) + 8 * j);
            if ([v27 _commitPendingValueOnQueue:v8])
            {
              [v21 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v24);
      }

      if ([v21 count])
      {
        [WeakRetained _triggerValueChangedHandlerForElements:v21 queue:v8];
      }

      v28 = [WeakRetained syntheticDeviceElementValueChangedHandler];
      if (v28)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke_430;
        aBlock[3] = &unk_1E8419210;
        v35 = v21;
        v36 = v28;
        v37 = v33;
        v29 = _Block_copy(aBlock);
        v30 = [WeakRetained syntheticDeviceHandlerQueue];
        v31 = v30;
        if (v30)
        {
          dispatch_async(v30, v29);
        }

        else
        {
          v29[2](v29);
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)settingsProfile:(void *)a1 differsFrom:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 elementKey];
  v5 = [a1 mappingKey];
  v12 = [a2 mappingKey];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)settingsProfile:(void *)a1 differsFrom:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = [a1 elementKey];
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __45__GCPhysicalInputProfile_setSettingsProfile___block_invoke_cold_1(id *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*a1 controller];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Posting GCControllerUserCustomizationsDidChangeNotification: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) debugName];
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end