@interface CustomJournalColorPresetCellContentView
- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithCoder:(id)coder;
- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CustomJournalColorPresetCellContentView

- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithCoder:(id)coder
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
  layer = [*&v2[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView] layer];
  [v2 frame];
  [layer setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (_TtC7Journal39CustomJournalColorPresetCellContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end