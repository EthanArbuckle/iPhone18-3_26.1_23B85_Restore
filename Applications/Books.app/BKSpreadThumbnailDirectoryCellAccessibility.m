@interface BKSpreadThumbnailDirectoryCellAccessibility
- (id)accessibilityLabel;
@end

@implementation BKSpreadThumbnailDirectoryCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(BKSpreadThumbnailDirectoryCellAccessibility *)self imaxValueForKey:@"spreadView"];
  v4 = [v3 imaxValueForKey:@"leftPageView"];
  v5 = [v3 imaxValueForKey:@"rightPageView"];
  v6 = [v4 imaxValueForKey:@"pageNumber"];
  v7 = [v6 integerValue];

  v8 = [v5 imaxValueForKey:@"pageNumber"];
  v9 = [v8 integerValue];

  v10 = [NSNumber numberWithInteger:v7];
  v11 = [NSNumberFormatter imaxLocalizedNumber:v10];

  v12 = [NSNumber numberWithInteger:v9];
  v13 = [NSNumberFormatter imaxLocalizedNumber:v12];

  v15 = v7 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || !v5)
  {
    v16 = v11;
    if (v15)
    {
      v17 = 0;
      goto LABEL_17;
    }

LABEL_13:
    v18 = sub_1000765EC(@"page.num %@");
    v17 = [NSString stringWithFormat:v18, v16];

    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = v13;
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_14:
  v19 = sub_1000765EC(@"spread.page %@ %@");
  v17 = [NSString stringWithFormat:v19, v11, v13];

LABEL_15:
  v20 = [(BKSpreadThumbnailDirectoryCellAccessibility *)self imaxValueForKey:@"hasRibbon"];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    v24 = sub_1000765EC(@"has.bookmark");
    v22 = __IMAccessibilityStringForVariables();

    v17 = v22;
  }

LABEL_17:

  return v17;
}

@end