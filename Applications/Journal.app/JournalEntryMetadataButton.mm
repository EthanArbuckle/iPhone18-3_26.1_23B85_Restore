@interface JournalEntryMetadataButton
- (NSDirectionalEdgeInsets)hitTestDirectionalInsets;
- (_TtC7Journal26JournalEntryMetadataButton)initWithCoder:(id)coder;
- (_TtC7Journal26JournalEntryMetadataButton)initWithFrame:(CGRect)frame;
- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)insets;
@end

@implementation JournalEntryMetadataButton

- (_TtC7Journal26JournalEntryMetadataButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
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

- (_TtC7Journal26JournalEntryMetadataButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_entry) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JournalEntryMetadataButton();
  coderCopy = coder;
  v6 = [(JournalEntryMetadataButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end