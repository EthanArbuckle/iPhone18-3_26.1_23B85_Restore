@interface ParagraphCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ParagraphCell

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(ParagraphCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_29BF0C();
  [v5 setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = swift_getObjectType();
  v2 = v16.receiver;
  [(ParagraphCell *)&v16 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 layoutMargins];
  v15 = UIEdgeInsetsInsetRect_3(v4, v6, v8, v10, v11, v12, v13, v14);
  if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_recordedWidth] != v15)
  {
    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews13ParagraphCell_recordedWidth] = v15;
    sub_29BF0C();
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  ObjectType = swift_getObjectType();
  attributesCopy = attributes;
  selfCopy = self;
  [(ParagraphCell *)selfCopy layoutIfNeeded];
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  v8 = [(ParagraphCell *)&v10 preferredLayoutAttributesFittingAttributes:attributesCopy];

  return v8;
}

@end