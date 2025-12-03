@interface BKTOCTableViewCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)bkaxTarget;
- (id)bkaxTextLabel;
- (int64_t)bkaxIndentationDepth;
- (unint64_t)accessibilityTraits;
@end

@implementation BKTOCTableViewCellAccessibility

- (id)accessibilityLabel
{
  bkaxTextLabel = [(BKTOCTableViewCellAccessibility *)self bkaxTextLabel];
  bkaxTarget = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  detailTextLabel = [bkaxTarget detailTextLabel];
  accessibilityLabel = [detailTextLabel accessibilityLabel];

  v7 = AEAXLocString(@"toc.indentationLevel %ld");
  v8 = [NSString stringWithFormat:v7, [(BKTOCTableViewCellAccessibility *)self bkaxIndentationDepth]];

  bkaxTarget2 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  pageLabel = [bkaxTarget2 pageLabel];
  text = [pageLabel text];

  bkaxTarget3 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  pageLabel2 = [bkaxTarget3 pageLabel];
  accessibilityLabel2 = [pageLabel2 accessibilityLabel];

  if (accessibilityLabel2)
  {
    if ([text rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(text, "intValue") >= 1)
    {
      v15 = AEAXLocString(@"page.num %@");
      v16 = [NSString stringWithFormat:v15, text];
    }

    else
    {
      v16 = accessibilityLabel2;
    }
  }

  else
  {
    v16 = 0;
  }

  bkaxTarget4 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  bkaxIsExcludedFromSample = [bkaxTarget4 bkaxIsExcludedFromSample];

  if (bkaxIsExcludedFromSample)
  {
    v19 = AEAXLocString(@"excluded.from.sample");
  }

  else
  {
    v19 = 0;
  }

  v20 = __IMAccessibilityStringForVariables();

  return v20;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = BKTOCTableViewCellAccessibility;
  accessibilityTraits = [(BKTOCTableViewCellAccessibility *)&v5 accessibilityTraits];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ![(BKTOCTableViewCellAccessibility *)self bkaxIndentationDepth])
    {
      accessibilityTraits |= UIAccessibilityTraitHeader;
    }
  }

  return accessibilityTraits;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  bkaxTextLabel = [(BKTOCTableViewCellAccessibility *)self bkaxTextLabel];
  v5 = [bkaxTextLabel length];
  if (v5)
  {
    v6 = v5;
    v17 = 0;
    v7 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"^[[:digit:]]+[[:punct:]]+[[:space:]]+", 0, &v17);
    v8 = [v7 firstMatchInString:bkaxTextLabel options:0 range:{0, v6}];
    v9 = v8;
    if (v8 && [v8 range] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [bkaxTextLabel substringFromIndex:v10];
      v12 = +[NSCharacterSet whitespaceCharacterSet];
      v13 = [v11 stringByTrimmingCharactersInSet:v12];

      if ([v13 length])
      {
        [v3 addObject:v13];
      }
    }

    [v3 addObject:bkaxTextLabel];
  }

  v16.receiver = self;
  v16.super_class = BKTOCTableViewCellAccessibility;
  accessibilityUserInputLabels = [(BKTOCTableViewCellAccessibility *)&v16 accessibilityUserInputLabels];
  if (accessibilityUserInputLabels)
  {
    [v3 addObjectsFromArray:accessibilityUserInputLabels];
  }

  return v3;
}

- (id)bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (int64_t)bkaxIndentationDepth
{
  v2 = [(BKTOCTableViewCellAccessibility *)self imaxValueForKey:BKNavigationInfoPropertyIndentationLevel];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)bkaxTextLabel
{
  bkaxTarget = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  textLabel = [bkaxTarget textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];

  return accessibilityLabel;
}

@end