@interface SharingCollectionView
- (_TtC16MusicMessagesApp21SharingCollectionView)initWithCoder:(id)coder;
- (_TtC16MusicMessagesApp21SharingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
@end

@implementation SharingCollectionView

- (_TtC16MusicMessagesApp21SharingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SharingCollectionView();
  layoutCopy = layout;
  height = [(SharingCollectionView *)&v13 initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];
  [(SharingCollectionView *)height setDelaysContentTouches:0, v13.receiver, v13.super_class];
  if (qword_100631EB0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006718A0;
  [(SharingCollectionView *)height setBackgroundColor:v11];

  return height;
}

- (_TtC16MusicMessagesApp21SharingCollectionView)initWithCoder:(id)coder
{
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

@end