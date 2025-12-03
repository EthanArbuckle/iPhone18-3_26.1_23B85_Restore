@interface TIHardwareKeyboardModifierRemapController
- (id)keyboardsSectionSpecifiers;
- (id)keysSectionSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)subtitleForSpecifier:(id)specifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)valueForRemappingKey:(id)key;
- (void)dealloc;
- (void)loadKeyboards;
- (void)loadRemapping;
- (void)reloadSpecifiersWithAnimation;
- (void)resetRemapping;
- (void)saveRemapping;
- (void)setRemappingFromKey:(id)key toValue:(id)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TIHardwareKeyboardModifierRemapController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    newSpecifiers = [(TIHardwareKeyboardModifierRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)subtitleForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:PSIDKey];
  v5 = [(TIHardwareKeyboardModifierRemapController *)self valueForRemappingKey:v4];
  v6 = sub_C49C(v5, self->_currentKeyboard, 0, 1);

  return v6;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = TIHardwareKeyboardModifierRemapController;
  [(TIHardwareKeyboardModifierRemapController *)&v4 dealloc];
}

- (void)reloadSpecifiersWithAnimation
{
  specifiers = [(TIHardwareKeyboardModifierRemapController *)self specifiers];
  newSpecifiers = [(TIHardwareKeyboardModifierRemapController *)self newSpecifiers];
  -[TIHardwareKeyboardModifierRemapController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", 0, [specifiers count], newSpecifiers);
}

- (void)loadKeyboards
{
  objc_initWeak(&location, self);
  if (!self->_eventSystemClient)
  {
    v3 = IOHIDEventSystemClientCreateWithType();
    self->_eventSystemClient = v3;
    if (v3)
    {
      CFRunLoopGetCurrent();
      IOHIDEventSystemClientScheduleWithRunLoop();
      v58[0] = @"DeviceUsagePage";
      v58[1] = @"DeviceUsage";
      v59[0] = &off_4D8F8;
      v59[1] = &off_4D910;
      v4 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
      eventSystemClient = self->_eventSystemClient;
      IOHIDEventSystemClientSetMatching();
      v6 = self->_eventSystemClient;
      v50 = _NSConcreteStackBlock;
      v51 = 3221225472;
      v52 = sub_CD04;
      v53 = &unk_49278;
      objc_copyWeak(&v54, &location);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      objc_destroyWeak(&v54);
    }
  }

  v35 = +[NSMutableArray array];
  selfCopy = self;
  v7 = IOHIDEventSystemClientCopyServices(self->_eventSystemClient);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v7;
  v8 = [(__CFArray *)obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    v11 = &TUIDictationTitle_ptr;
    v36 = *v47;
    do
    {
      v12 = 0;
      v37 = v9;
      do
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        v14 = IOHIDServiceClientCopyProperty(v13, @"DeviceUsagePairs");
        v15 = v11[415];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v13;
          v40 = v14;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v16 = v14;
          v17 = [v16 countByEnumeratingWithState:&v42 objects:v56 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v43;
            while (2)
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v43 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v42 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = [v21 objectForKey:@"DeviceUsagePage"];
                  v23 = [v21 objectForKey:@"DeviceUsage"];
                  if ([v22 isEqual:&off_4D8F8] && objc_msgSend(v23, "isEqual:", &off_4D910))
                  {
                    [(NSMutableArray *)v35 addObject:v39];
                    objc_copyWeak(&v41, &location);
                    IOHIDServiceClientRegisterRemovalBlock();
                    objc_destroyWeak(&v41);

                    goto LABEL_23;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v42 objects:v56 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_23:

          v10 = v36;
          v9 = v37;
          v11 = &TUIDictationTitle_ptr;
          v14 = v40;
        }

        v12 = v12 + 1;
      }

      while (v12 != v9);
      v9 = [(__CFArray *)obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v9);
  }

  if ([(NSMutableArray *)v35 count])
  {
    v24 = selfCopy;
    if (!selfCopy->_currentKeyboard || ([(NSMutableArray *)v35 containsObject:?]& 1) == 0)
    {
      firstObject = [(NSMutableArray *)v35 firstObject];
      selfCopy->_currentKeyboard = firstObject;
LABEL_33:
    }
  }

  else
  {
    v24 = selfCopy;
    selfCopy->_currentKeyboard = 0;
    navigationController = [(TIHardwareKeyboardModifierRemapController *)selfCopy navigationController];
    viewControllers = [navigationController viewControllers];
    v28 = [viewControllers indexOfObject:selfCopy];

    if (v28 && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      navigationController2 = [(TIHardwareKeyboardModifierRemapController *)selfCopy navigationController];
      viewControllers2 = [navigationController2 viewControllers];
      firstObject = [viewControllers2 objectAtIndex:v28 - 1];

      navigationController3 = [(TIHardwareKeyboardModifierRemapController *)selfCopy navigationController];
      v32 = [navigationController3 popToViewController:firstObject animated:1];

      goto LABEL_33;
    }
  }

  keyboards = v24->_keyboards;
  v24->_keyboards = v35;

  objc_destroyWeak(&location);
}

- (void)resetRemapping
{
  [(NSMutableDictionary *)self->_remapping removeAllObjects];
  [(TIHardwareKeyboardModifierRemapController *)self saveRemapping];

  [(TIHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
}

- (void)loadRemapping
{
  if (qword_56988 != -1)
  {
    sub_2C49C();
  }

  [(TIHardwareKeyboardModifierRemapController *)self loadKeyboards];
  v2 = +[NSMutableDictionary dictionary];
  remapping = self->_remapping;
  self->_remapping = v2;

  currentKeyboard = self->_currentKeyboard;
  if (currentKeyboard)
  {
    v5 = IOHIDServiceClientCopyProperty(currentKeyboard, @"HIDKeyboardModifierMappingPairs");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = qword_56958;
              v13 = [v11 objectForKeyedSubscript:@"HIDKeyboardModifierMappingSrc"];
              v14 = [v12 objectForKeyedSubscript:v13];

              v15 = qword_56958;
              v16 = [v11 objectForKeyedSubscript:@"HIDKeyboardModifierMappingDst"];
              v17 = [v15 objectForKeyedSubscript:v16];

              if (v14)
              {
                v18 = v17 == 0;
              }

              else
              {
                v18 = 1;
              }

              if (!v18)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSMutableDictionary *)self->_remapping setObject:v17 forKeyedSubscript:v14];
                  }
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)saveRemapping
{
  if (self->_currentKeyboard)
  {
    selfCopy = self;
    v49 = +[NSMutableArray array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = selfCopy->_remapping;
    v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v63;
      v6 = @"HIDKeyboardModifierMappingSrc";
      v7 = @"HIDKeyboardModifierMappingDst";
      v8 = &TUIDictationTitle_ptr;
      v48 = selfCopy;
      v45 = *v63;
      do
      {
        v9 = 0;
        v50 = v4;
        do
        {
          if (*v63 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v62 + 1) + 8 * v9);
          v11 = [(NSMutableDictionary *)selfCopy->_remapping objectForKeyedSubscript:v10];
          if (([v10 isEqualToString:v11] & 1) == 0)
          {
            v56 = v9;
            v12 = [qword_56960 objectForKeyedSubscript:v10];
            property = v11;
            v13 = [qword_56960 objectForKeyedSubscript:v11];
            v14 = v8;
            v15 = v7;
            v16 = v6;
            if ([v12 count])
            {
              v17 = 0;
              do
              {
                v18 = [v12 objectAtIndexedSubscript:v17];
                v19 = [v13 count];
                if (v17 >= (v19 - 1))
                {
                  v20 = v19 - 1;
                }

                else
                {
                  v20 = v17;
                }

                v21 = [v13 objectAtIndexedSubscript:v20];
                v67[0] = v16;
                v67[1] = v15;
                v68[0] = v18;
                v68[1] = v21;
                v22 = [v14[416] dictionaryWithObjects:v68 forKeys:v67 count:2];
                [v49 addObject:v22];

                ++v17;
              }

              while (v17 < [v12 count]);
            }

            selfCopy = v48;
            v5 = v45;
            v4 = v50;
            v6 = v16;
            v7 = v15;
            v8 = v14;
            v11 = property;
            v9 = v56;
          }

          v9 = v9 + 1;
        }

        while (v9 != v4);
        v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v4);
    }

    v23 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"ProductID");
    v24 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"VendorID");
    v25 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"HIDVirtualDevice");
    v26 = BKSHIDServicesProductIdentifierFromServiceProperties();
    v27 = v26;
    if (v26)
    {
      v47 = v25;
      v51 = v24;
      obja = v23;
      v28 = v26;
      v29 = v49;
      v30 = BKSHIDServicesModifierKeysRemappingPreferenceKey;
      v31 = CFPreferencesCopyAppValue(BKSHIDServicesModifierKeysRemappingPreferenceKey, @"com.apple.keyboard.preferences");
      if (v31)
      {
        v32 = v31;
        v33 = [v31 mutableCopy];
      }

      else
      {
        v33 = +[NSMutableDictionary dictionary];
      }

      v46 = v27;
      if ([v29 count])
      {
        [v33 setObject:v29 forKeyedSubscript:v28];
      }

      else
      {
        [v33 removeObjectForKey:v28];
      }

      v35 = [v33 copy];

      CFPreferencesSetAppValue(v30, v35, @"com.apple.keyboard.preferences");
      propertya = v29;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = selfCopy->_keyboards;
      v36 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v59;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v59 != v38)
            {
              objc_enumerationMutation(v57);
            }

            v40 = *(*(&v58 + 1) + 8 * i);
            v41 = IOHIDServiceClientCopyProperty(v40, @"ProductID");
            v42 = IOHIDServiceClientCopyProperty(v40, @"VendorID");
            v43 = IOHIDServiceClientCopyProperty(v40, @"HIDVirtualDevice");
            v44 = BKSHIDServicesProductIdentifierFromServiceProperties();
            if ([v28 isEqual:v44])
            {
              if (!IOHIDServiceClientSetProperty(v40, @"HIDKeyboardModifierMappingPairs", propertya))
              {
                NSLog(@"Error: Can not save modifier key mapping.");
              }
            }
          }

          v37 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v37);
      }

      v34 = v49;
      v24 = v51;
      v23 = obja;
      v27 = v46;
      v25 = v47;
    }

    else
    {
      NSLog(@"Can not save remapping: keyboardIdentifier is nil.");
      v34 = v49;
    }
  }
}

- (id)valueForRemappingKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_remapping objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    v5 = keyCopy;
  }

  return v5;
}

- (void)setRemappingFromKey:(id)key toValue:(id)value
{
  [(NSMutableDictionary *)self->_remapping setObject:value forKeyedSubscript:key];
  [(TIHardwareKeyboardModifierRemapController *)self saveRemapping];

  [(TIHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
}

- (id)newSpecifiers
{
  [(TIHardwareKeyboardModifierRemapController *)self loadRemapping];
  v3 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_keyboards count])
  {
    keyboardsSectionSpecifiers = [(TIHardwareKeyboardModifierRemapController *)self keyboardsSectionSpecifiers];
    [v3 addObjectsFromArray:keyboardsSectionSpecifiers];

    keysSectionSpecifiers = [(TIHardwareKeyboardModifierRemapController *)self keysSectionSpecifiers];
    [v3 addObjectsFromArray:keysSectionSpecifiers];

    v6 = [PSSpecifier groupSpecifierWithID:@"Restore Defaults"];
    [v3 addObject:v6];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"MODIFIER_KEYS_RESTORE_DEFAULTS" value:&stru_49C80 table:@"Keyboard"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v9 setButtonAction:"resetRemapping"];
    [v3 addObject:v9];
  }

  return v3;
}

- (id)keyboardsSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_keyboards count]< 2)
  {
    self->_keysSectionStart = 0;
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SELECT_KEYBOARD" value:&stru_49C80 table:@"Keyboard"];
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v40 = v3;
    v35 = v6;
    [v3 addObject:v6];
    v39 = objc_alloc_init(NSMutableDictionary);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = self->_keyboards;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v46;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = IOHIDServiceClientCopyProperty(*(*(&v45 + 1) + 8 * i), @"Product");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v39 objectForKey:v12];
            integerValue = [v13 integerValue];

            v15 = [NSNumber numberWithInteger:integerValue + 1];
            [v39 setObject:v15 forKey:v12];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v9);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = self->_keyboards;
    v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v37 = PSIDKey;
      v38 = *v42;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v41 + 1) + 8 * j);
          v21 = IOHIDServiceClientCopyProperty(v20, @"Product");
          v22 = IOHIDServiceClientCopyProperty(v20, @"ProductID");
          v23 = IOHIDServiceClientCopyProperty(v20, @"Transport");
          v24 = v21;
          objc_opt_class();
          v25 = v24;
          if (objc_opt_isKindOfClass())
          {
            v26 = [v39 objectForKey:v24];
            integerValue2 = [v26 integerValue];

            v25 = v24;
            if (integerValue2 >= 2)
            {
              v28 = @"%@ (Smart Connector)";
              if ([v23 isEqual:@"AID"] & 1) != 0 || (v28 = @"%@ (Bluetooth)", (objc_msgSend(v23, "isEqual:", @"Bluetooth")) || (v28 = @"%@ (USB)", v25 = v24, objc_msgSend(v23, "isEqual:", @"USB")))
              {
                v29 = [NSBundle bundleForClass:objc_opt_class()];
                v30 = [v29 localizedStringForKey:v28 value:&stru_49C80 table:@"Keyboard"];

                v25 = [NSString localizedStringWithFormat:v30, v24];
              }
            }
          }

          if (self->_currentKeyboard)
          {
            v31 = v18 == [(NSMutableArray *)self->_keyboards indexOfObject:?];
          }

          else
          {
            v31 = 0;
          }

          v32 = [NSString stringWithFormat:@"%@:%@:%d", v24, v22, v31];
          v33 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:objc_opt_class() cell:3 edit:0];
          [v33 setProperty:v32 forKey:v37];
          [v40 addObject:v33];
          ++v18;
        }

        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v17);
    }

    self->_keysSectionStart = 1;
    v3 = v40;
  }

  return v3;
}

- (id)keysSectionSpecifiers
{
  v39 = objc_alloc_init(NSMutableArray);
  if (self->_currentKeyboard)
  {
    v3 = [PSSpecifier groupSpecifierWithID:@"Keys"];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"MODIFIER_KEYS_FOOTER_TEXT" value:&stru_49C80 table:@"Keyboard"];
    [v3 setProperty:v5 forKey:PSFooterTextGroupKey];

    v37 = v3;
    [v39 addObject:v3];
    currentKeyboard = self->_currentKeyboard;
    v7 = +[NSMutableSet set];
    if (currentKeyboard)
    {
      v8 = IOHIDServiceClientCopyProperty(currentKeyboard, @"Keyboard");
      v9 = &TUIDictationTitle_ptr;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 objectForKeyedSubscript:@"Elements"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v10;
          v36 = v8;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v45;
            v38 = v11;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v45 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v44 + 1) + 8 * i);
                v17 = v9[416];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = [v16 objectForKeyedSubscript:@"Usage"];
                  v19 = [v16 objectForKeyedSubscript:@"UsagePage"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = v9;
                      unsignedLongLongValue = [v18 unsignedLongLongValue];
                      v22 = unsignedLongLongValue | ([v19 unsignedLongLongValue] << 32);
                      v23 = qword_56958;
                      v24 = [NSNumber numberWithUnsignedLongLong:v22];
                      v25 = [v23 objectForKeyedSubscript:v24];

                      if (v25)
                      {
                        [v7 addObject:v25];
                      }

                      v9 = v20;
                      v11 = v38;
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
            }

            while (v13);
          }

          v10 = v35;
          v8 = v36;
        }
      }
    }

    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = qword_56968;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      v30 = PSIDKey;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v40 + 1) + 8 * j);
          if ([v7 containsObject:v32])
          {
            v33 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            [v33 setProperty:v32 forKey:v30];
            [v39 addObject:v33];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v28);
    }
  }

  return v39;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TIHardwareKeyboardModifierRemapController;
  v7 = [(TIHardwareKeyboardModifierRemapController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  if ([pathCopy section] == (self->_keysSectionStart - 1))
  {
    if (self->_currentKeyboard)
    {
      [v7 setChecked:{-[NSMutableArray indexOfObject:](self->_keyboards, "indexOfObject:") == objc_msgSend(pathCopy, "row")}];
    }
  }

  else if ([pathCopy section] == self->_keysSectionStart)
  {
    v8 = [(TIHardwareKeyboardModifierRemapController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:PSIDKey];
    v10 = sub_C49C(v9, self->_currentKeyboard, @" Key", 1);
    v11 = [(TIHardwareKeyboardModifierRemapController *)self subtitleForSpecifier:v8];
    v12 = +[UIListContentConfiguration valueCellConfiguration];
    [v12 setAttributedText:v10];
    [v12 setSecondaryAttributedText:v11];
    [v7 setContentConfiguration:v12];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == (self->_keysSectionStart - 1))
  {
    v8 = [pathCopy row];
    if (v8 < [(NSMutableArray *)self->_keyboards count])
    {
      v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_keyboards, "objectAtIndexedSubscript:", [pathCopy row]);
      self->_currentKeyboard = v9;

      [(TIHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIHardwareKeyboardModifierRemapController;
    [(TIHardwareKeyboardModifierRemapController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end