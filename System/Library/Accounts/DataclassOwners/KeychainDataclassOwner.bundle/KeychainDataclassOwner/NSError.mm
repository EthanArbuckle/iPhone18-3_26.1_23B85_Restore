@interface NSError
+ (NSError)errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlying:(id)underlying;
@end

@implementation NSError

+ (NSError)errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlying:(id)underlying
{
  underlyingCopy = underlying;
  descriptionCopy = description;
  domainCopy = domain;
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];

  [v12 setObject:underlyingCopy forKeyedSubscript:NSUnderlyingErrorKey];
  v13 = [NSError errorWithDomain:domainCopy code:code userInfo:v12];

  return v13;
}

@end