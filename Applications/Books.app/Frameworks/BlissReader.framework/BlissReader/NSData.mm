@interface NSData
+ (NSData)dataWithContentsOfURL:(id)l drmContext:(id)context error:(id *)error;
@end

@implementation NSData

+ (NSData)dataWithContentsOfURL:(id)l drmContext:(id)context error:(id *)error
{
  if (context)
  {
    return [context dataWithContentsOfURL:l error:error];
  }

  else
  {
    return [NSData dataWithContentsOfURL:l, 0, error];
  }
}

@end