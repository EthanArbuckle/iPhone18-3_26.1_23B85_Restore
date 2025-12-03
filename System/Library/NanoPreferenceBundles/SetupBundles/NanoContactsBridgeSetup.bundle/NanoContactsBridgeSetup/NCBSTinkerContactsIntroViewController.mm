@interface NCBSTinkerContactsIntroViewController
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerContactsIntroViewController)init;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation NCBSTinkerContactsIntroViewController

- (NCBSTinkerContactsIntroViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSTinkerContactsIntroViewController;
  v2 = [(NCBSTinkerContactsIntroViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSTinkerContactsIntroViewController *)v2 setStyle:2];
  }

  return v3;
}

- (id)titleString
{
  miniFlowDelegate = [(NCBSTinkerContactsIntroViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_INTRO_TITLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName];

  return v6;
}

- (id)detailString
{
  miniFlowDelegate = [(NCBSTinkerContactsIntroViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = NanoContactsBridgeSetupBundle();
  v5 = [v4 localizedStringForKey:@"TK_CONTACTS_INTRO_DETAIL" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName, familyMemberFirstName];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle();
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_INTRO_BUTTON_SETUP" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSTinkerContactsIntroViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end