@interface PageControl.Coordinator
- (_TtCV15CarPlaySettings11PageControl11Coordinator)init;
- (void)valueChanged:(id)changed;
@end

@implementation PageControl.Coordinator

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  currentPage = [changedCopy currentPage];
  (*((swift_isaMask & selfCopy->super.isa) + 0x60))(currentPage);
}

- (_TtCV15CarPlaySettings11PageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end