@interface GCPhysicalInputProfile
- (BOOL)_isDeallocating;
- (BOOL)_tryRetain;
- (BOOL)settingsProfile:(id)profile differsFrom:(id)from;
- (GCController)controller;
- (GCPhysicalInputProfile)capture;
- (GCPhysicalInputProfile)init;
- (GCPhysicalInputProfile)initWithController:(id)controller;
- (GCPhysicalInputProfile)initWithIdentifier:(id)identifier;
- (GCPhysicalInputProfile)initWithIdentifier:(id)identifier andPool:(id)pool;
- (GCPhysicalInputProfile)retain;
- (NSSet)mappedPhysicalInputNamesForElementAlias:(NSString *)elementAlias;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)mappedElementAliasForPhysicalInputName:(NSString *)inputName;
- (OS_dispatch_queue)handlerQueue;
- (id)_buttonWithDescription:(id)description;
- (id)_buttonWithInfo:(id *)info;
- (id)_cursorWithInfo:(id *)info;
- (id)_directionPadWithDescription:(id)description;
- (id)_directionPadWithInfo:(id *)info;
- (id)_keyboardButtonWithInfo:(id *)info;
- (id)_touchpadWithInfo:(id *)info;
- (id)device;
- (id)remappedElementForIndex:(int64_t)index;
- (void)_receivedEvent;
- (void)_receivedEventWithTimestamp:(unint64_t)timestamp;
- (void)_registerAxis:(id)axis;
- (void)_registerButton:(id)button;
- (void)_registerDirectionPad:(id)pad;
- (void)_registerTopLevelButton:(id)button;
- (void)_registerTopLevelDirectionPad:(id)pad;
- (void)_registerTopLevelTouchpad:(id)touchpad;
- (void)_registerTouchpad:(id)touchpad;
- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue;
- (void)_triggerValueChangedHandlerForElements:(id)elements queue:(id)queue;
- (void)applyGestureSettingsToButton:(id)button withSettings:(id)settings;
- (void)applySettingsProfile:(_BYTE *)profile;
- (void)registerPhysicalInputName:(id)name toElementAlias:(id)alias withPhysicalToElementMapping:(id)mapping withElementToPhysicalMapping:(id)physicalMapping;
- (void)release;
- (void)setButton:(id)button pressed:(BOOL)pressed;
- (void)setButton:(id)button value:(double)value;
- (void)setDevice:(id)device;
- (void)setDpad:(id)dpad x:(double)x y:(double)y;
- (void)setGamepadEventSource:(id)source;
- (void)setSettingsProfile:(id)profile;
- (void)setStateFromPhysicalInput:(GCPhysicalInputProfile *)physicalInput;
- (void)setSyntheticDeviceElementValueChangedHandler:(id)handler;
- (void)updateElementDeviceReferences;
@end

@implementation GCPhysicalInputProfile

- (GCPhysicalInputProfile)initWithController:(id)controller
{
  controllerCopy = controller;
  v5 = [(GCPhysicalInputProfile *)self init];
  v6 = v5;
  if (v5)
  {
    [(GCPhysicalInputProfile *)v5 setController:controllerCopy];
  }

  return v6;
}

- (void)setDpad:(id)dpad x:(double)x y:(double)y
{
  dpadCopy = dpad;
  handlerQueue = [(GCPhysicalInputProfile *)self handlerQueue];
  xAxis = [dpadCopy xAxis];
  *&v11 = x;
  v12 = [xAxis _setValue:handlerQueue queue:v11];

  yAxis = [dpadCopy yAxis];
  *&v14 = y;
  v15 = [yAxis _setValue:handlerQueue queue:v14];

  if ((v12 & 1) != 0 || v15)
  {
    if (handlerQueue)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __46__GCPhysicalInputProfile_Legacy__setDpad_x_y___block_invoke;
      v18[3] = &unk_1E8418C50;
      v18[4] = self;
      v19 = dpadCopy;
      dispatch_async(handlerQueue, v18);
    }

    else
    {
      valueChangedHandler = [(GCPhysicalInputProfile *)self valueChangedHandler];

      if (valueChangedHandler)
      {
        valueChangedHandler2 = [(GCPhysicalInputProfile *)self valueChangedHandler];
        (valueChangedHandler2)[2](valueChangedHandler2, self, dpadCopy);
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

- (void)setButton:(id)button value:(double)value
{
  buttonCopy = button;
  handlerQueue = [(GCPhysicalInputProfile *)self handlerQueue];
  *&v8 = value;
  if ([buttonCopy _setValue:handlerQueue queue:v8])
  {
    if (handlerQueue)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50__GCPhysicalInputProfile_Legacy__setButton_value___block_invoke;
      v11[3] = &unk_1E8418C50;
      v11[4] = self;
      v12 = buttonCopy;
      dispatch_async(handlerQueue, v11);
    }

    else
    {
      valueChangedHandler = [(GCPhysicalInputProfile *)self valueChangedHandler];

      if (valueChangedHandler)
      {
        valueChangedHandler2 = [(GCPhysicalInputProfile *)self valueChangedHandler];
        (valueChangedHandler2)[2](valueChangedHandler2, self, buttonCopy);
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

- (void)setButton:(id)button pressed:(BOOL)pressed
{
  v4 = 0.0;
  if (pressed)
  {
    v4 = 1.0;
  }

  [(GCPhysicalInputProfile *)self setButton:button value:v4];
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCPhysicalInputProfile *)self initWithIdentifier:uUID];

  return v4;
}

- (GCPhysicalInputProfile)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v43.receiver = self;
  v43.super_class = GCPhysicalInputProfile;
  v5 = [(GCPhysicalInputProfile *)&v43 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    elements = v5->_elements;
    v5->_elements = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    buttons = v5->_buttons;
    v5->_buttons = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    axes = v5->_axes;
    v5->_axes = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    dpads = v5->_dpads;
    v5->_dpads = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    touchpads = v5->_touchpads;
    v5->_touchpads = dictionary5;

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

- (GCPhysicalInputProfile)initWithIdentifier:(id)identifier andPool:(id)pool
{
  self->pooled = 1;
  poolCopy = pool;
  v7 = [(GCPhysicalInputProfile *)self initWithIdentifier:identifier];
  objc_storeWeak(&v7->weakPool, poolCopy);

  return v7;
}

- (id)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (void)setDevice:(id)device
{
  objc_storeWeak(&self->_device, device);

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
  handlerQueue = [WeakRetained handlerQueue];

  if (handlerQueue)
  {
    v4 = handlerQueue;
  }

  else
  {
    v4 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return v4;
}

- (BOOL)settingsProfile:(id)profile differsFrom:(id)from
{
  v47 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  fromCopy = from;
  v7 = fromCopy;
  if (profileCopy == fromCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (profileCopy && fromCopy)
    {
      uuid = [profileCopy uuid];
      uuid2 = [v7 uuid];
      v11 = [uuid isEqual:uuid2];

      if (!v11)
      {
        goto LABEL_25;
      }

      name = [profileCopy name];
      name2 = [v7 name];
      v14 = [name isEqual:name2];

      if (!v14)
      {
        goto LABEL_25;
      }

      elementMappings = [profileCopy elementMappings];
      v16 = [elementMappings count];
      elementMappings2 = [v7 elementMappings];
      v18 = [elementMappings2 count];

      if (v16 == v18)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        elementMappings3 = [profileCopy elementMappings];
        keyEnumerator = [elementMappings3 keyEnumerator];

        obj = keyEnumerator;
        v21 = [keyEnumerator countByEnumeratingWithState:&v42 objects:v46 count:16];
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
              elementMappings4 = [profileCopy elementMappings];
              v27 = [elementMappings4 objectForKeyedSubscript:v25];

              elementMappings5 = [v7 elementMappings];
              v29 = [elementMappings5 objectForKeyedSubscript:v25];

              if (!v29)
              {
                goto LABEL_35;
              }

              remappingOrder = [v27 remappingOrder];
              if (remappingOrder != [v29 remappingOrder] || (objc_msgSend(v27, "mappingKey"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "mappingKey"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "isEqual:", v32), v32, v31, (v33 & 1) == 0))
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
                  invertHorizontally = [v34 invertHorizontally];
                  if (invertHorizontally != [v35 invertHorizontally] || (v37 = -[NSObject invertVertically](v34, "invertVertically"), v37 != objc_msgSend(v35, "invertVertically")) || (v38 = -[NSObject swapAxes](v34, "swapAxes"), v38 != objc_msgSend(v35, "swapAxes")))
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

- (void)setSettingsProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_settingsProfile;
  objc_storeStrong(&selfCopy->_settingsProfile, profile);
  [(GCPhysicalInputProfile *)selfCopy applySettingsProfile:?];
  handlerQueue = [(GCPhysicalInputProfile *)selfCopy handlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__GCPhysicalInputProfile_setSettingsProfile___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = selfCopy;
  v12 = v7;
  v13 = profileCopy;
  v9 = profileCopy;
  v10 = v7;
  dispatch_async(handlerQueue, block);

  objc_sync_exit(selfCopy);
}

- (void)applySettingsProfile:(_BYTE *)profile
{
  v251 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  profileCopy = profile;
  if (profile && v3)
  {
    v220 = v3;
    profile[600] = 0;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    allButtons = [profile allButtons];
    v6 = [allButtons countByEnumeratingWithState:&v243 objects:v250 count:16];
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
            objc_enumerationMutation(allButtons);
          }

          v10 = *(*(&v243 + 1) + 8 * i);
          if (([v10 remappingKey] & 0x80000000) == 0)
          {
            objc_storeStrong(&profileCopy[8 * [v10 remappingKey] + 184], v10);
          }
        }

        v7 = [allButtons countByEnumeratingWithState:&v243 objects:v250 count:16];
      }

      while (v7);
    }

    v11 = *(profileCopy + 71);
    *(profileCopy + 71) = 0;

    v12 = *(profileCopy + 72);
    *(profileCopy + 72) = 0;

    v228 = objc_opt_new();
    v227 = objc_opt_new();
    v222 = objc_opt_new();
    v221 = objc_opt_new();
    v13 = [*(profileCopy + 17) objectForKeyedSubscript:@"Button Share"];

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
    obj = [profileCopy _topLevelButtons];
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
              v23 = [v4 logicalButtonForPhysicalPressOf:v21 onPhysicalInputProfile:profileCopy];
            }

            else
            {
              v23 = v21;
            }

            v24 = v23;
            if (v23)
            {
              objc_storeStrong(&profileCopy[8 * [v21 remappingKey] + 184], v23);
              primaryAlias = [v21 primaryAlias];
              primaryAlias2 = [v24 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias toElementAlias:primaryAlias2 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              unmappedSfSymbolsName = [v24 unmappedSfSymbolsName];
              if (!unmappedSfSymbolsName)
              {
                goto LABEL_26;
              }

              v28 = unmappedSfSymbolsName;
              primaryAlias3 = [v24 primaryAlias];
              v30 = [v222 objectForKeyedSubscript:primaryAlias3];
              unmappedSfSymbolsName2 = [v24 unmappedSfSymbolsName];
              v32 = [v30 isEqualToString:unmappedSfSymbolsName2];

              if ((v32 & 1) == 0)
              {
LABEL_26:
                unmappedSfSymbolsName3 = [v21 unmappedSfSymbolsName];
                primaryAlias4 = [v24 primaryAlias];
                [v222 setObject:unmappedSfSymbolsName3 forKeyedSubscript:primaryAlias4];
              }

              unmappedNameLocalizationKey = [v24 unmappedNameLocalizationKey];
              if (!unmappedNameLocalizationKey)
              {
                goto LABEL_29;
              }

              v36 = unmappedNameLocalizationKey;
              primaryAlias5 = [v24 primaryAlias];
              v38 = [v221 objectForKeyedSubscript:primaryAlias5];
              unmappedNameLocalizationKey2 = [v24 unmappedNameLocalizationKey];
              v40 = [v38 isEqualToString:unmappedNameLocalizationKey2];

              if ((v40 & 1) == 0)
              {
LABEL_29:
                unmappedNameLocalizationKey3 = [v21 unmappedNameLocalizationKey];
                primaryAlias6 = [v24 primaryAlias];
                [v221 setObject:unmappedNameLocalizationKey3 forKeyedSubscript:primaryAlias6];
              }
            }

            v4 = v220;
          }

          [profileCopy applyGestureSettingsToButton:v21 withSettings:v229];
        }

        v18 = [obj countByEnumeratingWithState:&v239 objects:v249 count:16];
      }

      while (v18);
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v213 = *(profileCopy + 15);
    v43 = [v213 countByEnumeratingWithState:&v235 objects:v248 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v236;
      v46 = profileCopy + 184;
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
              v50 = [v4 logicalDirectionPadForPhysicalPressOf:v48 onPhysicalInputProfile:profileCopy];
            }

            else
            {
              v50 = v48;
            }

            v51 = v50;
            if (v50)
            {
              primaryAlias7 = [v48 primaryAlias];
              primaryAlias8 = [v51 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias7 toElementAlias:primaryAlias8 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              LODWORD(primaryAlias8) = [v49 swapAxes];
              invertHorizontally = [v49 invertHorizontally];
              invertVertically = [v49 invertVertically];
              v217 = v49;
              if (primaryAlias8)
              {
                yAxis = [v51 yAxis];
                xAxis = [v51 xAxis];
                obja = [v48 yAxis];
                xAxis2 = [v48 xAxis];
                if (invertHorizontally)
                {
                  left = [v51 left];
                  v57 = [v48 up];
                  remappingKey = [v57 remappingKey];
                  v59 = *&v46[8 * remappingKey];
                  *&v46[8 * remappingKey] = left;

                  left2 = [v48 left];
                  right = [v51 right];
                  down = [v48 down];
                  remappingKey2 = [down remappingKey];
                  v63 = *&v46[8 * remappingKey2];
                  *&v46[8 * remappingKey2] = right;

                  [v48 right];
                }

                else
                {
                  right2 = [v51 right];
                  v73 = [v48 up];
                  remappingKey3 = [v73 remappingKey];
                  v75 = *&v46[8 * remappingKey3];
                  *&v46[8 * remappingKey3] = right2;

                  left2 = [v48 right];
                  left3 = [v51 left];
                  down2 = [v48 down];
                  remappingKey4 = [down2 remappingKey];
                  v79 = *&v46[8 * remappingKey4];
                  *&v46[8 * remappingKey4] = left3;

                  [v48 left];
                }
                v216 = ;
                if (invertVertically)
                {
                  v80 = [v51 up];
                  left4 = [v48 left];
                  remappingKey5 = [left4 remappingKey];
                  v83 = *&v46[8 * remappingKey5];
                  *&v46[8 * remappingKey5] = v80;

                  down5 = [v48 up];
                  down3 = [v51 down];
                  right3 = [v48 right];
                  remappingKey6 = [right3 remappingKey];
                  v87 = *&v46[8 * remappingKey6];
                  *&v46[8 * remappingKey6] = down3;

                  [v48 down];
                }

                else
                {
                  down4 = [v51 down];
                  left5 = [v48 left];
                  remappingKey7 = [left5 remappingKey];
                  v108 = *&v46[8 * remappingKey7];
                  *&v46[8 * remappingKey7] = down4;

                  down5 = [v48 down];
                  v109 = [v51 up];
                  right4 = [v48 right];
                  remappingKey8 = [right4 remappingKey];
                  v112 = *&v46[8 * remappingKey8];
                  *&v46[8 * remappingKey8] = v109;

                  [v48 up];
                }
              }

              else
              {
                yAxis = [v51 xAxis];
                xAxis = [v51 yAxis];
                obja = [v48 xAxis];
                xAxis2 = [v48 yAxis];
                if (invertVertically)
                {
                  down6 = [v51 down];
                  v65 = [v48 up];
                  remappingKey9 = [v65 remappingKey];
                  v67 = *&v46[8 * remappingKey9];
                  *&v46[8 * remappingKey9] = down6;

                  left2 = [v48 down];
                  v68 = [v51 up];
                  down7 = [v48 down];
                  remappingKey10 = [down7 remappingKey];
                  v71 = *&v46[8 * remappingKey10];
                  *&v46[8 * remappingKey10] = v68;

                  [v48 up];
                }

                else
                {
                  v89 = [v51 up];
                  v90 = [v48 up];
                  remappingKey11 = [v90 remappingKey];
                  v92 = *&v46[8 * remappingKey11];
                  *&v46[8 * remappingKey11] = v89;

                  left2 = [v48 up];
                  down8 = [v51 down];
                  down9 = [v48 down];
                  remappingKey12 = [down9 remappingKey];
                  v96 = *&v46[8 * remappingKey12];
                  *&v46[8 * remappingKey12] = down8;

                  [v48 down];
                }
                v216 = ;
                if (invertHorizontally)
                {
                  right5 = [v51 right];
                  left6 = [v48 left];
                  remappingKey13 = [left6 remappingKey];
                  v100 = *&v46[8 * remappingKey13];
                  *&v46[8 * remappingKey13] = right5;

                  down5 = [v48 right];
                  left7 = [v51 left];
                  right6 = [v48 right];
                  remappingKey14 = [right6 remappingKey];
                  v104 = *&v46[8 * remappingKey14];
                  *&v46[8 * remappingKey14] = left7;

                  [v48 left];
                }

                else
                {
                  left8 = [v51 left];
                  left9 = [v48 left];
                  remappingKey15 = [left9 remappingKey];
                  v116 = *&v46[8 * remappingKey15];
                  *&v46[8 * remappingKey15] = left8;

                  down5 = [v48 left];
                  right7 = [v51 right];
                  right8 = [v48 right];
                  remappingKey16 = [right8 remappingKey];
                  v120 = *&v46[8 * remappingKey16];
                  *&v46[8 * remappingKey16] = right7;

                  [v48 right];
                }
              }
              v88 = ;
              v214 = v88;
              unmappedSfSymbolsName4 = [v51 unmappedSfSymbolsName];
              if (!unmappedSfSymbolsName4)
              {
                goto LABEL_59;
              }

              v122 = unmappedSfSymbolsName4;
              primaryAlias9 = [v51 primaryAlias];
              v124 = [v222 objectForKeyedSubscript:primaryAlias9];
              unmappedSfSymbolsName5 = [v51 unmappedSfSymbolsName];
              v126 = [v124 isEqualToString:unmappedSfSymbolsName5];

              if ((v126 & 1) == 0)
              {
LABEL_59:
                unmappedSfSymbolsName6 = [v48 unmappedSfSymbolsName];
                primaryAlias10 = [v51 primaryAlias];
                [v222 setObject:unmappedSfSymbolsName6 forKeyedSubscript:primaryAlias10];

                v129 = [v48 up];
                unmappedSfSymbolsName7 = [v129 unmappedSfSymbolsName];
                v131 = [v48 up];
                v132 = [*&v46[8 * objc_msgSend(v131 "remappingKey")]];
                [v222 setObject:unmappedSfSymbolsName7 forKeyedSubscript:v132];

                down10 = [v48 down];
                unmappedSfSymbolsName8 = [down10 unmappedSfSymbolsName];
                down11 = [v48 down];
                v136 = [*&v46[8 * objc_msgSend(down11 "remappingKey")]];
                [v222 setObject:unmappedSfSymbolsName8 forKeyedSubscript:v136];

                left10 = [v48 left];
                unmappedSfSymbolsName9 = [left10 unmappedSfSymbolsName];
                left11 = [v48 left];
                v140 = [*&v46[8 * objc_msgSend(left11 "remappingKey")]];
                [v222 setObject:unmappedSfSymbolsName9 forKeyedSubscript:v140];

                right9 = [v48 right];
                unmappedSfSymbolsName10 = [right9 unmappedSfSymbolsName];
                right10 = [v48 right];
                v144 = [*&v46[8 * objc_msgSend(right10 "remappingKey")]];
                [v222 setObject:unmappedSfSymbolsName10 forKeyedSubscript:v144];
              }

              unmappedNameLocalizationKey4 = [v51 unmappedNameLocalizationKey];
              if (!unmappedNameLocalizationKey4)
              {
                goto LABEL_62;
              }

              v146 = unmappedNameLocalizationKey4;
              primaryAlias11 = [v51 primaryAlias];
              v148 = [v221 objectForKeyedSubscript:primaryAlias11];
              unmappedNameLocalizationKey5 = [v51 unmappedNameLocalizationKey];
              v150 = [v148 isEqualToString:unmappedNameLocalizationKey5];

              if ((v150 & 1) == 0)
              {
LABEL_62:
                unmappedNameLocalizationKey6 = [v48 unmappedNameLocalizationKey];
                primaryAlias12 = [v51 primaryAlias];
                [v221 setObject:unmappedNameLocalizationKey6 forKeyedSubscript:primaryAlias12];

                primaryAlias13 = [v51 primaryAlias];
                v154 = [v221 objectForKeyedSubscript:primaryAlias13];

                if (v154)
                {
                  v155 = [v48 up];
                  v156 = [*&v46[8 * objc_msgSend(v155 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_UP" forKeyedSubscript:v156];

                  down12 = [v48 down];
                  v158 = [*&v46[8 * objc_msgSend(down12 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_DOWN" forKeyedSubscript:v158];

                  left12 = [v48 left];
                  v160 = [*&v46[8 * objc_msgSend(left12 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_LEFT" forKeyedSubscript:v160];

                  right11 = [v48 right];
                  v162 = [*&v46[8 * objc_msgSend(right11 "remappingKey")]];
                  [v221 setObject:@"DIRECTION_PAD_RIGHT" forKeyedSubscript:v162];

                  v163 = MEMORY[0x1E696AEC0];
                  v164 = _GCFConvertStringToLocalizedString();
                  v154 = [v163 stringWithFormat:v164, v154];
                  primaryAlias14 = [yAxis primaryAlias];
                  [v221 setObject:v154 forKeyedSubscript:primaryAlias14];

                  v167 = MEMORY[0x1E696AEC0];
                  v168 = _GCFConvertStringToLocalizedString();
                  v1542 = [v167 stringWithFormat:v168, v154];
                  primaryAlias15 = [xAxis primaryAlias];
                  [v221 setObject:v1542 forKeyedSubscript:primaryAlias15];
                }
              }

              primaryAlias16 = [obja primaryAlias];
              xAxis3 = [v51 xAxis];
              primaryAlias17 = [xAxis3 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias16 toElementAlias:primaryAlias17 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              primaryAlias18 = [xAxis2 primaryAlias];
              yAxis2 = [v51 yAxis];
              primaryAlias19 = [yAxis2 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias18 toElementAlias:primaryAlias19 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              primaryAlias20 = [left2 primaryAlias];
              v178 = [v51 up];
              primaryAlias21 = [v178 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias20 toElementAlias:primaryAlias21 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              primaryAlias22 = [v216 primaryAlias];
              down13 = [v51 down];
              primaryAlias23 = [down13 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias22 toElementAlias:primaryAlias23 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              primaryAlias24 = [down5 primaryAlias];
              left13 = [v51 left];
              primaryAlias25 = [left13 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias24 toElementAlias:primaryAlias25 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              primaryAlias26 = [v214 primaryAlias];
              right12 = [v51 right];
              primaryAlias27 = [right12 primaryAlias];
              [profileCopy registerPhysicalInputName:primaryAlias26 toElementAlias:primaryAlias27 withPhysicalToElementMapping:v228 withElementToPhysicalMapping:v227];

              v46 = profileCopy + 184;
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
    allElements = [profileCopy allElements];
    v190 = [allElements countByEnumeratingWithState:&v231 objects:v247 count:16];
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
            objc_enumerationMutation(allElements);
          }

          v194 = *(*(&v231 + 1) + 8 * k);
          if (([v194 remappable] & 1) == 0)
          {
            collection = [v194 collection];
            remappable = [collection remappable];

            if (!remappable)
            {
              continue;
            }
          }

          primaryAlias28 = [v194 primaryAlias];
          v198 = [v221 objectForKeyedSubscript:primaryAlias28];

          if (v198)
          {
            primaryAlias29 = [v194 primaryAlias];
            v200 = [v221 objectForKeyedSubscript:primaryAlias29];
            [v194 setNameLocalizationKey:v200];
          }

          else
          {
            [v194 setNameLocalizationKey:0];
          }

          primaryAlias30 = [v194 primaryAlias];
          v202 = [v222 objectForKeyedSubscript:primaryAlias30];

          if (v202)
          {
            primaryAlias31 = [v194 primaryAlias];
            v204 = [v222 objectForKeyedSubscript:primaryAlias31];
            [v194 setSfSymbolsName:v204];
          }

          else
          {
            [v194 setSfSymbolsName:0];
          }
        }

        v191 = [allElements countByEnumeratingWithState:&v231 objects:v247 count:16];
      }

      while (v191);
    }

    v205 = *(profileCopy + 72);
    *(profileCopy + 72) = v227;
    v206 = v227;

    v207 = *(profileCopy + 71);
    *(profileCopy + 71) = v228;
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

- (void)registerPhysicalInputName:(id)name toElementAlias:(id)alias withPhysicalToElementMapping:(id)mapping withElementToPhysicalMapping:(id)physicalMapping
{
  nameCopy = name;
  aliasCopy = alias;
  physicalMappingCopy = physicalMapping;
  mappingCopy = mapping;
  if (([nameCopy isEqualToString:aliasCopy] & 1) == 0)
  {
    self->_hasRemappedElements = 1;
  }

  [mappingCopy setObject:aliasCopy forKeyedSubscript:nameCopy];

  v13 = [physicalMappingCopy objectForKeyedSubscript:aliasCopy];

  if (!v13)
  {
    v14 = objc_opt_new();
    [physicalMappingCopy setObject:v14 forKeyedSubscript:aliasCopy];
  }

  v15 = [physicalMappingCopy objectForKeyedSubscript:aliasCopy];
  [v15 addObject:nameCopy];
}

- (void)applyGestureSettingsToButton:(id)button withSettings:(id)settings
{
  v49 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  settingsCopy = settings;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = buttonCopy;
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
      v48 = settingsCopy;
      _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_INFO, "replayKitSettings: %@", buf, 0xCu);
    }

    [v8 setSinglePressHandler:0];
    [v8 setLongPressHandler:0];
    [v8 setDoublePressHandler:0];
    controllerElementMappingKey = [settingsCopy controllerElementMappingKey];
    primaryAlias = [v8 primaryAlias];
    v13 = [primaryAlias isEqualToString:controllerElementMappingKey];

    if (v13)
    {
      v14 = [settingsCopy gestureTypeForGestureMode:0];
      v15 = [settingsCopy gestureTypeForGestureMode:1];
      v16 = [settingsCopy gestureTypeForGestureMode:2];
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
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          controller = [(GCPhysicalInputProfile *)self controller];
          [defaultCenter postNotificationName:@"GCControllerStartVideoRecordingBuffering" object:controller];
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

- (id)remappedElementForIndex:(int64_t)index
{
  if (index <= 0x2E)
  {
    v4 = self->_remappedElements[index];
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

- (id)_directionPadWithInfo:(id *)info
{
  if (!info->var1)
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = [[GCControllerDirectionPad alloc] initWithDigital:info->var2 descriptionName:info->var0];
  [(GCControllerElement *)v5 setRemappable:info->var5];
  [(GCControllerElement *)v5 setMappableToSystemGestures:info->var7];
  [(GCControllerElement *)v5 setBoundToSystemGesture:info->var6];
  [(GCControllerDirectionPad *)v5 setUnmappedNameLocalizationKey:info->var9];
  [(GCControllerElement *)v5 setUnmappedSfSymbolsName:info->var8];
  [(GCControllerElement *)v5 setAliases:info->var10];
  if ([(GCControllerElement *)v5 isBoundToSystemGesture])
  {
    var6 = info->var6;
    v7 = [(GCControllerDirectionPad *)v5 up];
    [v7 setBoundToSystemGesture:var6];

    v8 = info->var6;
    down = [(GCControllerDirectionPad *)v5 down];
    [down setBoundToSystemGesture:v8];

    v10 = info->var6;
    left = [(GCControllerDirectionPad *)v5 left];
    [left setBoundToSystemGesture:v10];

    v12 = info->var6;
    right = [(GCControllerDirectionPad *)v5 right];
    [right setBoundToSystemGesture:v12];
  }

  if (info->var4 <= 0)
  {
    v62 = [(GCControllerDirectionPad *)v5 up];
    [v62 setRemappingKey:0xFFFFFFFFLL];

    down2 = [(GCControllerDirectionPad *)v5 down];
    [down2 setRemappingKey:0xFFFFFFFFLL];

    left2 = [(GCControllerDirectionPad *)v5 left];
    [left2 setRemappingKey:0xFFFFFFFFLL];

    right2 = [(GCControllerDirectionPad *)v5 right];
    [right2 setRemappingKey:0xFFFFFFFFLL];

    [(GCControllerElement *)v5 setRemappingKey:0xFFFFFFFFLL];
    xAxis = [(GCControllerDirectionPad *)v5 xAxis];
    [xAxis setRemappingKey:0xFFFFFFFFLL];

    yAxis = [(GCControllerDirectionPad *)v5 yAxis];
    [yAxis setRemappingKey:0xFFFFFFFFLL];
  }

  else
  {
    var0 = info->var3.var0.var0;
    v15 = [(GCControllerDirectionPad *)v5 up];
    [v15 setRemappingKey:var0];

    var1 = info->var3.var1.var1;
    down3 = [(GCControllerDirectionPad *)v5 down];
    [down3 setRemappingKey:var1];

    var2 = info->var3.var1.var2;
    left3 = [(GCControllerDirectionPad *)v5 left];
    [left3 setRemappingKey:var2];

    var3 = info->var3.var1.var3;
    right3 = [(GCControllerDirectionPad *)v5 right];
    [right3 setRemappingKey:var3];

    v22 = [(GCControllerDirectionPad *)v5 up];
    -[GCControllerElement setRemappingKey:](v5, "setRemappingKey:", [v22 remappingKey]);

    v23 = [(GCControllerDirectionPad *)v5 up];
    remappingKey = [v23 remappingKey];
    xAxis2 = [(GCControllerDirectionPad *)v5 xAxis];
    [xAxis2 setRemappingKey:remappingKey];

    v26 = [(GCControllerDirectionPad *)v5 up];
    remappingKey2 = [v26 remappingKey];
    yAxis2 = [(GCControllerDirectionPad *)v5 yAxis];
    [yAxis2 setRemappingKey:remappingKey2];

    v29 = [(GCControllerDirectionPad *)v5 up];
    LODWORD(remappingKey2) = [v29 remappingKey];

    if ((remappingKey2 & 0x80000000) == 0)
    {
      v30 = [(GCControllerDirectionPad *)v5 up];
      v31 = [(GCControllerDirectionPad *)v5 up];
      remappingKey3 = [v31 remappingKey];
      v33 = self->_remappedElements[remappingKey3];
      self->_remappedElements[remappingKey3] = v30;
    }

    down4 = [(GCControllerDirectionPad *)v5 down];
    remappingKey4 = [down4 remappingKey];

    if ((remappingKey4 & 0x80000000) == 0)
    {
      down5 = [(GCControllerDirectionPad *)v5 down];
      down6 = [(GCControllerDirectionPad *)v5 down];
      remappingKey5 = [down6 remappingKey];
      v39 = self->_remappedElements[remappingKey5];
      self->_remappedElements[remappingKey5] = down5;
    }

    left4 = [(GCControllerDirectionPad *)v5 left];
    remappingKey6 = [left4 remappingKey];

    if ((remappingKey6 & 0x80000000) == 0)
    {
      left5 = [(GCControllerDirectionPad *)v5 left];
      left6 = [(GCControllerDirectionPad *)v5 left];
      remappingKey7 = [left6 remappingKey];
      v45 = self->_remappedElements[remappingKey7];
      self->_remappedElements[remappingKey7] = left5;
    }

    right4 = [(GCControllerDirectionPad *)v5 right];
    remappingKey8 = [right4 remappingKey];

    if ((remappingKey8 & 0x80000000) == 0)
    {
      right5 = [(GCControllerDirectionPad *)v5 right];
      right6 = [(GCControllerDirectionPad *)v5 right];
      remappingKey9 = [right6 remappingKey];
      v51 = self->_remappedElements[remappingKey9];
      self->_remappedElements[remappingKey9] = right5;
    }

    v52 = [info->var8 isEqualToString:@"dpad"];
    var8 = info->var8;
    if (v52)
    {
      v54 = [var8 stringByAppendingString:@".up.fill"];
      v55 = [(GCControllerDirectionPad *)v5 up];
      [v55 setUnmappedSfSymbolsName:v54];

      v56 = [info->var8 stringByAppendingString:@".down.fill"];
      down7 = [(GCControllerDirectionPad *)v5 down];
      [down7 setUnmappedSfSymbolsName:v56];

      v58 = [info->var8 stringByAppendingString:@".left.fill"];
      left7 = [(GCControllerDirectionPad *)v5 left];
      [left7 setUnmappedSfSymbolsName:v58];

      yAxis = [info->var8 stringByAppendingString:@".right.fill"];
      right7 = [(GCControllerDirectionPad *)v5 right];
      [right7 setUnmappedSfSymbolsName:yAxis];
    }

    else
    {
      if (([var8 isEqualToString:@"l.joystick"] & 1) == 0 && !objc_msgSend(info->var8, "isEqualToString:", @"r.joystick"))
      {
        goto LABEL_22;
      }

      v67 = [info->var8 stringByAppendingString:@".tilt.up"];
      v68 = [(GCControllerDirectionPad *)v5 up];
      [v68 setUnmappedSfSymbolsName:v67];

      v69 = [info->var8 stringByAppendingString:@".tilt.down"];
      down8 = [(GCControllerDirectionPad *)v5 down];
      [down8 setUnmappedSfSymbolsName:v69];

      v71 = [info->var8 stringByAppendingString:@".tilt.left"];
      left8 = [(GCControllerDirectionPad *)v5 left];
      [left8 setUnmappedSfSymbolsName:v71];

      yAxis = [info->var8 stringByAppendingString:@".tilt.right"];
      right7 = [(GCControllerDirectionPad *)v5 right];
      [right7 setUnmappedSfSymbolsName:yAxis];
    }
  }

LABEL_22:
  [(GCPhysicalInputProfile *)self _registerTopLevelDirectionPad:v5];
LABEL_23:
  __destructor_8_s0_s48_s56_s64(info);

  return v5;
}

- (id)_directionPadWithDescription:(id)description
{
  descriptionCopy = description;
  name = [descriptionCopy name];
  v8 = 1;
  isDigital = [descriptionCopy isDigital];
  sourceUpExtendedEventFieldIndex = [descriptionCopy sourceUpExtendedEventFieldIndex];
  sourceDownExtendedEventFieldIndex = [descriptionCopy sourceDownExtendedEventFieldIndex];
  sourceLeftExtendedEventFieldIndex = [descriptionCopy sourceLeftExtendedEventFieldIndex];
  sourceRightExtendedEventFieldIndex = [descriptionCopy sourceRightExtendedEventFieldIndex];
  v14 = 1;
  isRemappable = [descriptionCopy isRemappable];
  isBoundToSystemGesture = [descriptionCopy isBoundToSystemGesture];
  isMappableToSystemGestures = [descriptionCopy isMappableToSystemGestures];
  symbolName = [descriptionCopy symbolName];

  nameLocalizationKey = [descriptionCopy nameLocalizationKey];

  additionalAliases = [descriptionCopy additionalAliases];

  __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v6, &name);
  if (self)
  {
    self = [(GCPhysicalInputProfile *)self _directionPadWithInfo:v6];
  }

  else
  {
    __destructor_8_s0_s48_s56_s64(v6);
  }

  __destructor_8_s0_s48_s56_s64(&name);

  return self;
}

- (id)_cursorWithInfo:(id *)info
{
  if (info->var1)
  {
    v5 = [[GCDeviceCursor alloc] initWithDigital:info->var2 descriptionName:info->var0];
    [(GCPhysicalInputProfile *)self _registerTopLevelDirectionPad:v5];
  }

  else
  {
    v5 = 0;
  }

  __destructor_8_s0_s48_s56_s64(info);

  return v5;
}

- (id)_buttonWithInfo:(id *)info
{
  if (info->var1)
  {
    if (info->var7)
    {
      v5 = [[_GCControllerGestureAwareButtonInput alloc] initWithDescriptionName:info->var0];
      [(NSMutableSet *)self->_allGestureAwareButtons addObject:v5];
    }

    else
    {
      v6 = off_1E84180B8;
      if (info->var3.var0.var3 != 1)
      {
        v6 = off_1E8418008;
      }

      v5 = [objc_alloc(*v6) initWithDescriptionName:info->var0];
    }

    [(GCControllerButtonInput *)v5 setNonAnalog:info->var2];
    [(GCControllerButtonInput *)v5 setTouchedAndValueDistinct:info->var3.var0.var1];
    LODWORD(v7) = info->var3.var1.var2;
    [(GCControllerButtonInput *)v5 setDeadzone:v7];
    [(GCControllerElement *)v5 setRemappable:info->var5];
    [(GCControllerElement *)v5 setUnmappedNameLocalizationKey:info->var9];
    [(GCControllerElement *)v5 setUnmappedSfSymbolsName:info->var8];
    [(GCControllerElement *)v5 setMappableToSystemGestures:info->var7];
    [(GCControllerElement *)v5 setBoundToSystemGesture:info->var6];
    [(GCControllerElement *)v5 setAliases:info->var10];
    if (info->var4 <= 0)
    {
      [(GCControllerElement *)v5 setRemappingKey:0xFFFFFFFFLL];
    }

    else
    {
      [(GCControllerElement *)v5 setRemappingKey:info->var3.var0.var0];
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

  __destructor_8_s0_s48_s56_s64(info);

  return v5;
}

- (id)_buttonWithDescription:(id)description
{
  descriptionCopy = description;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sourceExtendedEventFieldIndex = [descriptionCopy sourceExtendedEventFieldIndex];
  name = [descriptionCopy name];

  v17 = 1;
  isDigital = [descriptionCopy isDigital];
  if (sourceExtendedEventFieldIndex > 0x7FFFFFFFFFFFFFFELL)
  {
    v6 = -1;
  }

  else
  {
    v6 = sourceExtendedEventFieldIndex;
  }

  v19 = v6;
  supportsTouch = [descriptionCopy supportsTouch];
  [descriptionCopy sourcePressedThreshold];
  v21 = v7;
  v22 = 0;
  v23 = 1;
  isRemappable = [descriptionCopy isRemappable];
  isBoundToSystemGesture = [descriptionCopy isBoundToSystemGesture];
  isMappableToSystemGestures = [descriptionCopy isMappableToSystemGestures];
  symbolName = [descriptionCopy symbolName];
  v9 = v27;
  v27 = symbolName;

  nameLocalizationKey = [descriptionCopy nameLocalizationKey];
  v11 = v28;
  v28 = nameLocalizationKey;

  additionalAliases = [descriptionCopy additionalAliases];
  v13 = v29;
  v29 = additionalAliases;

  __copy_constructor_8_8_s0_t8w39_s48_s56_s64(v15, &name);
  if (self)
  {
    self = [(GCPhysicalInputProfile *)self _buttonWithInfo:v15];
  }

  else
  {
    __destructor_8_s0_s48_s56_s64(v15);
  }

  __destructor_8_s0_s48_s56_s64(&name);

  return self;
}

- (id)_keyboardButtonWithInfo:(id *)info
{
  v5 = [(GCControllerButtonInput *)[GCKeyboardButtonElement alloc] initWithDescriptionName:info->var0];
  [(GCControllerButtonInput *)v5 setNonAnalog:info->var2];
  [(GCControllerButtonInput *)v5 setTouchedAndValueDistinct:info->var3.var0.var1];
  LODWORD(v6) = info->var3.var1.var2;
  [(GCControllerButtonInput *)v5 setDeadzone:v6];
  [(GCControllerElement *)v5 setRemappable:info->var5];
  [(GCControllerElement *)v5 setUnmappedNameLocalizationKey:info->var9];
  [(GCControllerElement *)v5 setUnmappedSfSymbolsName:info->var8];
  [(GCControllerElement *)v5 setMappableToSystemGestures:info->var7];
  [(GCControllerElement *)v5 setBoundToSystemGesture:info->var6];
  [(GCControllerElement *)v5 setAliases:info->var10];
  if (info->var4 <= 0)
  {
    [(GCControllerElement *)v5 setRemappingKey:0xFFFFFFFFLL];
  }

  else
  {
    [(GCControllerElement *)v5 setRemappingKey:info->var3.var0.var0];
    if (([(GCControllerElement *)v5 remappingKey]& 0x80000000) == 0)
    {
      objc_storeStrong(&self->_remappedElements[[(GCControllerElement *)v5 remappingKey]], v5);
    }
  }

  [(GCPhysicalInputProfile *)self _registerTopLevelButton:v5];
  __destructor_8_s0_s48_s56_s64(info);

  return v5;
}

- (id)_touchpadWithInfo:(id *)info
{
  if (info->var1)
  {
    v5 = [[GCControllerTouchpad alloc] initWithDescriptionName:info->var0];
    [(GCControllerElement *)v5 setRemappable:info->var5];
    [(GCControllerElement *)v5 setMappableToSystemGestures:info->var7];
    [(GCControllerElement *)v5 setBoundToSystemGesture:info->var6];
    [(GCControllerElement *)v5 setUnmappedNameLocalizationKey:info->var9];
    [(GCControllerElement *)v5 setUnmappedSfSymbolsName:info->var8];
    [(GCControllerElement *)v5 setAliases:info->var10];
    [(GCPhysicalInputProfile *)self _registerTopLevelTouchpad:v5];
  }

  else
  {
    v5 = 0;
  }

  __destructor_8_s0_s48_s56_s64(info);

  return v5;
}

- (void)_registerTopLevelButton:(id)button
{
  buttonCopy = button;
  if (([(NSMutableSet *)self->_allButtons containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__topLevelElements addObject:buttonCopy];
    [(NSMutableSet *)self->__topLevelButtons addObject:buttonCopy];
    [(GCPhysicalInputProfile *)self _registerButton:buttonCopy];
  }
}

- (void)_registerTopLevelDirectionPad:(id)pad
{
  padCopy = pad;
  if (([(NSMutableSet *)self->_allDpads containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__topLevelElements addObject:padCopy];
    [(NSMutableSet *)self->__topLevelDirectionPads addObject:padCopy];
    [(GCPhysicalInputProfile *)self _registerDirectionPad:padCopy];
  }
}

- (void)_registerTopLevelTouchpad:(id)touchpad
{
  touchpadCopy = touchpad;
  if (([(NSMutableSet *)self->__topLevelElements containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__topLevelElements addObject:touchpadCopy];
    [(NSMutableSet *)self->__topLevelTouchpads addObject:touchpadCopy];
    [(GCPhysicalInputProfile *)self _registerTouchpad:touchpadCopy];
  }
}

- (void)_registerDirectionPad:(id)pad
{
  v19 = *MEMORY[0x1E69E9840];
  padCopy = pad;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  aliases = [padCopy aliases];
  v6 = [aliases countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(aliases);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:padCopy forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_dpads setObject:padCopy forKeyedSubscript:v10];
      }

      v7 = [aliases countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:padCopy];
  [(NSMutableSet *)self->_allDpads addObject:padCopy];
  xAxis = [padCopy xAxis];
  [(GCPhysicalInputProfile *)self _registerAxis:xAxis];

  yAxis = [padCopy yAxis];
  [(GCPhysicalInputProfile *)self _registerAxis:yAxis];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_registerAxis:(id)axis
{
  v19 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  aliases = [axisCopy aliases];
  v6 = [aliases countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(aliases);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:axisCopy forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_axes setObject:axisCopy forKeyedSubscript:v10];
      }

      v7 = [aliases countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:axisCopy];
  [(NSMutableSet *)self->_allAxes addObject:axisCopy];
  positive = [axisCopy positive];
  [(GCPhysicalInputProfile *)self _registerButton:positive];

  negative = [axisCopy negative];
  [(GCPhysicalInputProfile *)self _registerButton:negative];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_registerButton:(id)button
{
  v17 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  aliases = [buttonCopy aliases];
  v6 = [aliases countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(aliases);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:buttonCopy forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_buttons setObject:buttonCopy forKeyedSubscript:v10];
      }

      v7 = [aliases countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:buttonCopy];
  [(NSMutableSet *)self->_allButtons addObject:buttonCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_registerTouchpad:(id)touchpad
{
  v19 = *MEMORY[0x1E69E9840];
  touchpadCopy = touchpad;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  aliases = [touchpadCopy aliases];
  v6 = [aliases countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(aliases);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_elements setObject:touchpadCopy forKeyedSubscript:v10];
        [(NSMutableDictionary *)self->_touchpads setObject:touchpadCopy forKeyedSubscript:v10];
      }

      v7 = [aliases countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_allElements addObject:touchpadCopy];
  [(NSMutableSet *)self->_allTouchpads addObject:touchpadCopy];
  button = [touchpadCopy button];
  [(GCPhysicalInputProfile *)self _registerButton:button];

  touchSurface = [touchpadCopy touchSurface];
  [(GCPhysicalInputProfile *)self _registerDirectionPad:touchSurface];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_triggerValueChangedHandlerForElement:(id)element queue:(id)queue
{
  elementCopy = element;
  queueCopy = queue;
  valueDidChangeHandler = [(GCPhysicalInputProfile *)self valueDidChangeHandler];
  v9 = valueDidChangeHandler;
  if (valueDidChangeHandler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__GCPhysicalInputProfile__triggerValueChangedHandlerForElement_queue___block_invoke;
    block[3] = &unk_1E841B800;
    v12 = valueDidChangeHandler;
    block[4] = self;
    v11 = elementCopy;
    dispatch_async(queueCopy, block);
  }
}

- (void)_triggerValueChangedHandlerForElements:(id)elements queue:(id)queue
{
  elementsCopy = elements;
  queueCopy = queue;
  valueDidChangeHandler = [(GCPhysicalInputProfile *)self valueDidChangeHandler];
  if (valueDidChangeHandler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__GCPhysicalInputProfile__triggerValueChangedHandlerForElements_queue___block_invoke;
    block[3] = &unk_1E841A968;
    v10 = elementsCopy;
    selfCopy = self;
    v12 = valueDidChangeHandler;
    dispatch_async(queueCopy, block);
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

- (void)_receivedEventWithTimestamp:(unint64_t)timestamp
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v6 = v5;

  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_device);
  LOBYTE(date) = objc_opt_respondsToSelector();

  if (date)
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
  allElements = [(GCPhysicalInputProfile *)self allElements];
  v5 = [allElements count];
  allButtons = [(GCPhysicalInputProfile *)self allButtons];
  v7 = [allButtons count];
  allAxes = [(GCPhysicalInputProfile *)self allAxes];
  v9 = [allAxes count];
  allDpads = [(GCPhysicalInputProfile *)self allDpads];
  v11 = [v3 stringWithFormat:@"%lu elements (%lu buttons, %lu axes, %lu dpads)", v5, v7, v9, objc_msgSend(allDpads, "count")];

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
    v103 = [(GCObjectPool *)v129 takeObjectOrCreateWith:v128, v103];
  }

  else
  {
    v103 = [objc_alloc(objc_opt_class()) initWithIdentifier:{self->_identifier, 0}];
  }

  array = [MEMORY[0x1E695DF70] array];
  handlerQueue = [(GCPhysicalInputProfile *)self handlerQueue];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  selfCopy = self;
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
        buttons = [v103 buttons];
        primaryAlias = [v9 primaryAlias];
        v12 = [buttons objectForKeyedSubscript:primaryAlias];

        sfSymbolsName = [v9 sfSymbolsName];
        [v12 setSfSymbolsName:sfSymbolsName];

        localizedName = [v9 localizedName];
        [v12 setLocalizedName:localizedName];

        [v9 value];
        v16 = v15;
        [v9 value];
        if (v17 <= 0.0)
        {
          isTouched = [v9 isTouched];
        }

        else
        {
          isTouched = 1;
        }

        v19 = v12;
        v20 = handlerQueue;
        v21 = array;
        v23 = isTouched ^ 1;
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
        v27 = [v19 _setTouched:isTouched queue:v20];
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
  obj = selfCopy->__topLevelDirectionPads;
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
        dpads = [v103 dpads];
        primaryAlias2 = [v31 primaryAlias];
        v34 = [dpads objectForKeyedSubscript:primaryAlias2];

        sfSymbolsName2 = [v31 sfSymbolsName];
        [v34 setSfSymbolsName:sfSymbolsName2];

        localizedName2 = [v31 localizedName];
        [v34 setLocalizedName:localizedName2];

        v37 = [v31 up];
        sfSymbolsName3 = [v37 sfSymbolsName];

        if (sfSymbolsName3)
        {
          v39 = [v31 up];
          sfSymbolsName4 = [v39 sfSymbolsName];
          v41 = [v34 up];
          [v41 setSfSymbolsName:sfSymbolsName4];
        }

        down = [v31 down];
        sfSymbolsName5 = [down sfSymbolsName];

        if (sfSymbolsName5)
        {
          down2 = [v31 down];
          sfSymbolsName6 = [down2 sfSymbolsName];
          down3 = [v34 down];
          [down3 setSfSymbolsName:sfSymbolsName6];
        }

        left = [v31 left];
        sfSymbolsName7 = [left sfSymbolsName];

        if (sfSymbolsName7)
        {
          left2 = [v31 left];
          sfSymbolsName8 = [left2 sfSymbolsName];
          left3 = [v34 left];
          [left3 setSfSymbolsName:sfSymbolsName8];
        }

        right = [v31 right];
        sfSymbolsName9 = [right sfSymbolsName];

        if (sfSymbolsName9)
        {
          right2 = [v31 right];
          sfSymbolsName10 = [right2 sfSymbolsName];
          right3 = [v34 right];
          [right3 setSfSymbolsName:sfSymbolsName10];
        }

        xAxis = [v31 xAxis];
        [xAxis value];
        v59 = v58;
        yAxis = [v31 yAxis];
        [yAxis value];
        v62 = v61;
        v63 = v34;
        v64 = handlerQueue;
        v65 = array;
        xAxis2 = [v63 xAxis];
        LODWORD(v67) = v59;
        v68 = [xAxis2 _setValue:v64 queue:v67];

        yAxis2 = [v63 yAxis];
        LODWORD(v70) = v62;
        v71 = [yAxis2 _setValue:v64 queue:v70];

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
  v105 = selfCopy->__topLevelTouchpads;
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
        touchpads = [v103 touchpads];
        primaryAlias3 = [v73 primaryAlias];
        v76 = [touchpads objectForKeyedSubscript:primaryAlias3];

        sfSymbolsName11 = [v73 sfSymbolsName];
        [v76 setSfSymbolsName:sfSymbolsName11];

        localizedName3 = [v73 localizedName];
        [v76 setLocalizedName:localizedName3];

        touchSurface = [v73 touchSurface];
        xAxis3 = [touchSurface xAxis];
        [xAxis3 value];
        v82 = v81;
        touchSurface2 = [v73 touchSurface];
        yAxis3 = [touchSurface2 yAxis];
        [yAxis3 value];
        v85 = v84;
        touchState = [v73 touchState];
        button = [v73 button];
        [button value];
        v89 = v88;
        v90 = v76;
        v91 = handlerQueue;
        v92 = array;
        button2 = [v90 button];
        v94 = v91;
        v96 = v89 <= 0.0;
        if (!touchState)
        {
          v96 = 1;
        }

        if (v89 != 0.0 && v96)
        {
          [GCControllerTouchpad setValueForXAxis:yAxis:touchDown:buttonValue:];
        }

        obja = xAxis3;
        *&v95 = v89;
        v97 = [button2 _setValue:v94 queue:v95];
        v98 = [button2 _setTouched:touchState != 0 queue:v94];
        if ((v97 & 1) != 0 || v98)
        {
          [0 addObject:button2];
        }

        LODWORD(v99) = v82;
        LODWORD(v100) = v85;
        if ([v90 setDigitizerX:touchState != 0 digitizerY:v94 touchDown:v99 queue:v100])
        {
          [v92 addObject:v90];
        }
      }

      v107 = [(NSMutableSet *)v105 countByEnumeratingWithState:&v116 objects:v130 count:16];
    }

    while (v107);
  }

  v101 = *MEMORY[0x1E69E9840];

  return v103;
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
  device = [(GCPhysicalInputProfile *)self device];
  if (!device || (v5 = device, -[GCPhysicalInputProfile controller](self, "controller"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSnapshot], v6, v5, v7))
  {
    array = [MEMORY[0x1E695DF70] array];
    handlerQueue = [(GCPhysicalInputProfile *)self handlerQueue];
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
          primaryAlias = [v13 primaryAlias];
          v16 = [(NSMutableDictionary *)buttons objectForKeyedSubscript:primaryAlias];

          if (v16)
          {
            [v13 value];
            v18 = v17;
            v19 = v16;
            v20 = array;
            LODWORD(v21) = v18;
            if ([v19 _setValue:handlerQueue queue:v21])
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
    selfCopy = self;
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
          primaryAlias2 = [v23 primaryAlias];
          v26 = [(NSMutableDictionary *)dpads objectForKeyedSubscript:primaryAlias2];

          if (v26)
          {
            xAxis = [v23 xAxis];
            [xAxis value];
            v29 = v28;
            yAxis = [v23 yAxis];
            [yAxis value];
            v32 = v31;
            v33 = v26;
            v34 = handlerQueue;
            v35 = array;
            xAxis2 = [v33 xAxis];
            LODWORD(v37) = v29;
            v38 = [xAxis2 _setValue:v34 queue:v37];

            yAxis2 = [v33 yAxis];
            LODWORD(v40) = v32;
            v41 = [yAxis2 _setValue:v34 queue:v40];

            if ((v38 & 1) != 0 || v41)
            {
              [v35 addObject:v33];
            }

            self = selfCopy;
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
          primaryAlias3 = [v43 primaryAlias];
          v46 = [(NSMutableDictionary *)touchpads objectForKeyedSubscript:primaryAlias3];

          if (v46)
          {
            touchSurface = [v43 touchSurface];
            xAxis3 = [touchSurface xAxis];
            [xAxis3 value];
            v49 = v48;
            touchSurface2 = [v43 touchSurface];
            yAxis3 = [touchSurface2 yAxis];
            [yAxis3 value];
            v52 = v51;
            touchState = [v43 touchState];
            button = [v43 button];
            [button value];
            v56 = v55;
            v57 = v46;
            v58 = handlerQueue;
            v59 = array;
            button2 = [v57 button];
            v61 = v58;
            v63 = v56 <= 0.0;
            if (!touchState)
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
            v66 = [button2 _setValue:v61 queue:v62];
            v67 = [button2 _setTouched:touchState != 0 queue:v65];
            if ((v66 & 1) != 0 || v67)
            {
              [0 addObject:button2];
            }

            LODWORD(v68) = v49;
            LODWORD(v69) = v52;
            self = selfCopy;
            if ([v57 setDigitizerX:touchState != 0 digitizerY:v65 touchDown:v68 queue:v69])
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

- (void)setSyntheticDeviceElementValueChangedHandler:(id)handler
{
  v5 = _Block_copy(handler);
  objc_setProperty(self, a2, 592, v5, 1, 1);
}

- (void)setGamepadEventSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  gamepadEventObservation = self->_gamepadEventObservation;
  self->_gamepadEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__GCPhysicalInputProfile_PubSub__setGamepadEventSource___block_invoke;
  v8[3] = &unk_1E841A588;
  objc_copyWeak(&v9, &location);
  v6 = [sourceCopy observeGamepadEvents:v8];
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