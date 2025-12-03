@interface CalendarMessageUIProxyAccessibility
+ (Class)CalendarComposeRecipientClass;
+ (Class)ComposeRecipientViewClass;
+ (Class)MFContactsSearchManagerClass;
+ (Class)MFContactsSearchResultsModelClass;
+ (Class)MailComposeRecipientClass;
+ (Class)RecipientTableViewCellClass;
+ (Class)SearchShadowViewClass;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CalendarMessageUIProxyAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"CalendarComposeRecipientClass" withFullSignature:{"#", 0}];
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"MailComposeRecipientClass" withFullSignature:{"#", 0}];
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"ComposeRecipientViewClass" withFullSignature:{"#", 0}];
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"RecipientTableViewCellClass" withFullSignature:{"#", 0}];
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"SearchShadowViewClass" withFullSignature:{"#", 0}];
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"MFContactsSearchManagerClass" withFullSignature:{"#", 0}];
  [validationsCopy validateClass:@"CalendarMessageUIProxy" hasClassMethod:@"MFContactsSearchResultsModelClass" withFullSignature:{"#", 0}];
}

+ (Class)CalendarComposeRecipientClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_CalendarComposeRecipientClass);
  LoadMessageUI();

  return v2;
}

+ (Class)MailComposeRecipientClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_MailComposeRecipientClass);
  LoadMessageUI();

  return v2;
}

+ (Class)ComposeRecipientViewClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_ComposeRecipientViewClass);
  LoadMessageUI();

  return v2;
}

+ (Class)RecipientTableViewCellClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_RecipientTableViewCellClass);
  LoadMessageUI();

  return v2;
}

+ (Class)SearchShadowViewClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_SearchShadowViewClass);
  LoadMessageUI();

  return v2;
}

+ (Class)MFContactsSearchManagerClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_MFContactsSearchManagerClass);
  LoadMessageUI();

  return v2;
}

+ (Class)MFContactsSearchResultsModelClass
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CalendarMessageUIProxyAccessibility;
  v2 = objc_msgSendSuper2(&v4, sel_MFContactsSearchResultsModelClass);
  LoadMessageUI();

  return v2;
}

@end