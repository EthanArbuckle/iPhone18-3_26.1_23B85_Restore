@interface NTKParmesanTimeLayoutSelectionViewController
+ (double)idealHeightForPreviewHeight:(double)a3;
+ (double)totalHeightForPreviewHeight:(double)a3;
- (NTKParmesanTimeLayoutSelectionDelegate)delegate;
- (NTKParmesanTimeLayoutSelectionViewController)initWithCoder:(id)a3;
- (NTKParmesanTimeLayoutSelectionViewController)initWithLayoutOptions:(id)a3 itemHeight:(double)a4 deviceSize:(CGSize)a5 deviceScreenRadius:(double)a6;
- (NTKParmesanTimeLayoutSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)setSelectedLayout:(id)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation NTKParmesanTimeLayoutSelectionViewController

+ (double)totalHeightForPreviewHeight:(double)a3
{
  if (qword_27E1DFE38 != -1)
  {
    v6 = a3;
    swift_once();
    a3 = v6;
  }

  v3 = a3 + 12.0;
  [qword_27E1EB690 lineHeight];
  return v3 + v4 + v4 + 12.0 + 4.0 + 12.0;
}

+ (double)idealHeightForPreviewHeight:(double)a3
{
  if (qword_27E1DFE38 != -1)
  {
    v6 = a3;
    swift_once();
    a3 = v6;
  }

  v3 = a3 + 12.0;
  [qword_27E1EB690 lineHeight];
  return v3 + v4 + v4 + 12.0;
}

- (void)setSelectedLayout:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout);
  *(self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout) = a3;
  v5 = a3;
  v6 = self;

  sub_23BFD882C();
}

- (NTKParmesanTimeLayoutSelectionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NTKParmesanTimeLayoutSelectionViewController)initWithLayoutOptions:(id)a3 itemHeight:(double)a4 deviceSize:(CGSize)a5 deviceScreenRadius:(double)a6
{
  height = a5.height;
  width = a5.width;
  type metadata accessor for ParmesanTimeLayout();
  v10 = sub_23BFFA460();
  return sub_23BFD7584(v10, a4, width, height, a6);
}

- (NTKParmesanTimeLayoutSelectionViewController)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_mainSectionIdentifier);
  *v3 = 0x746365536E69614DLL;
  v3[1] = 0xEB000000006E6F69;
  *(self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource) = 0;
  *(self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout) = 0;
  swift_unknownObjectWeakInit();
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_23BFD7798();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanTimeLayoutSelectionViewController();
  v4 = v5.receiver;
  [(NTKParmesanTimeLayoutSelectionViewController *)&v5 viewIsAppearing:v3];
  sub_23BFD8444();
  sub_23BFD882C();
  sub_23BFD8EC4(0);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_23BFD82DC();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_23BFF8E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v10 = a3;
  v11 = self;
  sub_23BFD8634(v10);

  (*(v7 + 8))(v9, v6);
}

- (NTKParmesanTimeLayoutSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end