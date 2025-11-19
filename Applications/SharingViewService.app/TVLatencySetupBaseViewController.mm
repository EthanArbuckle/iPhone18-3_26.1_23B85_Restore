@interface TVLatencySetupBaseViewController
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVLatencySetupBaseViewController

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TVLatencySetupBaseViewController;
  [(SVSBaseViewController *)&v5 viewWillAppear:a3];
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:1280];
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setFont:v4];
}

@end