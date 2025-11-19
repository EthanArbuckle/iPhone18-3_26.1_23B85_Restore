@interface BCSDataDetectorsSupportedAction
- (BCSDataDetectorsSupportedAction)initWithData:(id)a3 codePayload:(id)a4;
- (BOOL)preferItemsInSubmenu;
- (id)_actionStringsArray;
- (id)_hostingViewForAction;
- (id)actionIcon;
- (id)actionIconSystemImageName;
- (id)actionPickerItems;
- (id)contentPreviewString;
- (id)debugDescriptionExtraInfoDictionary;
- (id)defaultActionTargetApplicationBundleIdentifier;
- (id)localizedActionDescription;
- (id)localizedDefaultActionDescription;
- (id)menuElements;
- (id)shortDescription;
- (id)url;
- (unint64_t)menuElementsCount;
- (void)_performActionAndShowActionPickerIfNeeded:(BOOL)a3;
- (void)_setUpActionMenuIfNeeded;
- (void)determineActionabilityWithCompletionHandler:(id)a3;
@end

@implementation BCSDataDetectorsSupportedAction

- (BCSDataDetectorsSupportedAction)initWithData:(id)a3 codePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v11.receiver = self;
  v11.super_class = BCSDataDetectorsSupportedAction;
  v8 = [(BCSAction *)&v11 initWithData:v6 codePayload:v7];
  if (!v8)
  {
    self = 0;
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  self = v8;
  v9 = self;
LABEL_9:

  return v9;
}

- (id)url
{
  v3 = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(BCSAction *)self data];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 url];
LABEL_5:
    v11 = v7;

    goto LABEL_7;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    v6 = [(BCSAction *)self data];
    v9 = [v6 scannerResult];
    v10 = [v9 coreResult];

    v7 = _bcs_urlFromDDResult(v10);
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)localizedActionDescription
{
  if ([(NSArray *)self->_actions count]< 2)
  {
    [(BCSDataDetectorsSupportedAction *)self localizedDefaultActionDescription];
  }

  else
  {
    _BCSLocalizedString(@"Choose Action", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }
  v3 = ;

  return v3;
}

- (id)localizedDefaultActionDescription
{
  if ([(NSArray *)self->_actions count])
  {
    v3 = [(NSArray *)self->_actions firstObject];
    v4 = [v3 notificationTitle];
  }

  else
  {
    v4 = &stru_2853953A0;
  }

  return v4;
}

- (id)defaultActionTargetApplicationBundleIdentifier
{
  v2 = [(NSArray *)self->_actions firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 notificationIconBundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionPickerItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_actions, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_actions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [BCSDataDetectionActionPickerItem alloc];
        v11 = [(BCSDataDetectionActionPickerItem *)v10 initWithAction:self ddAction:v9, v14];
        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_performActionAndShowActionPickerIfNeeded:(BOOL)a3
{
  v5 = [(BCSAction *)self delegate];
  if (a3 || !self->_defaultDDAction)
  {
    v6 = [(NSArray *)self->_actions count];
    if (v6)
    {
      v7 = v6;
      if (objc_opt_respondsToSelector())
      {
        v8 = [v5 presentingViewControllerForAction:self];
        if (v8)
        {
          if (v7 == 1 || !a3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *v29 = 0;
              _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSDataDetectorsSupportedAction: performing default DDAction", v29, 2u);
            }

            v25 = [getDDDetectionControllerClass() sharedController];
            v26 = [(NSArray *)self->_actions firstObject];
            v27 = [v8 view];
            [v25 performAction:v26 inView:v27 interactionDelegate:0];

            v28 = +[BCSAWDLogger sharedLogger];
            [v28 logBarcodeActivatedEventForAction:self];
          }

          else
          {
            [(BCSAction *)self showActionPicker];
          }
        }

        else
        {
          v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v17)
          {
            [(BCSDataDetectorsSupportedAction *)v17 _performActionAndShowActionPickerIfNeeded:v18, v19, v20, v21, v22, v23, v24];
          }
        }
      }

      else
      {
        v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v9)
        {
          [(BCSDataDetectorsSupportedAction *)v9 _performActionAndShowActionPickerIfNeeded:v10, v11, v12, v13, v14, v15, v16];
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSDataDetectorsSupportedAction: perform the default DD action.", buf, 2u);
    }

    if (_bcs_deviceIsPad() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 sourceRectForPopoverActionPicker:self];
      [(DDUIAction *)self->_defaultDDAction dd_performActionWithRect:?];
    }

    else
    {
      [(DDUIAction *)self->_defaultDDAction dd_performAction];
    }
  }
}

- (id)debugDescriptionExtraInfoDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(BCSDataDetectorsSupportedAction *)self url];
  v5 = [v4 absoluteString];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"url"];
  }

  v6 = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(BCSAction *)self data];
    v9 = [v8 scannerResult];

    v10 = _bcs_addressDictionaryFromScannerResult(v9);
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"address"];
    }
  }

  v11 = [(BCSDataDetectorsSupportedAction *)self _actionStringsArray];
  [v3 setObject:v11 forKeyedSubscript:@"actions"];

  return v3;
}

- (void)determineActionabilityWithCompletionHandler:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(BCSAction *)self data];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 scannerResult];
    scannerResult = self->_scannerResult;
    self->_scannerResult = v9;

    v11 = [(DDScannerResult *)self->_scannerResult coreResult];
    v12 = 0;
LABEL_9:
    v22 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  v14 = [(BCSAction *)self data];
  v15 = v14;
  if (v13)
  {
    v16 = [v14 icsString];
    icsString = self->_icsString;
    self->_icsString = v16;

    v12 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v12 = [(BCSDataDetectorsSupportedAction *)self url];
    goto LABEL_8;
  }

  v19 = [(BCSAction *)self data];
  v20 = [v19 contact];
  contact = self->_contact;
  self->_contact = v20;

  v12 = 0;
  v22 = 0;
  v11 = 0;
LABEL_10:
  v23 = [getDDDetectionControllerClass() sharedController];
  v24 = [v23 barcodeActionsForContext:0 URL:v12 result:v11 contact:self->_contact ics:self->_icsString];
  actions = self->_actions;
  self->_actions = v24;

  v26 = [(NSArray *)self->_actions count];
  if ((v22 & 1) == 0 && v26 >= 2)
  {
    v27 = [(NSArray *)self->_actions firstObject];
    v31[0] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v29 = self->_actions;
    self->_actions = v28;
  }

  v4[2](v4, [(NSArray *)self->_actions count]!= 0);

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_actionStringsArray
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_actions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) localizedName];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)actionIcon
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  if (self->_contact)
  {
    UIImageClass = getUIImageClass();
    v4 = @"person.crop.circle.fill";
LABEL_5:
    v5 = [UIImageClass systemImageNamed:v4];
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if (self->_icsString)
  {
    UIImageClass = getUIImageClass();
    v4 = @"calendar";
    goto LABEL_5;
  }

  defaultDDAction = self->_defaultDDAction;
  if (defaultDDAction)
  {
    v5 = [(DDUIAction *)defaultDDAction image];
    goto LABEL_6;
  }

  v9 = [(NSArray *)self->_actions firstObject];

  if (!v9)
  {
    v11.receiver = self;
    v11.super_class = BCSDataDetectorsSupportedAction;
    v5 = [(BCSAction *)&v11 actionIcon];
    goto LABEL_6;
  }

  v10 = [(NSArray *)self->_actions firstObject];
  v6 = [v10 icon];

LABEL_7:

  return v6;
}

- (id)actionIconSystemImageName
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  if (self->_contact)
  {
    v3 = 0;
    v4 = @"person.crop.circle.fill";
  }

  else if (self->_icsString)
  {
    v3 = 0;
    v4 = @"calendar";
  }

  else
  {
    defaultDDAction = self->_defaultDDAction;
    if (defaultDDAction)
    {
      [(DDUIAction *)defaultDDAction dd_action];
    }

    else
    {
      [(NSArray *)self->_actions firstObject];
    }
    v3 = ;
    if (objc_opt_respondsToSelector())
    {
      v6 = [(DDUIAction *)self->_defaultDDAction dd_action];
      v4 = [v6 variantIconName];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)shortDescription
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  defaultDDAction = self->_defaultDDAction;
  if (defaultDDAction)
  {
    v4 = [(DDUIAction *)defaultDDAction title];
LABEL_3:
    v5 = v4;
    goto LABEL_6;
  }

  v6 = [(NSArray *)self->_actions firstObject];

  if (!v6)
  {
    v9.receiver = self;
    v9.super_class = BCSDataDetectorsSupportedAction;
    v4 = [(BCSAction *)&v9 shortDescription];
    goto LABEL_3;
  }

  v7 = [(NSArray *)self->_actions firstObject];
  v5 = [v7 compactTitle];

LABEL_6:

  return v5;
}

- (id)_hostingViewForAction
{
  v3 = [(BCSAction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 presentingViewControllerForAction:self];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 view];
    }

    else
    {
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v15)
      {
        [(BCSDataDetectorsSupportedAction *)v15 _hostingViewForAction:v16];
      }

      v6 = 0;
    }
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [(BCSDataDetectorsSupportedAction *)v7 _hostingViewForAction:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_setUpActionMenuIfNeeded
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkDataDetectorsSourceRectKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"DataDetectorsUISoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

double __59__BCSDataDetectorsSupportedAction__setUpActionMenuIfNeeded__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  return result;
}

- (BOOL)preferItemsInSubmenu
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(BCSAction *)self detectedCode];

  if (v3)
  {
    if (_bcs_isCurrentProcessSafari())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [self->_ddUIMenu children];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v13 + 1) + 8 * i) identifier];
            v10 = [v9 hasPrefix:@"com.apple.datadetectors.DDShareAction"];

            if (v10)
            {
              LOBYTE(v3) = 1;
              goto LABEL_14;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v3) = 0;
LABEL_14:
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)menuElements
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_ddUIMenu)
  {
    v3 = [(BCSDataDetectorsSupportedAction *)self preferItemsInSubmenu];
    v4 = [self->_ddUIMenu children];
    if (v3)
    {
      v5 = [(BCSAction *)self subMenuWithMenuItems:v4];

      v9[0] = v5;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BCSDataDetectorsSupportedAction;
    v4 = [(BCSAction *)&v8 menuElements];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)menuElementsCount
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  ddUIMenu = self->_ddUIMenu;
  if (ddUIMenu)
  {
    v4 = [ddUIMenu children];
    v5 = [v4 count];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BCSDataDetectorsSupportedAction;
    return [(BCSAction *)&v7 menuElementsCount];
  }
}

- (id)contentPreviewString
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  ddUIMenu = self->_ddUIMenu;
  if (ddUIMenu)
  {
    v4 = [ddUIMenu title];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BCSDataDetectorsSupportedAction;
    v4 = [(BCSAction *)&v6 contentPreviewString];
  }

  return v4;
}

@end