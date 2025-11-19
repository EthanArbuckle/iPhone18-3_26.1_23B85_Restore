@interface CPActionSheetTemplate
- (CPActionSheetTemplate)initWithCoder:(id)a3;
- (CPActionSheetTemplate)initWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray *)actions;
- (void)encodeWithCoder:(id)a3;
- (void)handleAlertActionForIdentifier:(id)a3;
@end

@implementation CPActionSheetTemplate

- (CPActionSheetTemplate)initWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray *)actions
{
  v9 = title;
  v10 = message;
  v11 = actions;
  v21.receiver = self;
  v21.super_class = CPActionSheetTemplate;
  v12 = [(CPTemplate *)&v21 init];
  if (v12)
  {
    v13 = [(NSString *)v9 copy];
    v14 = v12->_title;
    v12->_title = v13;

    v15 = [(NSString *)v10 copy];
    v16 = v12->_message;
    v12->_message = v15;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__CPActionSheetTemplate_initWithTitle_message_actions___block_invoke;
    v20[3] = &__block_descriptor_40_e30_v32__0__CPAlertAction_8Q16_B24l;
    v20[4] = a2;
    [(NSArray *)v11 enumerateObjectsUsingBlock:v20];
    if ([(NSArray *)v11 count]> 3)
    {
      v17 = [(NSArray *)v11 subarrayWithRange:0, 3];
    }

    else
    {
      v17 = v11;
    }

    v18 = v12->_actions;
    v12->_actions = v17;
  }

  return v12;
}

void __55__CPActionSheetTemplate_initWithTitle_message_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v11 = v6;
  if (([v7 containsObject:object_getClass(v11)] & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = NSStringFromSelector(v5);
    [v8 raise:v9 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v11, v10, v7, 0}];
  }
}

- (CPActionSheetTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPActionSheetTemplate;
  v5 = [(CPTemplate *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPActionSheetTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPActionSheetMessage"];
    message = v5->_message;
    v5->_message = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"CPActionSheetActions"];
    actions = v5->_actions;
    v5->_actions = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CPActionSheetTemplate;
  v4 = a3;
  [(CPTemplate *)&v8 encodeWithCoder:v4];
  v5 = [(CPActionSheetTemplate *)self title:v8.receiver];
  [v4 encodeObject:v5 forKey:@"CPActionSheetTitle"];

  v6 = [(CPActionSheetTemplate *)self message];
  [v4 encodeObject:v6 forKey:@"CPActionSheetMessage"];

  v7 = [(CPActionSheetTemplate *)self actions];
  [v4 encodeObject:v7 forKey:@"CPActionSheetActions"];
}

- (void)handleAlertActionForIdentifier:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = [(CPActionSheetTemplate *)self actions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__CPActionSheetTemplate_handleAlertActionForIdentifier___block_invoke;
  v13[3] = &unk_278A104B8;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  [v5 enumerateObjectsUsingBlock:v13];

  v7 = [v17[5] handler];

  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CPActionSheetTemplate_handleAlertActionForIdentifier___block_invoke_2;
    block[3] = &unk_278A104E0;
    block[4] = &v16;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v8 = [(CPTemplate *)self templateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CPTemplate *)self templateDelegate];
    v11 = [(CPTemplate *)self identifier];
    [v10 templateDidDismissWithIdentifier:v11];
  }

  _Block_object_dispose(&v16, 8);
}

void __56__CPActionSheetTemplate_handleAlertActionForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __56__CPActionSheetTemplate_handleAlertActionForIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) handler];
  v2[2](v2, *(*(*(a1 + 32) + 8) + 40));
}

@end