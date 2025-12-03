@interface NSArray(PhotosUI)
- (id)ph_arrayDescriptionWithIndentation:()PhotosUI objectDescription:;
@end

@implementation NSArray(PhotosUI)

- (id)ph_arrayDescriptionWithIndentation:()PhotosUI objectDescription:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [&stru_1F4DA4820 stringByPaddingToLength:a3 withString:@"\t" startingAtIndex:0];
        v14 = v6[2](v6, v12);
        [v7 appendFormat:@"\n%@%@", v13, v14];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ([obj count])
  {
    if (a3)
    {
      v15 = a3 - 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = [&stru_1F4DA4820 stringByPaddingToLength:v15 withString:@"\t" startingAtIndex:0];
    [v7 appendFormat:@"\n%@", v16];
  }

  [v7 appendString:@""]);

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

@end