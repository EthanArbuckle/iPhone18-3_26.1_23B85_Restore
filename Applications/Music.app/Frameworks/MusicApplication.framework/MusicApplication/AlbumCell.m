@interface AlbumCell
+ (UIEdgeInsets)visualContentInsets;
- (NSString)accessibilityRankString;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AlbumCell

+ (UIEdgeInsets)visualContentInsets
{
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v3 = v2;
  if (qword_DE6948 != -1)
  {
    swift_once();
  }

  v4 = xmmword_DF4580;
  swift_beginAccess();
  v5 = *(v3 + 104);
  v6 = qword_DF4598;

  *&v8 = v4 >> 64;
  *&v7 = v4;
  v9 = v5;
  v10 = *&v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(VerticalLockupCollectionViewCell *)&v3 layoutSubviews];
  sub_1ADA6C();
}

- (NSString)accessibilityRankString
{
  v2 = self;
  sub_1AE040();
  swift_beginAccess();

  v3 = sub_AB9260();

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  AlbumCell.traitCollectionDidChange(_:)(v9);
}

@end