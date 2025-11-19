@interface NSURLRequestHACK
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation NSURLRequestHACK

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NSURLRequestHACK alloc];
  v5 = [(NSURLRequestHACK *)self URL];
  v6 = [(NSURLRequestHACK *)v4 initWithURL:v5];

  return v6;
}

@end