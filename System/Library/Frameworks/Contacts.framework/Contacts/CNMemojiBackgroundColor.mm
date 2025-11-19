@interface CNMemojiBackgroundColor
+ (id)log;
- (CNMemojiBackgroundColor)initWithColorDescription:(id)a3 alpha:(double)a4;
- (CNMemojiBackgroundColor)initWithDefaultColorWithAlpha:(double)a3;
- (CNMemojiBackgroundColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation CNMemojiBackgroundColor

+ (id)log
{
  if (log_cn_once_token_0_19 != -1)
  {
    +[CNMemojiBackgroundColor log];
  }

  v3 = log_cn_once_object_0_19;

  return v3;
}

uint64_t __30__CNMemojiBackgroundColor_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNMemojiBackgroundColor");
  v1 = log_cn_once_object_0_19;
  log_cn_once_object_0_19 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNMemojiBackgroundColor)initWithColorDescription:(id)a3 alpha:(double)a4
{
  v6 = a3;
  if (v6)
  {
    if (initWithColorDescription_alpha__cn_once_token_2 != -1)
    {
      [CNMemojiBackgroundColor initWithColorDescription:alpha:];
    }

    v7 = initWithColorDescription_alpha__cn_once_object_2;
    v8 = [v6 componentsSeparatedByString:@":"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__CNMemojiBackgroundColor_initWithColorDescription_alpha___block_invoke_2;
    v23[3] = &unk_1E7417448;
    v9 = v7;
    v24 = v9;
    v10 = [v8 _cn_compactMap:v23];

    if ([v10 count] == 3)
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      [v11 doubleValue];
      v13 = v12;
      v14 = [v10 objectAtIndexedSubscript:1];
      [v14 doubleValue];
      v16 = v15;
      v17 = [v10 objectAtIndexedSubscript:2];
      [v17 doubleValue];
      v19 = [(CNMemojiBackgroundColor *)self initWithRed:v13 green:v16 blue:v18 alpha:a4];
    }

    else
    {
      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CNMemojiBackgroundColor initWithColorDescription:v6 alpha:v21];
      }

      v19 = [(CNMemojiBackgroundColor *)self initWithDefaultColorWithAlpha:a4];
    }
  }

  else
  {
    v20 = [objc_opt_class() log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CNMemojiBackgroundColor initWithColorDescription:v20 alpha:?];
    }

    v19 = [(CNMemojiBackgroundColor *)self initWithDefaultColorWithAlpha:a4];
  }

  return v19;
}

void __58__CNMemojiBackgroundColor_initWithColorDescription_alpha___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v0 setLocale:v1];

  [v0 setNumberStyle:1];
  v2 = initWithColorDescription_alpha__cn_once_object_2;
  initWithColorDescription_alpha__cn_once_object_2 = v0;
}

- (CNMemojiBackgroundColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v14.receiver = self;
  v14.super_class = CNMemojiBackgroundColor;
  v10 = [(CNMemojiBackgroundColor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_red = a3;
    v10->_green = a4;
    v10->_blue = a5;
    v10->_alpha = a6;
    v12 = v10;
  }

  return v11;
}

- (CNMemojiBackgroundColor)initWithDefaultColorWithAlpha:(double)a3
{
  v8.receiver = self;
  v8.super_class = CNMemojiBackgroundColor;
  v4 = [(CNMemojiBackgroundColor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = vdupq_n_s64(0x4061C00000000000uLL);
    *(v4 + 3) = 0x4062600000000000;
    *(v4 + 4) = a3;
    v6 = v4;
  }

  return v5;
}

- (void)initWithColorDescription:(uint64_t)a1 alpha:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Color description format should be r:g:b, got description: %@", &v2, 0xCu);
}

@end