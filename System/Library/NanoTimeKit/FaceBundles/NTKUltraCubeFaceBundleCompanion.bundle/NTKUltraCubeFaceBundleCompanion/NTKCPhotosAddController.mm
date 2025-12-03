@interface NTKCPhotosAddController
+ (id)ultraCubeConfigurationWithLimit:(unint64_t)limit;
@end

@implementation NTKCPhotosAddController

+ (id)ultraCubeConfigurationWithLimit:(unint64_t)limit
{
  v4 = +[PHPhotoLibrary sharedPhotoLibrary];
  v5 = [[PHPickerConfiguration alloc] initWithPhotoLibrary:v4];
  v6 = +[PHPickerFilter imagesFilter];
  [v5 setFilter:v6];
  [v5 setSelectionLimit:limit];

  return v5;
}

@end