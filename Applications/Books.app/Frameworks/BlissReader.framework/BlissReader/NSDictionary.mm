@interface NSDictionary
+ (NSDictionary)dictionaryWithContentsOfPlistData:(id)data;
@end

@implementation NSDictionary

+ (NSDictionary)dictionaryWithContentsOfPlistData:(id)data
{
  v3 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  CFRelease(v4);
  return v5;
}

@end