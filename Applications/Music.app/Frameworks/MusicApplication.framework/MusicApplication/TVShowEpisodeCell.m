@interface TVShowEpisodeCell
+ (unint64_t)visualContentInsets;
- (CGRect)bounds;
- (CGRect)frame;
- (UIImageView)accessibilityChevronImageView;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation TVShowEpisodeCell

- (void)clearArtworkCatalogs
{
  v2 = self;
  sub_43B4B8();
}

- (CGRect)frame
{
  sub_43B628(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_43B6F8(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_43B628(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_43B6F8(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_43B804();
}

- (UIImageView)accessibilityChevronImageView
{
  v2 = self;
  v3 = sub_43BD10();

  return v3;
}

+ (unint64_t)visualContentInsets
{
  sub_43C4F8();
  v1 = v0;
  if (qword_DE6BD8 != -1)
  {
    swift_once();
  }

  if (v1 >> 62)
  {
    v2 = sub_ABB060();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
LABEL_12:
    }
  }

  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_14:
    sub_36003C(result, v1);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_10:
    swift_beginAccess();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

@end