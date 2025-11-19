@interface LibraryMenuViewController.Cell
- (_TtCC16MusicApplication25LibraryMenuViewController4Cell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation LibraryMenuViewController.Cell

- (_TtCC16MusicApplication25LibraryMenuViewController4Cell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1F0608(a3, a4, v6);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  v6 = v8.receiver;
  [(LibraryMenuViewController.Cell *)&v8 setSelected:v5 animated:v4];
  v7 = &UIAccessibilityTraitNone;
  if (v5)
  {
    v7 = &UIAccessibilityTraitSelected;
  }

  [v6 setAccessibilityTraits:{*v7, v8.receiver, v8.super_class}];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = self;
  v7 = [(LibraryMenuViewController.Cell *)v6 isEditing];
  v8.receiver = v6;
  v8.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  [(LibraryMenuViewController.Cell *)&v8 setEditing:v5 animated:v4];
  if (v7 != v5)
  {
    [(LibraryMenuViewController.Cell *)v6 invalidateIntrinsicContentSize];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  v2 = v3.receiver;
  [(LibraryMenuViewController.Cell *)&v3 prepareForReuse];
  sub_1F1568();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1F109C();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  v2 = v3.receiver;
  [(LibraryMenuViewController.Cell *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 music_inheritedLayoutInsets];
  [v2 setLayoutMargins:?];
}

- (void)layoutMarginsDidChange
{
  v2 = self;
  sub_1F12E8();
}

@end