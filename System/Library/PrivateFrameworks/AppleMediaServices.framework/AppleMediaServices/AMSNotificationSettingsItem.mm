@interface AMSNotificationSettingsItem
- (AMSNotificationSettingsItem)initWithDictionaryRepresentation:(id)a3;
- (AMSNotificationSettingsItem)initWithTitle:(id)a3 description:(id)a4 identifier:(id)a5 enabled:(BOOL)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation AMSNotificationSettingsItem

- (AMSNotificationSettingsItem)initWithTitle:(id)a3 description:(id)a4 identifier:(id)a5 enabled:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = AMSNotificationSettingsItem;
  v14 = [(AMSNotificationSettingsItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_desc, a4);
    v15->_enabled = a6;
    objc_storeStrong(&v15->_identifier, a5);
    objc_storeStrong(&v15->_title, a3);
  }

  return v15;
}

- (AMSNotificationSettingsItem)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AMSNotificationSettingsItem;
  v5 = [(AMSNotificationSettingsItem *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"settingId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 objectForKeyedSubscript:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    desc = v5->_desc;
    v5->_desc = v13;

    v15 = [v4 valueForKeyPath:@"value.data"];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v4 valueForKeyPath:@"value.data"];
      v5->_enabled = [v16 BOOLValue];
    }

    else
    {
      v5->_enabled = 0;
    }

    v17 = [v4 valueForKeyPath:@"value.dataUpdated"];
    if (objc_opt_respondsToSelector())
    {
      v18 = [v4 valueForKeyPath:@"value.dataUpdated"];
      v5->_userChanged = [v18 BOOLValue];
    }

    else
    {
      v5->_userChanged = 0;
    }
  }

  return v5;
}

- (id)description
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"itemId";
  v3 = [(AMSNotificationSettingsItem *)self identifier];
  v12[0] = v3;
  v11[1] = @"title";
  v4 = [(AMSNotificationSettingsItem *)self title];
  v12[1] = v4;
  v11[2] = @"desc";
  v5 = [(AMSNotificationSettingsItem *)self desc];
  v12[2] = v5;
  v11[3] = @"value";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSNotificationSettingsItem isEnabled](self, "isEnabled")}];
  v12[3] = v6;
  v11[4] = @"userChanged";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSNotificationSettingsItem userChanged](self, "userChanged")}];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v9 = [self ams_generateDescriptionWithSubObjects:v8];

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"settingId";
  v3 = [(AMSNotificationSettingsItem *)self identifier];
  v7[1] = @"data";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSNotificationSettingsItem isEnabled](self, "isEnabled")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end