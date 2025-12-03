@interface ICTagContainerCell
- (BOOL)shouldSuppressAccessibilityHintsFor:(id)for;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC11MobileNotes17TagCollectionView)collectionView;
- (id)dataDidChange;
- (id)selectionDidChange;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)deselectAllItemsAnimated:(BOOL)animated;
- (void)prepareForReuse;
- (void)reloadTagsWithAnimated:(BOOL)animated completion:(id)completion;
- (void)selectTagWithIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)selectTagsWithTagSelection:(id)selection animated:(BOOL)animated;
- (void)setAllowsContextualMenu:(BOOL)menu;
- (void)setCollectionView:(id)view;
- (void)setDataDidChange:(id)change;
- (void)setHasGroupInset:(BOOL)inset;
- (void)setHasHorizontalScrolling:(BOOL)scrolling;
- (void)setSelectionDidChange:(id)change;
@end

@implementation ICTagContainerCell

- (void)setHasGroupInset:(BOOL)inset
{
  v4 = *(self + OBJC_IVAR___ICTagContainerCell_hasGroupInset);
  *(self + OBJC_IVAR___ICTagContainerCell_hasGroupInset) = inset;
  if (v4 != inset)
  {
    selfCopy = self;
    [(ICTagContainerCell *)selfCopy setNeedsLayout];
    [(ICTagContainerCell *)selfCopy layoutIfNeeded];
    [(ICTagContainerCell *)selfCopy setNeedsUpdateConfiguration];
  }
}

- (void)setHasHorizontalScrolling:(BOOL)scrolling
{
  v4 = *(self + OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling);
  *(self + OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling) = scrolling;
  if (v4 != scrolling)
  {
    selfCopy = self;
    sub_1002B412C();
  }
}

- (id)selectionDidChange
{
  if (*(self + OBJC_IVAR___ICTagContainerCell_selectionDidChange))
  {
    v2 = *(self + OBJC_IVAR___ICTagContainerCell_selectionDidChange + 8);
    v5[4] = *(self + OBJC_IVAR___ICTagContainerCell_selectionDidChange);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1002DEFE0;
    v5[3] = &unk_1006539D0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelectionDidChange:(id)change
{
  v4 = _Block_copy(change);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1002B5F34;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICTagContainerCell_selectionDidChange);
  v8 = *(self + OBJC_IVAR___ICTagContainerCell_selectionDidChange);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10000C840(v8);
}

- (id)dataDidChange
{
  if (*(self + OBJC_IVAR___ICTagContainerCell_dataDidChange))
  {
    v2 = *(self + OBJC_IVAR___ICTagContainerCell_dataDidChange + 8);
    v5[4] = *(self + OBJC_IVAR___ICTagContainerCell_dataDidChange);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10028DCE8;
    v5[3] = &unk_100653980;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDataDidChange:(id)change
{
  v4 = _Block_copy(change);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1002B5F50;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICTagContainerCell_dataDidChange);
  v8 = *(self + OBJC_IVAR___ICTagContainerCell_dataDidChange);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10000C840(v8);
}

- (void)setAllowsContextualMenu:(BOOL)menu
{
  selfCopy = self;
  v4 = OBJC_IVAR___ICTagContainerCell_allowsContextualMenu;
  *(self + OBJC_IVAR___ICTagContainerCell_allowsContextualMenu) = menu;
  selfCopy2 = self;
  v6 = sub_1002B3F04();
  LOBYTE(selfCopy) = *(selfCopy + v4);

  v6[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] = selfCopy;
}

- (void)deselectAllItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_1002B4738(animatedCopy);
}

- (void)reloadTagsWithAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1002B5F50;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_1002B49B8(animated, v6, v7);
  sub_10000C840(v6);
}

- (void)selectTagWithIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_1001C57CC;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  v13 = sub_1002B3F04();
  sub_1003AA804(v8, v10, animated, v7, v11);

  sub_10000C840(v7);
}

- (void)selectTagsWithTagSelection:(id)selection animated:(BOOL)animated
{
  animatedCopy = animated;
  selectionCopy = selection;
  selfCopy = self;
  v8 = sub_1002B3F04();
  sub_1003AAA40(selection, animatedCopy);
}

- (_TtC11MobileNotes17TagCollectionView)collectionView
{
  selfCopy = self;
  v3 = sub_1002B3F04();

  return v3;
}

- (void)setCollectionView:(id)view
{
  v4 = *(self + OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView);
  *(self + OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView) = view;
  viewCopy = view;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002B4EC8(v7);

  (*(v5 + 8))(v7, v4);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  selfCopy = self;
  v7 = sub_1002B3F04();
  v8 = sub_1003AADCC(width);
  v10 = v9;
  v11 = v8;

  v12 = width;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002B5828();
}

- (BOOL)shouldSuppressAccessibilityHintsFor:(id)for
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _bridgedConfigurationState = [(ICTagContainerCell *)selfCopy _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(_bridgedConfigurationState) = UICellConfigurationState.isEditing.getter();
  (*(v5 + 8))(v7, v4);
  return _bridgedConfigurationState & 1;
}

@end