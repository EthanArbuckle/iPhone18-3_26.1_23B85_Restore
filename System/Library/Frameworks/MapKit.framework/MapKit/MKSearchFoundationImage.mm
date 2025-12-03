@interface MKSearchFoundationImage
- (BOOL)isEqual:(id)equal;
- (id)initIconWithSize:(unint64_t)size mapItem:(id)item;
- (void)loadImageDataWithCompletionAndErrorHandler:(id)handler;
- (void)loadImageDataWithCompletionHandler:(id)handler;
@end

@implementation MKSearchFoundationImage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = MKSearchFoundationImage;
  if ([(MKSearchFoundationImage *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ((url = self->_url) != 0 && equalCopy[14] || (url = self->_styleAttribute) != 0 && equalCopy[15]))
  {
    v6 = [url isEqual:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadImageDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MKSearchFoundationImage_loadImageDataWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E76CA2A0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(MKSearchFoundationImage *)self loadImageDataWithCompletionAndErrorHandler:v6];
}

- (void)loadImageDataWithCompletionAndErrorHandler:(id)handler
{
  handlerCopy = handler;
  group = self->_group;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MKSearchFoundationImage_loadImageDataWithCompletionAndErrorHandler___block_invoke;
  v7[3] = &unk_1E76CDA20;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], v7);
}

void __70__MKSearchFoundationImage_loadImageDataWithCompletionAndErrorHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageData];
  (*(v1 + 16))(v1, v2, 0);
}

- (id)initIconWithSize:(unint64_t)size mapItem:(id)item
{
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = MKSearchFoundationImage;
  v7 = [(MKSearchFoundationImage *)&v25 init];
  if (v7)
  {
    v8 = +[MKSystemController sharedInstance];
    [v8 screenScale];
    v10 = v9;

    [v7 setSize:{60.0, 60.0}];
    if ([itemCopy _parsecSectionType] == 2)
    {
      [v7 size];
      _styleAttributes = [itemCopy _bestBrandIconURLForSize:1 allowSmaller:?];
      v12 = &OBJC_IVAR___MKSearchFoundationImage__url;
    }

    else
    {
      _styleAttributes = [itemCopy _styleAttributes];
      v12 = &OBJC_IVAR___MKSearchFoundationImage__styleAttribute;
    }

    v13 = [_styleAttributes copy];
    v14 = *v12;
    v15 = *&v7[v14];
    *&v7[v14] = v13;

    v16 = dispatch_group_create();
    v17 = *(v7 + 13);
    *(v7 + 13) = v16;

    dispatch_group_enter(*(v7 + 13));
    v18 = dispatch_get_global_queue(25, 0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__MKSearchFoundationImage_initIconWithSize_mapItem___block_invoke;
    v20[3] = &unk_1E76CCC00;
    v21 = v7;
    v22 = itemCopy;
    sizeCopy = size;
    v24 = v10;
    dispatch_async(v18, v20);
  }

  return v7;
}

void __52__MKSearchFoundationImage_initIconWithSize_mapItem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!*(*(a1 + 32) + 112) || ([MEMORY[0x1E695DEF0] dataWithContentsOfURL:?], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MKIconManager imageForMapItem:*(a1 + 40) size:*(a1 + 48) forScale:2 format:*(a1 + 56)];
    v3 = UIImagePNGRepresentation(v4);
  }

  [*(a1 + 32) setImageData:v3];
  dispatch_group_leave(*(*(a1 + 32) + 104));

  objc_autoreleasePoolPop(v2);
}

@end