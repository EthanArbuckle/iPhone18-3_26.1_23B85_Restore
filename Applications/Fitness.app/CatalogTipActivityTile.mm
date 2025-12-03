@interface CatalogTipActivityTile
- (_TtC10FitnessApp22CatalogTipActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation CatalogTipActivityTile

- (_TtC10FitnessApp22CatalogTipActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100320E14(style, identifier, v6);
}

- (void)prepareForReuse
{
  v3 = sub_100140278(&qword_1008E4EC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CatalogTipActivityTile();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(CatalogTipActivityTile *)&v11 prepareForReuse];
  v8 = type metadata accessor for CatalogTipSectionItem();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC10FitnessApp22CatalogTipActivityTile_tipSectionItem;
  swift_beginAccess();
  sub_100282DB8(v5, selfCopy + v9);
  swift_endAccess();
  dispatch thunk of CatalogTipPlainView.prepareForReuse()();
}

@end