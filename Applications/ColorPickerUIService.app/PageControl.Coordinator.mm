@interface PageControl.Coordinator
- (_TtCV20ColorPickerUIService11PageControl11Coordinator)init;
- (void)valueChanged:(id)changed;
@end

@implementation PageControl.Coordinator

- (void)valueChanged:(id)changed
{
  v4 = *&self->parent[OBJC_IVAR____TtCV20ColorPickerUIService11PageControl11Coordinator_parent];
  changedCopy = changed;
  selfCopy = self;

  [changedCopy currentPage];
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