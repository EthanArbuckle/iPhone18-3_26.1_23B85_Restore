@interface SKBackgroundAssetConsentViewController
- (SKBackgroundAssetConsentViewController)init;
- (void)_continueButtonPressed;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation SKBackgroundAssetConsentViewController

- (SKBackgroundAssetConsentViewController)init
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BACKGROUND_ASSETS_CONSENT_TITLE" value:&stru_1F29BCE20 table:0];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BACKGROUND_ASSETS_CONSENT_DESCRIPTION" value:&stru_1F29BCE20 table:0];

  v7 = MEMORY[0x1E69DCAB8];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:@"square.and.arrow.down.settings" inBundle:v8 withConfiguration:0];
  v12.receiver = self;
  v12.super_class = SKBackgroundAssetConsentViewController;
  v10 = [(SKBackgroundAssetConsentViewController *)&v12 initWithTitle:v4 detailText:v6 icon:v9 contentLayout:2];

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SKBackgroundAssetConsentViewController;
  [(OBBaseWelcomeController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x1E69B7D00] boldButton];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKGROUND_ASSETS_CONSENT_CONTINUE" value:&stru_1F29BCE20 table:0];
  [v3 setTitle:v5 forState:0];

  [v3 addTarget:self action:sel__continueButtonPressed forControlEvents:64];
  v6 = [(SKBackgroundAssetConsentViewController *)self buttonTray];
  [v6 addButton:v3];
}

- (void)dealloc
{
  v3 = [(SKBackgroundAssetConsentViewController *)self responseBlock];

  if (v3)
  {
    v4 = [(SKBackgroundAssetConsentViewController *)self responseBlock];
    v4[2](v4, 0);
  }

  v5.receiver = self;
  v5.super_class = SKBackgroundAssetConsentViewController;
  [(SKBackgroundAssetConsentViewController *)&v5 dealloc];
}

- (void)_continueButtonPressed
{
  v3 = [(SKBackgroundAssetConsentViewController *)self responseBlock];

  if (v3)
  {
    v4 = [(SKBackgroundAssetConsentViewController *)self responseBlock];
    v4[2](v4, MEMORY[0x1E695E118]);
  }

  [(SKBackgroundAssetConsentViewController *)self setResponseBlock:0];
}

@end