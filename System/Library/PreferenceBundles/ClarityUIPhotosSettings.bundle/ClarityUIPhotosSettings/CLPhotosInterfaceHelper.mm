@interface CLPhotosInterfaceHelper
+ (id)createRowCellContentForSharedAlbum:(id)album;
- (_TtC23ClarityUIPhotosSettings23CLPhotosInterfaceHelper)init;
@end

@implementation CLPhotosInterfaceHelper

+ (id)createRowCellContentForSharedAlbum:(id)album
{
  v4 = objc_allocWithZone(UITableViewCell);
  albumCopy = album;
  v6 = [v4 init];
  v8[3] = sub_38B4(&qword_10908, &qword_7538);
  v8[4] = sub_38FC();
  sub_39A8(v8);
  type metadata accessor for CLPhotosSharedAlbumRow();
  sub_3A0C();
  sub_5730();
  sub_58B0();

  return v6;
}

- (_TtC23ClarityUIPhotosSettings23CLPhotosInterfaceHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CLPhotosInterfaceHelper();
  return [(CLPhotosInterfaceHelper *)&v3 init];
}

@end