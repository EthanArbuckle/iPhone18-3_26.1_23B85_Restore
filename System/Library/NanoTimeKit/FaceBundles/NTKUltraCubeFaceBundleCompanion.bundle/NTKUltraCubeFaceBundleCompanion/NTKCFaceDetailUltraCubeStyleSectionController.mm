@interface NTKCFaceDetailUltraCubeStyleSectionController
+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode;
@end

@implementation NTKCFaceDetailUltraCubeStyleSectionController

+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode
{
  faceCopy = face;
  v6 = +[NTKUltraCubeFaceBundle identifier];
  bundleIdentifier = [faceCopy bundleIdentifier];

  v8 = [bundleIdentifier isEqualToString:v6];
  if (mode == 15)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end