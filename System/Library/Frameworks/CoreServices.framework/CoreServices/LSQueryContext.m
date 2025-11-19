@interface LSQueryContext
@end

@implementation LSQueryContext

void __33___LSQueryContext_defaultContext__block_invoke()
{
  v0 = [[_LSQueryContext alloc] _init];
  v1 = +[_LSQueryContext defaultContext]::result;
  +[_LSQueryContext defaultContext]::result = v0;
}

@end