@interface SharingCollectionView
- (_TtC16MusicMessagesApp21SharingCollectionView)initWithCoder:(id)a3;
- (_TtC16MusicMessagesApp21SharingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
@end

@implementation SharingCollectionView

- (_TtC16MusicMessagesApp21SharingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SharingCollectionView();
  v9 = a4;
  v10 = [(SharingCollectionView *)&v13 initWithFrame:v9 collectionViewLayout:x, y, width, height];
  [(SharingCollectionView *)v10 setDelaysContentTouches:0, v13.receiver, v13.super_class];
  if (qword_100631EB0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006718A0;
  [(SharingCollectionView *)v10 setBackgroundColor:v11];

  return v10;
}

- (_TtC16MusicMessagesApp21SharingCollectionView)initWithCoder:(id)a3
{
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

@end