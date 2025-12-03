@interface NSException
+ (id)doWhileCatching:(id)catching;
@end

@implementation NSException

+ (id)doWhileCatching:(id)catching
{
  catchingCopy = catching;
  catchingCopy[2]();

  return 0;
}

@end