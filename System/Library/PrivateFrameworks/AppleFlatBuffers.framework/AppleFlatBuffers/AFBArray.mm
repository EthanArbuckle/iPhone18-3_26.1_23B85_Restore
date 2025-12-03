@interface AFBArray
- (AFBArray)initWithBufRef:(id)ref count:(unint64_t)count objectAtIndex:(id)index;
- (AFBArray)initWithCoder:(id)coder;
- (AFBArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation AFBArray

- (AFBArray)initWithBufRef:(id)ref count:(unint64_t)count objectAtIndex:(id)index
{
  refCopy = ref;
  indexCopy = index;
  v16.receiver = self;
  v16.super_class = AFBArray;
  v11 = [(AFBArray *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bufRef, ref);
    v12->_count = count;
    v13 = MEMORY[0x245CC3C60](indexCopy);
    objectAtIndex = v12->_objectAtIndex;
    v12->_objectAtIndex = v13;
  }

  return v12;
}

- (AFBArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:objects count:count];

  return v5;
}

- (AFBArray)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_count <= index)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = NSStringFromSelector(a2);
    v11 = [v9 initWithFormat:@"%@ index %tu out of range for array of size %tu", v10, index, self->_count];

    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  v4 = *(self->_objectAtIndex + 2);

  return v4();
}

@end