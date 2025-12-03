@interface MTLArgumentInternal
- (MTLArgumentInternal)initWithBinding:(id)binding;
- (void)dealloc;
@end

@implementation MTLArgumentInternal

- (MTLArgumentInternal)initWithBinding:(id)binding
{
  v6.receiver = self;
  v6.super_class = MTLArgumentInternal;
  v4 = [(MTLArgumentInternal *)&v6 init];
  v4->_binding = binding;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLArgumentInternal;
  [(MTLArgumentInternal *)&v3 dealloc];
}

@end