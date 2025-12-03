@interface UNTextInputNotificationAction
+ (UNTextInputNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options icon:(UNNotificationActionIcon *)icon textInputButtonTitle:(NSString *)textInputButtonTitle textInputPlaceholder:(NSString *)textInputPlaceholder;
+ (UNTextInputNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options textInputButtonTitle:(NSString *)textInputButtonTitle textInputPlaceholder:(NSString *)textInputPlaceholder;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation UNTextInputNotificationAction

+ (UNTextInputNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options icon:(UNNotificationActionIcon *)icon textInputButtonTitle:(NSString *)textInputButtonTitle textInputPlaceholder:(NSString *)textInputPlaceholder
{
  v14 = textInputPlaceholder;
  v15 = textInputButtonTitle;
  v16 = icon;
  v17 = title;
  v18 = identifier;
  v19 = [[self alloc] _initWithIdentifier:v18 title:v17 options:options textInputButtonTitle:v15 textInputPlaceholder:v14 url:0 icon:v16];

  return v19;
}

+ (UNTextInputNotificationAction)actionWithIdentifier:(NSString *)identifier title:(NSString *)title options:(UNNotificationActionOptions)options textInputButtonTitle:(NSString *)textInputButtonTitle textInputPlaceholder:(NSString *)textInputPlaceholder
{
  v12 = textInputPlaceholder;
  v13 = textInputButtonTitle;
  v14 = title;
  v15 = identifier;
  v16 = [[self alloc] _initWithIdentifier:v15 title:v14 options:options textInputButtonTitle:v13 textInputPlaceholder:v12 url:0 icon:0];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = UNTextInputNotificationAction;
  if ([(UNNotificationAction *)&v11 isEqual:equalCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textInputButtonTitle = [(UNNotificationAction *)self textInputButtonTitle];
      textInputButtonTitle2 = [equalCopy textInputButtonTitle];
      if (UNEqualObjects(textInputButtonTitle, textInputButtonTitle2))
      {
        textInputPlaceholder = [(UNNotificationAction *)self textInputPlaceholder];
        textInputPlaceholder2 = [equalCopy textInputPlaceholder];
        v9 = UNEqualObjects(textInputPlaceholder, textInputPlaceholder2);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  _description = [(UNNotificationAction *)self _description];
  textInputButtonTitle = [(UNNotificationAction *)self textInputButtonTitle];
  textInputPlaceholder = [(UNNotificationAction *)self textInputPlaceholder];
  v7 = [v3 stringWithFormat:@"%@, textInputButtonTitle: %@, textInputPlaceholder: %@>", _description, textInputButtonTitle, textInputPlaceholder];

  return v7;
}

@end