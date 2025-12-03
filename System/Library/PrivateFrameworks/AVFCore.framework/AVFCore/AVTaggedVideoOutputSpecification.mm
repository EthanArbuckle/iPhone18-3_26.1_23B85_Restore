@interface AVTaggedVideoOutputSpecification
- (AVTaggedVideoOutputSpecification)initWithTagCollections:(id)collections;
- (void)dealloc;
@end

@implementation AVTaggedVideoOutputSpecification

- (AVTaggedVideoOutputSpecification)initWithTagCollections:(id)collections
{
  v6.receiver = self;
  v6.super_class = AVTaggedVideoOutputSpecification;
  v4 = [(AVTaggedVideoOutputSpecification *)&v6 init];
  if (v4)
  {
    v4->_realSpecification = [[AVVideoOutputSpecification alloc] initWithTagCollections:collections];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVTaggedVideoOutputSpecification;
  [(AVTaggedVideoOutputSpecification *)&v3 dealloc];
}

@end