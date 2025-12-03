@interface _MSStickerPackCollectionViewDataSource
+ (int64_t)_stickerSizeFromString:(id)string;
- (_MSStickerPackCollectionViewDataSource)initWithStickerPackURL:(id)l;
- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index;
- (void)_loadStickerPackWithURL:(id)l;
@end

@implementation _MSStickerPackCollectionViewDataSource

+ (int64_t)_stickerSizeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"MSStickerBrowserLayoutSparse"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"MSStickerSizeLarge") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"MSStickerSizeClassLarge"))
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"MSStickerBrowserLayoutCondensed"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"MSStickerSizeSmall"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [stringCopy isEqualToString:@"MSStickerSizeClassSmall"] ^ 1;
  }

  return v4;
}

- (_MSStickerPackCollectionViewDataSource)initWithStickerPackURL:(id)l
{
  lCopy = l;
  NSLog(&cfstr_Initwithsticke.isa, lCopy);
  if (lCopy && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, v7))
  {
    v13.receiver = self;
    v13.super_class = _MSStickerPackCollectionViewDataSource;
    v8 = [(_MSStickerPackCollectionViewDataSource *)&v13 init];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      stickers = v8->_stickers;
      v8->_stickers = v9;

      [(_MSStickerPackCollectionViewDataSource *)v8 _loadStickerPackWithURL:lCopy];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_loadStickerPackWithURL:(id)l
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
    path = [lCopy path];
    v24 = lCopy;
    uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

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
      v25 = path;
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
          v14 = [v5 localizedStringForKey:v12 value:v13 table:lastPathComponent];

          v15 = MEMORY[0x1E695DFF8];
          v16 = [path stringByAppendingPathComponent:v11];
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
            path = v25;
          }
        }

        v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v31);
    }

    lCopy = v24;
  }
}

- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index
{
  viewCopy = view;
  if (index < 0 || [(NSMutableArray *)self->_stickers count]<= index)
  {
    NSLog(&cfstr_WarningSticker.isa);
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_stickers objectAtIndex:index];
  }

  return v7;
}

@end