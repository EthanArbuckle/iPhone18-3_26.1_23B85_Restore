@interface MTSettingsController
- (BOOL)isEnabledForGroupWithIdentifier:(id)a3;
- (MTSettingsControllerDelegate)delegate;
- (void)addGroup:(id)a3 withIdentifier:(id)a4 atIndex:(unint64_t)a5;
- (void)reloadGroupWithIdentifier:(id)a3;
- (void)removeGroupWithIdentifier:(id)a3;
- (void)removeSettingAtIndex:(unint64_t)a3 fromGroupWithIdentifier:(id)a4;
- (void)setEnabled:(BOOL)a3 forGroupWithIdentifier:(id)a4;
- (void)setHeaderAction:(id)a3 forGroupWithIdentifier:(id)a4;
- (void)setValue:(id)a3 forSettingWithIdentifier:(id)a4 inGroup:(id)a5;
@end

@implementation MTSettingsController

- (void)reloadGroupWithIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(MTSettingsController *)self groups];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (v5)
  {
    v6 = [v5 settingsHandler];

    if (v6)
    {
      [v5 setGroupSettings:0];
    }

    v7 = [(MTSettingsController *)self delegate];
    [v7 settingsController:self reloadedGroupWithIdentifier:v8];
  }
}

- (BOOL)isEnabledForGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTSettingsController *)self disabledGroups];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

- (void)setEnabled:(BOOL)a3 forGroupWithIdentifier:(id)a4
{
  v4 = a3;
  v11 = a4;
  if ([(MTSettingsController *)self isEnabledForGroupWithIdentifier:?]!= v4)
  {
    disabledGroups = self->_disabledGroups;
    if (v4)
    {
      [(NSMutableSet *)disabledGroups removeObject:v11];
    }

    else
    {
      v7 = v11;
      if (!disabledGroups)
      {
        v8 = +[NSMutableSet set];
        v9 = self->_disabledGroups;
        self->_disabledGroups = v8;

        v7 = v11;
        disabledGroups = self->_disabledGroups;
      }

      [(NSMutableSet *)disabledGroups addObject:v7];
    }

    v10 = [(MTSettingsController *)self delegate];
    [v10 settingsController:self reloadedGroupWithIdentifier:v11];
  }
}

- (void)setHeaderAction:(id)a3 forGroupWithIdentifier:(id)a4
{
  groups = self->_groups;
  v7 = a4;
  v8 = a3;
  v10 = [(NSDictionary *)groups objectForKeyedSubscript:v7];
  [v10 setHeaderAction:v8];
  v9 = [(MTSettingsController *)self delegate];
  [v9 settingsController:self didChangeHeaderAction:v8 inGroupWithIdentifier:v7];
}

- (void)addGroup:(id)a3 withIdentifier:(id)a4 atIndex:(unint64_t)a5
{
  order = self->_order;
  v9 = a4;
  v10 = a3;
  v13 = [(NSArray *)order mutableCopy];
  [v13 insertObject:v9 atIndex:a5];
  [(MTSettingsController *)self setOrder:v13];
  v11 = [(NSDictionary *)self->_groups mutableCopy];
  [v11 setObject:v10 forKey:v9];

  [(MTSettingsController *)self setGroups:v11];
  v12 = [(MTSettingsController *)self delegate];
  [v12 settingsController:self addedGroup:v10 atIndex:a5];
}

- (void)removeGroupWithIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(NSArray *)self->_order mutableCopy];
  v5 = [v4 indexOfObject:v9];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [v4 removeObject:v9];
    [(MTSettingsController *)self setOrder:v4];
    v7 = [(NSDictionary *)self->_groups mutableCopy];
    [v7 removeObjectForKey:v9];
    [(MTSettingsController *)self setGroups:v7];
    v8 = [(MTSettingsController *)self delegate];
    [v8 settingsController:self removedGroupAtIndex:v6];
  }
}

- (void)removeSettingAtIndex:(unint64_t)a3 fromGroupWithIdentifier:(id)a4
{
  groups = self->_groups;
  v7 = a4;
  v11 = [(NSDictionary *)groups objectForKeyedSubscript:v7];
  v8 = [v11 groupSettings];
  v9 = [v8 mutableCopy];

  [v9 removeObjectAtIndex:a3];
  [v11 setGroupSettings:v9];
  v10 = [(MTSettingsController *)self delegate];
  [v10 settingsController:self removedSettingAtIndex:a3 inGroupWithIdentifier:v7];
}

- (void)setValue:(id)a3 forSettingWithIdentifier:(id)a4 inGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSDictionary *)self->_groups objectForKeyedSubscript:v10];
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
  v12 = [v11 groupSettings];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100123F40;
  v16[3] = &unk_1004DD228;
  v13 = v9;
  v17 = v13;
  v18 = &v24;
  v19 = &v20;
  [v12 enumerateObjectsUsingBlock:v16];

  v14 = v25[5];
  if (v14)
  {
    [v14 setValue:v8];
    v15 = [(MTSettingsController *)self delegate];
    [v15 settingsController:self didChangeSettingValueAtIndex:v21[3] inGroupWithIdentifier:v10];
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