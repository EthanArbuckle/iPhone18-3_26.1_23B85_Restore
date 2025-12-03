@interface _EXTranslocationUtil
+ (id)makeSecureDirectoryForURL:(id)l error:(id *)error;
@end

@implementation _EXTranslocationUtil

+ (id)makeSecureDirectoryForURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] _EX_unimplementedError];
  }

  return 0;
}

@end