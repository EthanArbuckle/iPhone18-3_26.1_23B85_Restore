@interface NTKParmesanShuffleSelectionBaseViewController
- (NTKParmesanShuffleSelectionBaseViewController)initWithCoder:(id)coder;
- (NTKParmesanShuffleSelectionBaseViewController)initWithEditor:(id)editor face:(id)face inGallery:(BOOL)gallery;
- (NTKParmesanShuffleSelectionBaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)albumChooserDidFinish:(id)finish;
- (void)setFace:(id)face;
@end

@implementation NTKParmesanShuffleSelectionBaseViewController

- (void)setFace:(id)face
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face) = face;
  faceCopy = face;
}

- (NTKParmesanShuffleSelectionBaseViewController)initWithEditor:(id)editor face:(id)face inGallery:(BOOL)gallery
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor) = editor;
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face) = face;
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery) = gallery;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
  editorCopy = editor;
  faceCopy = face;
  return [(NTKParmesanShuffleSelectionBaseViewController *)&v12 initWithNibName:0 bundle:0];
}

- (NTKParmesanShuffleSelectionBaseViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)albumChooserDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_23BF67CCC(finishCopy);
}

- (NTKParmesanShuffleSelectionBaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end