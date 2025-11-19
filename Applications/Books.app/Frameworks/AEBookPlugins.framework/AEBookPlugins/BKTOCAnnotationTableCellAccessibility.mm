@interface BKTOCAnnotationTableCellAccessibility
- (id)accessibilityLabel;
- (id)bkaxNoteLabelText;
@end

@implementation BKTOCAnnotationTableCellAccessibility

- (id)bkaxNoteLabelText
{
  v2 = [(BKTOCAnnotationTableCellAccessibility *)self imaxValueForKey:@"_noteLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = AEAXLocString(@"annotation");
  v4 = [(BKTOCAnnotationTableCellAccessibility *)self bkaxNoteLabelText];
  v5 = [(BKTOCAnnotationTableCellAccessibility *)self imaxValueForKey:@"_dateLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(BKTOCAnnotationTableCellAccessibility *)self imaxValueForKey:@"_pageLabel"];
  v8 = [v7 accessibilityLabel];

  if ([v8 length])
  {
    v9 = AEAXLocString(@"page.num %@");
    v10 = [NSString stringWithFormat:v9, v8];

    v8 = v10;
  }

  v11 = __IMAccessibilityStringForVariables();

  return v11;
}

@end