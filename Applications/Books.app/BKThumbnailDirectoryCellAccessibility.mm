@interface BKThumbnailDirectoryCellAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation BKThumbnailDirectoryCellAccessibility

- (id)accessibilityLabel
{
  v15.receiver = self;
  v15.super_class = BKThumbnailDirectoryCellAccessibility;
  v3 = [(BKThumbnailDirectoryCellAccessibility *)&v15 accessibilityLabel];
  v4 = [(BKThumbnailDirectoryCellAccessibility *)self imaxValueForKey:@"pageView"];
  v5 = [v4 imaxValueForKey:@"pageNumber"];
  v6 = [v5 intValue];

  if (v6 >= 1)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Page %d" value:&stru_100A30A68 table:0];

    v9 = [NSString stringWithFormat:v8, v6];

    v3 = v9;
  }

  v10 = [(BKThumbnailDirectoryCellAccessibility *)self imaxValueForKey:@"hasRibbon"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v14 = sub_1000765EC(@"has.bookmark");
    v12 = __IMAccessibilityStringForVariables();

    v3 = v12;
  }

  return v3;
}

- (CGRect)accessibilityFrame
{
  v27.receiver = self;
  v27.super_class = BKThumbnailDirectoryCellAccessibility;
  [(BKThumbnailDirectoryCellAccessibility *)&v27 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v21) = 0;
  objc_opt_class();
  v11 = [(BKThumbnailDirectoryCellAccessibility *)self imaxValueForKey:@"contentView"];
  v12 = __IMAccessibilityCastAsClass();

  [v12 bounds];
  v21 = 0;
  v22 = &v21;
  v23 = 0x4010000000;
  v24 = &unk_1008EB423;
  v25 = 0u;
  v26 = 0u;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  v13 = v22[4];
  v14 = v22[5];
  v16 = v22[6];
  v15 = v22[7];
  _Block_object_dispose(&v21, 8);
  v30.origin.x = CGRectZero.origin.x;
  v30.origin.y = CGRectZero.origin.y;
  v30.size.width = CGRectZero.size.width;
  v30.size.height = CGRectZero.size.height;
  v28.origin.x = v13;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v15;
  if (CGRectEqualToRect(v28, v30))
  {
    v15 = v10;
    v16 = v8;
  }

  else
  {
    v4 = v4 + v13;
    v6 = v6 + v14;
  }

  v17 = v4;
  v18 = v6;
  v19 = v16;
  v20 = v15;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end