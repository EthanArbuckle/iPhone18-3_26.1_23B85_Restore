@interface FMNoItemView
- (void)dealloc;
- (void)handleAction;
- (void)handleLearnMoreButton;
- (void)handleSecondaryAction;
- (void)handleTertiaryAction;
@end

@implementation FMNoItemView

- (void)dealloc
{
  v2 = self;
  sub_10046F214();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for FMNoItemView();
  [(FMNoItemView *)&v3 dealloc];
}

- (void)handleAction
{
  v2 = self;
  sub_10046F750();
}

- (void)handleSecondaryAction
{
  v2 = self;
  sub_10046F998();
}

- (void)handleTertiaryAction
{
  v2 = self;
  sub_10046F9F0();
}

- (void)handleLearnMoreButton
{
  v2 = self;
  sub_10046FC58();
}

@end