@interface TTRISplitViewController
- (UIViewController)detailViewController;
- (void)setupColumnStyle_workaroundRdar58463688;
@end

@implementation TTRISplitViewController

- (UIViewController)detailViewController
{
  v4.receiver = self;
  v4.super_class = TTRISplitViewController;
  v2 = [(TTRISplitViewController *)&v4 detailViewController];

  return v2;
}

- (void)setupColumnStyle_workaroundRdar58463688
{
  [(TTRISplitViewController *)self setGutterWidth:0.0];

  [(TTRISplitViewController *)self _setUsesExtraWidePrimaryColumn:1];
}

@end