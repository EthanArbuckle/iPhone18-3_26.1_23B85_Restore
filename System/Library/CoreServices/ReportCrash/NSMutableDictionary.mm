@interface NSMutableDictionary
- (void)addLines:(id)a3 fromOwner:(id)a4;
@end

@implementation NSMutableDictionary

- (void)addLines:(id)a3 fromOwner:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self objectForKey:v6];
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  [v7 addLines:v8];
  [(NSMutableDictionary *)self setValue:v7 forKey:v6];
}

@end