@interface UIBarButtonItem
+ (id)mf_newFixedSpaceItemWithWidth:(double)width;
+ (id)mf_newFlexibleSpaceItem;
+ (id)mf_newMultiBarButtonItemWithTarget:(id)target action:(SEL)action;
+ (id)mf_newSelectionBarButtonItemWithTarget:(id)target action:(SEL)action;
+ (void)mf_configureMultiBarButtonItem:(id)item usingStyle:(int64_t)style;
+ (void)mf_configureSelectionBarButtonItem:(id)item usingStyle:(unint64_t)style;
@end

@implementation UIBarButtonItem

+ (id)mf_newMultiBarButtonItemWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v6 = [UIBarButtonItem alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"EDIT" value:&stru_100662A88 table:@"Main"];
  v9 = [v6 initWithTitle:v8 style:0 target:targetCopy action:action];

  v10 = [NSSet alloc];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"EDIT" value:&stru_100662A88 table:@"Main"];
  v20[0] = v12;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DONE" value:&stru_100662A88 table:@"Main"];
  v20[1] = v14;
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  v20[2] = v16;
  v17 = [NSArray arrayWithObjects:v20 count:3];
  v18 = [v10 initWithArray:v17];
  [v9 setPossibleTitles:v18];

  return v9;
}

+ (void)mf_configureMultiBarButtonItem:(id)item usingStyle:(int64_t)style
{
  itemCopy = item;
  v6 = 0;
  v11 = itemCopy;
  if (style > 1)
  {
    if (style == 2)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
LABEL_11:
      v6 = v9;
      v7 = 2;
      goto LABEL_12;
    }

    v7 = 0;
    if (style != 3)
    {
      goto LABEL_13;
    }

    v8 = +[NSBundle mainBundle];
    v10 = [v8 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    if (style)
    {
      v7 = 0;
      if (style != 1)
      {
        goto LABEL_13;
      }

      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"DONE" value:&stru_100662A88 table:@"Main"];
      goto LABEL_11;
    }

    v8 = +[NSBundle mainBundle];
    v10 = [v8 localizedStringForKey:@"EDIT" value:&stru_100662A88 table:@"Main"];
  }

  v6 = v10;
  v7 = 0;
LABEL_12:

  itemCopy = v11;
LABEL_13:
  [itemCopy setStyle:v7];
  [v11 setTitle:v6];
}

+ (id)mf_newFixedSpaceItemWithWidth:(double)width
{
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:width];

  return v4;
}

+ (id)mf_newFlexibleSpaceItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

+ (id)mf_newSelectionBarButtonItemWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v6 = [UIBarButtonItem alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
  v9 = [v6 initWithTitle:v8 style:0 target:targetCopy action:action];

  v10 = [NSSet alloc];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
  v18[0] = v12;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DESELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
  v18[1] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:2];
  v16 = [v10 initWithArray:v15];
  [v9 setPossibleTitles:v16];

  return v9;
}

+ (void)mf_configureSelectionBarButtonItem:(id)item usingStyle:(unint64_t)style
{
  itemCopy = item;
  if (style == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"DESELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
    [itemCopy setTitle:v6];
  }

  else
  {
    if (style)
    {
      goto LABEL_6;
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
    [itemCopy setTitle:v6];
  }

LABEL_6:
}

@end