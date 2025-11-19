@interface AAUIBadgeModelConfiguration
- (AAUIBadgeModelConfiguration)initWithModelPaths:(id)a3 texturePaths:(id)a4 shapeName:(id)a5 metalColor:(id)a6 useFullColorEnamel:(BOOL)a7 modelEnamelColor:(id)a8 unearnedUsesTwoToneEnamel:(BOOL)a9 faceHasMetalInlay:(BOOL)a10 enamelTricolors:(id)a11 glyphTexturePath:(id)a12 glyphTextureScale:(double)a13 glyphPositionOffset:(CGPoint)a14;
- (CGPoint)glyphPositionOffset;
- (unint64_t)badgeShape;
@end

@implementation AAUIBadgeModelConfiguration

- (AAUIBadgeModelConfiguration)initWithModelPaths:(id)a3 texturePaths:(id)a4 shapeName:(id)a5 metalColor:(id)a6 useFullColorEnamel:(BOOL)a7 modelEnamelColor:(id)a8 unearnedUsesTwoToneEnamel:(BOOL)a9 faceHasMetalInlay:(BOOL)a10 enamelTricolors:(id)a11 glyphTexturePath:(id)a12 glyphTextureScale:(double)a13 glyphPositionOffset:(CGPoint)a14
{
  y = a14.y;
  x = a14.x;
  v55 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v36 = a4;
  v47 = a4;
  v37 = a5;
  v46 = a5;
  v38 = a6;
  v45 = a6;
  v40 = a8;
  v44 = a8;
  v43 = a11;
  v42 = a12;
  v22 = [MEMORY[0x277CBEAF8] currentLocale];
  v23 = [v22 usesMetricSystem];

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v21;
  v25 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v51;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v51 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v50 + 1) + 8 * i);
        v30 = [v29 componentsSeparatedByString:@"/"];
        v31 = [v30 lastObject];

        if (([v31 containsString:@"Kilometer"] & v23 & 1) != 0 || !(v23 & 1 | ((objc_msgSend(v31, "containsString:", @"Mile") & 1) == 0)) || (objc_msgSend(v31, "containsString:", @"Mile") & 1) == 0 && (objc_msgSend(v31, "containsString:", @"Kilometer") & 1) == 0)
        {
          [v24 addObject:v29];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v26);
  }

  v49.receiver = self;
  v49.super_class = AAUIBadgeModelConfiguration;
  v32 = [(AAUIBadgeModelConfiguration *)&v49 init];
  if (v32)
  {
    v33 = [v24 copy];
    badgeModelPaths = v32->_badgeModelPaths;
    v32->_badgeModelPaths = v33;

    objc_storeStrong(&v32->_badgeTexturePaths, v36);
    objc_storeStrong(&v32->_glyphTexturePath, a12);
    objc_storeStrong(&v32->_shapeName, v37);
    objc_storeStrong(&v32->_metalColor, v38);
    v32->_useFullColorEnamel = a7;
    objc_storeStrong(&v32->_modelEnamelColor, v40);
    v32->_unearnedUsesTwoToneEnamel = a9;
    v32->_faceHasMetalInlay = a10;
    objc_storeStrong(&v32->_enamelTriColors, a11);
    v32->_glyphTextureScale = a13;
    v32->_glyphPositionOffset.x = x;
    v32->_glyphPositionOffset.y = y;
  }

  return v32;
}

- (unint64_t)badgeShape
{
  v2 = [(AAUIBadgeModelConfiguration *)self shapeName];
  if (AAUIBadgeShapeFromName_onceToken != -1)
  {
    [AAUIBadgeModelConfiguration badgeShape];
  }

  v3 = [AAUIBadgeShapeFromName_shapeNameMappings objectForKeyedSubscript:v2];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (CGPoint)glyphPositionOffset
{
  x = self->_glyphPositionOffset.x;
  y = self->_glyphPositionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end