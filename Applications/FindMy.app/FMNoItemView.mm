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
  selfCopy = self;
  sub_10046F214();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for FMNoItemView();
  [(FMNoItemView *)&v3 dealloc];
}

- (void)handleAction
{
  selfCopy = self;
  sub_10046F750();
}

- (void)handleSecondaryAction
{
  selfCopy = self;
  sub_10046F998();
}

- (void)handleTertiaryAction
{
  selfCopy = self;
  sub_10046F9F0();
}

- (void)handleLearnMoreButton
{
  selfCopy = self;
  sub_10046FC58();
}

@end