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
  v3 = [(BKTOCTableViewCellAccessibility *)self bkaxTextLabel];
  v4 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  v5 = [v4 detailTextLabel];
  v6 = [v5 accessibilityLabel];

  v7 = AEAXLocString(@"toc.indentationLevel %ld");
  v8 = [NSString stringWithFormat:v7, [(BKTOCTableViewCellAccessibility *)self bkaxIndentationDepth]];

  v9 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  v10 = [v9 pageLabel];
  v11 = [v10 text];

  v12 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  v13 = [v12 pageLabel];
  v14 = [v13 accessibilityLabel];

  if (v14)
  {
    if ([v11 rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v11, "intValue") >= 1)
    {
      v15 = AEAXLocString(@"page.num %@");
      v16 = [NSString stringWithFormat:v15, v11];
    }

    else
    {
      v16 = v14;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  v18 = [v17 bkaxIsExcludedFromSample];

  if (v18)
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
  v3 = [(BKTOCTableViewCellAccessibility *)&v5 accessibilityTraits];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ![(BKTOCTableViewCellAccessibility *)self bkaxIndentationDepth])
    {
      v3 |= UIAccessibilityTraitHeader;
    }
  }

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(BKTOCTableViewCellAccessibility *)self bkaxTextLabel];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v17 = 0;
    v7 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"^[[:digit:]]+[[:punct:]]+[[:space:]]+", 0, &v17);
    v8 = [v7 firstMatchInString:v4 options:0 range:{0, v6}];
    v9 = v8;
    if (v8 && [v8 range] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v4 substringFromIndex:v10];
      v12 = +[NSCharacterSet whitespaceCharacterSet];
      v13 = [v11 stringByTrimmingCharactersInSet:v12];

      if ([v13 length])
      {
        [v3 addObject:v13];
      }
    }

    [v3 addObject:v4];
  }

  v16.receiver = self;
  v16.super_class = BKTOCTableViewCellAccessibility;
  v14 = [(BKTOCTableViewCellAccessibility *)&v16 accessibilityUserInputLabels];
  if (v14)
  {
    [v3 addObjectsFromArray:v14];
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
  v3 = [v2 integerValue];

  return v3;
}

- (id)bkaxTextLabel
{
  v2 = [(BKTOCTableViewCellAccessibility *)self bkaxTarget];
  v3 = [v2 textLabel];
  v4 = [v3 accessibilityLabel];

  return v4;
}

@end