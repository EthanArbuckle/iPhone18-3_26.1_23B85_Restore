@interface NTKExtragalacticColors
+ (id)identityColorForCorner:(unint64_t)a3;
+ (id)identityColorForGlyphColor:(unint64_t)a3;
+ (id)lutFilterFromPalette:(id)a3;
@end

@implementation NTKExtragalacticColors

+ (id)identityColorForGlyphColor:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      a1 = [MEMORY[0x277D75348] blueColor];
      break;
    case 1uLL:
      a1 = [MEMORY[0x277D75348] greenColor];
      break;
    case 0uLL:
      a1 = [MEMORY[0x277D75348] redColor];
      break;
  }

  return a1;
}

+ (id)identityColorForCorner:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      a1 = [MEMORY[0x277D75348] cyanColor];
    }

    else if (a3 == 3)
    {
      a1 = [MEMORY[0x277D75348] blackColor];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      a1 = [MEMORY[0x277D75348] magentaColor];
    }
  }

  else
  {
    a1 = [MEMORY[0x277D75348] yellowColor];
  }

  return a1;
}

+ (id)lutFilterFromPalette:(id)a3
{
  v37[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v5 = [v3 glyphColor0];
  v6 = [v3 glyphColor1];
  v7 = [v3 glyphColor2];
  v8 = [v3 blackOverlapAndBackground];
  v9 = [v3 backgroundTopLeft];
  v10 = [v3 backgroundTopRight];
  v11 = [v3 backgroundBottomLeft];
  v26 = v8;
  v27 = v7;
  v37[0] = v8;
  v37[1] = v5;
  v28 = v6;
  v29 = v5;
  v37[2] = v6;
  v37[3] = v9;
  v37[4] = v7;
  v37[5] = v10;
  v37[6] = v11;
  v37[7] = v4;
  v30 = v4;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];
  v13 = [MEMORY[0x277CBEB18] array];
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
        [v13 addObjectsFromArray:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v16);
  }

  v21 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA590]];
  v22 = [v13 copy];
  [v21 setValue:v22 forKey:*MEMORY[0x277CDA540]];

  v35 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end