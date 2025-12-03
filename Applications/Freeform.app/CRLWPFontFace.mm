@interface CRLWPFontFace
+ (id)fontFaceWithPostScriptName:(id)name faceName:(id)faceName;
- (CRLWPFontFace)initWithPostScriptName:(id)name faceName:(id)faceName;
@end

@implementation CRLWPFontFace

+ (id)fontFaceWithPostScriptName:(id)name faceName:(id)faceName
{
  faceNameCopy = faceName;
  nameCopy = name;
  v7 = [objc_alloc(objc_opt_class()) initWithPostScriptName:nameCopy faceName:faceNameCopy];

  return v7;
}

- (CRLWPFontFace)initWithPostScriptName:(id)name faceName:(id)faceName
{
  nameCopy = name;
  faceNameCopy = faceName;
  v11.receiver = self;
  v11.super_class = CRLWPFontFace;
  v8 = [(CRLWPFontFace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLWPFontFace *)v8 setPostScriptName:nameCopy];
    [(CRLWPFontFace *)v9 setFaceName:faceNameCopy];
  }

  return v9;
}

@end