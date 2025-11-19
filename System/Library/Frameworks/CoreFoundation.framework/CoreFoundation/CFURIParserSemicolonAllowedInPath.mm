@interface CFURIParserSemicolonAllowedInPath
@end

@implementation CFURIParserSemicolonAllowedInPath

uint64_t ___CFURIParserSemicolonAllowedInPath_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  _CFURIParserSemicolonAllowedInPath_allowSemicolon = result;
  return result;
}

@end