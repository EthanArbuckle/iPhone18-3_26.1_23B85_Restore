@interface NTKCUltraCubePhotoListViewController
- (NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6;
- (void)customUltraCubeControllerDidFinish:(id)a3;
@end

@implementation NTKCUltraCubePhotoListViewController

- (NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[_NTKCUltraCubePhotoListViewController alloc] initWithUltraCubePhotosEditor:v12 forFace:v11 inGallery:v6 faceView:v10];

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

- (void)customUltraCubeControllerDidFinish:(id)a3
{
  v4 = [(NTKCUltraCubePhotoListViewController *)self delegate];
  [v4 customUltraCubeControllerDidFinish:self];
}

@end