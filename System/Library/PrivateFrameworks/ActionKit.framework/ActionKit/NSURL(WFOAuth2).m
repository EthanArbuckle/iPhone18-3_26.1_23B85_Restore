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
  v5 = [a1 wfo_normalizedURLComponents];
  v6 = [v4 wfo_normalizedURLComponents];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (id)wfo_normalizedURLComponents
{
  v1 = MEMORY[0x277CCACE0];
  v2 = [a1 absoluteURL];
  v3 = [v1 componentsWithURL:v2 resolvingAgainstBaseURL:0];

  [v3 setQuery:0];
  [v3 setFragment:0];
  v4 = [v3 path];
  v5 = [v4 hasSuffix:@"/"];

  if (v5)
  {
    v6 = [v3 path];
    v7 = [v3 path];
    v8 = [v6 substringToIndex:{objc_msgSend(v7, "length") - 1}];
    [v3 setPath:v8];
  }

  return v3;
}

- (id)wfo_URLByAppendingQueryItems:()WFOAuth2
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:0];
    v6 = [v5 queryItems];
    if (v6)
    {
      v7 = [v5 queryItems];
      v8 = [v7 arrayByAddingObjectsFromArray:v4];
      [v5 setQueryItems:v8];
    }

    else
    {
      [v5 setQueryItems:v4];
    }

    v9 = [v5 URL];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

@end