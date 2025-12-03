@interface SAGKSnippet
- (BOOL)sirigk_isMapOnlySnippet;
@end

@implementation SAGKSnippet

- (BOOL)sirigk_isMapOnlySnippet
{
  pods = [(SAGKSnippet *)self pods];
  v4 = [pods count];

  result = 0;
  if (v4 == &dword_0 + 1)
  {
    pods2 = [(SAGKSnippet *)self pods];
    v6 = [pods2 objectAtIndex:0];

    objc_opt_class();
    LOBYTE(pods2) = objc_opt_isKindOfClass();

    if (pods2)
    {
      return 1;
    }
  }

  return result;
}

@end