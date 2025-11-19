@interface NTKCParmesanFaceDetailViewController
- (BOOL)_isShareButtonEnabled;
- (NSString)reasonFaceCanNotBeAddedToLibrary;
- (NTKCParmesanFaceDetailViewController)initWithCandidateFace:(id)a3 externalAssets:(id)a4;
- (NTKCParmesanFaceDetailViewController)initWithLibraryFace:(id)a3;
- (id)_sectionForEditOptionCollection:(id)a3;
- (void)_addFace;
- (void)hideLoadingIndicator;
- (void)sectionDidUpdate:(id)a3;
- (void)showLoadingIndicator;
- (void)showLoadingIndicatorWithProgress:(double)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation NTKCParmesanFaceDetailViewController

- (void)showLoadingIndicator
{
  v1 = a1;
  sub_23BFD687C();
}

- (void)hideLoadingIndicator
{
  v1 = a1;
  sub_23BFD69E0();
}

- (NTKCParmesanFaceDetailViewController)initWithLibraryFace:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection) = 0;
  v5 = objc_allocWithZone(MEMORY[0x277D3D040]);
  v6 = a3;
  result = [v5 initWithStyle_];
  if (result)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator) = result;
    v9.receiver = self;
    v9.super_class = type metadata accessor for ParmesanFaceDetailViewController();
    v8 = [(NTKCFaceDetailViewController *)&v9 initWithLibraryFace:v6];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NTKCParmesanFaceDetailViewController)initWithCandidateFace:(id)a3 externalAssets:(id)a4
{
  if (a4)
  {
    v5 = sub_23BFFA460();
  }

  else
  {
    v5 = 0;
  }

  return sub_23BFD5AC0(a3, v5);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_23BFD5D88();
}

- (id)_sectionForEditOptionCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BFD6078(v4);
  v7 = v6;

  return v7;
}

- (BOOL)_isShareButtonEnabled
{
  v2 = self;
  v3 = sub_23BFD63AC();

  return v3 & 1;
}

- (void)_addFace
{
  v2 = self;
  sub_23BFD6544();
}

- (NSString)reasonFaceCanNotBeAddedToLibrary
{
  v2 = self;
  sub_23BFD672C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_23BFFA2C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)showLoadingIndicatorWithProgress:(double)a3
{
  v5 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator);
  v9 = self;
  [v6 currentProgress];
  if (v7 < a3)
  {
    v8 = *(&self->super.super.super.super.isa + v5);
    [v8 setCurrentProgress_];
  }
}

- (void)sectionDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  [(NTKCFaceDetailViewController *)v5 _updateAddButton];
  [(NTKCFaceDetailViewController *)v5 _updateShareButton];
  sub_23BFD6EA0(0xE);
  sub_23BFD6EA0(0xF);
}

@end