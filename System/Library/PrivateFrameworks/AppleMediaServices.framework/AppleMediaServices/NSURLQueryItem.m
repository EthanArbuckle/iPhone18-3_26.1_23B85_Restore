@interface NSURLQueryItem
@end

@implementation NSURLQueryItem

id __63__NSURLQueryItem_AppleMediaServices__queryItemsFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
LABEL_6:
  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v8];
LABEL_11:
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:v7 value:v9];

  return v10;
}

@end