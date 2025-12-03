@interface MTSettingsController
- (BOOL)isEnabledForGroupWithIdentifier:(id)identifier;
- (MTSettingsControllerDelegate)delegate;
- (void)addGroup:(id)group withIdentifier:(id)identifier atIndex:(unint64_t)index;
- (void)reloadGroupWithIdentifier:(id)identifier;
- (void)removeGroupWithIdentifier:(id)identifier;
- (void)removeSettingAtIndex:(unint64_t)index fromGroupWithIdentifier:(id)identifier;
- (void)setEnabled:(BOOL)enabled forGroupWithIdentifier:(id)identifier;
- (void)setHeaderAction:(id)action forGroupWithIdentifier:(id)identifier;
- (void)setValue:(id)value forSettingWithIdentifier:(id)identifier inGroup:(id)group;
@end

@implementation MTSettingsController

- (void)reloadGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  groups = [(MTSettingsController *)self groups];
  v5 = [groups objectForKeyedSubscript:identifierCopy];

  if (v5)
  {
    settingsHandler = [v5 settingsHandler];

    if (settingsHandler)
    {
      [v5 setGroupSettings:0];
    }

    delegate = [(MTSettingsController *)self delegate];
    [delegate settingsController:self reloadedGroupWithIdentifier:identifierCopy];
  }
}

- (BOOL)isEnabledForGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  disabledGroups = [(MTSettingsController *)self disabledGroups];
  v6 = [disabledGroups containsObject:identifierCopy];

  return v6 ^ 1;
}

- (void)setEnabled:(BOOL)enabled forGroupWithIdentifier:(id)identifier
{
  enabledCopy = enabled;
  identifierCopy = identifier;
  if ([(MTSettingsController *)self isEnabledForGroupWithIdentifier:?]!= enabledCopy)
  {
    disabledGroups = self->_disabledGroups;
    if (enabledCopy)
    {
      [(NSMutableSet *)disabledGroups removeObject:identifierCopy];
    }

    else
    {
      v7 = identifierCopy;
      if (!disabledGroups)
      {
        v8 = +[NSMutableSet set];
        v9 = self->_disabledGroups;
        self->_disabledGroups = v8;

        v7 = identifierCopy;
        disabledGroups = self->_disabledGroups;
      }

      [(NSMutableSet *)disabledGroups addObject:v7];
    }

    delegate = [(MTSettingsController *)self delegate];
    [delegate settingsController:self reloadedGroupWithIdentifier:identifierCopy];
  }
}

- (void)setHeaderAction:(id)action forGroupWithIdentifier:(id)identifier
{
  groups = self->_groups;
  identifierCopy = identifier;
  actionCopy = action;
  v10 = [(NSDictionary *)groups objectForKeyedSubscript:identifierCopy];
  [v10 setHeaderAction:actionCopy];
  delegate = [(MTSettingsController *)self delegate];
  [delegate settingsController:self didChangeHeaderAction:actionCopy inGroupWithIdentifier:identifierCopy];
}

- (void)addGroup:(id)group withIdentifier:(id)identifier atIndex:(unint64_t)index
{
  order = self->_order;
  identifierCopy = identifier;
  groupCopy = group;
  v13 = [(NSArray *)order mutableCopy];
  [v13 insertObject:identifierCopy atIndex:index];
  [(MTSettingsController *)self setOrder:v13];
  v11 = [(NSDictionary *)self->_groups mutableCopy];
  [v11 setObject:groupCopy forKey:identifierCopy];

  [(MTSettingsController *)self setGroups:v11];
  delegate = [(MTSettingsController *)self delegate];
  [delegate settingsController:self addedGroup:groupCopy atIndex:index];
}

- (void)removeGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSArray *)self->_order mutableCopy];
  v5 = [v4 indexOfObject:identifierCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [v4 removeObject:identifierCopy];
    [(MTSettingsController *)self setOrder:v4];
    v7 = [(NSDictionary *)self->_groups mutableCopy];
    [v7 removeObjectForKey:identifierCopy];
    [(MTSettingsController *)self setGroups:v7];
    delegate = [(MTSettingsController *)self delegate];
    [delegate settingsController:self removedGroupAtIndex:v6];
  }
}

- (void)removeSettingAtIndex:(unint64_t)index fromGroupWithIdentifier:(id)identifier
{
  groups = self->_groups;
  identifierCopy = identifier;
  v11 = [(NSDictionary *)groups objectForKeyedSubscript:identifierCopy];
  groupSettings = [v11 groupSettings];
  v9 = [groupSettings mutableCopy];

  [v9 removeObjectAtIndex:index];
  [v11 setGroupSettings:v9];
  delegate = [(MTSettingsController *)self delegate];
  [delegate settingsController:self removedSettingAtIndex:index inGroupWithIdentifier:identifierCopy];
}

- (void)setValue:(id)value forSettingWithIdentifier:(id)identifier inGroup:(id)group
{
  valueCopy = value;
  identifierCopy = identifier;
  groupCopy = group;
  v11 = [(NSDictionary *)self->_groups objectForKeyedSubscript:groupCopy];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100008B4C;
  v28 = sub_10003B57C;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  groupSettings = [v11 groupSettings];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100123F40;
  v16[3] = &unk_1004DD228;
  v13 = identifierCopy;
  v17 = v13;
  v18 = &v24;
  v19 = &v20;
  [groupSettings enumerateObjectsUsingBlock:v16];

  v14 = v25[5];
  if (v14)
  {
    [v14 setValue:valueCopy];
    delegate = [(MTSettingsController *)self delegate];
    [delegate settingsController:self didChangeSettingValueAtIndex:v21[3] inGroupWithIdentifier:groupCopy];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

- (MTSettingsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end