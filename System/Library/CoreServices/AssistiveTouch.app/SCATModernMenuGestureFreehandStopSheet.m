@interface SCATModernMenuGestureFreehandStopSheet
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATModernMenuGestureFreehandStopSheet

- (id)makeMenuItemsIfNeeded
{
  if (AXDeviceIsPad())
  {
    v3 = sub_100042B24(@"FREEHAND_STOP_TWO_LINES");
    v4 = [(SCATModernMenuGestureFreehandStopSheet *)self actionToStop];
    v5 = [NSString stringWithFormat:v3, v4];
  }

  else
  {
    v5 = sub_100042B24(@"STOP");
  }

  v6 = [(SCATModernMenuItem *)SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_stop" delegate:self title:v5 imageName:@"SCATIcon_general_stop" activateBehavior:2];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"freehand_stop"];

  if (v6)
  {
    v7 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v7 stopForFreehandSheet:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SCATModernMenuGestureFreehandStopSheet;
    [(SCATModernMenuGestureFreehandSheetBase *)&v8 menuItemWasActivated:v4];
  }
}

@end