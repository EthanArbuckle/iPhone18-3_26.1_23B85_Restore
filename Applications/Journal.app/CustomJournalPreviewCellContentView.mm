@interface CustomJournalPreviewCellContentView
- (_TtC7Journal35CustomJournalPreviewCellContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CustomJournalPreviewCellContentView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CustomJournalPreviewCellContentView();
  v2 = v5.receiver;
  [(CustomJournalPreviewCellContentView *)&v5 layoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedColorView] layer];
  [v2 bounds];
  [v3 setCornerRadius:v4 * 0.5];
}

- (_TtC7Journal35CustomJournalPreviewCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end