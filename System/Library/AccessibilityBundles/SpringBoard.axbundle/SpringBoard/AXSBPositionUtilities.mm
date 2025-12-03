@interface AXSBPositionUtilities
+ (id)_sectionDescription:(int64_t)description;
+ (id)_sections:(id)_sections intersectingBounds:(CGRect)bounds;
+ (id)_threeByThreeSectionsOfRect:(CGRect)rect;
+ (id)areaDescriptionOfContainerElement:(CGRect)element underElementWithBounds:(CGRect)bounds;
+ (id)areaSizeDescriptionForContainer:(id)container;
+ (id)positionDescriptionFromTopLeftCornerWithOrigin:(CGPoint)origin;
@end

@implementation AXSBPositionUtilities

+ (id)areaDescriptionOfContainerElement:(CGRect)element underElementWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = element.size.height;
  v9 = element.size.width;
  v10 = element.origin.y;
  v11 = element.origin.x;
  v12 = [AXSBPositionUtilities _threeByThreeSectionsOfRect:?];
  height = [AXSBPositionUtilities _sections:v12 intersectingBounds:x, y, width, height];
  v14 = [height count];
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
  firstObject = [height firstObject];
  v19 = +[AXSBPositionUtilities _sectionDescription:](AXSBPositionUtilities, "_sectionDescription:", [firstObject integerValue]);

  lastObject = [height lastObject];
  v21 = +[AXSBPositionUtilities _sectionDescription:](AXSBPositionUtilities, "_sectionDescription:", [lastObject integerValue]);

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

+ (id)positionDescriptionFromTopLeftCornerWithOrigin:(CGPoint)origin
{
  if (origin.x >= 0.0 || origin.y >= 0.0)
  {
    if (origin.x < 0.0 || origin.y >= 0.0)
    {
      if (origin.y >= 0.0 && origin.x < 0.0)
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
  v7 = fabs(origin.y);
  v8 = fabs(origin.x);
  v9 = accessibilityLocalizedString(v4);
  v10 = [v6 localizedStringWithFormat:v9, v8, v7];

  return v10;
}

+ (id)areaSizeDescriptionForContainer:(id)container
{
  containerCopy = container;
  window = [containerCopy window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [containerCopy bounds];
  v16 = v15;
  v18 = v17;
  v19 = MEMORY[0x29EDBA0F8];
  v20 = accessibilityLocalizedString(@"window.size.width");
  v21 = [v19 localizedStringWithFormat:v20, v16];

  v22 = MEMORY[0x29EDBA0F8];
  v23 = accessibilityLocalizedString(@"window.size.height");
  v24 = [v22 localizedStringWithFormat:v23, v18];

  [containerCopy frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [AXSBPositionUtilities areaDescriptionOfContainerElement:v8 underElementWithBounds:v10, v12, v14, v26, v28, v30, v32];
  v34 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%@, %@, %@.", v33, v21, v24];

  return v34;
}

+ (id)_threeByThreeSectionsOfRect:(CGRect)rect
{
  y = rect.origin.y;
  x = rect.origin.x;
  v5 = rect.size.width / 3.0;
  v6 = (rect.size.width / 3.0);
  v7 = rect.size.height / 3.0;
  v8 = (rect.size.height / 3.0);
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

+ (id)_sections:(id)_sections intersectingBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _sectionsCopy = _sections;
  v9 = [_sectionsCopy count];
  v10 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = [_sectionsCopy objectAtIndexedSubscript:v11];
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

+ (id)_sectionDescription:(int64_t)description
{
  if ((description - 1) > 8)
  {
    v7 = 0;
  }

  else
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = [MEMORY[0x29EDBA070] numberWithInteger:?];
    stringValue = [v4 stringValue];
    v6 = [v3 stringWithFormat:@"%@.%@", @"window.section", stringValue];
    v7 = accessibilityLocalizedString(v6);
  }

  return v7;
}

@end