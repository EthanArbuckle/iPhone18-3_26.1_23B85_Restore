@interface _NSMoribundCache
- (void)dealloc;
@end

@implementation _NSMoribundCache

- (void)dealloc
{
  v8.receiver = self;
  v8.super_class = _NSMoribundCache;
  [(NSCache *)&v8 dealloc];
  CFLog(3, @"Deallocating immortal cache!", v2, v3, v4, v5, v6, v7, v8.receiver);
  __break(1u);
}

@end