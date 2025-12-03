@interface FullScreenMultiPinMapCollectionViewCell
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (NSArray)preferredFocusEnvironments;
- (void)handleMapTap;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation FullScreenMultiPinMapCollectionViewCell

- (void)updateConstraints
{
  selfCopy = self;
  sub_100887908();
}

- (void)handleMapTap
{
  v3 = self + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_fullScreenMapCellDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    selfCopy = self;
    v6(0, 0, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
  v2 = v3.receiver;
  [(FullScreenMultiPinMapCollectionViewCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused] = 0;
}

- (NSArray)preferredFocusEnvironments
{
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused) == 1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100941D50;
    v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView);
    *(v3 + 32) = v4;
    v5 = v4;
  }

  sub_1000F24EC(&unk_100ADD5A0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_100888028(contextCopy);

  return self & 1;
}

@end