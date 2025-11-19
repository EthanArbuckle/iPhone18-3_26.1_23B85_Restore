@interface MenuCell
- (NSString)accessoryText;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (int64_t)accessoryType;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryText:(id)a3;
- (void)setAccessoryType:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)switchValueChanged:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
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

  v6 = (self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8);
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_4EE854(v7, v8);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_4F0F3C(v4);

  return v6;
}

- (void)layoutSubviews
{
  v2 = self;
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_4EEFCC(a3);
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for MenuCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(HorizontalLockupCollectionViewCell *)&v9 isSelected];
  v8.receiver = v6;
  v8.super_class = v5;
  [(HorizontalLockupCollectionViewCell *)&v8 setSelected:v3];
  if (v7 != [(MenuCell *)v6 isSelected]|| [(MenuCell *)v6 isSelected]&& [(MenuCell *)v6 isEditing])
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

- (void)setAccessoryType:(int64_t)a3
{
  v5 = type metadata accessor for MenuCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(MenuCell *)&v9 accessoryType];
  v8.receiver = v6;
  v8.super_class = v5;
  [(MenuCell *)&v8 setAccessoryType:a3];
  sub_4EF7A0(v7);
}

- (void)switchValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_4EFC34(v4);
}

@end