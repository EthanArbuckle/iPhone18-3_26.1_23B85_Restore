@interface LPiTunesMediaLookupItemArtwork
+ (id)colorForColorKind:(id)a3 inColorDictionary:(id)a4;
- (LPiTunesMediaLookupItemArtwork)initWithDictionary:(id)a3;
- (id)URLWithHeight:(int64_t)a3 width:(int64_t)a4 cropStyle:(id)a5 format:(id)a6;
- (id)colors;
- (int64_t)height;
- (int64_t)width;
@end

@implementation LPiTunesMediaLookupItemArtwork

- (LPiTunesMediaLookupItemArtwork)initWithDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LPiTunesMediaLookupItemArtwork;
  v6 = [(LPiTunesMediaLookupItemArtwork *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    v8 = v7;
  }

  return v7;
}

- (int64_t)height
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"height"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)width
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"width"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)colors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15[0] = @"bgColor";
  v15[1] = @"textColor1";
  v15[2] = @"textColor2";
  v15[3] = @"textColor3";
  v15[4] = @"textColor4";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{5, 0}];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_dictionary objectForKey:v8];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v3 setObject:v9 forKey:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)URLWithHeight:(int64_t)a3 width:(int64_t)a4 cropStyle:(id)a5 format:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"url"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__1;
    v17[4] = __Block_byref_object_dispose__1;
    v18 = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__LPiTunesMediaLookupItemArtwork_URLWithHeight_width_cropStyle_format___block_invoke;
    v16[3] = &unk_1E7A36140;
    v16[4] = v17;
    v16[5] = &v19;
    v13 = _Block_copy(v16);
    v13[2](v13, @"{h}", a3, 0);
    v13[2](v13, @"{w}", a4, 0);
    (v13)[2](v13, @"{f}", 0, v11);
    (v13)[2](v13, @"{c}", 0, v10);
    if (v20[5])
    {
      v14 = [MEMORY[0x1E695DFF8] URLWithString:?];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __71__LPiTunesMediaLookupItemArtwork_URLWithHeight_width_cropStyle_format___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = a2;
  v7 = a4;
  v9 = [*(*(*(a1 + 32) + 8) + 40) rangeOfString:v16 options:4];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    if (!v7)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v7 = [v11 stringValue];
    }

    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (!v12)
    {
      v13 = [*(*(*(a1 + 32) + 8) + 40) mutableCopy];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
      v12 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v12 replaceCharactersInRange:v9 withString:{v10, v7}];
  }
}

+ (id)colorForColorKind:(id)a3 inColorDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8)
    {
      v10 = strtoul([v8 UTF8String], 0, 16);
      v11 = [MEMORY[0x1E69DC888] colorWithRed:BYTE2(v10) / 255.0 green:BYTE1(v10) / 255.0 blue:v10 / 255.0 alpha:1.0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end