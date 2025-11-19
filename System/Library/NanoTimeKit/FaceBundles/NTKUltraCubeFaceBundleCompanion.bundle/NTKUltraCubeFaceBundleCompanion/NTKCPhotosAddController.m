@interface NTKCPhotosAddController
+ (id)ultraCubeConfigurationWithLimit:(unint64_t)a3;
@end

@implementation NTKCPhotosAddController

+ (id)ultraCubeConfigurationWithLimit:(unint64_t)a3
{
  v4 = +[PHPhotoLibrary sharedPhotoLibrary];
  v5 = [[PHPickerConfiguration alloc] initWithPhotoLibrary:v4];
  v6 = +[PHPickerFilter imagesFilter];
  [v5 setFilter:v6];
  [v5 setSelectionLimit:a3];

  return v5;
}

@end