@interface ParmesanNoShufflesViewController
- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithCoder:(id)a3;
- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithEditor:(id)a3 face:(id)a4 inGallery:(BOOL)a5;
- (void)loadView;
@end

@implementation ParmesanNoShufflesViewController

- (void)loadView
{
  v2 = self;
  sub_23BF74780();
}

- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithEditor:(id)a3 face:(id)a4 inGallery:(BOOL)a5
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor) = a3;
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face) = a4;
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
  v9 = a3;
  v10 = a4;
  return [(NTKParmesanShuffleSelectionBaseViewController *)&v12 initWithNibName:0 bundle:0];
}

- (_TtC30NTKParmesanFaceBundleCompanion32ParmesanNoShufflesViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmesanNoShufflesViewController();
  v4 = a3;
  v5 = [(NTKParmesanShuffleSelectionBaseViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end