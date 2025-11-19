@interface TVShowCell
+ (UIEdgeInsets)visualContentInsets;
- (_TtC16MusicApplication10TVShowCell)initWithCoder:(id)a3;
@end

@implementation TVShowCell

- (_TtC16MusicApplication10TVShowCell)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication10TVShowCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR____TtC16MusicApplication10TVShowCell_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication10TVShowCell_textComponents);
  *v5 = _s16MusicApplication10TVShowCellC14textComponents33_8C9A864756C05C79127AAB0A92CC6C03LLAC04TextF0AELLVvpfi_0();
  v5[1] = v6;
  v5[2] = v7;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

+ (UIEdgeInsets)visualContentInsets
{
  if (qword_DE6AB8 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_E714F0 + 1);
  v2 = *&xmmword_E714F0;
  v4 = *&qword_E71500;
  v5 = unk_E71508;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end