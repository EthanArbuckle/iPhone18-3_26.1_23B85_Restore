@interface ExportView
- (_TtC11FTMInternal10ExportView)initWithCoder:(id)a3;
- (_TtC11FTMInternal10ExportView)initWithFrame:(CGRect)a3;
- (void)didTapExportButton:(id)a3;
@end

@implementation ExportView

- (_TtC11FTMInternal10ExportView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC11FTMInternal10ExportView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&self->label[OBJC_IVAR____TtC11FTMInternal10ExportView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didTapExportButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001AD73C();
}

- (_TtC11FTMInternal10ExportView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end