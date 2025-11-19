@interface AVKeyPathFlattenerKVOIntrospectionShim
- (void)dealloc;
@end

@implementation AVKeyPathFlattenerKVOIntrospectionShim

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVKeyPathFlattenerKVOIntrospectionShim;
  [(AVKeyPathFlattenerKVOIntrospectionShim *)&v3 dealloc];
}

@end