@interface NSURLRequestHACK
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation NSURLRequestHACK

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NSURLRequestHACK alloc];
  v5 = [(NSURLRequestHACK *)self URL];
  v6 = [(NSURLRequestHACK *)v4 initWithURL:v5];

  return v6;
}

@end