@interface NSError
+ (id)lsr_errorWithCode:(int64_t)a3 description:(id)a4;
@end

@implementation NSError

+ (id)lsr_errorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:1];
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:NSLocalizedDescriptionKey];
  }

  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSError errorWithDomain:@"kLSRErrorDomain" code:a3 userInfo:v8];

  return v9;
}

@end