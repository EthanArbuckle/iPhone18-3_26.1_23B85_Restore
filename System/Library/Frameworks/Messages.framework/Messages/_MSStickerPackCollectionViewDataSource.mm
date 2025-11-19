@interface _MSStickerPackCollectionViewDataSource
+ (int64_t)_stickerSizeFromString:(id)a3;
- (_MSStickerPackCollectionViewDataSource)initWithStickerPackURL:(id)a3;
- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4;
- (void)_loadStickerPackWithURL:(id)a3;
@end

@implementation _MSStickerPackCollectionViewDataSource

+ (int64_t)_stickerSizeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MSStickerBrowserLayoutSparse"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MSStickerSizeLarge") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MSStickerSizeClassLarge"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MSStickerBrowserLayoutCondensed"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MSStickerSizeSmall"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"MSStickerSizeClassSmall"] ^ 1;
  }

  return v4;
}

- (_MSStickerPackCollectionViewDataSource)initWithStickerPackURL:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_Initwithsticke.isa, v4);
  if (v4 && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, v7))
  {
    v13.receiver = self;
    v13.super_class = _MSStickerPackCollectionViewDataSource;
    v8 = [(_MSStickerPackCollectionViewDataSource *)&v13 init];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      stickers = v8->_stickers;
      v8->_stickers = v9;

      [(_MSStickerPackCollectionViewDataSource *)v8 _loadStickerPackWithURL:v4];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_loadStickerPackWithURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v4];
    v6 = [v4 path];
    v24 = v4;
    v7 = [v4 URLByDeletingPathExtension];
    v30 = [v7 lastPathComponent];

    v8 = [v5 objectForInfoDictionaryKey:@"IMStickerPackLayout"];
    self->_stickerSize = [_MSStickerPackCollectionViewDataSource _stickerSizeFromString:v8];

    [v5 objectForInfoDictionaryKey:@"IMStickers"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v31)
    {
      v29 = *v34;
      v28 = *MEMORY[0x1E69A8430];
      v27 = *MEMORY[0x1E69A8420];
      v25 = v6;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 objectForKey:v28];
          v12 = [v11 stringByAppendingString:@".accessibilityLabel"];
          v13 = [v10 objectForKey:v27];
          v14 = [v5 localizedStringForKey:v12 value:v13 table:v30];

          v15 = MEMORY[0x1E695DFF8];
          v16 = [v6 stringByAppendingPathComponent:v11];
          v17 = [v15 fileURLWithPath:v16];

          v18 = [MSSticker alloc];
          v32 = 0;
          v19 = [(MSSticker *)v18 initWithContentsOfFileURL:v17 localizedDescription:v14 error:&v32];
          v20 = v32;
          if (v19)
          {
            [(NSMutableArray *)self->_stickers addObject:v19];
          }

          else
          {
            [v17 lastPathComponent];
            v21 = v5;
            v23 = v22 = self;
            NSLog(&cfstr_FailedToLoadSt.isa, v23, v20);

            self = v22;
            v5 = v21;
            v6 = v25;
          }
        }

        v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v31);
    }

    v4 = v24;
  }
}

- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 < 0 || [(NSMutableArray *)self->_stickers count]<= a4)
  {
    NSLog(&cfstr_WarningSticker.isa);
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_stickers objectAtIndex:a4];
  }

  return v7;
}

@end