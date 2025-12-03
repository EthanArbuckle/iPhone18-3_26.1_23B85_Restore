@interface CollectionTableViewCell
- (_TtC8AppStore23CollectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CollectionTableViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CollectionTableViewCell();
  v2 = v3.receiver;
  [(CollectionTableViewCell *)&v3 prepareForReuse];
  [v2 setSelectionStyle:{0, v3.receiver, v3.super_class}];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for CollectionTableViewCell();
  v2 = v14.receiver;
  [(CollectionTableViewCell *)&v14 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_collectionView];
  if (v3)
  {
    v4 = v3;
    contentView = [v2 contentView];
    [contentView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v4 setFrame:{v7, v9, v11, v13}];
    v2 = v4;
  }
}

- (_TtC8AppStore23CollectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100343C48(style, identifier, v6);
}

@end