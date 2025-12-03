@interface AMSNotificationSettingsSection
- (AMSNotificationSettingsSection)initWithDictionaryRepresentation:(id)representation;
- (AMSNotificationSettingsSection)initWithTitle:(id)title footer:(id)footer items:(id)items;
- (id)description;
@end

@implementation AMSNotificationSettingsSection

- (AMSNotificationSettingsSection)initWithTitle:(id)title footer:(id)footer items:(id)items
{
  titleCopy = title;
  footerCopy = footer;
  itemsCopy = items;
  v15.receiver = self;
  v15.super_class = AMSNotificationSettingsSection;
  v12 = [(AMSNotificationSettingsSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_footer, footer);
    objc_storeStrong(&v13->_items, items);
  }

  return v13;
}

- (AMSNotificationSettingsSection)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = AMSNotificationSettingsSection;
  v5 = [(AMSNotificationSettingsSection *)&v19 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"disclaimer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    footer = v5->_footer;
    v5->_footer = v7;

    v9 = [representationCopy objectForKeyedSubscript:@"sectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"settings"];
    v13 = [v12 ams_mapWithTransformIgnoresNil:&__block_literal_global_107];
    items = v5->_items;
    v5->_items = v13;

    v15 = [representationCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    title = v5->_title;
    v5->_title = v16;
  }

  return v5;
}

AMSNotificationSettingsItem *__67__AMSNotificationSettingsSection_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSNotificationSettingsItem alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (id)description
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"sectionId";
  identifier = [(AMSNotificationSettingsSection *)self identifier];
  v11[0] = identifier;
  v10[1] = @"title";
  title = [(AMSNotificationSettingsSection *)self title];
  v11[1] = title;
  v10[2] = @"footer";
  footer = [(AMSNotificationSettingsSection *)self footer];
  v11[2] = footer;
  v10[3] = @"items";
  items = [(AMSNotificationSettingsSection *)self items];
  v11[3] = items;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [self ams_generateDescriptionWithSubObjects:v7];

  return v8;
}

@end