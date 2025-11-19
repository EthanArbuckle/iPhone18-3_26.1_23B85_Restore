@interface LSDefaultsHasServer
@end

@implementation LSDefaultsHasServer

const char *___LSDefaultsHasServer_block_invoke()
{
  result = getenv("LS_NO_SERVER");
  if (result || (result = getenv("SCDontUseServer")) != 0 && (result = atoi(result), result))
  {
    _LSDefaultsHasServer_hasServer = 1;
  }

  return result;
}

@end