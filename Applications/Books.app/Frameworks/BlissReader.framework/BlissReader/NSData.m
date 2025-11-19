@interface NSData
+ (NSData)dataWithContentsOfURL:(id)a3 drmContext:(id)a4 error:(id *)a5;
@end

@implementation NSData

+ (NSData)dataWithContentsOfURL:(id)a3 drmContext:(id)a4 error:(id *)a5
{
  if (a4)
  {
    return [a4 dataWithContentsOfURL:a3 error:a5];
  }

  else
  {
    return [NSData dataWithContentsOfURL:a3, 0, a5];
  }
}

@end