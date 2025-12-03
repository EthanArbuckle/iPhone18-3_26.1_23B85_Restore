@interface _BCDragStoreURLProvider
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (_BCDragStoreURLProvider)initWithStoreID:(id)d contentType:(int64_t)type storeURL:(id)l;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)_loadStoreURL:(id)l;
@end

@implementation _BCDragStoreURLProvider

- (_BCDragStoreURLProvider)initWithStoreID:(id)d contentType:(int64_t)type storeURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = _BCDragStoreURLProvider;
  v11 = [(_BCDragStoreURLProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_storeID, d);
    v12->_contentType = type;
    objc_storeStrong(&v12->_storeURL, l);
  }

  return v12;
}

- (void)_loadStoreURL:(id)l
{
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_D9208;
  v19 = &unk_2CCDA8;
  lCopy = l;
  v20 = lCopy;
  v5 = objc_retainBlock(&v16);
  v6 = v5;
  storeURL = self->_storeURL;
  if (storeURL)
  {
    (v5[2])(v5, storeURL, 0);
  }

  else
  {
    contentType = self->_contentType;
    if (contentType == 1)
    {
      [NSString stringWithFormat:@"https://books.apple.com/book/id%@", self->_storeID, v16, v17, v18, v19];
    }

    else
    {
      if (contentType != 6)
      {
        v11 = +[BCMBridgedCatalogService sharedInstance];
        storeID = self->_storeID;
        v13 = [BFMRequestMetadata alloc];
        v14 = [NSString stringWithFormat:@"%s", "BCDragRepresentationFactory.m", v16, v17, v18, v19];
        v15 = [v13 initWithFileID:v14 line:286];
        [v11 fetchStoreURLOfUnknownTypeForAdamID:storeID metadata:v15 completionHandler:v6];

        goto LABEL_9;
      }

      [NSString stringWithFormat:@"https://books.apple.com/audiobook/id%@", self->_storeID, v16, v17, v18, v19];
    }
    v9 = ;
    v10 = [NSURL URLWithString:v9];
    (v6[2])(v6, v10, 0);
  }

LABEL_9:
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  identifier = [UTTypeURL identifier];
  v5 = identifier;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  identifier = [UTTypeURL identifier];
  v9 = [identifier isEqualToString:identifierCopy];

  if (v9)
  {
    [(_BCDragStoreURLProvider *)self _loadStoreURL:handlerCopy];
  }

  else
  {
    if (identifierCopy)
    {
      v13 = @"typeIdentifier";
      v14 = identifierCopy;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = 0;
    }

    v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v10];
    handlerCopy[2](handlerCopy, 0, v11);
  }

  return 0;
}

@end