@interface AXAuditContrastDetectionManager
+ (id)sharedManager;
- (double)_euclideanDistanceBetweenColor1:(id)color1 color2:(id)color2;
- (double)contrastRatioForColor1:(id)color1 color2:(id)color2;
- (double)luminanceForColor:(id)color;
- (id)_topColorsForColors:(id)colors;
- (id)_topColorsForImageData:(id)data optimized:(BOOL)optimized;
- (id)auditDisplayStringForAuditColor:(id)color;
- (id)colorForHexValueString:(id)string;
- (id)contrastResultForInput:(id)input;
- (id)pixelColorInImagePixelData:(__CFData *)data atX:(int)x atY:(int)y width:(double)width;
@end

@implementation AXAuditContrastDetectionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXAuditContrastDetectionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_3 != -1)
  {
    dispatch_once(&sharedManager_onceToken_3, block);
  }

  v2 = sharedManager_instance_3;

  return v2;
}

uint64_t __48__AXAuditContrastDetectionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_3 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)contrastResultForInput:(id)input
{
  v48 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v5 = objc_alloc_init(AXAuditContrastResult);
  imageData = [inputCopy imageData];
  v7 = [(AXAuditContrastDetectionManager *)self _topColorsForImageData:imageData optimized:1];

  if ([v7 count] < 2)
  {
    v17 = 0;
    goto LABEL_33;
  }

  foregroundHexColorValue = [inputCopy foregroundHexColorValue];
  v9 = [(AXAuditContrastDetectionManager *)self colorForHexValueString:foregroundHexColorValue];

  backgroundHexColorValue = [inputCopy backgroundHexColorValue];
  v11 = [(AXAuditContrastDetectionManager *)self colorForHexValueString:backgroundHexColorValue];

  v12 = [v7 objectAtIndexedSubscript:0];
  v13 = [v7 objectAtIndexedSubscript:1];
  v41 = v13;
  v42 = v12;
  if (!v9)
  {
    v15 = v12;
    v16 = v13;
    goto LABEL_7;
  }

  v14 = v9;
  v15 = v14;
  if (v11)
  {
    v16 = v11;
LABEL_7:
    v18 = v16;
    goto LABEL_8;
  }

  v21 = [v14 isEqual:v12];
  v18 = v13;
  if ((v21 & 1) == 0)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v7;
    v22 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v39 = v9;
      v24 = *v44;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v43 + 1) + 8 * i);
          [(AXAuditContrastDetectionManager *)self _euclideanDistanceBetweenColor1:v15 color2:v26];
          if (v27 > 0.1)
          {
            v38 = v26;

            v18 = v38;
            goto LABEL_37;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

LABEL_37:
      v9 = v39;
    }

    v11 = 0;
  }

LABEL_8:
  [(AXAuditContrastDetectionManager *)self contrastRatioForColor1:v15 color2:v18];
  v20 = v19;
  if (![inputCopy enhanced])
  {
    if (v20 >= 4.5)
    {
      v17 = 11;
      goto LABEL_32;
    }

    if (v20 < 3.1)
    {
      v17 = 13;
      goto LABEL_32;
    }

    [inputCopy fontSize];
    v29 = v32 < 18.0;
    v30 = 12;
    v31 = 11;
LABEL_29:
    if (v29)
    {
      v17 = v30;
    }

    else
    {
      v17 = v31;
    }

    goto LABEL_32;
  }

  if (v20 >= 7.1)
  {
    v17 = 14;
    goto LABEL_32;
  }

  if (v20 >= 4.5)
  {
    [inputCopy fontSize];
    v29 = v28 < 18.0;
    v30 = 15;
    v31 = 14;
    goto LABEL_29;
  }

  v17 = 16;
LABEL_32:
  [(AXAuditContrastResult *)v5 setRatio:v20];
  v33 = [(AXAuditContrastDetectionManager *)self auditDisplayStringForAuditColor:v9];
  [(AXAuditContrastResult *)v5 setTextColor:v33];

  v34 = [(AXAuditContrastDetectionManager *)self auditDisplayStringForAuditColor:v15];
  [(AXAuditContrastResult *)v5 setPrimaryColor:v34];

  v35 = [(AXAuditContrastDetectionManager *)self auditDisplayStringForAuditColor:v18];
  [(AXAuditContrastResult *)v5 setSecondaryColor:v35];

LABEL_33:
  [(AXAuditContrastResult *)v5 setClassification:v17];
  [inputCopy fontSize];
  [(AXAuditContrastResult *)v5 setFontSize:?];

  v36 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)colorForHexValueString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
    v5 = [stringCopy stringByTrimmingCharactersInSet:v4];

    v8 = 0;
    v6 = [MEMORY[0x277CCAC80] scannerWithString:v5];
    [v6 scanHexInt:&v8];
    stringCopy = [MEMORY[0x277D75348] colorWithRed:(BYTE2(v8) / 255.0) green:(BYTE1(v8) / 255.0) blue:(v8 / 255.0) alpha:1.0];
  }

  else
  {
    v5 = 0;
  }

  return stringCopy;
}

- (id)_topColorsForImageData:(id)data optimized:(BOOL)optimized
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:dataCopy];
  cGImage = [v7 CGImage];
  if (!cGImage)
  {
    v25 = 0;
    goto LABEL_23;
  }

  v9 = cGImage;
  DataProvider = CGImageGetDataProvider(cGImage);
  v11 = CGDataProviderCopyData(DataProvider);
  Width = CGImageGetWidth(v9);
  v13 = Width;
  Height = CGImageGetHeight(v9);
  v15 = Height;
  v16 = objc_alloc_init(MEMORY[0x277CCA940]);
  v30 = dataCopy;
  if (optimized)
  {
    LODWORD(Height) = llround(v13 * 0.125);
    v17 = v13 - round(v13 * 0.125);
    if (v17 > Height)
    {
      v18 = 0;
      v19 = (v15 * 0.5);
      v20 = round(v15 / 10.0);
      v21 = (v19 + v20 * 2.0);
      v22 = (v19 + v20 * -2.0);
      do
      {
        for (i = v22; i <= v21; i = (v20 + i))
        {
          v24 = v18;
          v18 = [(AXAuditContrastDetectionManager *)self pixelColorInImagePixelData:v11 atX:Height atY:i width:v13];

          if (v18)
          {
            [v16 addObject:v18];
          }
        }

        Height = (Height + 1);
      }

      while (v17 > Height);
      goto LABEL_22;
    }
  }

  else if (Width)
  {
    v26 = 0;
    v18 = 0;
    do
    {
      if (Height)
      {
        v27 = 0;
        do
        {
          v28 = v18;
          v18 = [(AXAuditContrastDetectionManager *)self pixelColorInImagePixelData:v11 atX:v26 atY:v27 width:v13];

          if (v18)
          {
            [v16 addObject:v18];
          }

          v27 = (v27 + 1);
        }

        while (v27 < v15);
      }

      v26 = (v26 + 1);
    }

    while (v26 < v13);
    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:
  CFRelease(v11);
  v25 = [(AXAuditContrastDetectionManager *)self _topColorsForColors:v16];

  dataCopy = v30;
LABEL_23:

  return v25;
}

- (double)_euclideanDistanceBetweenColor1:(id)color1 color2:(id)color2
{
  color1Copy = color1;
  color2Copy = color2;
  v7 = color2Copy;
  v8 = 0.0;
  if (color1Copy)
  {
    if (color2Copy)
    {
      cGColor = [color1Copy CGColor];
      cGColor2 = [v7 CGColor];
      if (CGColorGetNumberOfComponents(cGColor) == 4 && CGColorGetNumberOfComponents(cGColor2) == 4)
      {
        Components = CGColorGetComponents(cGColor);
        v12 = *Components;
        v13 = Components[1];
        v14 = Components[2];
        v15 = CGColorGetComponents(cGColor2);
        v16 = v12 - *v15;
        v17 = (v16 * v16);
        v18 = v13 - v15[1];
        v19 = (v18 * v18) * 4.0;
        v20 = v14 - v15[2];
        v21 = (v20 * v20);
        v22 = v19 + v17 * 3.0 + v21 * 2.0;
        v23 = v19 + v17 * 2.0 + v21 * 3.0;
        if ((v12 + *v15) * 0.5 >= 0.5)
        {
          v23 = v22;
        }

        v24 = v23;
        v8 = sqrtf(v24);
      }
    }
  }

  return v8;
}

- (id)_topColorsForColors:(id)colors
{
  v31 = *MEMORY[0x277D85DE8];
  colorsCopy = colors;
  if (![colorsCopy count])
  {
    v20 = 0;
    goto LABEL_20;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = colorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v6)
  {

    v19 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v23 = v4;
  v24 = colorsCopy;
  v25 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v27;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v5 countForObject:v13];
      v15 = v14;
      if (v14 <= v9)
      {
        v16 = v13;
        if (v14 <= v10)
        {
          continue;
        }
      }

      else
      {
        v16 = v25;

        v8 = v16;
        v25 = v13;
        v17 = v15;
        v15 = v9;
        v9 = v17;
      }

      v18 = v13;

      v8 = v16;
      v10 = v15;
    }

    v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v7);

  v4 = v23;
  v19 = v25;
  if (v25)
  {
    [v23 addObject:v25];
  }

  colorsCopy = v24;
  if (v8)
  {
    [v23 addObject:v8];
  }

LABEL_19:
  v20 = v4;

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)pixelColorInImagePixelData:(__CFData *)data atX:(int)x atY:(int)y width:(double)width
{
  BytePtr = CFDataGetBytePtr(data);
  v11 = vcvtd_n_s64_f64(x + width * y, 2uLL);
  Length = CFDataGetLength(data);
  if (Length >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = Length;
  }

  v18 = &BytePtr[v17];
  LOBYTE(v13) = *v18;
  v19 = (v13 / 255.0);
  LOBYTE(v14) = v18[1];
  v20 = (v14 / 255.0);
  LOBYTE(v15) = v18[2];
  v21 = (v15 / 255.0);
  LOBYTE(v16) = v18[3];
  v22 = MEMORY[0x277D75348];

  return [v22 colorWithRed:v19 green:v20 blue:v21 alpha:(v16 / 255.0)];
}

- (double)luminanceForColor:(id)color
{
  colorCopy = color;
  v4 = colorCopy;
  v5 = 0.0;
  if (colorCopy)
  {
    cGColor = [colorCopy CGColor];
    if (CGColorGetNumberOfComponents(cGColor) == 4)
    {
      Components = CGColorGetComponents(cGColor);
      v8 = *Components;
      v9 = Components[1];
      v10 = Components[2];
      if (*Components <= 0.03928)
      {
        v11 = v8 / 12.92;
      }

      else
      {
        v11 = pow((v8 + 0.055) / 1.055, 2.4);
      }

      if (v9 <= 0.03928)
      {
        v12 = v9 / 12.92;
      }

      else
      {
        v12 = pow((v9 + 0.055) / 1.055, 2.4);
      }

      v13 = v12 * 0.7152 + v11 * 0.2126;
      if (v10 <= 0.03928)
      {
        v14 = v10 / 12.92;
      }

      else
      {
        v14 = pow((v10 + 0.055) / 1.055, 2.4);
      }

      v5 = v13 + v14 * 0.0722;
    }
  }

  return v5;
}

- (double)contrastRatioForColor1:(id)color1 color2:(id)color2
{
  color2Copy = color2;
  [(AXAuditContrastDetectionManager *)self luminanceForColor:color1];
  v8 = v7;
  [(AXAuditContrastDetectionManager *)self luminanceForColor:color2Copy];
  v10 = v9;

  result = (v8 + 0.05) / (v10 + 0.05);
  if (v10 > v8)
  {
    return 1.0 / result;
  }

  return result;
}

- (id)auditDisplayStringForAuditColor:(id)color
{
  colorCopy = color;
  if (color)
  {
    cGColor = [color CGColor];
    if (CGColorGetNumberOfComponents(cGColor) == 4)
    {
      Components = CGColorGetComponents(cGColor);
      colorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", llround(*Components * 255.0), llround(Components[1] * 255.0), llround(Components[2] * 255.0)];
    }

    else
    {
      colorCopy = 0;
    }

    v3 = vars8;
  }

  return colorCopy;
}

@end