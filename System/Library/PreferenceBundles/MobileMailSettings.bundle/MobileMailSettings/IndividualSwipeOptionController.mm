@interface IndividualSwipeOptionController
+ (id)swipeActionsAndTitles;
- (BOOL)_canSelectOptionAtIndex:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)itemsFromParent;
- (void)listItemSelected:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation IndividualSwipeOptionController

+ (id)swipeActionsAndTitles
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7274;
  block[3] = &unk_3CD10;
  block[4] = a1;
  if (qword_448E8 != -1)
  {
    dispatch_once(&qword_448E8, block);
  }

  v2 = qword_448E0;

  return v2;
}

- (void)viewDidLoad
{
  v3 = [(IndividualSwipeOptionController *)self specifier];
  v4 = [v3 performGetter];

  self->_showArchiveFooter = [v4 isEqualToString:@"SwipeActionAlternateDestructiveAction"];
  v5.receiver = self;
  v5.super_class = IndividualSwipeOptionController;
  [(IndividualSwipeOptionController *)&v5 viewDidLoad];
}

- (void)listItemSelected:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IndividualSwipeOptionController;
  [(IndividualSwipeOptionController *)&v8 listItemSelected:v4];
  v5 = [(IndividualSwipeOptionController *)self specifier];
  v6 = [v5 values];
  v7 = [v6 objectAtIndex:{objc_msgSend(v4, "row")}];

  self->_showArchiveFooter = [v7 isEqualToString:@"SwipeActionAlternateDestructiveAction"];
  [(IndividualSwipeOptionController *)self reloadSpecifiers];
}

- (id)itemsFromParent
{
  v18.receiver = self;
  v18.super_class = IndividualSwipeOptionController;
  v3 = [(IndividualSwipeOptionController *)&v18 itemsFromParent];
  v4 = [NSMutableArray arrayWithArray:v3];

  if (self->_showArchiveFooter)
  {
    v5 = [v4 firstObject];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SWIPE_OPTIONS_ARCHIVE_INFO" value:&stru_3D2B0 table:@"Preferences"];
    [v5 setProperty:v7 forKey:PSFooterTextGroupKey];
  }

  v8 = [(IndividualSwipeOptionController *)self specifier];
  v9 = [v8 propertyForKey:@"kLocalizedSwipeDirection"];
  v10 = [v9 integerValue];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  if (v10 == &dword_0 + 1)
  {
    [v11 localizedStringForKey:@"SWIPE_DIRECTION_LEFT" value:&stru_3D2B0 table:@"Preferences"];
  }

  else
  {
    [v11 localizedStringForKey:@"SWIPE_DIRECTION_RIGHT" value:&stru_3D2B0 table:@"Preferences"];
  }
  v12 = ;

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SWIPE_OPTIONS_INFO %@" value:&stru_3D2B0 table:@"Preferences"];
  v15 = [NSString stringWithFormat:v14, v12];

  v16 = [PSSpecifier groupSpecifierWithName:0];
  [v16 setProperty:v15 forKey:PSFooterTextGroupKey];
  [v4 insertObject:v16 atIndex:0];

  return v4;
}

- (BOOL)_canSelectOptionAtIndex:(unint64_t)a3
{
  v5 = [(IndividualSwipeOptionController *)self specifier];
  v6 = [v5 propertyForKey:@"kSwipeDirection"];
  v7 = [v6 integerValue];

  if (v7 == &dword_0 + 1)
  {
    rightSwipeSetting(1);
  }

  else
  {
    leftSwipeSetting(1);
  }
  v8 = ;
  if ([v8 isEqualToString:@"SwipeActionNone"])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = [(IndividualSwipeOptionController *)self specifier];
    v11 = [v10 values];
    v12 = [v11 objectAtIndex:a3];

    v9 = [v12 isEqualToString:v8] ^ 1;
  }

  return v9;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  LOBYTE(self) = -[IndividualSwipeOptionController _canSelectOptionAtIndex:](self, "_canSelectOptionAtIndex:", [v5 row]);

  return self;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v21 = a4;
  v7 = [a5 row];
  v8 = [(IndividualSwipeOptionController *)self _canSelectOptionAtIndex:v7];
  [v21 setUserInteractionEnabled:v8];
  if (!v8)
  {
    v9 = [(IndividualSwipeOptionController *)self specifier];
    v10 = [v9 propertyForKey:@"kLocalizedSwipeDirection"];
    v11 = [v10 integerValue];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    if (v11 == &dword_0 + 1)
    {
      [v12 localizedStringForKey:@"SWIPE_RIGHT" value:&stru_3D2B0 table:@"Preferences"];
    }

    else
    {
      [v12 localizedStringForKey:@"SWIPE_LEFT" value:&stru_3D2B0 table:@"Preferences"];
    }
    v13 = ;

    v14 = [(IndividualSwipeOptionController *)self specifier];
    v15 = [v14 values];
    v16 = [v15 objectAtIndex:v7];

    v17 = +[IndividualSwipeOptionController swipeActionsAndTitles];
    v18 = [v17 objectForKey:v16];

    v19 = [v21 defaultContentConfiguration];
    [v19 setText:v18];
    v20 = [NSString localizedStringWithFormat:@"(%@)", v13];
    [v19 setSecondaryText:v20];

    [v21 setContentConfiguration:v19];
  }
}

@end