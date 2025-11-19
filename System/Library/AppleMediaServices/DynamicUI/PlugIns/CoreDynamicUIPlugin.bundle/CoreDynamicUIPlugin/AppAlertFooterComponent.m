@interface AppAlertFooterComponent
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation AppAlertFooterComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_EF98();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_F078();
}

- (void)primaryButtonAction
{
  v2 = self;
  sub_F2E4();
}

- (void)secondaryButtonAction
{
  v2 = self;
  sub_F338();
}

@end