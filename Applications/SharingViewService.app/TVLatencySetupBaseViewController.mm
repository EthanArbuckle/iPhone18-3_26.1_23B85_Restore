@interface TVLatencySetupBaseViewController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencySetupBaseViewController

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = TVLatencySetupBaseViewController;
  [(SVSBaseViewController *)&v5 viewWillAppear:appear];
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:1280];
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setFont:v4];
}

@end