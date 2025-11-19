@interface CustomJournalColorPresetCellContentView
- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithCoder:(id)a3;
- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CustomJournalColorPresetCellContentView

- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView;
  v5 = [objc_allocWithZone(UIView) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(&self->super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CustomJournalColorPresetCellContentView();
  v2 = v4.receiver;
  [(CustomJournalColorPresetCellContentView *)&v4 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView] layer];
  [v2 frame];
  [v3 setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end