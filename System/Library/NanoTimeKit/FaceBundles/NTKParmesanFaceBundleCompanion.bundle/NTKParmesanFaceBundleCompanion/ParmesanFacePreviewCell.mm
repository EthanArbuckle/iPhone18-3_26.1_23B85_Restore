@interface ParmesanFacePreviewCell
- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
@end

@implementation ParmesanFacePreviewCell

- (_TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessoryPadding) = 0x4018000000000000;
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessory;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_itemIdentifier);
  *v5 = 0;
  v5[1] = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for ParmesanFacePreviewCell();
  v2 = v13.receiver;
  [(ParmesanFacePreviewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_previewContentView];
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_23BFF9390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF9370();
  selfCopy = self;
  sub_23BF6ACB8();

  (*(v5 + 8))(v7, v4);
}

@end