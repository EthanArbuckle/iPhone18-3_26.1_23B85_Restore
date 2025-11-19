@interface CNContactQuickActionsDisambiguationMenuPresentation
+ (CNContactQuickActionsDisambiguationMenuPresentation)alertSheetPresentation;
+ (CNContactQuickActionsDisambiguationMenuPresentation)modalPresentation;
- (id)initBase;
@end

@implementation CNContactQuickActionsDisambiguationMenuPresentation

+ (CNContactQuickActionsDisambiguationMenuPresentation)modalPresentation
{
  v2 = [(CNContactQuickActionsDisambiguationMenuPresentation *)[_CNContactQuickActionsModalDisambiguationMenuPresentation alloc] initBase];

  return v2;
}

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = CNContactQuickActionsDisambiguationMenuPresentation;
  return [(CNContactQuickActionsDisambiguationMenuPresentation *)&v3 init];
}

+ (CNContactQuickActionsDisambiguationMenuPresentation)alertSheetPresentation
{
  v2 = [(CNContactQuickActionsDisambiguationMenuPresentation *)[_CNContactQuickActionsAlertSheetDisambiguationMenuPresentation alloc] initBase];

  return v2;
}

@end