@interface NTKCParmesanFaceDetailViewController
- (BOOL)_isShareButtonEnabled;
- (NSString)reasonFaceCanNotBeAddedToLibrary;
- (NTKCParmesanFaceDetailViewController)initWithCandidateFace:(id)face externalAssets:(id)assets;
- (NTKCParmesanFaceDetailViewController)initWithLibraryFace:(id)face;
- (id)_sectionForEditOptionCollection:(id)collection;
- (void)_addFace;
- (void)hideLoadingIndicator;
- (void)sectionDidUpdate:(id)update;
- (void)showLoadingIndicator;
- (void)showLoadingIndicatorWithProgress:(double)progress;
- (void)viewDidLayoutSubviews;
@end

@implementation NTKCParmesanFaceDetailViewController

- (void)showLoadingIndicator
{
  selfCopy = self;
  sub_23BFD687C();
}

- (void)hideLoadingIndicator
{
  selfCopy = self;
  sub_23BFD69E0();
}

- (NTKCParmesanFaceDetailViewController)initWithLibraryFace:(id)face
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection) = 0;
  v5 = objc_allocWithZone(MEMORY[0x277D3D040]);
  faceCopy = face;
  result = [v5 initWithStyle_];
  if (result)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator) = result;
    v9.receiver = self;
    v9.super_class = type metadata accessor for ParmesanFaceDetailViewController();
    v8 = [(NTKCFaceDetailViewController *)&v9 initWithLibraryFace:faceCopy];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NTKCParmesanFaceDetailViewController)initWithCandidateFace:(id)face externalAssets:(id)assets
{
  if (assets)
  {
    v5 = sub_23BFFA460();
  }

  else
  {
    v5 = 0;
  }

  return sub_23BFD5AC0(face, v5);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_23BFD5D88();
}

- (id)_sectionForEditOptionCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_23BFD6078(collectionCopy);
  v7 = v6;

  return v7;
}

- (BOOL)_isShareButtonEnabled
{
  selfCopy = self;
  v3 = sub_23BFD63AC();

  return v3 & 1;
}

- (void)_addFace
{
  selfCopy = self;
  sub_23BFD6544();
}

- (NSString)reasonFaceCanNotBeAddedToLibrary
{
  selfCopy = self;
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

- (void)showLoadingIndicatorWithProgress:(double)progress
{
  v5 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator);
  selfCopy = self;
  [v6 currentProgress];
  if (v7 < progress)
  {
    v8 = *(&self->super.super.super.super.isa + v5);
    [v8 setCurrentProgress_];
  }
}

- (void)sectionDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  [(NTKCFaceDetailViewController *)selfCopy _updateAddButton];
  [(NTKCFaceDetailViewController *)selfCopy _updateShareButton];
  sub_23BFD6EA0(0xE);
  sub_23BFD6EA0(0xF);
}

@end