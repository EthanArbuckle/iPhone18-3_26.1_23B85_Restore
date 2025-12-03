@interface MFNanoBridgeSignaturesViewController
- (id)_signatureWithSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setSignature:(id)signature withSpecifier:(id)specifier;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFNanoBridgeSignaturesViewController

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeSignaturesViewController;
  [(MFNanoBridgeSignaturesViewController *)&v3 viewWillAppear:appear];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForSignatureSettings];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];

    v7 = [PSSpecifier preferenceSpecifierNamed:&stru_34FF0 target:self set:"_setSignature:withSpecifier:" get:"_signatureWithSpecifier:" detail:0 cell:14 edit:0];
    LODWORD(v8) = 22.0;
    v9 = [NSNumber numberWithFloat:v8];
    [v7 setProperty:v9 forKey:PSTextViewBottomMarginKey];

    [v5 addObject:v7];
    v10 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = MFNanoBridgeSignaturesViewController;
  v4 = [(MFNanoBridgeSignaturesViewController *)&v11 tableView:view cellForRowAtIndexPath:path];
  if ([v4 tag] == &dword_C + 2)
  {
    textView = [v4 textView];
    [textView setTextLoupeVisibility:2];
    v6 = +[UIColor clearColor];
    [textView setBackgroundColor:v6];

    [textView setAllowsEditingTextAttributes:1];
    v7 = BPSDetailTextColor();
    [textView setTextColor:v7];

    v8 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v9 = [UIFont fontWithDescriptor:v8 size:13.0];
    [textView setFont:v9];
  }

  return v4;
}

- (id)_signatureWithSpecifier:(id)specifier
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  htmlSignature = [v3 htmlSignature];

  return htmlSignature;
}

- (void)_setSignature:(id)signature withSpecifier:(id)specifier
{
  signatureCopy = signature;
  specifierCopy = specifier;
  v7 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v7 setHtmlSignature:signatureCopy];

  specifier = [(MFNanoBridgeSignaturesViewController *)self specifier];

  parentController = [(MFNanoBridgeSignaturesViewController *)self parentController];
  v10 = parentController;
  if (parentController)
  {
    target = parentController;
  }

  else
  {
    target = [specifier target];
  }

  v12 = target;

  [v12 reloadSpecifier:specifier];
}

@end