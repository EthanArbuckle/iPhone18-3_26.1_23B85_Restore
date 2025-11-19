@interface MapsSettingsIntentsApplication
+ (id)applicationsFromExtensions:(id)a3;
- (MapsSettingsIntentsApplication)initWithExtension:(id)a3;
- (void)addExtension:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation MapsSettingsIntentsApplication

- (MapsSettingsIntentsApplication)initWithExtension:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MapsSettingsIntentsApplication;
  v5 = [(MapsSettingsIntentsApplication *)&v19 init];
  if (v5)
  {
    v6 = [v4 _containingAppIdentifer];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5->_identifier allowPlaceholder:0 error:0];
    v9 = [v8 localizedName];
    v10 = [v9 copy];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    if (!v5->_displayName)
    {
      v12 = [v4 displayName];
      v13 = v5->_displayName;
      v5->_displayName = v12;
    }

    v14 = [v4 _iconWithFormat:0];
    displayImage = v5->_displayImage;
    v5->_displayImage = v14;

    v16 = objc_opt_new();
    extensions = v5->_extensions;
    v5->_extensions = v16;

    [(NSMutableArray *)v5->_extensions addObject:v4];
    v5->_enabled = [v4 isEnabled];
  }

  return v5;
}

+ (id)applicationsFromExtensions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 _containingAppIdentifer];
        if (v11)
        {
          v12 = [v4 valueForKey:v11];
          v13 = v12;
          if (v12)
          {
            [v12 addExtension:v10];
          }

          else
          {
            v14 = [[MapsSettingsIntentsApplication alloc] initWithExtension:v10];
            [(MapsSettingsIntentsApplication *)v14 addExtension:v10];
            [v4 setValue:v14 forKey:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 allValues];

  return v15;
}

- (void)addExtension:(id)a3
{
  v6 = a3;
  v4 = [v6 _containingAppIdentifer];
  v5 = [v4 isEqualToString:self->_identifier];

  if (v5)
  {
    if (self->_enabled != [v6 isEnabled])
    {
      NSLog(@"Discrepency in enabling of extensions for application: %@", self->_identifier);
      [v6 _setEnabled:self->_enabled error:0];
    }

    [(NSMutableArray *)self->_extensions addObject:v6];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v3 = a3;
    self->_enabled = a3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_extensions;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v12 = 0;
          [v9 _setEnabled:v3 error:&v12];
          v10 = v12;
          if (v10)
          {
            v11 = [v9 identifier];
            NSLog(@"Error Enabling Extension: %@", v11);
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

@end