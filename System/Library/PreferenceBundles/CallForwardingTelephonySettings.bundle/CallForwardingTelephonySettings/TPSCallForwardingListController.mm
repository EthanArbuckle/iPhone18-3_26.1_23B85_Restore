@interface TPSCallForwardingListController
- (PSSpecifier)conditionalServiceSwitchSpecifier;
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallForwardingController)callForwardingController;
- (id)conditionalServiceBusyPhoneNumber:(id)number;
- (id)conditionalServiceSwitchOn:(id)on;
- (id)conditionalServiceTypeSpecifiers;
- (id)conditionalServiceUnansweredPhoneNumber:(id)number;
- (id)conditionalServiceUnreachablePhoneNumber:(id)number;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)unconditionalServicePhoneNumber:(id)number;
- (id)unconditionalServiceTypeSpecifiers;
- (void)configureCell:(id)cell;
- (void)configureCell:(id)cell forSpecifier:(id)specifier;
- (void)setConditionalServiceBusyPhoneNumber:(id)number specifier:(id)specifier;
- (void)setConditionalServiceSwitchOn:(id)on specifier:(id)specifier;
- (void)setConditionalServiceUnansweredPhoneNumber:(id)number specifier:(id)specifier;
- (void)setConditionalServiceUnreachablePhoneNumber:(id)number specifier:(id)specifier;
- (void)setMainSwitchOn:(id)on;
- (void)setUnconditionalServicePhoneNumber:(id)number specifier:(id)specifier;
@end

@implementation TPSCallForwardingListController

- (TPSCallForwardingController)callForwardingController
{
  callForwardingController = self->_callForwardingController;
  if (!callForwardingController)
  {
    v4 = [TPSCallForwardingController alloc];
    subscriptionContext = [(TPSCallForwardingListController *)self subscriptionContext];
    v6 = [(TPSCallForwardingController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_callForwardingController;
    self->_callForwardingController = v6;

    [(TPSCallForwardingController *)self->_callForwardingController setDelegate:self];
    callForwardingController = self->_callForwardingController;
  }

  return callForwardingController;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    subscriptionContext = [(TPSCallForwardingListController *)self subscriptionContext];
    callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
    if (!subscriptionContext)
    {
LABEL_14:

      v4 = *&self->TPSListController_opaque[v3];
      goto LABEL_15;
    }

    v7 = +[NSMutableArray array];
    mainSwitchSpecifier = [(TPSCallForwardingListController *)self mainSwitchSpecifier];
    [v7 addObject:mainSwitchSpecifier];

    serviceType = [callForwardingController serviceType];
    if (serviceType != &dword_0 + 1)
    {
      v10 = serviceType;
      if (([callForwardingController isLoading] & 1) == 0 && (objc_msgSend(callForwardingController, "isUnloading") & 1) == 0)
      {
        if ([callForwardingController isConditionalServiceAvailable])
        {
          conditionalServiceSwitchSpecifier = [(TPSCallForwardingListController *)self conditionalServiceSwitchSpecifier];
          [v7 addObject:conditionalServiceSwitchSpecifier];
        }

        if (v10 == &dword_0 + 2)
        {
          unconditionalServiceTypeSpecifiers = [(TPSCallForwardingListController *)self unconditionalServiceTypeSpecifiers];
          goto LABEL_12;
        }

        if (v10 == &dword_0 + 3)
        {
          unconditionalServiceTypeSpecifiers = [(TPSCallForwardingListController *)self conditionalServiceTypeSpecifiers];
LABEL_12:
          v13 = unconditionalServiceTypeSpecifiers;
          [v7 addObjectsFromArray:unconditionalServiceTypeSpecifiers];
        }
      }
    }

    v14 = [v7 copy];
    v15 = *&self->TPSListController_opaque[v3];
    *&self->TPSListController_opaque[v3] = v14;

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingListController;
  v5 = [(TPSCallForwardingListController *)&v7 tableView:view cellForRowAtIndexPath:path];
  [(TPSCallForwardingListController *)self configureCell:v5];

  return v5;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = [TPSCallForwardingStrings localizedStringForKey:@"MAIN_SWITCH_SPECIFIER_TITLE"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v6 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v5;

    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (PSSpecifier)conditionalServiceSwitchSpecifier
{
  conditionalServiceSwitchSpecifier = self->_conditionalServiceSwitchSpecifier;
  if (!conditionalServiceSwitchSpecifier)
  {
    v4 = [TPSCallForwardingStrings localizedStringForKey:@"CONDITIONAL_SWITCH_SPECIFIER_TITLE"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setConditionalServiceSwitchOn:specifier:" get:"conditionalServiceSwitchOn:" detail:0 cell:6 edit:0];
    v6 = self->_conditionalServiceSwitchSpecifier;
    self->_conditionalServiceSwitchSpecifier = v5;

    conditionalServiceSwitchSpecifier = self->_conditionalServiceSwitchSpecifier;
  }

  return conditionalServiceSwitchSpecifier;
}

- (id)conditionalServiceTypeSpecifiers
{
  v3 = +[NSMutableArray array];
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  v5 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v5];
  localizedConditionalBusyTitle = [callForwardingController localizedConditionalBusyTitle];
  v7 = objc_opt_class();
  v8 = [PSSpecifier preferenceSpecifierNamed:localizedConditionalBusyTitle target:self set:"setConditionalServiceBusyPhoneNumber:specifier:" get:"conditionalServiceBusyPhoneNumber:" detail:v7 cell:2 edit:objc_opt_class()];

  [v3 addObject:v8];
  localizedConditionalUnansweredTitle = [callForwardingController localizedConditionalUnansweredTitle];
  v10 = objc_opt_class();
  v11 = [PSSpecifier preferenceSpecifierNamed:localizedConditionalUnansweredTitle target:self set:"setConditionalServiceUnansweredPhoneNumber:specifier:" get:"conditionalServiceUnansweredPhoneNumber:" detail:v10 cell:2 edit:objc_opt_class()];

  [v3 addObject:v11];
  localizedConditionalUnreachableTitle = [callForwardingController localizedConditionalUnreachableTitle];
  v13 = objc_opt_class();
  v14 = [PSSpecifier preferenceSpecifierNamed:localizedConditionalUnreachableTitle target:self set:"setConditionalServiceUnreachablePhoneNumber:specifier:" get:"conditionalServiceUnreachablePhoneNumber:" detail:v13 cell:2 edit:objc_opt_class()];

  [v3 addObject:v14];
  v15 = [v3 copy];

  return v15;
}

- (id)unconditionalServiceTypeSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v4];
  v5 = [TPSCallForwardingStrings localizedStringForKey:@"UNCONDITIONAL_SERVICE_FORWARD_TO_SPECIFIER_TITLE"];
  v6 = objc_opt_class();
  v7 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setUnconditionalServicePhoneNumber:specifier:" get:"unconditionalServicePhoneNumber:" detail:v6 cell:2 edit:objc_opt_class()];

  [v3 addObject:v7];
  v8 = [v3 copy];

  return v8;
}

- (void)setMainSwitchOn:(id)on
{
  if ([on isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController updateServiceType:v4];

  [(TPSCallForwardingListController *)self reloadSpecifiers];
}

- (id)conditionalServiceBusyPhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  conditionalServiceBusyPhoneNumber = [callForwardingController conditionalServiceBusyPhoneNumber];

  return conditionalServiceBusyPhoneNumber;
}

- (void)setConditionalServiceBusyPhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setConditionalServiceBusyPhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (id)conditionalServiceUnansweredPhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  conditionalServiceUnansweredPhoneNumber = [callForwardingController conditionalServiceUnansweredPhoneNumber];

  return conditionalServiceUnansweredPhoneNumber;
}

- (void)setConditionalServiceUnansweredPhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setConditionalServiceUnansweredPhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (id)conditionalServiceUnreachablePhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  conditionalServiceUnreachablePhoneNumber = [callForwardingController conditionalServiceUnreachablePhoneNumber];

  return conditionalServiceUnreachablePhoneNumber;
}

- (void)setConditionalServiceUnreachablePhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setConditionalServiceUnreachablePhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (id)conditionalServiceSwitchOn:(id)on
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callForwardingController serviceType] == &dword_0 + 3);

  return v4;
}

- (void)setConditionalServiceSwitchOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  v6 = PSControlKey;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:v6];
  [v8 setOn:objc_msgSend(onCopy animated:{"BOOLValue"), 1}];
  v9 = [(TPSCallForwardingListController *)self cachedCellForSpecifier:specifierCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setLoading:1];
  }

  bOOLValue = [onCopy BOOLValue];
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  v12 = callForwardingController;
  if (bOOLValue)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [callForwardingController updateServiceType:v13];
}

- (id)unconditionalServicePhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  unconditionalServicePhoneNumber = [callForwardingController unconditionalServicePhoneNumber];

  return unconditionalServicePhoneNumber;
}

- (void)setUnconditionalServicePhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setUnconditionalServicePhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    specifier = [v4 specifier];
    [(TPSCallForwardingListController *)self configureCell:v4 forSpecifier:specifier];
  }
}

- (void)configureCell:(id)cell forSpecifier:(id)specifier
{
  cellCopy = cell;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  specifier = [cellCopy specifier];
  mainSwitchSpecifier = [(TPSCallForwardingListController *)self mainSwitchSpecifier];

  if (specifier == mainSwitchSpecifier)
  {
    if (([callForwardingController isLoading] & 1) != 0 || objc_msgSend(callForwardingController, "isUnloading"))
    {
      v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v8 startAnimating];
    }

    else
    {
      v8 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v8 addTarget:self action:"setMainSwitchOn:" forControlEvents:4096];
      [v8 setOn:{objc_msgSend(callForwardingController, "serviceType") != &dword_0 + 1}];
    }

    [cellCopy setAccessoryView:v8];
  }
}

@end