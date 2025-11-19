@interface UIImage
+ (id)_pk_UCBButtonImage;
+ (id)_pk_closeButtonImage;
+ (id)_pk_ellipsisButtonImage;
+ (id)_pk_emojiButtonImage;
+ (id)_pk_keyboardButtonImage;
+ (id)_pk_plusButtonImage;
+ (id)_pk_redoButtonImage;
+ (id)_pk_returnKeyButtonImage;
+ (id)_pk_shapeButtonImage;
+ (id)_pk_textButtonImage;
+ (id)_pk_undoButtonImage;
@end

@implementation UIImage

+ (id)_pk_undoButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"arrow.uturn.backward" withConfiguration:v1];

  return v2;
}

+ (id)_pk_redoButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"arrow.uturn.forward" withConfiguration:v1];

  return v2;
}

+ (id)_pk_ellipsisButtonImage
{
  v0 = objc_opt_self();
  v1 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:2 scale:17.0];
  v2 = [v0 systemImageNamed:@"ellipsis" withConfiguration:v1];

  return v2;
}

+ (id)_pk_plusButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"plus" withConfiguration:v1];

  return v2;
}

+ (id)_pk_UCBButtonImage
{
  v0 = objc_opt_self();
  v1 = MEMORY[0x1E69DCAD8];
  if (qword_1ED6A4FE0 != -1)
  {
    dispatch_once(&qword_1ED6A4FE0, &__block_literal_global_13);
  }

  v2 = [v1 configurationWithPointSize:6 weight:1 scale:*&_MergedGlobals_123];
  v3 = [v0 systemImageNamed:@"keyboard.badge.ellipsis" withConfiguration:v2];

  return v3;
}

+ (id)_pk_keyboardButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"keyboard" withConfiguration:v1];

  return v2;
}

+ (id)_pk_emojiButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"smiley" withConfiguration:v1];

  return v2;
}

+ (id)_pk_returnKeyButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"return" withConfiguration:v1];

  return v2;
}

+ (id)_pk_textButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"character.textbox" withConfiguration:v1];

  return v2;
}

+ (id)_pk_shapeButtonImage
{
  v0 = objc_opt_self();
  v1 = +[UIImageSymbolConfiguration _pk_defaultImageSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"square.on.circle" withConfiguration:v1];

  return v2;
}

+ (id)_pk_closeButtonImage
{
  v0 = objc_opt_self();
  v1 = MEMORY[0x1E69DCAD8];
  if (qword_1ED6A4FE0 != -1)
  {
    dispatch_once(&qword_1ED6A4FE0, &__block_literal_global_13);
  }

  v2 = [v1 configurationWithPointSize:6 weight:1 scale:*&_MergedGlobals_123];
  v3 = [v0 systemImageNamed:@"xmark" withConfiguration:v2];

  return v3;
}

@end