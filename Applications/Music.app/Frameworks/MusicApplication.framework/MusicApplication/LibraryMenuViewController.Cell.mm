@interface LibraryMenuViewController.Cell
- (_TtCC16MusicApplication25LibraryMenuViewController4Cell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation LibraryMenuViewController.Cell

- (_TtCC16MusicApplication25LibraryMenuViewController4Cell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1F0608(style, identifier, v6);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  v6 = v8.receiver;
  [(LibraryMenuViewController.Cell *)&v8 setSelected:selectedCopy animated:animatedCopy];
  v7 = &UIAccessibilityTraitNone;
  if (selectedCopy)
  {
    v7 = &UIAccessibilityTraitSelected;
  }

  [v6 setAccessibilityTraits:{*v7, v8.receiver, v8.super_class}];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  selfCopy = self;
  isEditing = [(LibraryMenuViewController.Cell *)selfCopy isEditing];
  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  [(LibraryMenuViewController.Cell *)&v8 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    [(LibraryMenuViewController.Cell *)selfCopy invalidateIntrinsicContentSize];
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
  selfCopy = self;
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
  selfCopy = self;
  sub_1F12E8();
}

@end