@interface IMGridViewAccessibility
- (void)_swapGrabbedCell:(id)a3 withOtherCell:(id)a4;
- (void)setGrabbedCell:(id)a3;
@end

@implementation IMGridViewAccessibility

- (void)setGrabbedCell:(id)a3
{
  v4 = a3;
  v5 = [(IMGridViewAccessibility *)self imaxValueForKey:@"_grabbedCell"];
  v9.receiver = self;
  v9.super_class = IMGridViewAccessibility;
  [(IMGridViewAccessibility *)&v9 setGrabbedCell:v4];
  if (v4 && v5 != v4)
  {
    v6 = IMAXLocString(@"started.moving.book %@");
    v7 = [v4 accessibilityLabel];
    v8 = [NSString stringWithFormat:v6, v7];

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v8);
  }
}

- (void)_swapGrabbedCell:(id)a3 withOtherCell:(id)a4
{
  v18.receiver = self;
  v18.super_class = IMGridViewAccessibility;
  v6 = a3;
  [(IMGridViewAccessibility *)&v18 _swapGrabbedCell:v6 withOtherCell:a4];
  v7 = [(IMGridViewAccessibility *)self imaxValueForKey:@"numberOfColumns"];
  v8 = [v7 integerValue];

  v9 = [v6 imaxValueForKey:@"tag"];

  v10 = [v9 integerValue] - 10000;
  v11 = v10 / v8;
  v12 = [NSNumber numberWithInteger:v10 % v8 + 1];
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