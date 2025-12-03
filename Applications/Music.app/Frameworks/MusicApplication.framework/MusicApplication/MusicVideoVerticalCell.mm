@interface MusicVideoVerticalCell
+ (unint64_t)visualContentInsets;
- (CGRect)bounds;
- (CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MusicVideoVerticalCell

- (CGRect)frame
{
  sub_2B678C(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_2B678C(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B6A08();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2B6CF8(change);
}

+ (unint64_t)visualContentInsets
{
  sub_2B7184();
  v1 = v0;
  if (qword_DE6A78 != -1)
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