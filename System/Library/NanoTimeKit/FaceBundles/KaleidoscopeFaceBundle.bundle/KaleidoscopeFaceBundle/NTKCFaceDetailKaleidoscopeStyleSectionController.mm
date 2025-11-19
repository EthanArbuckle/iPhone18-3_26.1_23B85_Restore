@interface NTKCFaceDetailKaleidoscopeStyleSectionController
+ (BOOL)hasSectionForFace:(id)a3 forEditMode:(int64_t)a4;
- (void)faceDidChangeResourceDirectory;
@end

@implementation NTKCFaceDetailKaleidoscopeStyleSectionController

+ (BOOL)hasSectionForFace:(id)a3 forEditMode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 faceStyle] == &dword_14 + 3 || objc_msgSend(v5, "faceStyle") == &stru_B8.addr + 7;
  v7 = a4 == 15 && v6;

  return v7;
}

- (void)faceDidChangeResourceDirectory
{
  v6.receiver = self;
  v6.super_class = NTKCFaceDetailKaleidoscopeStyleSectionController;
  [(NTKCFaceDetailKaleidoscopeStyleSectionController *)&v6 faceDidChangeResourceDirectory];
  v3 = [(NTKCFaceDetailKaleidoscopeStyleSectionController *)self selectedOptions];
  v4 = [v3 objectForKeyedSubscript:&off_25BD0];

  if ([v4 asset] == stru_3D8.segname)
  {
    v5 = [(NTKCFaceDetailKaleidoscopeStyleSectionController *)self cell];
    [v5 reloadVisibleCells];
  }
}

@end