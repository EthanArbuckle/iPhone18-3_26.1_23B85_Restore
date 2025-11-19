@interface TextFieldCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
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
  v2 = self;
  sub_717B4();
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  top = a3.top;
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel);
  v7 = self;
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

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_71C84(v4);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_AB92A0();
  v10 = a3;
  v11 = a5;
  v12 = self;
  sub_71F4C(v10, location, length);

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 24);
    v7 = self;
    v6();

    swift_unknownObjectRelease();
  }

  return 0;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 32);
    v7 = self;
    v6();

    swift_unknownObjectRelease();
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  swift_getObjectType();
  v5 = a3;
  v6 = self;
  v7 = [(TextFieldCell *)v6 traitCollection];
  sub_722BC(v7, 0.0);

  [v5 frame];
  [v5 setFrame:?];

  return v5;
}

@end