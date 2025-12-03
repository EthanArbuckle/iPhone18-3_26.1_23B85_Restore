@interface IMBlockActivityItemProvider
- (IMBlockActivityItemProvider)initWithUTI:(id)i resolutionBlock:(id)block;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation IMBlockActivityItemProvider

- (IMBlockActivityItemProvider)initWithUTI:(id)i resolutionBlock:(id)block
{
  iCopy = i;
  blockCopy = block;
  v8 = [(IMBlockActivityItemProvider *)self init];
  if (v8)
  {
    v9 = [blockCopy copy];
    resolutionBlock = v8->_resolutionBlock;
    v8->_resolutionBlock = v9;

    v11 = [iCopy copy];
    UTI = v8->_UTI;
    v8->_UTI = v11;
  }

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v4 = [(IMBlockActivityItemProvider *)self UTI];
  v5 = [v4 isEqualToString:@"public.plain-text"];

  if (v5)
  {
    v6 = @"kBKBlockActivityItemProviderTextPlaceholder";
  }

  else
  {
    v7 = [(IMBlockActivityItemProvider *)self UTI];
    v8 = [v7 isEqualToString:@"public.image"];

    if (v8)
    {
      v6 = objc_alloc_init(UIImage);
    }

    else
    {
      v9 = [(IMBlockActivityItemProvider *)self UTI];
      v10 = [v9 isEqualToString:@"public.url"];

      if (v10)
      {
        v6 = [NSURL URLWithString:@"kBKBlockActivityItemProviderURLPlaceholder"];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  resolutionBlock = [(IMBlockActivityItemProvider *)self resolutionBlock];

  if (resolutionBlock && (-[IMBlockActivityItemProvider supportedActivityTypes](self, "supportedActivityTypes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:typeCopy], v7, v8))
  {
    resolutionBlock2 = [(IMBlockActivityItemProvider *)self resolutionBlock];
    v10 = (resolutionBlock2)[2](resolutionBlock2, typeCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end