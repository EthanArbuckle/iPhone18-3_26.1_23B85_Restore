@interface NSException
+ (id)shl_exceptionWithName:(id)name reason:(id)reason;
@end

@implementation NSException

+ (id)shl_exceptionWithName:(id)name reason:(id)reason
{
  v10 = NSLocalizedDescriptionKey;
  reasonCopy = reason;
  reasonCopy2 = reason;
  nameCopy = name;
  v7 = [NSDictionary dictionaryWithObjects:&reasonCopy forKeys:&v10 count:1];
  v8 = [NSException exceptionWithName:nameCopy reason:reasonCopy2 userInfo:v7];

  return v8;
}

@end