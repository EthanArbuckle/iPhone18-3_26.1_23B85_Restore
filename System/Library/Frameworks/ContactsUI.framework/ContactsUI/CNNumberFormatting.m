@interface CNNumberFormatting
+ (id)localizedStringWithInteger:(int64_t)a3;
@end

@implementation CNNumberFormatting

+ (id)localizedStringWithInteger:(int64_t)a3
{
  if (localizedStringWithInteger__cn_once_token_0 != -1)
  {
    dispatch_once(&localizedStringWithInteger__cn_once_token_0, &__block_literal_global_24015);
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = localizedStringWithInteger__cn_once_object_0;
  v6 = [v4 numberWithInteger:a3];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

void __49__CNNumberFormatting_localizedStringWithInteger___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v0 setLocale:v1];

  [v0 setNumberStyle:0];
  v2 = localizedStringWithInteger__cn_once_object_0;
  localizedStringWithInteger__cn_once_object_0 = v0;
}

@end