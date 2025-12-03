@interface NSError
+ (id)lsr_errorWithCode:(int64_t)code description:(id)description;
@end

@implementation NSError

+ (id)lsr_errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
  v7 = v6;
  if (descriptionCopy)
  {
    [v6 setObject:descriptionCopy forKey:NSLocalizedDescriptionKey];
  }

  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSError errorWithDomain:@"kLSRErrorDomain" code:code userInfo:v8];

  return v9;
}

@end