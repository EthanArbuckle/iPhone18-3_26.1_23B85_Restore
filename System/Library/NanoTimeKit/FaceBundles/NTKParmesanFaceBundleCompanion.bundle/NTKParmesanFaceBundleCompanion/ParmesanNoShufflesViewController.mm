@interface ParmesanNoShufflesViewController
- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithCoder:(id)coder;
- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithEditor:(id)editor face:(id)face inGallery:(BOOL)gallery;
- (void)loadView;
@end

@implementation ParmesanNoShufflesViewController

- (void)loadView
{
  selfCopy = self;
  sub_23BF74780();
}

- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithEditor:(id)editor face:(id)face inGallery:(BOOL)gallery
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor) = editor;
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face) = face;
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery) = gallery;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
  editorCopy = editor;
  faceCopy = face;
  return [(NTKParmesanShuffleSelectionBaseViewController *)&v12 initWithNibName:0 bundle:0];
}

- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmesanNoShufflesViewController();
  coderCopy = coder;
  v5 = [(NTKParmesanShuffleSelectionBaseViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end