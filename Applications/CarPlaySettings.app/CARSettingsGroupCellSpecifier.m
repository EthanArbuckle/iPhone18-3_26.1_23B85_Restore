@interface CARSettingsGroupCellSpecifier
- (CARSettingsGroupCellSpecifier)initWithTitles:(id)a3 subtitles:(id)a4 actionBlock:(id)a5;
- (NSString)selectedTitle;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation CARSettingsGroupCellSpecifier

- (CARSettingsGroupCellSpecifier)initWithTitles:(id)a3 subtitles:(id)a4 actionBlock:(id)a5
{
  v8 = a3;
  v20 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = CARSettingsGroupCellSpecifier;
  v10 = [(CARSettingsGroupCellSpecifier *)&v26 init];
  v11 = v10;
  if (v10)
  {
    v10->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12 = objc_opt_new();
    if ([v8 count])
    {
      v13 = 0;
      do
      {
        v14 = [v8 objectAtIndexedSubscript:v13];
        v15 = [v20 objectAtIndexedSubscript:v13];
        objc_initWeak(&location, v11);
        v16 = [CARSettingsCellSpecifier alloc];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100021480;
        v21[3] = &unk_1000DB4F0;
        objc_copyWeak(&v23, &location);
        v24 = v13;
        v22 = v9;
        v17 = [(CARSettingsCellSpecifier *)v16 initWithTitle:v14 subtitle:v15 image:0 icon:0 accessoryType:0 actionBlock:v21];
        [(NSArray *)v12 addObject:v17];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);

        ++v13;
      }

      while ([v8 count] > v13);
    }

    groupSpecifiers = v11->_groupSpecifiers;
    v11->_groupSpecifiers = v12;

    [(CARSettingsGroupCellSpecifier *)v11 setSelectedIndex:0];
  }

  return v11;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex != a3)
  {
    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(CARSettingsGroupCellSpecifier *)self groupSpecifiers];
      v7 = [v6 objectAtIndexedSubscript:self->_selectedIndex];
      [v7 setAccessoryType:0];
    }

    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(CARSettingsGroupCellSpecifier *)self groupSpecifiers];
      v9 = [v8 objectAtIndexedSubscript:a3];
      [v9 setAccessoryType:3];
    }

    self->_selectedIndex = a3;
  }
}

- (NSString)selectedTitle
{
  if ([(CARSettingsGroupCellSpecifier *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_1000DE3D8;
  }

  else
  {
    v4 = [(CARSettingsGroupCellSpecifier *)self groupSpecifiers];
    v5 = [v4 objectAtIndexedSubscript:{-[CARSettingsGroupCellSpecifier selectedIndex](self, "selectedIndex")}];
    v3 = [v5 title];
  }

  return v3;
}

@end