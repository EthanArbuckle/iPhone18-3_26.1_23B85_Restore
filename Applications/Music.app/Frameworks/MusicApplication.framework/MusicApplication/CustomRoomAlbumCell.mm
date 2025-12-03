@interface CustomRoomAlbumCell
+ (UIEdgeInsets)visualContentInsets;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CustomRoomAlbumCell

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomRoomAlbumCell();
  changeCopy = change;
  v5 = v7.receiver;
  [(VerticalLockupCollectionViewCell *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  if ([traitCollection horizontalSizeClass])
  {
    sub_4C68FC();
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
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