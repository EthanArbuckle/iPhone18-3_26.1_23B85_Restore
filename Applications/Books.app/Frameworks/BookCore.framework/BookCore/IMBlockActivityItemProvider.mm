@interface IMBlockActivityItemProvider
- (IMBlockActivityItemProvider)initWithUTI:(id)a3 resolutionBlock:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation IMBlockActivityItemProvider

- (IMBlockActivityItemProvider)initWithUTI:(id)a3 resolutionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMBlockActivityItemProvider *)self init];
  if (v8)
  {
    v9 = [v7 copy];
    resolutionBlock = v8->_resolutionBlock;
    v8->_resolutionBlock = v9;

    v11 = [v6 copy];
    UTI = v8->_UTI;
    v8->_UTI = v11;
  }

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
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

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(IMBlockActivityItemProvider *)self resolutionBlock];

  if (v6 && (-[IMBlockActivityItemProvider supportedActivityTypes](self, "supportedActivityTypes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v5], v7, v8))
  {
    v9 = [(IMBlockActivityItemProvider *)self resolutionBlock];
    v10 = (v9)[2](v9, v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end