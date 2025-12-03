@interface IndividualSwipeOptionController
+ (id)swipeActionsAndTitles;
- (BOOL)_canSelectOptionAtIndex:(unint64_t)index;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)itemsFromParent;
- (void)listItemSelected:(id)selected;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation IndividualSwipeOptionController

+ (id)swipeActionsAndTitles
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD4E4;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCF38 != -1)
  {
    dispatch_once(&qword_1006DCF38, block);
  }

  v2 = qword_1006DCF30;

  return v2;
}

- (void)viewDidLoad
{
  specifier = [(IndividualSwipeOptionController *)self specifier];
  performGetter = [specifier performGetter];

  self->_showArchiveFooter = [performGetter isEqualToString:SwipeActionAlternateDestructiveAction];
  v5.receiver = self;
  v5.super_class = IndividualSwipeOptionController;
  [(IndividualSwipeOptionController *)&v5 viewDidLoad];
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = IndividualSwipeOptionController;
  [(IndividualSwipeOptionController *)&v8 listItemSelected:selectedCopy];
  specifier = [(IndividualSwipeOptionController *)self specifier];
  values = [specifier values];
  v7 = [values objectAtIndex:{objc_msgSend(selectedCopy, "row")}];

  self->_showArchiveFooter = [v7 isEqualToString:SwipeActionAlternateDestructiveAction];
  [(IndividualSwipeOptionController *)self reloadSpecifiers];
}

- (id)itemsFromParent
{
  v18.receiver = self;
  v18.super_class = IndividualSwipeOptionController;
  itemsFromParent = [(IndividualSwipeOptionController *)&v18 itemsFromParent];
  v4 = [NSMutableArray arrayWithArray:itemsFromParent];

  if (self->_showArchiveFooter)
  {
    firstObject = [v4 firstObject];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SWIPE_OPTIONS_ARCHIVE_INFO" value:&stru_100662A88 table:@"Preferences"];
    [firstObject setProperty:v7 forKey:PSFooterTextGroupKey];
  }

  specifier = [(IndividualSwipeOptionController *)self specifier];
  v9 = [specifier propertyForKey:@"kLocalizedSwipeDirection"];
  integerValue = [v9 integerValue];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  if (integerValue == 1)
  {
    [v11 localizedStringForKey:@"SWIPE_DIRECTION_LEFT" value:&stru_100662A88 table:@"Preferences"];
  }

  else
  {
    [v11 localizedStringForKey:@"SWIPE_DIRECTION_RIGHT" value:&stru_100662A88 table:@"Preferences"];
  }
  v12 = ;

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SWIPE_OPTIONS_INFO %@" value:&stru_100662A88 table:@"Preferences"];
  v15 = [NSString stringWithFormat:v14, v12];

  v16 = [PSSpecifier groupSpecifierWithName:0];
  [v16 setProperty:v15 forKey:PSFooterTextGroupKey];
  [v4 insertObject:v16 atIndex:0];

  return v4;
}

- (BOOL)_canSelectOptionAtIndex:(unint64_t)index
{
  specifier = [(IndividualSwipeOptionController *)self specifier];
  v6 = [specifier propertyForKey:@"kSwipeDirection"];
  integerValue = [v6 integerValue];

  if (integerValue == 1)
  {
    sub_10024BB48(1);
  }

  else
  {
    sub_10024BC14(1);
  }
  v8 = ;
  if ([v8 isEqualToString:SwipeActionNone])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    specifier2 = [(IndividualSwipeOptionController *)self specifier];
    values = [specifier2 values];
    v12 = [values objectAtIndex:index];

    v9 = [v12 isEqualToString:v8] ^ 1;
  }

  return v9;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  LOBYTE(self) = -[IndividualSwipeOptionController _canSelectOptionAtIndex:](self, "_canSelectOptionAtIndex:", [pathCopy row]);

  return self;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [path row];
  v8 = [(IndividualSwipeOptionController *)self _canSelectOptionAtIndex:v7];
  [cellCopy setUserInteractionEnabled:v8];
  if (!v8)
  {
    specifier = [(IndividualSwipeOptionController *)self specifier];
    v10 = [specifier propertyForKey:@"kLocalizedSwipeDirection"];
    integerValue = [v10 integerValue];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    if (integerValue == 1)
    {
      [v12 localizedStringForKey:@"SWIPE_RIGHT" value:&stru_100662A88 table:@"Preferences"];
    }

    else
    {
      [v12 localizedStringForKey:@"SWIPE_LEFT" value:&stru_100662A88 table:@"Preferences"];
    }
    v13 = ;

    specifier2 = [(IndividualSwipeOptionController *)self specifier];
    values = [specifier2 values];
    v16 = [values objectAtIndex:v7];

    v17 = +[IndividualSwipeOptionController swipeActionsAndTitles];
    v18 = [v17 objectForKey:v16];

    defaultContentConfiguration = [cellCopy defaultContentConfiguration];
    [defaultContentConfiguration setText:v18];
    v20 = [NSString localizedStringWithFormat:@"(%@)", v13];
    [defaultContentConfiguration setSecondaryText:v20];

    [cellCopy setContentConfiguration:defaultContentConfiguration];
  }
}

@end