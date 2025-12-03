@interface AAUIBadgeModelConfiguration
- (AAUIBadgeModelConfiguration)initWithModelPaths:(id)paths texturePaths:(id)texturePaths shapeName:(id)name metalColor:(id)color useFullColorEnamel:(BOOL)enamel modelEnamelColor:(id)enamelColor unearnedUsesTwoToneEnamel:(BOOL)toneEnamel faceHasMetalInlay:(BOOL)self0 enamelTricolors:(id)self1 glyphTexturePath:(id)self2 glyphTextureScale:(double)self3 glyphPositionOffset:(CGPoint)self4;
- (CGPoint)glyphPositionOffset;
- (unint64_t)badgeShape;
@end

@implementation AAUIBadgeModelConfiguration

- (AAUIBadgeModelConfiguration)initWithModelPaths:(id)paths texturePaths:(id)texturePaths shapeName:(id)name metalColor:(id)color useFullColorEnamel:(BOOL)enamel modelEnamelColor:(id)enamelColor unearnedUsesTwoToneEnamel:(BOOL)toneEnamel faceHasMetalInlay:(BOOL)self0 enamelTricolors:(id)self1 glyphTexturePath:(id)self2 glyphTextureScale:(double)self3 glyphPositionOffset:(CGPoint)self4
{
  y = offset.y;
  x = offset.x;
  v55 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  texturePathsCopy = texturePaths;
  texturePathsCopy2 = texturePaths;
  nameCopy = name;
  nameCopy2 = name;
  colorCopy = color;
  colorCopy2 = color;
  enamelColorCopy = enamelColor;
  enamelColorCopy2 = enamelColor;
  tricolorsCopy = tricolors;
  pathCopy = path;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  usesMetricSystem = [currentLocale usesMetricSystem];

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = pathsCopy;
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
        lastObject = [v30 lastObject];

        if (([lastObject containsString:@"Kilometer"] & usesMetricSystem & 1) != 0 || !(usesMetricSystem & 1 | ((objc_msgSend(lastObject, "containsString:", @"Mile") & 1) == 0)) || (objc_msgSend(lastObject, "containsString:", @"Mile") & 1) == 0 && (objc_msgSend(lastObject, "containsString:", @"Kilometer") & 1) == 0)
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

    objc_storeStrong(&v32->_badgeTexturePaths, texturePathsCopy);
    objc_storeStrong(&v32->_glyphTexturePath, path);
    objc_storeStrong(&v32->_shapeName, nameCopy);
    objc_storeStrong(&v32->_metalColor, colorCopy);
    v32->_useFullColorEnamel = enamel;
    objc_storeStrong(&v32->_modelEnamelColor, enamelColorCopy);
    v32->_unearnedUsesTwoToneEnamel = toneEnamel;
    v32->_faceHasMetalInlay = inlay;
    objc_storeStrong(&v32->_enamelTriColors, tricolors);
    v32->_glyphTextureScale = scale;
    v32->_glyphPositionOffset.x = x;
    v32->_glyphPositionOffset.y = y;
  }

  return v32;
}

- (unint64_t)badgeShape
{
  shapeName = [(AAUIBadgeModelConfiguration *)self shapeName];
  if (AAUIBadgeShapeFromName_onceToken != -1)
  {
    [AAUIBadgeModelConfiguration badgeShape];
  }

  v3 = [AAUIBadgeShapeFromName_shapeNameMappings objectForKeyedSubscript:shapeName];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
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