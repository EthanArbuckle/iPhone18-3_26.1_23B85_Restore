@interface AXBuddySettingsSwitchItem
- (AXBuddySettingsSwitchItem)initWithName:(id)a3 delegate:(id)a4;
- (id)representativeCellForIndexPath:(id)a3 inTableView:(id)a4;
- (void)registerCellClassWithTableView:(id)a3;
@end

@implementation AXBuddySettingsSwitchItem

- (AXBuddySettingsSwitchItem)initWithName:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AXBuddySettingsSwitchItem;
  v8 = [(AXBuddySettingsSwitchItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = +[NSHashTable weakObjectsHashTable];
    extantCells = v8->_extantCells;
    v8->_extantCells = v11;

    objc_storeWeak(&v8->_delegate, v7);
  }

  return v8;
}

- (id)representativeCellForIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXBuddySettingsSwitchItem *)self reuseIdentifier];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v7];

  name = self->_name;
  v11 = [v9 textLabel];
  [v11 setText:name];

  [v9 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v9 setSwitchValue:{objc_msgSend(WeakRetained, "currentSwitchValueForItem:", self)}];

  [(NSHashTable *)self->_extantCells addObject:v9];

  return v9;
}

- (void)registerCellClassWithTableView:(id)a3
{
  v4 = a3;
  v5 = [(AXBuddySettingsSwitchItem *)self cellClass];
  v6 = [(AXBuddySettingsSwitchItem *)self reuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];
}

@end