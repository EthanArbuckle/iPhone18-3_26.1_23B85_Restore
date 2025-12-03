@interface CARSettingsGroupCellSpecifier
- (CARSettingsGroupCellSpecifier)initWithTitles:(id)titles subtitles:(id)subtitles actionBlock:(id)block;
- (NSString)selectedTitle;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation CARSettingsGroupCellSpecifier

- (CARSettingsGroupCellSpecifier)initWithTitles:(id)titles subtitles:(id)subtitles actionBlock:(id)block
{
  titlesCopy = titles;
  subtitlesCopy = subtitles;
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = CARSettingsGroupCellSpecifier;
  v10 = [(CARSettingsGroupCellSpecifier *)&v26 init];
  v11 = v10;
  if (v10)
  {
    v10->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12 = objc_opt_new();
    if ([titlesCopy count])
    {
      v13 = 0;
      do
      {
        v14 = [titlesCopy objectAtIndexedSubscript:v13];
        v15 = [subtitlesCopy objectAtIndexedSubscript:v13];
        objc_initWeak(&location, v11);
        v16 = [CARSettingsCellSpecifier alloc];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100021480;
        v21[3] = &unk_1000DB4F0;
        objc_copyWeak(&v23, &location);
        v24 = v13;
        v22 = blockCopy;
        v17 = [(CARSettingsCellSpecifier *)v16 initWithTitle:v14 subtitle:v15 image:0 icon:0 accessoryType:0 actionBlock:v21];
        [(NSArray *)v12 addObject:v17];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);

        ++v13;
      }

      while ([titlesCopy count] > v13);
    }

    groupSpecifiers = v11->_groupSpecifiers;
    v11->_groupSpecifiers = v12;

    [(CARSettingsGroupCellSpecifier *)v11 setSelectedIndex:0];
  }

  return v11;
}

- (void)setSelectedIndex:(unint64_t)index
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex != index)
  {
    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      groupSpecifiers = [(CARSettingsGroupCellSpecifier *)self groupSpecifiers];
      v7 = [groupSpecifiers objectAtIndexedSubscript:self->_selectedIndex];
      [v7 setAccessoryType:0];
    }

    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      groupSpecifiers2 = [(CARSettingsGroupCellSpecifier *)self groupSpecifiers];
      v9 = [groupSpecifiers2 objectAtIndexedSubscript:index];
      [v9 setAccessoryType:3];
    }

    self->_selectedIndex = index;
  }
}

- (NSString)selectedTitle
{
  if ([(CARSettingsGroupCellSpecifier *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    title = &stru_1000DE3D8;
  }

  else
  {
    groupSpecifiers = [(CARSettingsGroupCellSpecifier *)self groupSpecifiers];
    v5 = [groupSpecifiers objectAtIndexedSubscript:{-[CARSettingsGroupCellSpecifier selectedIndex](self, "selectedIndex")}];
    title = [v5 title];
  }

  return title;
}

@end