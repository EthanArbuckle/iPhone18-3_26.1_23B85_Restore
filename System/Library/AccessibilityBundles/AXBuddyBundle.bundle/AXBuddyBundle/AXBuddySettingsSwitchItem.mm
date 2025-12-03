@interface AXBuddySettingsSwitchItem
- (AXBuddySettingsSwitchItem)initWithName:(id)name delegate:(id)delegate;
- (id)representativeCellForIndexPath:(id)path inTableView:(id)view;
- (void)registerCellClassWithTableView:(id)view;
@end

@implementation AXBuddySettingsSwitchItem

- (AXBuddySettingsSwitchItem)initWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = AXBuddySettingsSwitchItem;
  v8 = [(AXBuddySettingsSwitchItem *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = +[NSHashTable weakObjectsHashTable];
    extantCells = v8->_extantCells;
    v8->_extantCells = v11;

    objc_storeWeak(&v8->_delegate, delegateCopy);
  }

  return v8;
}

- (id)representativeCellForIndexPath:(id)path inTableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  reuseIdentifier = [(AXBuddySettingsSwitchItem *)self reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:pathCopy];

  name = self->_name;
  textLabel = [v9 textLabel];
  [textLabel setText:name];

  [v9 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v9 setSwitchValue:{objc_msgSend(WeakRetained, "currentSwitchValueForItem:", self)}];

  [(NSHashTable *)self->_extantCells addObject:v9];

  return v9;
}

- (void)registerCellClassWithTableView:(id)view
{
  viewCopy = view;
  cellClass = [(AXBuddySettingsSwitchItem *)self cellClass];
  reuseIdentifier = [(AXBuddySettingsSwitchItem *)self reuseIdentifier];
  [viewCopy registerClass:cellClass forCellReuseIdentifier:reuseIdentifier];
}

@end