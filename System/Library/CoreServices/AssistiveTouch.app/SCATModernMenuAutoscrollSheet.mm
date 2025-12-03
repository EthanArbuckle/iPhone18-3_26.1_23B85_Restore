@interface SCATModernMenuAutoscrollSheet
- (BOOL)shouldUpdateMenuItem:(id)item;
- (id)makeMenuItemsIfNeeded;
- (void)dealloc;
- (void)menuItemWasActivated:(id)activated;
- (void)sheetWillDisappear:(BOOL)disappear;
@end

@implementation SCATModernMenuAutoscrollSheet

- (void)dealloc
{
  v3 = +[SCATScannerManager sharedManager];
  autoscroller = [v3 autoscroller];

  if ([autoscroller isAutoscrolling])
  {
    [autoscroller stop];
  }

  v5.receiver = self;
  v5.super_class = SCATModernMenuAutoscrollSheet;
  [(SCATModernMenuSheet *)&v5 dealloc];
}

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = sub_100042B24(@"PAUSE");
  v5 = [SCATModernMenuItem itemWithIdentifier:@"autoscroll_pause" delegate:self title:v4 imageName:0 activateBehavior:3];
  [v3 addObject:v5];

  v6 = sub_100042B24(@"SLOWER");
  v7 = [SCATModernMenuItem itemWithIdentifier:@"autoscroll_decreaseSpeed" delegate:self title:v6 imageName:@"SCATIcon_general_tortoise" activateBehavior:3];
  [v3 addObject:v7];

  v8 = sub_100042B24(@"FASTER");
  v9 = [SCATModernMenuItem itemWithIdentifier:@"autoscroll_increaseSpeed" delegate:self title:v8 imageName:@"SCATIcon_general_hare" activateBehavior:3];
  [v3 addObject:v9];

  if (AXDeviceIsPad())
  {
    v10 = sub_100042B24(@"TOP");
    v11 = [SCATModernMenuItem itemWithIdentifier:@"autoscroll_scrollToTop" delegate:self title:v10 imageName:0 activateBehavior:3];
    [v3 addObject:v11];
  }

  return v3;
}

- (void)sheetWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuAutoscrollSheet;
  [(SCATModernMenuSheet *)&v6 sheetWillDisappear:disappear];
  v3 = +[SCATScannerManager sharedManager];
  autoscroller = [v3 autoscroller];

  if ([autoscroller isAutoscrolling])
  {
    [autoscroller stop];
  }

  [autoscroller setScrollElement:0];
  v5 = +[HNDAccessibilityManager sharedManager];
  [v5 refreshElements];
}

- (BOOL)shouldUpdateMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  if ([identifier isEqualToString:@"autoscroll_pause"])
  {
    v5 = +[SCATScannerManager sharedManager];
    autoscroller = [v5 autoscroller];

    isAutoscrolling = [autoscroller isAutoscrolling];
    v8 = isAutoscrolling == 0;
    if (isAutoscrolling)
    {
      v9 = @"PAUSE";
    }

    else
    {
      v9 = @"RESUME";
    }

    if (v8)
    {
      v10 = @"SCATIcon_autoscroll_resume";
    }

    else
    {
      v10 = @"SCATIcon_autoscroll_pause";
    }

    v11 = sub_100042B24(v9);
    [itemCopy setTitle:v11];

    [itemCopy setImageName:v10];
  }

  return 1;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"autoscroll_pause"])
  {
    v6 = +[SCATScannerManager sharedManager];
    autoscroller = [v6 autoscroller];

    if ([autoscroller isAutoscrolling])
    {
      [autoscroller pause];
    }

    else
    {
      [autoscroller resume];
    }
  }

  else
  {
    if ([identifier isEqualToString:@"autoscroll_increaseSpeed"])
    {
      v8 = +[SCATScannerManager sharedManager];
      autoscroller2 = [v8 autoscroller];

      [autoscroller2 increaseAutoscrollSpeed];
    }

    else if ([identifier isEqualToString:@"autoscroll_decreaseSpeed"])
    {
      v10 = +[SCATScannerManager sharedManager];
      autoscroller2 = [v10 autoscroller];

      [autoscroller2 decreaseAutoscrollSpeed];
    }

    else
    {
      if (![identifier isEqualToString:@"autoscroll_scrollToTop"])
      {
        v12.receiver = self;
        v12.super_class = SCATModernMenuAutoscrollSheet;
        [(SCATModernMenuSheet *)&v12 menuItemWasActivated:activatedCopy];
        goto LABEL_13;
      }

      v11 = +[SCATScannerManager sharedManager];
      autoscroller2 = [v11 autoscroller];

      [autoscroller2 scrollToTop];
    }
  }

LABEL_13:
}

@end