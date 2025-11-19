@interface NTKParmesanShuffleSelectionBaseViewController
- (NTKParmesanShuffleSelectionBaseViewController)initWithCoder:(id)a3;
- (NTKParmesanShuffleSelectionBaseViewController)initWithEditor:(id)a3 face:(id)a4 inGallery:(BOOL)a5;
- (NTKParmesanShuffleSelectionBaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)albumChooserDidFinish:(id)a3;
- (void)setFace:(id)a3;
@end

@implementation NTKParmesanShuffleSelectionBaseViewController

- (void)setFace:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face) = a3;
  v3 = a3;
}

- (NTKParmesanShuffleSelectionBaseViewController)initWithEditor:(id)a3 face:(id)a4 inGallery:(BOOL)a5
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor) = a3;
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face) = a4;
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
  v9 = a3;
  v10 = a4;
  return [(NTKParmesanShuffleSelectionBaseViewController *)&v12 initWithNibName:0 bundle:0];
}

- (NTKParmesanShuffleSelectionBaseViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)albumChooserDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BF67CCC(v4);
}

- (NTKParmesanShuffleSelectionBaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end