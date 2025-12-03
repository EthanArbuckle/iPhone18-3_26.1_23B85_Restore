@interface TextFieldCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TextFieldCell

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TextFieldCell();
  v2 = v3.receiver;
  [(TextFieldCell *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_717B4();
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  top = insets.top;
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel);
  selfCopy = self;
  [v6 frame];
  MinX = CGRectGetMinX(v13);

  v9 = top;
  v10 = MinX;
  v11 = bottom;
  v12 = trailing;
  result.trailing = v12;
  result.bottom = v11;
  result.leading = v10;
  result.top = v9;
  return result;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_71C84(editingCopy);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_AB92A0();
  fieldCopy = field;
  stringCopy = string;
  selfCopy = self;
  sub_71F4C(fieldCopy, location, length);

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = self + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 24);
    selfCopy = self;
    v6();

    swift_unknownObjectRelease();
  }

  return 0;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = self + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 32);
    selfCopy = self;
    v6();

    swift_unknownObjectRelease();
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  swift_getObjectType();
  attributesCopy = attributes;
  selfCopy = self;
  traitCollection = [(TextFieldCell *)selfCopy traitCollection];
  sub_722BC(traitCollection, 0.0);

  [attributesCopy frame];
  [attributesCopy setFrame:?];

  return attributesCopy;
}

@end