@interface AMSLookupItemArtwork
- (AMSLookupItemArtwork)initWithArtworkDictionary:(id)a3;
- (NSString)URLString;
- (double)height;
- (double)width;
- (id)URLWithHeight:(int64_t)a3 width:(int64_t)a4 cropStyle:(id)a5 format:(id)a6;
- (id)colorWithKind:(id)a3;
@end

@implementation AMSLookupItemArtwork

- (AMSLookupItemArtwork)initWithArtworkDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSLookupItemArtwork;
  v6 = [(AMSLookupItemArtwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artworkDictionary, a3);
  }

  return v7;
}

- (id)colorWithKind:(id)a3
{
  v4 = a3;
  v5 = [(AMSLookupItemArtwork *)self artworkDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7)
    {
      v8 = strtoul([v7 UTF8String], 0, 16);
      v9 = objc_alloc_init(AMSLookupItemArtworkColor);
      [(AMSLookupItemArtworkColor *)v9 setRed:BYTE2(v8) / 255.0];
      [(AMSLookupItemArtworkColor *)v9 setGreen:BYTE1(v8) / 255.0];
      [(AMSLookupItemArtworkColor *)v9 setBlue:v8 / 255.0];
      [(AMSLookupItemArtworkColor *)v9 setAlpha:1.0];
      goto LABEL_6;
    }
  }

  else
  {

    v7 = 0;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (double)width
{
  v2 = [(AMSLookupItemArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"width"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)height
{
  v2 = [(AMSLookupItemArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"height"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (NSString)URLString
{
  v2 = [(AMSLookupItemArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)URLWithHeight:(int64_t)a3 width:(int64_t)a4 cropStyle:(id)a5 format:(id)a6
{
  v32[12] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"bb";
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"jpg";
  }

  v14 = [(AMSLookupItemArtwork *)self URLString];
  v15 = v14;
  if (v14)
  {
    v29 = v14;
    v16 = v14;
    v32[0] = @"{h}";
    v32[1] = a3;
    v32[2] = 0;
    v32[3] = @"{w}";
    v32[4] = a4;
    v32[5] = 0;
    v32[6] = @"{f}";
    v32[7] = 0;
    v30 = v13;
    v32[8] = v13;
    v32[9] = @"{c}";
    v32[10] = 0;
    v31 = v12;
    v17 = 0;
    v18 = 0;
    v32[11] = v12;
    do
    {
      v20 = [v16 rangeOfString:v32[v17] options:4];
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = v19;
        v22 = v32[v17 + 2];
        if (!v22)
        {
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", v32[v17 + 1]];
        }

        v23 = v22;
        if (!v18)
        {
          v18 = [v16 mutableCopy];

          v16 = v18;
        }

        [v18 replaceCharactersInRange:v20 withString:{v21, v23}];
      }

      v17 += 3;
    }

    while (v17 != 12);
    v13 = v30;
    v12 = v31;
    v15 = v29;
    if (!v18 || ([MEMORY[0x1E695DFF8] URLWithString:v18], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v25 = MEMORY[0x1E695DFF8];
      v26 = [(AMSLookupItemArtwork *)self URLString];
      v24 = [v25 URLWithString:v26];
    }

    for (i = 0; i != -12; i -= 3)
    {
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end