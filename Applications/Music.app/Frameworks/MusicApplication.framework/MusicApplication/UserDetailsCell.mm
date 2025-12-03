@interface UserDetailsCell
- (NSString)accessoryText;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)setAccessoryButtonMenu:(id)menu;
- (void)setAccessoryText:(id)text;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UserDetailsCell

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title);
  *v6 = v5;
  v6[1] = v7;
  titleCopy = title;
  selfCopy = self;

  sub_31ECC0();
}

- (void)setSubtitle:(id)subtitle
{
  v5 = sub_AB92A0();
  v7 = v6;
  subtitleCopy = subtitle;
  selfCopy = self;
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

- (void)setAccessoryText:(id)text
{
  if (text)
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
  selfCopy = self;
  sub_31F484(v7, v8);
}

- (void)setAccessoryButtonMenu:(id)menu
{
  v6 = *(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu);
  *(self + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu) = menu;
  menuCopy = menu;
  selfCopy = self;
  sub_31F628(v6);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_31F720(change);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  traitCollection = [(UserDetailsCell *)selfCopy traitCollection];
  sub_31FF10();
  sub_2F48A4(v7, traitCollection, 0, 0);

  [attributesCopy frame];
  [attributesCopy setFrame:?];

  return attributesCopy;
}

@end