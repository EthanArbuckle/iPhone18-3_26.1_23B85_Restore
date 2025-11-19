@interface PageControl.Coordinator
- (_TtCV15CarPlaySettings11PageControl11Coordinator)init;
- (void)valueChanged:(id)a3;
@end

@implementation PageControl.Coordinator

- (void)valueChanged:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 currentPage];
  (*((swift_isaMask & v6->super.isa) + 0x60))(v5);
}

- (_TtCV15CarPlaySettings11PageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end