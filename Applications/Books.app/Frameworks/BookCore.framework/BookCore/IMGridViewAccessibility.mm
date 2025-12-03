@interface IMGridViewAccessibility
- (void)_swapGrabbedCell:(id)cell withOtherCell:(id)otherCell;
- (void)setGrabbedCell:(id)cell;
@end

@implementation IMGridViewAccessibility

- (void)setGrabbedCell:(id)cell
{
  cellCopy = cell;
  v5 = [(IMGridViewAccessibility *)self imaxValueForKey:@"_grabbedCell"];
  v9.receiver = self;
  v9.super_class = IMGridViewAccessibility;
  [(IMGridViewAccessibility *)&v9 setGrabbedCell:cellCopy];
  if (cellCopy && v5 != cellCopy)
  {
    v6 = IMAXLocString(@"started.moving.book %@");
    accessibilityLabel = [cellCopy accessibilityLabel];
    v8 = [NSString stringWithFormat:v6, accessibilityLabel];

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v8);
  }
}

- (void)_swapGrabbedCell:(id)cell withOtherCell:(id)otherCell
{
  v18.receiver = self;
  v18.super_class = IMGridViewAccessibility;
  cellCopy = cell;
  [(IMGridViewAccessibility *)&v18 _swapGrabbedCell:cellCopy withOtherCell:otherCell];
  v7 = [(IMGridViewAccessibility *)self imaxValueForKey:@"numberOfColumns"];
  integerValue = [v7 integerValue];

  v9 = [cellCopy imaxValueForKey:@"tag"];

  v10 = [v9 integerValue] - 10000;
  v11 = v10 / integerValue;
  v12 = [NSNumber numberWithInteger:v10 % integerValue + 1];
  v13 = [NSNumberFormatter imaxLocalizedNumber:v12];

  v14 = [NSNumber numberWithInteger:v11 + 1];
  v15 = [NSNumberFormatter imaxLocalizedNumber:v14];

  LODWORD(v14) = UIAccessibilityAnnouncementNotification;
  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, @"AXAnnouncementTypeReorderSound");
  v16 = IMAXLocString(@"finished.moving.book %@ %@");
  v17 = [NSString stringWithFormat:v16, v15, v13, v18.receiver, v18.super_class];

  UIAccessibilityPostNotification(v14, v17);
}

@end