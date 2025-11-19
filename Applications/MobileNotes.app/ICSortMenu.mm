@interface ICSortMenu
- (ICSortMenu)initWithTitle:(id)a3 sortType:(id)a4 selectedSortTypeHandler:(id)a5;
- (id)actionWithDirection:(int64_t)a3;
- (id)actionWithOrder:(int64_t)a3;
- (id)createMenu;
@end

@implementation ICSortMenu

- (ICSortMenu)initWithTitle:(id)a3 sortType:(id)a4 selectedSortTypeHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ICSortMenu;
  v12 = [(ICSortMenu *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_sortType, a4);
    v14 = objc_retainBlock(v11);
    selectedSortTypeHandler = v13->_selectedSortTypeHandler;
    v13->_selectedSortTypeHandler = v14;
  }

  return v13;
}

- (id)createMenu
{
  v3 = [(ICSortMenu *)self actionWithOrder:0];
  v4 = [(ICSortMenu *)self actionWithOrder:1];
  v5 = [(ICSortMenu *)self actionWithOrder:2];
  v6 = [(ICSortMenu *)self actionWithOrder:3];
  v17 = [(ICSortMenu *)self actionWithDirection:0];
  v16 = [(ICSortMenu *)self actionWithDirection:1];
  v19[0] = v17;
  v19[1] = v16;
  v7 = [NSArray arrayWithObjects:v19 count:2];
  v8 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:1 children:v7];

  v9 = [UIImage systemImageNamed:@"arrow.up.arrow.down"];
  v10 = [(ICSortMenu *)self title];
  v18[0] = v3;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v8;
  v11 = [NSArray arrayWithObjects:v18 count:5];
  v12 = [UIMenu menuWithTitle:v10 image:v9 identifier:@"com.apple.mobilenotes.sortMenuIdentifier" options:0 children:v11];

  v13 = [(ICSortMenu *)self sortType];
  v14 = +[ICFolderCustomNoteSortType actionItemTitleForOrder:](ICFolderCustomNoteSortType, "actionItemTitleForOrder:", [v13 order]);
  [v12 setSubtitle:v14];

  return v12;
}

- (id)actionWithOrder:(int64_t)a3
{
  v5 = [(ICSortMenu *)self sortType];
  v6 = [v5 order];
  v7 = [ICFolderCustomNoteSortType actionItemTitleForOrder:a3];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000A9598;
  v17 = &unk_100647F40;
  v20 = v6;
  v21 = a3;
  v18 = v5;
  v19 = self;
  v8 = v5;
  v9 = [UIAction actionWithTitle:v7 image:0 identifier:0 handler:&v14];
  v10 = [v8 order];
  v11 = v10 == a3;
  if (v10 == a3)
  {
    v12 = &UIAccessibilityTraitSelected;
  }

  else
  {
    v12 = &UIAccessibilityTraitNone;
  }

  [v9 setState:v11];
  [v9 setAccessibilityTraits:*v12];

  return v9;
}

- (id)actionWithDirection:(int64_t)a3
{
  v5 = [(ICSortMenu *)self sortType];
  v6 = +[ICFolderCustomNoteSortType stringNameForDirection:order:](ICFolderCustomNoteSortType, "stringNameForDirection:order:", a3, [v5 order]);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A9764;
  v13[3] = &unk_100647F68;
  v15 = self;
  v16 = a3;
  v14 = v5;
  v7 = v5;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v13];
  v9 = [v7 direction];
  v10 = v9 == a3;
  if (v9 == a3)
  {
    v11 = &UIAccessibilityTraitSelected;
  }

  else
  {
    v11 = &UIAccessibilityTraitNone;
  }

  [v8 setState:v10];
  [v8 setAccessibilityTraits:*v11];

  return v8;
}

@end