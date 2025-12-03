@interface NTKCFaceDetailKaleidoscopeStyleSectionController
+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode;
- (void)faceDidChangeResourceDirectory;
@end

@implementation NTKCFaceDetailKaleidoscopeStyleSectionController

+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode
{
  faceCopy = face;
  v6 = [faceCopy faceStyle] == &dword_14 + 3 || objc_msgSend(faceCopy, "faceStyle") == &stru_B8.addr + 7;
  v7 = mode == 15 && v6;

  return v7;
}

- (void)faceDidChangeResourceDirectory
{
  v6.receiver = self;
  v6.super_class = NTKCFaceDetailKaleidoscopeStyleSectionController;
  [(NTKCFaceDetailKaleidoscopeStyleSectionController *)&v6 faceDidChangeResourceDirectory];
  selectedOptions = [(NTKCFaceDetailKaleidoscopeStyleSectionController *)self selectedOptions];
  v4 = [selectedOptions objectForKeyedSubscript:&off_25BD0];

  if ([v4 asset] == stru_3D8.segname)
  {
    cell = [(NTKCFaceDetailKaleidoscopeStyleSectionController *)self cell];
    [cell reloadVisibleCells];
  }
}

@end