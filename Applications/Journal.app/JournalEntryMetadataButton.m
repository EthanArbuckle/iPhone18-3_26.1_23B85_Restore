@interface JournalEntryMetadataButton
- (NSDirectionalEdgeInsets)hitTestDirectionalInsets;
- (_TtC7Journal26JournalEntryMetadataButton)initWithCoder:(id)a3;
- (_TtC7Journal26JournalEntryMetadataButton)initWithFrame:(CGRect)a3;
- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)a3;
@end

@implementation JournalEntryMetadataButton

- (_TtC7Journal26JournalEntryMetadataButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_entry) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for JournalEntryMetadataButton();
  return [(JournalEntryMetadataButton *)&v9 initWithFrame:x, y, width, height];
}

- (NSDirectionalEdgeInsets)hitTestDirectionalInsets
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JournalEntryMetadataButton();
  [(JournalEntryMetadataButton *)&v6 hitTestDirectionalInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v10.receiver = self;
  v10.super_class = type metadata accessor for JournalEntryMetadataButton();
  v7 = v10.receiver;
  [(JournalEntryMetadataButton *)&v10 setHitTestDirectionalInsets:top, leading, bottom, trailing];
  v8 = *&v7[OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView];
  if (v8)
  {
    v9 = v8;
    [v7 hitTestDirectionalInsets];
    [v9 setHitTestDirectionalInsets:?];
  }
}

- (_TtC7Journal26JournalEntryMetadataButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_entry) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JournalEntryMetadataButton();
  v5 = a3;
  v6 = [(JournalEntryMetadataButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end