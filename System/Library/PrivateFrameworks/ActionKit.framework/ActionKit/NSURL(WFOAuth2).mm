@interface NSURL(WFOAuth2)
- (id)wfo_URLByAppendingQueryItems:()WFOAuth2;
- (id)wfo_normalizedURLComponents;
- (uint64_t)wfo_isEqualToRedirectURI:()WFOAuth2;
@end

@implementation NSURL(WFOAuth2)

- (uint64_t)wfo_isEqualToRedirectURI:()WFOAuth2
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  wfo_normalizedURLComponents = [self wfo_normalizedURLComponents];
  wfo_normalizedURLComponents2 = [v4 wfo_normalizedURLComponents];

  v7 = [wfo_normalizedURLComponents isEqual:wfo_normalizedURLComponents2];
  return v7;
}

- (id)wfo_normalizedURLComponents
{
  v1 = MEMORY[0x277CCACE0];
  absoluteURL = [self absoluteURL];
  v3 = [v1 componentsWithURL:absoluteURL resolvingAgainstBaseURL:0];

  [v3 setQuery:0];
  [v3 setFragment:0];
  path = [v3 path];
  v5 = [path hasSuffix:@"/"];

  if (v5)
  {
    path2 = [v3 path];
    path3 = [v3 path];
    v8 = [path2 substringToIndex:{objc_msgSend(path3, "length") - 1}];
    [v3 setPath:v8];
  }

  return v3;
}

- (id)wfo_URLByAppendingQueryItems:()WFOAuth2
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:self resolvingAgainstBaseURL:0];
    queryItems = [v5 queryItems];
    if (queryItems)
    {
      queryItems2 = [v5 queryItems];
      v8 = [queryItems2 arrayByAddingObjectsFromArray:v4];
      [v5 setQueryItems:v8];
    }

    else
    {
      [v5 setQueryItems:v4];
    }

    selfCopy = [v5 URL];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end