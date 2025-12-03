@interface NTKExtragalacticColors
+ (id)identityColorForCorner:(unint64_t)corner;
+ (id)identityColorForGlyphColor:(unint64_t)color;
+ (id)lutFilterFromPalette:(id)palette;
@end

@implementation NTKExtragalacticColors

+ (id)identityColorForGlyphColor:(unint64_t)color
{
  switch(color)
  {
    case 2uLL:
      self = [MEMORY[0x277D75348] blueColor];
      break;
    case 1uLL:
      self = [MEMORY[0x277D75348] greenColor];
      break;
    case 0uLL:
      self = [MEMORY[0x277D75348] redColor];
      break;
  }

  return self;
}

+ (id)identityColorForCorner:(unint64_t)corner
{
  if (corner > 1)
  {
    if (corner == 2)
    {
      self = [MEMORY[0x277D75348] cyanColor];
    }

    else if (corner == 3)
    {
      self = [MEMORY[0x277D75348] blackColor];
    }
  }

  else if (corner)
  {
    if (corner == 1)
    {
      self = [MEMORY[0x277D75348] magentaColor];
    }
  }

  else
  {
    self = [MEMORY[0x277D75348] yellowColor];
  }

  return self;
}

+ (id)lutFilterFromPalette:(id)palette
{
  v37[8] = *MEMORY[0x277D85DE8];
  paletteCopy = palette;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  glyphColor0 = [paletteCopy glyphColor0];
  glyphColor1 = [paletteCopy glyphColor1];
  glyphColor2 = [paletteCopy glyphColor2];
  blackOverlapAndBackground = [paletteCopy blackOverlapAndBackground];
  backgroundTopLeft = [paletteCopy backgroundTopLeft];
  backgroundTopRight = [paletteCopy backgroundTopRight];
  backgroundBottomLeft = [paletteCopy backgroundBottomLeft];
  v26 = blackOverlapAndBackground;
  v27 = glyphColor2;
  v37[0] = blackOverlapAndBackground;
  v37[1] = glyphColor0;
  v28 = glyphColor1;
  v29 = glyphColor0;
  v37[2] = glyphColor1;
  v37[3] = backgroundTopLeft;
  v37[4] = glyphColor2;
  v37[5] = backgroundTopRight;
  v37[6] = backgroundBottomLeft;
  v37[7] = v4;
  v30 = v4;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = NTKRGBAArrayWithColor();
        [array addObjectsFromArray:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v16);
  }

  v21 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA590]];
  v22 = [array copy];
  [v21 setValue:v22 forKey:*MEMORY[0x277CDA540]];

  v35 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end