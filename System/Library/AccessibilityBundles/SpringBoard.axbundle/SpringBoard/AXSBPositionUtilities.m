@interface AXSBPositionUtilities
+ (id)_sectionDescription:(int64_t)a3;
+ (id)_sections:(id)a3 intersectingBounds:(CGRect)a4;
+ (id)_threeByThreeSectionsOfRect:(CGRect)a3;
+ (id)areaDescriptionOfContainerElement:(CGRect)a3 underElementWithBounds:(CGRect)a4;
+ (id)areaSizeDescriptionForContainer:(id)a3;
+ (id)positionDescriptionFromTopLeftCornerWithOrigin:(CGPoint)a3;
@end

@implementation AXSBPositionUtilities

+ (id)areaDescriptionOfContainerElement:(CGRect)a3 underElementWithBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v12 = [AXSBPositionUtilities _threeByThreeSectionsOfRect:?];
  v13 = [AXSBPositionUtilities _sections:v12 intersectingBounds:x, y, width, height];
  v14 = [v13 count];
  if (v14 == 9)
  {
    v15 = width * height / (v9 * v8);
    if (v15 <= 0.95)
    {
      if (v15 <= 0.7)
      {
        v16 = @"window.area.centered.screen";
      }

      else
      {
        v16 = @"window.area.most.screen";
      }
    }

    else
    {
      v16 = @"window.area.entire.screen";
    }

    v31 = accessibilityLocalizedString(v16);
    goto LABEL_19;
  }

  v17 = v14;
  v18 = [v13 firstObject];
  v19 = +[AXSBPositionUtilities _sectionDescription:](AXSBPositionUtilities, "_sectionDescription:", [v18 integerValue]);

  v20 = [v13 lastObject];
  v21 = +[AXSBPositionUtilities _sectionDescription:](AXSBPositionUtilities, "_sectionDescription:", [v20 integerValue]);

  v22 = MEMORY[0x29EDBA0F8];
  v23 = accessibilityLocalizedString(@"window.area.covered.sections");
  v24 = [v22 localizedStringWithFormat:v23, v19, v21];

  v35.origin.x = v11;
  v35.origin.y = v10;
  v35.size.width = v9;
  v35.size.height = v8;
  MidX = CGRectGetMidX(v35);
  if (v17 != 1)
  {
    if (v17 >= 4)
    {
      v28 = MidX;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      if (CGRectGetMaxX(v36) < v28)
      {
        v29 = MEMORY[0x29EDBA0F8];
        v30 = @"window.area.left.half";
LABEL_15:
        v27 = accessibilityLocalizedString(v30);
        [v29 localizedStringWithFormat:@"%@, %@", v24, v27];
        goto LABEL_16;
      }

      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      if (CGRectGetMinX(v37) > v28)
      {
        v29 = MEMORY[0x29EDBA0F8];
        v30 = @"window.area.right.half";
        goto LABEL_15;
      }
    }

    v31 = v24;
    goto LABEL_18;
  }

  v26 = MEMORY[0x29EDBA0F8];
  v27 = accessibilityLocalizedString(@"window.area.one.section");
  [v26 localizedStringWithFormat:v27, v19, v33];
  v31 = LABEL_16:;

LABEL_18:
LABEL_19:

  return v31;
}

+ (id)positionDescriptionFromTopLeftCornerWithOrigin:(CGPoint)a3
{
  if (a3.x >= 0.0 || a3.y >= 0.0)
  {
    if (a3.x < 0.0 || a3.y >= 0.0)
    {
      if (a3.y >= 0.0 && a3.x < 0.0)
      {
        v4 = @"window.position.left.down";
      }

      else
      {
        v4 = @"window.position.right.down";
      }
    }

    else
    {
      v4 = @"window.position.right.up";
    }
  }

  else
  {
    v4 = @"window.position.left.up";
  }

  v6 = MEMORY[0x29EDBA0F8];
  v7 = fabs(a3.y);
  v8 = fabs(a3.x);
  v9 = accessibilityLocalizedString(v4);
  v10 = [v6 localizedStringWithFormat:v9, v8, v7];

  return v10;
}

+ (id)areaSizeDescriptionForContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v3 bounds];
  v16 = v15;
  v18 = v17;
  v19 = MEMORY[0x29EDBA0F8];
  v20 = accessibilityLocalizedString(@"window.size.width");
  v21 = [v19 localizedStringWithFormat:v20, v16];

  v22 = MEMORY[0x29EDBA0F8];
  v23 = accessibilityLocalizedString(@"window.size.height");
  v24 = [v22 localizedStringWithFormat:v23, v18];

  [v3 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [AXSBPositionUtilities areaDescriptionOfContainerElement:v8 underElementWithBounds:v10, v12, v14, v26, v28, v30, v32];
  v34 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%@, %@, %@.", v33, v21, v24];

  return v34;
}

+ (id)_threeByThreeSectionsOfRect:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v5 = a3.size.width / 3.0;
  v6 = (a3.size.width / 3.0);
  v7 = a3.size.height / 3.0;
  v8 = (a3.size.height / 3.0);
  v9 = objc_opt_new();
  v10 = 0;
  v11 = v5;
  v12 = v7;
  do
  {
    v13 = 0;
    v14 = 3;
    do
    {
      v15 = [MEMORY[0x29EDBA168] valueWithRect:{(x + v13), (y + (v10 * v8)), v11, v12}];
      [v9 addObject:v15];

      v13 += v6;
      --v14;
    }

    while (v14);
    ++v10;
  }

  while (v10 != 3);
  v16 = [v9 copy];

  return v16;
}

+ (id)_sections:(id)a3 intersectingBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = [v8 count];
  v10 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = [v8 objectAtIndexedSubscript:v11];
      [v12 rectValue];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v25.origin.x = v14;
      v25.origin.y = v16;
      v25.size.width = v18;
      v25.size.height = v20;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      ++v11;
      if (CGRectIntersectsRect(v25, v26))
      {
        v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v11];
        [v10 addObject:v21];
      }
    }

    while (v11 != v9);
  }

  v22 = [v10 copy];

  return v22;
}

+ (id)_sectionDescription:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    v7 = 0;
  }

  else
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = [MEMORY[0x29EDBA070] numberWithInteger:?];
    v5 = [v4 stringValue];
    v6 = [v3 stringWithFormat:@"%@.%@", @"window.section", v5];
    v7 = accessibilityLocalizedString(v6);
  }

  return v7;
}

@end