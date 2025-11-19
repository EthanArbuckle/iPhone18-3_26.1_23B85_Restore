@interface TIHardwareKeyboardKeyboardTypeRemapController
- (id)keyboardTypeSectionSpecifiers;
- (id)keyboardsSectionSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)loadKeyboards;
- (void)reloadSpecifiersWithAnimation;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TIHardwareKeyboardKeyboardTypeRemapController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(TIHardwareKeyboardKeyboardTypeRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = TIHardwareKeyboardKeyboardTypeRemapController;
  [(TIHardwareKeyboardKeyboardTypeRemapController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = TIHardwareKeyboardKeyboardTypeRemapController;
  [(TIHardwareKeyboardKeyboardTypeRemapController *)&v2 viewDidLoad];
}

- (void)reloadSpecifiersWithAnimation
{
  v4 = [(TIHardwareKeyboardKeyboardTypeRemapController *)self specifiers];
  v3 = [(TIHardwareKeyboardKeyboardTypeRemapController *)self newSpecifiers];
  -[TIHardwareKeyboardKeyboardTypeRemapController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", 0, [v4 count], v3);
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
      v76[0] = @"DeviceUsagePage";
      v76[1] = @"DeviceUsage";
      v77[0] = &off_4DB08;
      v77[1] = &off_4DB20;
      v4 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
      eventSystemClient = self->_eventSystemClient;
      IOHIDEventSystemClientSetMatching();
      v6 = self->_eventSystemClient;
      v67 = _NSConcreteStackBlock;
      v68 = 3221225472;
      v69 = sub_207FC;
      v70 = &unk_49278;
      objc_copyWeak(&v71, &location);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      objc_destroyWeak(&v71);
    }
  }

  +[NSMutableArray array];
  v43 = v42 = self;
  v7 = IOHIDEventSystemClientCopyServices(self->_eventSystemClient);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v7;
  v8 = [(__CFArray *)obj countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    v11 = &TUIDictationTitle_ptr;
    v44 = *v64;
    do
    {
      v12 = 0;
      v45 = v9;
      do
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(obj);
        }

        service = *(*(&v63 + 1) + 8 * v12);
        v13 = IOHIDServiceClientCopyProperty(service, @"DeviceUsagePairs");
        v14 = v11[415];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v13;
          v48 = v12;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v59 objects:v74 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v60;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v60 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v59 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = [v20 objectForKey:@"DeviceUsagePage"];
                  v22 = [v20 objectForKey:@"DeviceUsage"];
                  if ([v21 isEqual:&off_4DB08] && objc_msgSend(v22, "isEqual:", &off_4DB20))
                  {
                    v23 = IOHIDServiceClientGetRegistryID(service);
                    [v23 unsignedLongLongValue];
                    if ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0))
                    {
                      [(NSMutableArray *)v43 addObject:service];
                    }

                    v54 = _NSConcreteStackBlock;
                    v55 = 3221225472;
                    v56 = sub_20894;
                    v57 = &unk_49278;
                    objc_copyWeak(&v58, &location);
                    IOHIDServiceClientRegisterRemovalBlock();
                    objc_destroyWeak(&v58);

                    goto LABEL_26;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v59 objects:v74 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:

          v10 = v44;
          v9 = v45;
          v11 = &TUIDictationTitle_ptr;
          v13 = v47;
          v12 = v48;
        }

        v12 = v12 + 1;
      }

      while (v12 != v9);
      v9 = [(__CFArray *)obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v9);
  }

  if ([(NSMutableArray *)v43 count])
  {
    v24 = v42;
    if (!v42->_currentKeyboard || ([(NSMutableArray *)v43 containsObject:?]& 1) == 0)
    {
      v25 = BKSHIDKeyboardGetDeviceProperties();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = v43;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v50 objects:v73 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
        while (2)
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v50 + 1) + 8 * j);
            v32 = IOHIDServiceClientCopyProperty(v31, @"StandardType");
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v25 standardType];
              if (v33 == [v32 intValue])
              {
                v42->_currentKeyboard = v31;

                goto LABEL_46;
              }
            }
          }

          v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v50 objects:v73 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_46:

      v24 = v42;
      if (v42->_currentKeyboard)
      {
        goto LABEL_49;
      }

      v39 = [(NSMutableArray *)v26 firstObject];
      v42->_currentKeyboard = v39;
LABEL_48:

LABEL_49:
    }
  }

  else
  {
    v24 = v42;
    v42->_currentKeyboard = 0;
    v34 = [(TIHardwareKeyboardKeyboardTypeRemapController *)v42 navigationController];
    v35 = [v34 viewControllers];
    v36 = [v35 indexOfObject:v42];

    if (v36 && v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = [(TIHardwareKeyboardKeyboardTypeRemapController *)v42 navigationController];
      v38 = [v37 viewControllers];
      v25 = [v38 objectAtIndex:v36 - 1];

      v39 = [(TIHardwareKeyboardKeyboardTypeRemapController *)v42 navigationController];
      v40 = [(__IOHIDServiceClient *)v39 popToViewController:v25 animated:1];
      goto LABEL_48;
    }
  }

  keyboards = v24->_keyboards;
  v24->_keyboards = v43;

  objc_destroyWeak(&location);
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  keyboards = self->_keyboards;
  if (!keyboards)
  {
    [(TIHardwareKeyboardKeyboardTypeRemapController *)self loadKeyboards];
    keyboards = self->_keyboards;
  }

  if ([(NSMutableArray *)keyboards count])
  {
    v5 = [(TIHardwareKeyboardKeyboardTypeRemapController *)self keyboardsSectionSpecifiers];
    [v3 addObjectsFromArray:v5];

    v6 = [(TIHardwareKeyboardKeyboardTypeRemapController *)self keyboardTypeSectionSpecifiers];
    [v3 addObjectsFromArray:v6];
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
            v14 = [v13 integerValue];

            v15 = [NSNumber numberWithInteger:v14 + 1];
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
            v27 = [v26 integerValue];

            v25 = v24;
            if (v27 >= 2)
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
          v33 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:3 edit:0];
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

- (id)keyboardTypeSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if (self->_currentKeyboard)
  {
    v14 = [PSSpecifier groupSpecifierWithID:@"Keys"];
    [v3 addObject:?];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [&off_4D778 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      v7 = PSIDKey;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(&off_4D778);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [NSBundle bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:v9 value:&stru_49C80 table:@"Keyboard"];
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v12 setProperty:v9 forKey:v7];
          [v3 addObject:v12];
        }

        v5 = [&off_4D778 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TIHardwareKeyboardKeyboardTypeRemapController;
  v7 = [(TIHardwareKeyboardKeyboardTypeRemapController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  if ([v6 section] == (self->_keysSectionStart - 1))
  {
    if (self->_currentKeyboard)
    {
      [v7 setChecked:{-[NSMutableArray indexOfObject:](self->_keyboards, "indexOfObject:") == objc_msgSend(v6, "row")}];
    }
  }

  else if ([v6 section] == self->_keysSectionStart)
  {
    v8 = IOHIDServiceClientGetRegistryID(self->_currentKeyboard);
    [v8 unsignedLongLongValue];
    v9 = BKSHIDKeyboardGetDeviceProperties();
    v10 = [v9 standardType];
    if (v10 == -1)
    {
      v10 = 2 * ([v9 countryCode] == 15);
    }

    [v7 setChecked:{objc_msgSend(v6, "row") == v10}];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 section];
  v8 = self->_keysSectionStart - 1;
  v9 = [v6 row];
  if (v7 == v8)
  {
    if (v9 < [(NSMutableArray *)self->_keyboards count])
    {
      v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_keyboards, "objectAtIndexedSubscript:", [v6 row]);
      self->_currentKeyboard = v10;

      [(TIHardwareKeyboardKeyboardTypeRemapController *)self reloadSpecifiers];
      [v12 deselectRowAtIndexPath:v6 animated:1];
    }
  }

  else
  {
    v11 = IOHIDServiceClientGetRegistryID(self->_currentKeyboard);
    [v11 unsignedLongLongValue];
    BKSHIDServicesSetStandardType();
    [(TIHardwareKeyboardKeyboardTypeRemapController *)self reloadSpecifiers];
    [v12 deselectRowAtIndexPath:v6 animated:1];
  }
}

@end