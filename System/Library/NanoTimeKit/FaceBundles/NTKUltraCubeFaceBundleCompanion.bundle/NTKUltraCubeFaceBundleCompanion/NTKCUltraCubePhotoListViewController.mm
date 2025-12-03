@interface NTKCUltraCubePhotoListViewController
- (NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery faceView:(id)view;
- (void)customUltraCubeControllerDidFinish:(id)finish;
@end

@implementation NTKCUltraCubePhotoListViewController

- (NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery faceView:(id)view
{
  galleryCopy = gallery;
  viewCopy = view;
  faceCopy = face;
  editorCopy = editor;
  v13 = [[_NTKCUltraCubePhotoListViewController alloc] initWithUltraCubePhotosEditor:editorCopy forFace:faceCopy inGallery:galleryCopy faceView:viewCopy];

  v17.receiver = self;
  v17.super_class = NTKCUltraCubePhotoListViewController;
  v14 = [(NTKCUltraCubePhotoListViewController *)&v17 initWithRootViewController:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_implementationVC, v13);
    [(_NTKCUltraCubePhotoListViewController *)v15->_implementationVC setDelegate:v15];
  }

  return v15;
}

- (void)customUltraCubeControllerDidFinish:(id)finish
{
  delegate = [(NTKCUltraCubePhotoListViewController *)self delegate];
  [delegate customUltraCubeControllerDidFinish:self];
}

@end