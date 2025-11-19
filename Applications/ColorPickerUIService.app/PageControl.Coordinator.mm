@interface PageControl.Coordinator
- (_TtCV20ColorPickerUIService11PageControl11Coordinator)init;
- (void)valueChanged:(id)a3;
@end

@implementation PageControl.Coordinator

- (void)valueChanged:(id)a3
{
  v4 = *&self->parent[OBJC_IVAR____TtCV20ColorPickerUIService11PageControl11Coordinator_parent];
  v5 = a3;
  v6 = self;

  [v5 currentPage];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

- (_TtCV20ColorPickerUIService11PageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end