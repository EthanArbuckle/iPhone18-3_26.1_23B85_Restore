@interface MDLBufferView
- (MDLBufferView)initWithBytesNoCopy:(const void *)copy length:(unint64_t)length offset:(unint64_t)offset regionIndex:(int64_t)index allocator:(id)allocator;
@end

@implementation MDLBufferView

- (MDLBufferView)initWithBytesNoCopy:(const void *)copy length:(unint64_t)length offset:(unint64_t)offset regionIndex:(int64_t)index allocator:(id)allocator
{
  allocatorCopy = allocator;
  v18.receiver = self;
  v18.super_class = MDLBufferView;
  v14 = [(MDLBufferView *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_writable = 0;
    objc_storeStrong(&v14->_allocator, allocator);
    v15->_data = copy;
    v15->_length = length;
    v15->_offset = offset;
    v15->_regionIndex = index;
    v16 = v15;
  }

  return v15;
}

@end