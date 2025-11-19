@interface ICTagContainerCell
- (BOOL)shouldSuppressAccessibilityHintsFor:(id)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC11MobileNotes17TagCollectionView)collectionView;
- (id)dataDidChange;
- (id)selectionDidChange;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)deselectAllItemsAnimated:(BOOL)a3;
- (void)prepareForReuse;
- (void)reloadTagsWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)selectTagWithIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)selectTagsWithTagSelection:(id)a3 animated:(BOOL)a4;
- (void)setAllowsContextualMenu:(BOOL)a3;
- (void)setCollectionView:(id)a3;
- (void)setDataDidChange:(id)a3;
- (void)setHasGroupInset:(BOOL)a3;
- (void)setHasHorizontalScrolling:(BOOL)a3;
- (void)setSelectionDidChange:(id)a3;
@end

@implementation ICTagContainerCell

- (void)setHasGroupInset:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___ICTagContainerCell_hasGroupInset);
  *(self + OBJC_IVAR___ICTagContainerCell_hasGroupInset) = a3;
  if (v4 != a3)
  {
    v5 = self;
    [(ICTagContainerCell *)v5 setNeedsLayout];
    [(ICTagContainerCell *)v5 layoutIfNeeded];
    [(ICTagContainerCell *)v5 setNeedsUpdateConfiguration];
  }
}

- (void)setHasHorizontalScrolling:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling);
  *(self + OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling) = a3;
  if (v4 != a3)
  {
    v5 = self;
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

- (void)setSelectionDidChange:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
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

- (void)setDataDidChange:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_10000C840(v8);
}

- (void)setAllowsContextualMenu:(BOOL)a3
{
  v3 = self;
  v4 = OBJC_IVAR___ICTagContainerCell_allowsContextualMenu;
  *(self + OBJC_IVAR___ICTagContainerCell_allowsContextualMenu) = a3;
  v5 = self;
  v6 = sub_1002B3F04();
  LOBYTE(v3) = *(v3 + v4);

  v6[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] = v3;
}

- (void)deselectAllItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1002B4738(v3);
}

- (void)reloadTagsWithAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_1002B49B8(a3, v6, v7);
  sub_10000C840(v6);
}

- (void)selectTagWithIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
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

  v12 = self;
  v13 = sub_1002B3F04();
  sub_1003AA804(v8, v10, a4, v7, v11);

  sub_10000C840(v7);
}

- (void)selectTagsWithTagSelection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v9 = self;
  v8 = sub_1002B3F04();
  sub_1003AAA40(a3, v4);
}

- (_TtC11MobileNotes17TagCollectionView)collectionView
{
  v2 = self;
  v3 = sub_1002B3F04();

  return v3;
}

- (void)setCollectionView:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView);
  *(self + OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView) = a3;
  v3 = a3;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002B4EC8(v7);

  (*(v5 + 8))(v7, v4);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v6 = self;
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
  v2 = self;
  sub_1002B5828();
}

- (BOOL)shouldSuppressAccessibilityHintsFor:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  v9 = [(ICTagContainerCell *)v8 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v9) = UICellConfigurationState.isEditing.getter();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

@end