@interface UserDetailsCell
- (NSString)accessoryText;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)setAccessoryButtonMenu:(id)a3;
- (void)setAccessoryText:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UserDetailsCell

- (void)setTitle:(id)a3
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title);
  *v6 = v5;
  v6[1] = v7;
  v9 = a3;
  v8 = self;

  sub_31ECC0();
}

- (void)setSubtitle:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v9 = a3;
  v8 = self;
  sub_31F284(v5, v7);
}

- (NSString)accessoryText
{
  if (*(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText + 8))
  {

    v2 = sub_AB9260();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessoryText:(id)a3
{
  if (a3)
  {
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText + 8);
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_31F484(v7, v8);
}

- (void)setAccessoryButtonMenu:(id)a3
{
  v6 = *(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu);
  *(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu) = a3;
  v4 = a3;
  v5 = self;
  sub_31F628(v6);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_31F720(a3);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(UserDetailsCell *)v5 traitCollection];
  sub_31FF10();
  sub_2F48A4(v7, v6, 0, 0);

  [v4 frame];
  [v4 setFrame:?];

  return v4;
}

@end