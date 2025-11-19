@interface HorizontalLockupCollectionViewCell
- (_TtC11MusicCoreUI12SymbolButton)contextMenuButton;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)prepareForReuse;
- (void)setContextMenuButton:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setIsDisabled:(BOOL)a3;
- (void)setLibraryStatusControl:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsContextMenu:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HorizontalLockupCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v5 = sub_AB4E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4E00();
  v9 = a3;
  v10 = self;
  sub_202E20(v8);

  (*(v6 + 8))(v8, v5);
}

- (void)setIsDisabled:(BOOL)a3
{
  v4 = self;
  sub_200620(a3);
}

- (void)setShowsContextMenu:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_2008A4(v3);
}

- (_TtC11MusicCoreUI12SymbolButton)contextMenuButton
{
  v2 = self;
  v3 = sub_200934();

  return v3;
}

- (void)setContextMenuButton:(id)a3
{
  v4 = *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton];
  *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton] = a3;
  v3 = a3;
}

- (void)setLibraryStatusControl:(id)a3
{
  v6 = *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
  *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl] = a3;
  v4 = a3;
  v5 = self;
  sub_203880(v6);
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  [(HorizontalLockupCollectionViewCell *)&v2 prepareForReuse];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for HorizontalLockupCollectionViewCell();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(HorizontalLockupCollectionViewCell *)&v9 isEditing];
  v8.receiver = v6;
  v8.super_class = v5;
  [(HorizontalLockupCollectionViewCell *)&v8 setEditing:v3];
  if (v7 != [(HorizontalLockupCollectionViewCell *)v6 isEditing])
  {
    sub_20221C();
  }
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_2040A0(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20420C();
}

- (void)clearArtworkCatalogs
{
  v2 = *&self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v3 = v2[14];
  v4 = self;
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

- (void)applyLayoutAttributes:(id)a3
{
  type metadata accessor for ShelfCollectionViewLayout.LayoutAttributes();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    self->UICollectionViewTableCell_opaque[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition] = *(v5 + OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayout16LayoutAttributes_rowPosition);
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  [(HorizontalLockupCollectionViewCell *)&v6 applyLayoutAttributes:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2054E4(a3);
}

@end