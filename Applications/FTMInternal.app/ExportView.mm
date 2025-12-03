@interface ExportView
- (_TtC11FTMInternal10ExportView)initWithCoder:(id)coder;
- (_TtC11FTMInternal10ExportView)initWithFrame:(CGRect)frame;
- (void)didTapExportButton:(id)button;
@end

@implementation ExportView

- (_TtC11FTMInternal10ExportView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11FTMInternal10ExportView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&self->label[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didTapExportButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1001AD73C();
}

- (_TtC11FTMInternal10ExportView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end