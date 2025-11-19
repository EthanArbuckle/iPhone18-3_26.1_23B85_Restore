@interface RAPPhotoCarouselCollectionViewCell
+ (NSString)reuseIdentifier;
- (UGCPhotoCarouselController)carouselController;
- (_TtC4Maps34RAPPhotoCarouselCollectionViewCell)initWithCoder:(id)a3;
@end

@implementation RAPPhotoCarouselCollectionViewCell

+ (NSString)reuseIdentifier
{
  type metadata accessor for RAPPhotoCarouselCollectionViewCell();
  sub_1000CE6B8(&unk_101926520);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (UGCPhotoCarouselController)carouselController
{
  v2 = [*(&self->super + OBJC_IVAR____TtC4Maps34RAPPhotoCarouselCollectionViewCell_photoCarouselCell) carouselController];

  return v2;
}

- (_TtC4Maps34RAPPhotoCarouselCollectionViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC4Maps34RAPPhotoCarouselCollectionViewCell_photoCarouselCell;
  *(&self->super + v3) = [objc_allocWithZone(UGCPhotoCarouselCell) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end