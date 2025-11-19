@interface FMItemTerminalView
- (void)dealloc;
- (void)handleSecondaryAction;
- (void)handleTertiaryAction;
@end

@implementation FMItemTerminalView

- (void)dealloc
{
  v2 = self;
  sub_1001AA5E8();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for FMItemTerminalView();
  [(FMTerminalView *)&v3 dealloc];
}

- (void)handleSecondaryAction
{
  v2 = self;
  sub_1001AAFFC();
}

- (void)handleTertiaryAction
{
  v2 = self;
  sub_1001AB054();
}

@end