@interface CHExceptionHandler
+ (BOOL)tryClosure:(id)closure error:(id *)error;
@end

@implementation CHExceptionHandler

+ (BOOL)tryClosure:(id)closure error:(id *)error
{
  closureCopy = closure;
  v5 = closureCopy;
  if (closureCopy)
  {
    (*(closureCopy + 2))(closureCopy);
  }

  return 1;
}

@end