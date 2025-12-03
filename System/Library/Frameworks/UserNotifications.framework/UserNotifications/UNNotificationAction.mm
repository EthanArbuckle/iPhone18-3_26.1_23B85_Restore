@interface UNNotificationAction
+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options;
+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options icon:(UNNotificationActionIcon *)icon;
+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url;
+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url icon:(id)icon;
+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url options:(unint64_t)options;
+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url options:(unint64_t)options icon:(id)icon;
- (BOOL)isEqual:(id)equal;
- (UNNotificationAction)initWithCoder:(id)coder;
- (id)_description;
- (id)_initWithIdentifier:(id)identifier title:(id)title options:(unint64_t)options textInputButtonTitle:(id)buttonTitle textInputPlaceholder:(id)placeholder url:(id)url icon:(id)icon;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationAction

+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url
{
  urlCopy = url;
  titleCopy = title;
  identifierCopy = identifier;
  v11 = [[self alloc] _initWithIdentifier:identifierCopy title:titleCopy options:4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:urlCopy icon:0];

  return v11;
}

+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url icon:(id)icon
{
  iconCopy = icon;
  urlCopy = url;
  titleCopy = title;
  identifierCopy = identifier;
  v14 = [[self alloc] _initWithIdentifier:identifierCopy title:titleCopy options:4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:urlCopy icon:iconCopy];

  return v14;
}

+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url options:(unint64_t)options
{
  urlCopy = url;
  titleCopy = title;
  identifierCopy = identifier;
  v13 = [[self alloc] _initWithIdentifier:identifierCopy title:titleCopy options:options | 4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:urlCopy icon:0];

  return v13;
}

+ (UNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title url:(id)url options:(unint64_t)options icon:(id)icon
{
  iconCopy = icon;
  urlCopy = url;
  titleCopy = title;
  identifierCopy = identifier;
  v16 = [[self alloc] _initWithIdentifier:identifierCopy title:titleCopy options:options | 4 textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:urlCopy icon:iconCopy];

  return v16;
}

+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options
{
  v8 = title;
  v9 = identifier;
  v10 = [[self alloc] _initWithIdentifier:v9 title:v8 options:options textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:0 icon:0];

  return v10;
}

+ (UNNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options icon:(UNNotificationActionIcon *)icon
{
  v10 = icon;
  v11 = title;
  v12 = identifier;
  v13 = [[self alloc] _initWithIdentifier:v12 title:v11 options:options textInputButtonTitle:&stru_1F308F460 textInputPlaceholder:&stru_1F308F460 url:0 icon:v10];

  return v13;
}

- (id)_initWithIdentifier:(id)identifier title:(id)title options:(unint64_t)options textInputButtonTitle:(id)buttonTitle textInputPlaceholder:(id)placeholder url:(id)url icon:(id)icon
{
  identifierCopy = identifier;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  placeholderCopy = placeholder;
  urlCopy = url;
  iconCopy = icon;
  v35.receiver = self;
  v35.super_class = UNNotificationAction;
  v21 = [(UNNotificationAction *)&v35 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v21->_options = options;
    v24 = [titleCopy copy];
    title = v21->_title;
    v21->_title = v24;

    v26 = [buttonTitleCopy copy];
    textInputButtonTitle = v21->_textInputButtonTitle;
    v21->_textInputButtonTitle = v26;

    v28 = [placeholderCopy copy];
    textInputPlaceholder = v21->_textInputPlaceholder;
    v21->_textInputPlaceholder = v28;

    v30 = [urlCopy copy];
    url = v21->_url;
    v21->_url = v30;

    v32 = [iconCopy copy];
    icon = v21->_icon;
    v21->_icon = v32;
  }

  return v21;
}

- (unint64_t)hash
{
  identifier = [(UNNotificationAction *)self identifier];
  v4 = [identifier hash];
  v5 = [(UNNotificationAction *)self options]^ v4;
  title = [(UNNotificationAction *)self title];
  v7 = [title hash];
  textInputButtonTitle = [(UNNotificationAction *)self textInputButtonTitle];
  v9 = v5 ^ v7 ^ [textInputButtonTitle hash];
  textInputPlaceholder = [(UNNotificationAction *)self textInputPlaceholder];
  v11 = [textInputPlaceholder hash];
  v12 = [(UNNotificationAction *)self url];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(UNNotificationAction *)self identifier];
    identifier2 = [equalCopy identifier];
    if (UNEqualStrings(identifier, identifier2))
    {
      title = [(UNNotificationAction *)self title];
      title2 = [equalCopy title];
      if (UNEqualObjects(title, title2) && (v9 = -[UNNotificationAction options](self, "options"), v9 == [equalCopy options]))
      {
        v10 = [(UNNotificationAction *)self url];
        v11 = [equalCopy url];
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
  identifier = [(UNNotificationAction *)self identifier];
  title = [(UNNotificationAction *)self title];
  icon = [(UNNotificationAction *)self icon];
  [(UNNotificationAction *)self options];
  v8 = NSStringFromBOOL();
  [(UNNotificationAction *)self options];
  v9 = NSStringFromBOOL();
  [(UNNotificationAction *)self options];
  v10 = NSStringFromBOOL();
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: %@, title: %@, icon: %@, isAuthenticationRequired: %@, isDestructive: %@, isForeground: %@", v4, self, identifier, title, icon, v8, v9, v10];;

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  _description = [(UNNotificationAction *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", _description];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(UNNotificationAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[UNNotificationAction options](self forKey:{"options"), @"options"}];
  title = [(UNNotificationAction *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  textInputButtonTitle = [(UNNotificationAction *)self textInputButtonTitle];
  [coderCopy encodeObject:textInputButtonTitle forKey:@"textInputButtonTitle"];

  textInputPlaceholder = [(UNNotificationAction *)self textInputPlaceholder];
  [coderCopy encodeObject:textInputPlaceholder forKey:@"textInputPlaceholder"];

  v9 = [(UNNotificationAction *)self url];
  [coderCopy encodeObject:v9 forKey:@"url"];

  icon = [(UNNotificationAction *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];
}

- (UNNotificationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [v4 copy];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"title"];
  v10 = [v9 copy];

  v11 = [coderCopy decodeIntegerForKey:@"options"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"textInputButtonTitle"];
  v16 = [v15 copy];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"textInputPlaceholder"];
  v21 = [v20 copy];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v23 = [v22 copy];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];

  v25 = [v24 copy];
  v26 = [(UNNotificationAction *)self _initWithIdentifier:v5 title:v10 options:v11 textInputButtonTitle:v16 textInputPlaceholder:v21 url:v23 icon:v25];

  return v26;
}

@end