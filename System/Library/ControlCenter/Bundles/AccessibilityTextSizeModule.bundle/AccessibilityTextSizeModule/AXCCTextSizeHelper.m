@interface AXCCTextSizeHelper
- (AXCCTextSizeDelegate)delegate;
- (AXCCTextSizeHelper)init;
- (NSArray)appsIdentifiers;
- (NSArray)appsNames;
- (NSString)appName;
- (NSString)categoryName;
- (id)_selectedAppSafely;
- (void)_refreshForegroundAppInfo;
- (void)_refreshPerAppCategoryName;
- (void)_resetAllPerAppCategoryNames;
- (void)_setPerAppCategoryName:(id)a3;
- (void)_updateSavedAppID:(id)a3 categoryName:(id)a4;
- (void)refreshAppInfo;
- (void)refreshCategoryName;
- (void)setCategoryName:(id)a3;
- (void)setState:(int)a3;
@end

@implementation AXCCTextSizeHelper

- (AXCCTextSizeHelper)init
{
  v8.receiver = self;
  v8.super_class = AXCCTextSizeHelper;
  v2 = [(AXCCTextSizeHelper *)&v8 init];
  if (v2)
  {
    v3 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
    categoryName = v2->_categoryName;
    v2->_categoryName = v3;

    v5 = objc_opt_new();
    apps = v2->_apps;
    v2->_apps = v5;

    v2->_state = 3;
  }

  return v2;
}

- (NSString)categoryName
{
  if (self->_state == 3 || (-[AXCCTextSizeHelper _selectedAppSafely](self, "_selectedAppSafely"), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKey:@"categoryName"], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = self->_categoryName;
  }

  return v4;
}

- (void)setCategoryName:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_state == 3)
  {
    _AXSSetPreferredContentSizeCategoryName();
    objc_storeStrong(&self->_categoryName, a3);
  }

  else
  {
    [(AXCCTextSizeHelper *)self _setPerAppCategoryName:v5];
  }
}

- (void)setState:(int)a3
{
  if ([(AXCCTextSizeHelper *)self isPerAppAvailable]&& self->_state != a3)
  {
    self->_state = a3;
    if (a3 == 3)
    {
      [(AXCCTextSizeHelper *)self _resetAllPerAppCategoryNames];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained perAppTextSizeToggled];
  }
}

- (NSArray)appsNames
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_apps;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) valueForKey:{@"name", v11}];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)appsIdentifiers
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_apps;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) valueForKey:{@"appID", v11}];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)appName
{
  v2 = [(AXCCTextSizeHelper *)self _selectedAppSafely];
  v3 = [v2 objectForKey:@"name"];

  return v3;
}

- (void)refreshAppInfo
{
  v16 = *MEMORY[0x29EDCA608];
  [(AXCCTextSizeHelper *)self _refreshForegroundAppInfo];
  [(AXCCTextSizeHelper *)self _refreshPerAppCategoryName];
  self->_state = 3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_apps;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v11 + 1) + 8 * v8) valueForKey:{@"categoryName", v11}];

        if (v10)
        {
          self->_state = v9;
          goto LABEL_11;
        }

        ++v9;
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)refreshCategoryName
{
  [(AXCCTextSizeHelper *)self _refreshPerAppCategoryName];
  v3 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
  categoryName = self->_categoryName;
  self->_categoryName = v3;

  MEMORY[0x2A1C71028](v3, categoryName);
}

- (void)_refreshForegroundAppInfo
{
  v41[6] = *MEMORY[0x29EDCA608];
  [(NSMutableArray *)self->_apps removeAllObjects];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v2 = off_2A1798D10;
  v37 = off_2A1798D10;
  if (!off_2A1798D10)
  {
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 3221225472;
    v41[2] = sub_29C93D3F0;
    v41[3] = &unk_29F3353F0;
    v41[4] = &v34;
    sub_29C93D3F0(v41);
    v2 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v2)
  {
    sub_29C947134();
    __break(1u);
  }

  obj = v2();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v3)
  {
    v4 = *v31;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [v6 bundleIdentifier];
        if (v7 && [v6 isForeground])
        {
          v8 = [v6 bundleIdentifier];
          v9 = [(AXCCTextSizeHelper *)self _isHiddenBundleIdentifier:v8];

          if (v9)
          {
            continue;
          }

          v10 = objc_alloc(MEMORY[0x29EDB93F8]);
          v11 = [v6 bundleIdentifier];
          v29 = 0;
          v12 = [v10 initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v29];
          v7 = v29;

          v13 = [v12 localizedName];
          v14 = v13 == 0;

          if (v14)
          {
            v19 = AXLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_29C947078(v41, v7, (v41 + 4), v19);
            }
          }

          else
          {
            v15 = objc_alloc(MEMORY[0x29EDB8E00]);
            v16 = [v6 bundleIdentifier];
            v39[0] = v16;
            v17 = [v12 localizedName];
            v39[1] = v17;
            v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:v39 count:2];
            v19 = [v15 initWithObjects:v18 forKeys:&unk_2A23E30D0];

            [(NSMutableArray *)self->_apps addObject:v19];
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v3);
  }

  if (![(NSMutableArray *)self->_apps count])
  {
    v20 = objc_alloc(MEMORY[0x29EDB8E00]);
    v38[0] = @"com.apple.springboard";
    v21 = AXCCLocalizedString(@"home.screen");
    v38[1] = v21;
    v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:v38 count:2];
    v23 = [v20 initWithObjects:v22 forKeys:&unk_2A23E30E8];

    [(NSMutableArray *)self->_apps addObject:v23];
  }

  v24 = [MEMORY[0x29EDC7A58] currentDevice];
  if ([v24 userInterfaceIdiom])
  {
  }

  else
  {
    v25 = [(NSMutableArray *)self->_apps count]> 1;

    if (v25)
    {
      v26 = AXLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_29C9470F0(v26);
      }

      [(NSMutableArray *)self->_apps removeAllObjects];
    }
  }
}

- (void)_refreshPerAppCategoryName
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_apps;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 objectForKey:{@"appID", v10}];
        v9 = _AXSCopyPreferredContentSizeCategoryNameApp();
        if (v9)
        {
          [v7 setValue:v9 forKey:@"categoryName"];
        }

        else
        {
          [v7 removeObjectForKey:@"categoryName"];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)_selectedAppSafely
{
  v3 = [(NSMutableArray *)self->_apps count];
  if (v3)
  {
    state = self->_state;
    if (state == 3)
    {
      v3 = 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_apps count];
      if (v5 - 1 >= state)
      {
        v6 = state;
      }

      else
      {
        v6 = v5 - 1;
      }

      v3 = [(NSMutableArray *)self->_apps objectAtIndexedSubscript:v6];
    }
  }

  return v3;
}

- (void)_setPerAppCategoryName:(id)a3
{
  v7 = a3;
  v4 = [(AXCCTextSizeHelper *)self _selectedAppSafely];
  v5 = [v4 objectForKey:@"appID"];
  _AXSSetPreferredContentSizeCategoryNameApp();
  if (v7)
  {
    [v4 setValue:v7 forKey:@"categoryName"];
  }

  else
  {
    [v4 removeObjectForKey:@"categoryName"];
  }

  [(AXCCTextSizeHelper *)self _updateSavedAppID:v5 categoryName:v7];
  v6 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v6 aggregatePerAppSettingsStatistics];
}

- (void)_resetAllPerAppCategoryNames
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_apps;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"appID", v11}];
        _AXSSetPreferredContentSizeCategoryNameApp();
        [v8 removeObjectForKey:@"categoryName"];
        [(AXCCTextSizeHelper *)self _updateSavedAppID:v9 categoryName:0];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v10 aggregatePerAppSettingsStatistics];
}

- (void)_updateSavedAppID:(id)a3 categoryName:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    v6 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v7 = v6;
    if (v5)
    {
      [v6 addCustomizedAppID:v8];
    }

    else
    {
      [v6 removeCustomizedAppID:v8];
    }
  }
}

- (AXCCTextSizeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end