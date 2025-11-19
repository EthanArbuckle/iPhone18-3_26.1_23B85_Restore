@interface SAGKSnippet
- (BOOL)sirigk_isMapOnlySnippet;
@end

@implementation SAGKSnippet

- (BOOL)sirigk_isMapOnlySnippet
{
  v3 = [(SAGKSnippet *)self pods];
  v4 = [v3 count];

  result = 0;
  if (v4 == &dword_0 + 1)
  {
    v5 = [(SAGKSnippet *)self pods];
    v6 = [v5 objectAtIndex:0];

    objc_opt_class();
    LOBYTE(v5) = objc_opt_isKindOfClass();

    if (v5)
    {
      return 1;
    }
  }

  return result;
}

@end