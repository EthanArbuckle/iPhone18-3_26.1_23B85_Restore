@interface AppAlertFooterComponent
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation AppAlertFooterComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_EF98();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_F078();
}

- (void)primaryButtonAction
{
  selfCopy = self;
  sub_F2E4();
}

- (void)secondaryButtonAction
{
  selfCopy = self;
  sub_F338();
}

@end