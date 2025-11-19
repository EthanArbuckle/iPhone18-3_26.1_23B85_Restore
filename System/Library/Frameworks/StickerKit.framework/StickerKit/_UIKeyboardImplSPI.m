@interface _UIKeyboardImplSPI
+ (id)emojiKeyManager;
+ (void)insertEmojiImageTextAttachment:(id)a3;
+ (void)insertSticker:(id)a3;
+ (void)playInputClick;
+ (void)postEmojiSearchViewButtonConfigurationWillChangeNotification:(int64_t)a3;
@end

@implementation _UIKeyboardImplSPI

+ (void)playInputClick
{
  v2 = [MEMORY[0x1E69DCBE0] activeInstance];
  if (objc_opt_respondsToSelector())
  {
    [v2 playInputClick];
  }
}

+ (void)insertSticker:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCBE0];
  v4 = a3;
  v5 = [v3 activeInstance];
  v6 = [v5 delegateAsResponder];

  v7 = _SKIKeyboardLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_19A5EE000, v7, OS_LOG_TYPE_DEFAULT, "Inserting sticker into %@", &v11, 0xCu);
  }

  v10 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v10 insertSticker:v4];
}

+ (void)insertEmojiImageTextAttachment:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCBE0];
  v4 = a3;
  v5 = [v3 activeInstance];
  v6 = [v5 delegateAsResponder];

  v7 = _SKIKeyboardLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_19A5EE000, v7, OS_LOG_TYPE_DEFAULT, "Inserting emoji image text attachment into %@", &v11, 0xCu);
  }

  v10 = [MEMORY[0x1E69DCBE0] activeInstance];
  [v10 insertEmojiImageTextAttachment:v4];
}

+ (void)postEmojiSearchViewButtonConfigurationWillChangeNotification:(int64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"ButtonConfiguration";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"TUIEmojiSearchViewButtonConfigurationWillChangeNotification" object:0 userInfo:v4];
}

+ (id)emojiKeyManager
{
  v2 = objc_alloc_init(NSClassFromString(&cfstr_Uikeyboardemoj.isa));

  return v2;
}

@end