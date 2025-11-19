@interface AFBArray
- (AFBArray)initWithBufRef:(id)a3 count:(unint64_t)a4 objectAtIndex:(id)a5;
- (AFBArray)initWithCoder:(id)a3;
- (AFBArray)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation AFBArray

- (AFBArray)initWithBufRef:(id)a3 count:(unint64_t)a4 objectAtIndex:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AFBArray;
  v11 = [(AFBArray *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bufRef, a3);
    v12->_count = a4;
    v13 = MEMORY[0x245CC3C60](v10);
    objectAtIndex = v12->_objectAtIndex;
    v12->_objectAtIndex = v13;
  }

  return v12;
}

- (AFBArray)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:a3 count:a4];

  return v5;
}

- (AFBArray)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_count <= a3)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = NSStringFromSelector(a2);
    v11 = [v9 initWithFormat:@"%@ index %tu out of range for array of size %tu", v10, a3, self->_count];

    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  v4 = *(self->_objectAtIndex + 2);

  return v4();
}

@end