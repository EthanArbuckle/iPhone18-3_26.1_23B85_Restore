@interface FMItemTerminalView
- (void)dealloc;
- (void)handleSecondaryAction;
- (void)handleTertiaryAction;
@end

@implementation FMItemTerminalView

- (void)dealloc
{
  selfCopy = self;
  sub_1001AA5E8();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for FMItemTerminalView();
  [(FMTerminalView *)&v3 dealloc];
}

- (void)handleSecondaryAction
{
  selfCopy = self;
  sub_1001AAFFC();
}

- (void)handleTertiaryAction
{
  selfCopy = self;
  sub_1001AB054();
}

@end