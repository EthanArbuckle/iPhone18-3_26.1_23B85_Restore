@interface BKTOCAnnotationTableCellAccessibility
- (id)accessibilityLabel;
- (id)bkaxNoteLabelText;
@end

@implementation BKTOCAnnotationTableCellAccessibility

- (id)bkaxNoteLabelText
{
  v2 = [(BKTOCAnnotationTableCellAccessibility *)self imaxValueForKey:@"_noteLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityLabel
{
  v3 = AEAXLocString(@"annotation");
  bkaxNoteLabelText = [(BKTOCAnnotationTableCellAccessibility *)self bkaxNoteLabelText];
  v5 = [(BKTOCAnnotationTableCellAccessibility *)self imaxValueForKey:@"_dateLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  v7 = [(BKTOCAnnotationTableCellAccessibility *)self imaxValueForKey:@"_pageLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];

  if ([accessibilityLabel2 length])
  {
    v9 = AEAXLocString(@"page.num %@");
    v10 = [NSString stringWithFormat:v9, accessibilityLabel2];

    accessibilityLabel2 = v10;
  }

  v11 = __IMAccessibilityStringForVariables();

  return v11;
}

@end