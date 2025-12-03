@interface ICSortMenu
- (ICSortMenu)initWithTitle:(id)title sortType:(id)type selectedSortTypeHandler:(id)handler;
- (id)actionWithDirection:(int64_t)direction;
- (id)actionWithOrder:(int64_t)order;
- (id)createMenu;
@end

@implementation ICSortMenu

- (ICSortMenu)initWithTitle:(id)title sortType:(id)type selectedSortTypeHandler:(id)handler
{
  titleCopy = title;
  typeCopy = type;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = ICSortMenu;
  v12 = [(ICSortMenu *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_sortType, type);
    v14 = objc_retainBlock(handlerCopy);
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
  title = [(ICSortMenu *)self title];
  v18[0] = v3;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v8;
  v11 = [NSArray arrayWithObjects:v18 count:5];
  v12 = [UIMenu menuWithTitle:title image:v9 identifier:@"com.apple.mobilenotes.sortMenuIdentifier" options:0 children:v11];

  sortType = [(ICSortMenu *)self sortType];
  v14 = +[ICFolderCustomNoteSortType actionItemTitleForOrder:](ICFolderCustomNoteSortType, "actionItemTitleForOrder:", [sortType order]);
  [v12 setSubtitle:v14];

  return v12;
}

- (id)actionWithOrder:(int64_t)order
{
  sortType = [(ICSortMenu *)self sortType];
  order = [sortType order];
  v7 = [ICFolderCustomNoteSortType actionItemTitleForOrder:order];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000A9598;
  v17 = &unk_100647F40;
  v20 = order;
  orderCopy = order;
  v18 = sortType;
  selfCopy = self;
  v8 = sortType;
  v9 = [UIAction actionWithTitle:v7 image:0 identifier:0 handler:&v14];
  order2 = [v8 order];
  v11 = order2 == order;
  if (order2 == order)
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

- (id)actionWithDirection:(int64_t)direction
{
  sortType = [(ICSortMenu *)self sortType];
  v6 = +[ICFolderCustomNoteSortType stringNameForDirection:order:](ICFolderCustomNoteSortType, "stringNameForDirection:order:", direction, [sortType order]);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A9764;
  v13[3] = &unk_100647F68;
  selfCopy = self;
  directionCopy = direction;
  v14 = sortType;
  v7 = sortType;
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v13];
  direction = [v7 direction];
  v10 = direction == direction;
  if (direction == direction)
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