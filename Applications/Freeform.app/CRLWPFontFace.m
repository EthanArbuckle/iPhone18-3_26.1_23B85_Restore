@interface CRLWPFontFace
+ (id)fontFaceWithPostScriptName:(id)a3 faceName:(id)a4;
- (CRLWPFontFace)initWithPostScriptName:(id)a3 faceName:(id)a4;
@end

@implementation CRLWPFontFace

+ (id)fontFaceWithPostScriptName:(id)a3 faceName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithPostScriptName:v6 faceName:v5];

  return v7;
}

- (CRLWPFontFace)initWithPostScriptName:(id)a3 faceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLWPFontFace;
  v8 = [(CRLWPFontFace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLWPFontFace *)v8 setPostScriptName:v6];
    [(CRLWPFontFace *)v9 setFaceName:v7];
  }

  return v9;
}

@end