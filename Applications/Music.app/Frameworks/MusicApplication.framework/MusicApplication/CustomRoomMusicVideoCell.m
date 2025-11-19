@interface CustomRoomMusicVideoCell
+ (UIEdgeInsets)visualContentInsets;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CustomRoomMusicVideoCell

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomRoomMusicVideoCell();
  v4 = a3;
  v5 = v7.receiver;
  [(VerticalLockupCollectionViewCell *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  if ([v6 horizontalSizeClass])
  {
    sub_14EEC8();
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_14E7D4();
}

+ (UIEdgeInsets)visualContentInsets
{
  sub_14FEC8(v8);
  v2 = v8[3];
  swift_beginAccess();
  v3 = *(v2 + 104);

  v9 = v8[4];
  sub_12E1C(&v9, &qword_DF1E78);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = v3;
  result.right = v6;
  result.bottom = v7;
  result.left = v5;
  result.top = v4;
  return result;
}

@end