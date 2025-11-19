@interface UIBarButtonItem
+ (id)mf_newFixedSpaceItemWithWidth:(double)a3;
+ (id)mf_newFlexibleSpaceItem;
+ (id)mf_newMultiBarButtonItemWithTarget:(id)a3 action:(SEL)a4;
+ (id)mf_newSelectionBarButtonItemWithTarget:(id)a3 action:(SEL)a4;
+ (void)mf_configureMultiBarButtonItem:(id)a3 usingStyle:(int64_t)a4;
+ (void)mf_configureSelectionBarButtonItem:(id)a3 usingStyle:(unint64_t)a4;
@end

@implementation UIBarButtonItem

+ (id)mf_newMultiBarButtonItemWithTarget:(id)a3 action:(SEL)a4
{
  v5 = a3;
  v6 = [UIBarButtonItem alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"EDIT" value:&stru_100662A88 table:@"Main"];
  v9 = [v6 initWithTitle:v8 style:0 target:v5 action:a4];

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

+ (void)mf_configureMultiBarButtonItem:(id)a3 usingStyle:(int64_t)a4
{
  v5 = a3;
  v6 = 0;
  v11 = v5;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
LABEL_11:
      v6 = v9;
      v7 = 2;
      goto LABEL_12;
    }

    v7 = 0;
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v8 = +[NSBundle mainBundle];
    v10 = [v8 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    if (a4)
    {
      v7 = 0;
      if (a4 != 1)
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

  v5 = v11;
LABEL_13:
  [v5 setStyle:v7];
  [v11 setTitle:v6];
}

+ (id)mf_newFixedSpaceItemWithWidth:(double)a3
{
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:a3];

  return v4;
}

+ (id)mf_newFlexibleSpaceItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

+ (id)mf_newSelectionBarButtonItemWithTarget:(id)a3 action:(SEL)a4
{
  v5 = a3;
  v6 = [UIBarButtonItem alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
  v9 = [v6 initWithTitle:v8 style:0 target:v5 action:a4];

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

+ (void)mf_configureSelectionBarButtonItem:(id)a3 usingStyle:(unint64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"DESELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
    [v7 setTitle:v6];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_100662A88 table:@"Main"];
    [v7 setTitle:v6];
  }

LABEL_6:
}

@end