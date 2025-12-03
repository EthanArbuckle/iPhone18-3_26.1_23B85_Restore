@interface MenuCell
- (NSString)accessoryText;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (int64_t)accessoryType;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryText:(id)text;
- (void)setAccessoryType:(int64_t)type;
- (void)setSelected:(BOOL)selected;
- (void)switchValueChanged:(id)changed;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MenuCell

- (NSString)accessoryText
{
  if (*(self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8))
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

  v6 = (self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8);
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_4EE854(v7, v8);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_4F0F3C(attributesCopy);

  return v6;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4EEBA4();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MenuCell();
  v2 = v3.receiver;
  [(MenuCell *)&v3 tintColorDidChange];
  sub_4EFF38();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_4EEFCC(change);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MenuCell();
  v2 = v4.receiver;
  [(HorizontalLockupCollectionViewCell *)&v4 prepareForReuse];
  sub_4EFF38();
  v3 = &v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
  *v3 = 0;
  v3[8] = 1;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = type metadata accessor for MenuCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isSelected = [(HorizontalLockupCollectionViewCell *)&v9 isSelected];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(HorizontalLockupCollectionViewCell *)&v8 setSelected:selectedCopy];
  if (isSelected != [(MenuCell *)selfCopy isSelected]|| [(MenuCell *)selfCopy isSelected]&& [(MenuCell *)selfCopy isEditing])
  {
    sub_4EFF38();
  }
}

- (int64_t)accessoryType
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MenuCell();
  return [(MenuCell *)&v3 accessoryType];
}

- (void)setAccessoryType:(int64_t)type
{
  v5 = type metadata accessor for MenuCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  accessoryType = [(MenuCell *)&v9 accessoryType];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(MenuCell *)&v8 setAccessoryType:type];
  sub_4EF7A0(accessoryType);
}

- (void)switchValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_4EFC34(changedCopy);
}

@end