@interface SCATModernMenuGestureFreehandMoreSheet
- (id)makeMenuItemsIfNeeded;
- (id)menuItemStruts;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATModernMenuGestureFreehandMoreSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = sub_100042B24(@"SLOWER");
  v5 = [(SCATModernMenuItem *)SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_slower" delegate:self title:v4 imageName:@"SCATIcon_general_tortoise" activateBehavior:3];
  [v3 addObject:v5];

  v6 = sub_100042B24(@"FASTER");
  v7 = [(SCATModernMenuItem *)SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_faster" delegate:self title:v6 imageName:@"SCATIcon_general_hare" activateBehavior:3];
  [v3 addObject:v7];

  if (AXDeviceIsPad())
  {
    v8 = [(SCATModernMenuGestureFreehandSheetBase *)self autoPressLiftItems];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [(SCATModernMenuGestureFreehandSheetBase *)self moveToolbarMenuItem];
  [v3 addObject:v9];

  return v3;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"freehand_slower"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 decreaseVelocityForFreehandSheet:self];
  }

  else
  {
    if (![v5 isEqualToString:@"freehand_faster"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuGestureFreehandMoreSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v7 menuItemWasActivated:v4];
      goto LABEL_7;
    }

    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 increaseVelocityForFreehandSheet:self];
  }

LABEL_7:
}

- (id)menuItemStruts
{
  if (!AXDeviceIsPad())
  {
    return 0;
  }

  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;

  if ([(SCATModernMenuGestureFreehandSheetBase *)self isLandscape])
  {
    v6 = &off_1001E4F68;
    v7 = &off_1001E4F50;
  }

  else
  {
    v6 = &off_1001E4F98;
    v7 = &off_1001E4F80;
  }

  if (v5 == 1.0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

@end