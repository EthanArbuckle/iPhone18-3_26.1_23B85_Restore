@interface JournalCollectionCell
- (void)prepareForReuse;
@end

@implementation JournalCollectionCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for JournalCollectionCell();
  v2 = v4.receiver;
  [(JournalCollectionCell *)&v4 prepareForReuse];
  v3 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_iconImageView;
  [*&v2[OBJC_IVAR____TtC7Journal21JournalCollectionCell_iconImageView] setImage:{0, v4.receiver, v4.super_class}];
  [*&v2[v3] setTintColor:0];
}

@end