@interface UNNotificationAction
+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options;
+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options icon:(UNNotificationActionIcon *)icon;
+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5;
+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5 icon:(id)a6;
+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5 options:(unint64_t)a6;
+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5 options:(unint64_t)a6 icon:(id)a7;
- (BOOL)isEqual:(id)a3;
- (UNNotificationAction)initWithCoder:(id)a3;
- (id)_description;
- (id)_initWithIdentifier:(id)a3 title:(id)a4 options:(unint64_t)a5 textInputButtonTitle:(id)a6 textInputPlaceholder:(id)a7 url:(id)a8 icon:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationAction

+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithIdentifier:v10 title:v9 options:4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:v8 icon:0];

  return v11;
}

+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5 icon:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithIdentifier:v13 title:v12 options:4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:v11 icon:v10];

  return v14;
}

+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5 options:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] _initWithIdentifier:v12 title:v11 options:a6 | 4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:v10 icon:0];

  return v13;
}

+ (UNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 url:(id)a5 options:(unint64_t)a6 icon:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] _initWithIdentifier:v15 title:v14 options:a6 | 4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:v13 icon:v12];

  return v16;
}

+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options
{
  v8 = title;
  v9 = identifier;
  v10 = [[a1 alloc] _initWithIdentifier:v9 title:v8 options:options textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:0 icon:0];

  return v10;
}

+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options icon:(UNNotificationActionIcon *)icon
{
  v10 = icon;
  v11 = title;
  v12 = identifier;
  v13 = [[a1 alloc] _initWithIdentifier:v12 title:v11 options:options textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:0 icon:v10];

  return v13;
}

- (id)_initWithIdentifier:(id)a3 title:(id)a4 options:(unint64_t)a5 textInputButtonTitle:(id)a6 textInputPlaceholder:(id)a7 url:(id)a8 icon:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = UNNotificationAction;
  v21 = [(UNNotificationAction *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v21->_options = a5;
    v24 = [v16 copy];
    title = v21->_title;
    v21->_title = v24;

    v26 = [v17 copy];
    textInputButtonTitle = v21->_textInputButtonTitle;
    v21->_textInputButtonTitle = v26;

    v28 = [v18 copy];
    textInputPlaceholder = v21->_textInputPlaceholder;
    v21->_textInputPlaceholder = v28;

    v30 = [v19 copy];
    url = v21->_url;
    v21->_url = v30;

    v32 = [v20 copy];
    icon = v21->_icon;
    v21->_icon = v32;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(UNNotificationAction *)self identifier];
  v4 = [v3 hash];
  v5 = [(UNNotificationAction *)self options]^ v4;
  v6 = [(UNNotificationAction *)self title];
  v7 = [v6 hash];
  v8 = [(UNNotificationAction *)self textInputButtonTitle];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(UNNotificationAction *)self textInputPlaceholder];
  v11 = [v10 hash];
  v12 = [(UNNotificationAction *)self url];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationAction *)self identifier];
    v6 = [v4 identifier];
    if (UNEqualStrings(v5, v6))
    {
      v7 = [(UNNotificationAction *)self title];
      v8 = [v4 title];
      if (UNEqualObjects(v7, v8) && (v9 = -[UNNotificationAction options](self, "options"), v9 == [v4 options]))
      {
        v10 = [(UNNotificationAction *)self url];
        v11 = [v4 url];
        v12 = UNEqualObjects(v10, v11);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UNNotificationAction *)self identifier];
  v6 = [(UNNotificationAction *)self title];
  v7 = [(UNNotificationAction *)self icon];
  [(UNNotificationAction *)self options];
  v8 = NSStringFromBOOL();
  [(UNNotificationAction *)self options];
  v9 = NSStringFromBOOL();
  [(UNNotificationAction *)self options];
  v10 = NSStringFromBOOL();
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: %@, title: %@, icon: %@, isAuthenticationRequired: %@, isDestructive: %@, isForeground: %@", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(UNNotificationAction *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeInteger:-[UNNotificationAction options](self forKey:{"options"), @"options"}];
  v6 = [(UNNotificationAction *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(UNNotificationAction *)self textInputButtonTitle];
  [v4 encodeObject:v7 forKey:@"textInputButtonTitle"];

  v8 = [(UNNotificationAction *)self textInputPlaceholder];
  [v4 encodeObject:v8 forKey:@"textInputPlaceholder"];

  v9 = [(UNNotificationAction *)self url];
  [v4 encodeObject:v9 forKey:@"url"];

  v10 = [(UNNotificationAction *)self icon];
  [v4 encodeObject:v10 forKey:@"icon"];
}

- (UNNotificationAction)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [v4 copy];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"title"];
  v10 = [v9 copy];

  v11 = [v3 decodeIntegerForKey:@"options"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"textInputButtonTitle"];
  v16 = [v15 copy];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v3 decodeObjectOfClasses:v19 forKey:@"textInputPlaceholder"];
  v21 = [v20 copy];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v23 = [v22 copy];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];

  v25 = [v24 copy];
  v26 = [(UNNotificationAction *)self _initWithIdentifier:v5 title:v10 options:v11 textInputButtonTitle:v16 textInputPlaceholder:v21 url:v23 icon:v25];

  return v26;
}

@end