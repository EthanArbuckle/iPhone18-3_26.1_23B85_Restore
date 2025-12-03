@interface NTKParmesanTimeLayoutSelectionViewController
+ (double)idealHeightForPreviewHeight:(double)height;
+ (double)totalHeightForPreviewHeight:(double)height;
- (NTKParmesanTimeLayoutSelectionDelegate)delegate;
- (NTKParmesanTimeLayoutSelectionViewController)initWithCoder:(id)coder;
- (NTKParmesanTimeLayoutSelectionViewController)initWithLayoutOptions:(id)options itemHeight:(double)height deviceSize:(CGSize)size deviceScreenRadius:(double)radius;
- (NTKParmesanTimeLayoutSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)setSelectedLayout:(id)layout;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation NTKParmesanTimeLayoutSelectionViewController

+ (double)totalHeightForPreviewHeight:(double)height
{
  if (qword_27E1DFE38 != -1)
  {
    heightCopy = height;
    swift_once();
    height = heightCopy;
  }

  v3 = height + 12.0;
  [qword_27E1EB690 lineHeight];
  return v3 + v4 + v4 + 12.0 + 4.0 + 12.0;
}

+ (double)idealHeightForPreviewHeight:(double)height
{
  if (qword_27E1DFE38 != -1)
  {
    heightCopy = height;
    swift_once();
    height = heightCopy;
  }

  v3 = height + 12.0;
  [qword_27E1EB690 lineHeight];
  return v3 + v4 + v4 + 12.0;
}

- (void)setSelectedLayout:(id)layout
{
  v4 = *(self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout);
  *(self + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout) = layout;
  layoutCopy = layout;
  selfCopy = self;

  sub_23BFD882C();
}

- (NTKParmesanTimeLayoutSelectionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NTKParmesanTimeLayoutSelectionViewController)initWithLayoutOptions:(id)options itemHeight:(double)height deviceSize:(CGSize)size deviceScreenRadius:(double)radius
{
  height = size.height;
  width = size.width;
  type metadata accessor for ParmesanTimeLayout();
  v10 = sub_23BFFA460();
  return sub_23BFD7584(v10, height, width, height, radius);
}

- (NTKParmesanTimeLayoutSelectionViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_23BFD7798();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanTimeLayoutSelectionViewController();
  v4 = v5.receiver;
  [(NTKParmesanTimeLayoutSelectionViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_23BFD8444();
  sub_23BFD882C();
  sub_23BFD8EC4(0);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_23BFD82DC();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_23BFF8E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  viewCopy = view;
  selfCopy = self;
  sub_23BFD8634(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (NTKParmesanTimeLayoutSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end