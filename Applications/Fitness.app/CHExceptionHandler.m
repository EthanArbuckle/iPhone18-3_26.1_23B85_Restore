@interface CHExceptionHandler
+ (BOOL)tryClosure:(id)a3 error:(id *)a4;
@end

@implementation CHExceptionHandler

+ (BOOL)tryClosure:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }

  return 1;
}

@end