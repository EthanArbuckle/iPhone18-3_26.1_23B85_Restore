@interface AMSUserNotificationSettingsItem
- (AMSUserNotificationSettingsItem)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4;
- (AMSUserNotificationSettingsItem)initWithIdentifier:(id)a3 enabled:(BOOL)a4;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)updateDictionary;
- (id)description;
@end

@implementation AMSUserNotificationSettingsItem

- (AMSUserNotificationSettingsItem)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = AMSUserNotificationSettingsItem;
  v9 = [(AMSUserNotificationSettingsItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [v8 valueForKeyPath:@"data"];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v8 valueForKeyPath:@"data"];
      v10->_enabled = [v12 BOOLValue];
    }

    else
    {
      v10->_enabled = 0;
    }

    v13 = [v8 valueForKeyPath:@"dataUpdated"];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v8 valueForKeyPath:@"dataUpdated"];
      v10->_userChanged = [v14 BOOLValue];
    }

    else
    {
      v10->_userChanged = 0;
    }
  }

  return v10;
}

- (AMSUserNotificationSettingsItem)initWithIdentifier:(id)a3 enabled:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSUserNotificationSettingsItem;
  v8 = [(AMSUserNotificationSettingsItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_enabled = a4;
  }

  return v9;
}

- (id)description
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"itemId";
  v3 = [(AMSUserNotificationSettingsItem *)self identifier];
  v10[0] = v3;
  v9[1] = @"value";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationSettingsItem isEnabled](self, "isEnabled")}];
  v10[1] = v4;
  v9[2] = @"userChanged";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationSettingsItem userChanged](self, "userChanged")}];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [self ams_generateDescriptionWithSubObjects:v6];

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"data";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationSettingsItem isEnabled](self, "isEnabled")}];
  v7[1] = @"dataUpdated";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationSettingsItem userChanged](self, "userChanged")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (NSDictionary)updateDictionary
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"data";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotificationSettingsItem isEnabled](self, "isEnabled")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end