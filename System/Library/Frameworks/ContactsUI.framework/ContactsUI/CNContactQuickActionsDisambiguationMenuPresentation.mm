@interface CNContactQuickActionsDisambiguationMenuPresentation
+ (CNContactQuickActionsDisambiguationMenuPresentation)alertSheetPresentation;
+ (CNContactQuickActionsDisambiguationMenuPresentation)modalPresentation;
- (id)initBase;
@end

@implementation CNContactQuickActionsDisambiguationMenuPresentation

+ (CNContactQuickActionsDisambiguationMenuPresentation)modalPresentation
{
  initBase = [(CNContactQuickActionsDisambiguationMenuPresentation *)[_CNContactQuickActionsModalDisambiguationMenuPresentation alloc] initBase];

  return initBase;
}

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = CNContactQuickActionsDisambiguationMenuPresentation;
  return [(CNContactQuickActionsDisambiguationMenuPresentation *)&v3 init];
}

+ (CNContactQuickActionsDisambiguationMenuPresentation)alertSheetPresentation
{
  initBase = [(CNContactQuickActionsDisambiguationMenuPresentation *)[_CNContactQuickActionsAlertSheetDisambiguationMenuPresentation alloc] initBase];

  return initBase;
}

@end