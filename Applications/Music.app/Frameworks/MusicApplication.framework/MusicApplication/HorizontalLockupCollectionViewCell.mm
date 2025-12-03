@interface HorizontalLockupCollectionViewCell
- (_TtC11MusicCoreUI12SymbolButton)contextMenuButton;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)prepareForReuse;
- (void)setContextMenuButton:(id)button;
- (void)setEditing:(BOOL)editing;
- (void)setIsDisabled:(BOOL)disabled;
- (void)setLibraryStatusControl:(id)control;
- (void)setSelected:(BOOL)selected;
- (void)setShowsContextMenu:(BOOL)menu;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HorizontalLockupCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v5 = sub_AB4E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4E00();
  stateCopy = state;
  selfCopy = self;
  sub_202E20(v8);

  (*(v6 + 8))(v8, v5);
}

- (void)setIsDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_200620(disabled);
}

- (void)setShowsContextMenu:(BOOL)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_2008A4(menuCopy);
}

- (_TtC11MusicCoreUI12SymbolButton)contextMenuButton
{
  selfCopy = self;
  v3 = sub_200934();

  return v3;
}

- (void)setContextMenuButton:(id)button
{
  v4 = *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton];
  *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton] = button;
  buttonCopy = button;
}

- (void)setLibraryStatusControl:(id)control
{
  v6 = *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
  *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl] = control;
  controlCopy = control;
  selfCopy = self;
  sub_203880(v6);
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  [(HorizontalLockupCollectionViewCell *)&v2 prepareForReuse];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v5 = type metadata accessor for HorizontalLockupCollectionViewCell();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEditing = [(HorizontalLockupCollectionViewCell *)&v9 isEditing];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(HorizontalLockupCollectionViewCell *)&v8 setEditing:editingCopy];
  if (isEditing != [(HorizontalLockupCollectionViewCell *)selfCopy isEditing])
  {
    sub_20221C();
  }
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_2040A0(selected);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20420C();
}

- (void)clearArtworkCatalogs
{
  v2 = *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v3 = v2[14];
  selfCopy = self;
  [v3 clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v2[25] = 0;
  v2[26] = 0;
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  v2 = v4.receiver;
  [(HorizontalLockupCollectionViewCell *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v3)
  {

    v3(v2);
    sub_17654(v3);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  type metadata accessor for ShelfCollectionViewLayout.LayoutAttributes();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition] = *(v5 + OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayout16LayoutAttributes_rowPosition);
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  [(HorizontalLockupCollectionViewCell *)&v6 applyLayoutAttributes:attributes];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2054E4(change);
}

@end