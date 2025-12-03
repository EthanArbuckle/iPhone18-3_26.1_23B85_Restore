@interface BCSDataDetectorsSupportedAction
- (BCSDataDetectorsSupportedAction)initWithData:(id)data codePayload:(id)payload;
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
- (void)_performActionAndShowActionPickerIfNeeded:(BOOL)needed;
- (void)_setUpActionMenuIfNeeded;
- (void)determineActionabilityWithCompletionHandler:(id)handler;
@end

@implementation BCSDataDetectorsSupportedAction

- (BCSDataDetectorsSupportedAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
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
  v8 = [(BCSAction *)&v11 initWithData:dataCopy codePayload:payloadCopy];
  if (!v8)
  {
    self = 0;
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  self = v8;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)url
{
  data = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  data2 = [(BCSAction *)self data];
  data3 = data2;
  if (isKindOfClass)
  {
    v7 = [data2 url];
LABEL_5:
    v11 = v7;

    goto LABEL_7;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    data3 = [(BCSAction *)self data];
    scannerResult = [data3 scannerResult];
    coreResult = [scannerResult coreResult];

    v7 = _bcs_urlFromDDResult(coreResult);
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
    firstObject = [(NSArray *)self->_actions firstObject];
    notificationTitle = [firstObject notificationTitle];
  }

  else
  {
    notificationTitle = &stru_2853953A0;
  }

  return notificationTitle;
}

- (id)defaultActionTargetApplicationBundleIdentifier
{
  firstObject = [(NSArray *)self->_actions firstObject];
  v3 = firstObject;
  if (firstObject)
  {
    notificationIconBundleIdentifier = [firstObject notificationIconBundleIdentifier];
  }

  else
  {
    notificationIconBundleIdentifier = 0;
  }

  return notificationIconBundleIdentifier;
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

- (void)_performActionAndShowActionPickerIfNeeded:(BOOL)needed
{
  delegate = [(BCSAction *)self delegate];
  if (needed || !self->_defaultDDAction)
  {
    v6 = [(NSArray *)self->_actions count];
    if (v6)
    {
      v7 = v6;
      if (objc_opt_respondsToSelector())
      {
        v8 = [delegate presentingViewControllerForAction:self];
        if (v8)
        {
          if (v7 == 1 || !needed)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *v29 = 0;
              _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSDataDetectorsSupportedAction: performing default DDAction", v29, 2u);
            }

            sharedController = [getDDDetectionControllerClass() sharedController];
            firstObject = [(NSArray *)self->_actions firstObject];
            view = [v8 view];
            [sharedController performAction:firstObject inView:view interactionDelegate:0];

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
      [delegate sourceRectForPopoverActionPicker:self];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(BCSDataDetectorsSupportedAction *)self url];
  absoluteString = [v4 absoluteString];

  if (absoluteString)
  {
    [dictionary setObject:absoluteString forKeyedSubscript:@"url"];
  }

  data = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    data2 = [(BCSAction *)self data];
    scannerResult = [data2 scannerResult];

    v10 = _bcs_addressDictionaryFromScannerResult(scannerResult);
    if (v10)
    {
      [dictionary setObject:v10 forKeyedSubscript:@"address"];
    }
  }

  _actionStringsArray = [(BCSDataDetectorsSupportedAction *)self _actionStringsArray];
  [dictionary setObject:_actionStringsArray forKeyedSubscript:@"actions"];

  return dictionary;
}

- (void)determineActionabilityWithCompletionHandler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  data = [(BCSAction *)self data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  data2 = [(BCSAction *)self data];
  v8 = data2;
  if (isKindOfClass)
  {
    scannerResult = [data2 scannerResult];
    scannerResult = self->_scannerResult;
    self->_scannerResult = scannerResult;

    coreResult = [(DDScannerResult *)self->_scannerResult coreResult];
    v12 = 0;
LABEL_9:
    v22 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  data3 = [(BCSAction *)self data];
  v15 = data3;
  if (v13)
  {
    icsString = [data3 icsString];
    icsString = self->_icsString;
    self->_icsString = icsString;

    v12 = 0;
LABEL_8:
    coreResult = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v12 = [(BCSDataDetectorsSupportedAction *)self url];
    goto LABEL_8;
  }

  data4 = [(BCSAction *)self data];
  contact = [data4 contact];
  contact = self->_contact;
  self->_contact = contact;

  v12 = 0;
  v22 = 0;
  coreResult = 0;
LABEL_10:
  sharedController = [getDDDetectionControllerClass() sharedController];
  v24 = [sharedController barcodeActionsForContext:0 URL:v12 result:coreResult contact:self->_contact ics:self->_icsString];
  actions = self->_actions;
  self->_actions = v24;

  v26 = [(NSArray *)self->_actions count];
  if ((v22 & 1) == 0 && v26 >= 2)
  {
    firstObject = [(NSArray *)self->_actions firstObject];
    v31[0] = firstObject;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v29 = self->_actions;
    self->_actions = v28;
  }

  handlerCopy[2](handlerCopy, [(NSArray *)self->_actions count]!= 0);

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_actionStringsArray
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
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

        localizedName = [*(*(&v12 + 1) + 8 * i) localizedName];
        [array addObject:localizedName];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)actionIcon
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  if (self->_contact)
  {
    UIImageClass = getUIImageClass();
    v4 = @"person.crop.circle.fill";
LABEL_5:
    image = [UIImageClass systemImageNamed:v4];
LABEL_6:
    icon = image;
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
    image = [(DDUIAction *)defaultDDAction image];
    goto LABEL_6;
  }

  firstObject = [(NSArray *)self->_actions firstObject];

  if (!firstObject)
  {
    v11.receiver = self;
    v11.super_class = BCSDataDetectorsSupportedAction;
    image = [(BCSAction *)&v11 actionIcon];
    goto LABEL_6;
  }

  firstObject2 = [(NSArray *)self->_actions firstObject];
  icon = [firstObject2 icon];

LABEL_7:

  return icon;
}

- (id)actionIconSystemImageName
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  if (self->_contact)
  {
    v3 = 0;
    variantIconName = @"person.crop.circle.fill";
  }

  else if (self->_icsString)
  {
    v3 = 0;
    variantIconName = @"calendar";
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
      dd_action = [(DDUIAction *)self->_defaultDDAction dd_action];
      variantIconName = [dd_action variantIconName];
    }

    else
    {
      variantIconName = 0;
    }
  }

  return variantIconName;
}

- (id)shortDescription
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  defaultDDAction = self->_defaultDDAction;
  if (defaultDDAction)
  {
    title = [(DDUIAction *)defaultDDAction title];
LABEL_3:
    compactTitle = title;
    goto LABEL_6;
  }

  firstObject = [(NSArray *)self->_actions firstObject];

  if (!firstObject)
  {
    v9.receiver = self;
    v9.super_class = BCSDataDetectorsSupportedAction;
    title = [(BCSAction *)&v9 shortDescription];
    goto LABEL_3;
  }

  firstObject2 = [(NSArray *)self->_actions firstObject];
  compactTitle = [firstObject2 compactTitle];

LABEL_6:

  return compactTitle;
}

- (id)_hostingViewForAction
{
  delegate = [(BCSAction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate presentingViewControllerForAction:self];
    v5 = v4;
    if (v4)
    {
      view = [v4 view];
    }

    else
    {
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v15)
      {
        [(BCSDataDetectorsSupportedAction *)v15 _hostingViewForAction:v16];
      }

      view = 0;
    }
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [(BCSDataDetectorsSupportedAction *)v7 _hostingViewForAction:v8];
    }

    view = 0;
  }

  return view;
}

- (void)_setUpActionMenuIfNeeded
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkDataDetectorsSourceRectKey(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"DataDetectorsUISoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

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
  detectedCode = [(BCSAction *)self detectedCode];

  if (detectedCode)
  {
    if (_bcs_isCurrentProcessSafari())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      children = [self->_ddUIMenu children];
      v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(children);
            }

            identifier = [*(*(&v13 + 1) + 8 * i) identifier];
            v10 = [identifier hasPrefix:@"com.apple.datadetectors.DDShareAction"];

            if (v10)
            {
              LOBYTE(detectedCode) = 1;
              goto LABEL_14;
            }
          }

          v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(detectedCode) = 0;
LABEL_14:
    }

    else
    {
      LOBYTE(detectedCode) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return detectedCode;
}

- (id)menuElements
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_ddUIMenu)
  {
    preferItemsInSubmenu = [(BCSDataDetectorsSupportedAction *)self preferItemsInSubmenu];
    children = [self->_ddUIMenu children];
    if (preferItemsInSubmenu)
    {
      v5 = [(BCSAction *)self subMenuWithMenuItems:children];

      v9[0] = v5;
      children = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BCSDataDetectorsSupportedAction;
    children = [(BCSAction *)&v8 menuElements];
  }

  v6 = *MEMORY[0x277D85DE8];

  return children;
}

- (unint64_t)menuElementsCount
{
  [(BCSDataDetectorsSupportedAction *)self _setUpActionMenuIfNeeded];
  ddUIMenu = self->_ddUIMenu;
  if (ddUIMenu)
  {
    children = [ddUIMenu children];
    v5 = [children count];

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
    title = [ddUIMenu title];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BCSDataDetectorsSupportedAction;
    title = [(BCSAction *)&v6 contentPreviewString];
  }

  return title;
}

@end