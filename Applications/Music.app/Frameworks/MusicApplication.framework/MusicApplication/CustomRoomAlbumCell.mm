@interface CustomRoomAlbumCell
+ (UIEdgeInsets)visualContentInsets;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CustomRoomAlbumCell

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomRoomAlbumCell();
  v4 = a3;
  v5 = v7.receiver;
  [(VerticalLockupCollectionViewCell *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  if ([v6 horizontalSizeClass])
  {
    sub_4C68FC();
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4C6318();
}

+ (UIEdgeInsets)visualContentInsets
{
  sub_4C7654();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 104);

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

@end