@interface ABPKCircularArray
- (ABPKCircularArray)initWithCapacity:(int64_t)capacity;
- (NSArray)contents;
- (void)add:(id)add;
@end

@implementation ABPKCircularArray

- (ABPKCircularArray)initWithCapacity:(int64_t)capacity
{
  v10.receiver = self;
  v10.super_class = ABPKCircularArray;
  v4 = [(ABPKCircularArray *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (capacity <= 1)
    {
      capacityCopy = 1;
    }

    else
    {
      capacityCopy = capacity;
    }

    v4->_capacity = capacityCopy;
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4->_capacity];
    array = v5->_array;
    v5->_array = v7;
  }

  return v5;
}

- (NSArray)contents
{
  v2 = [(NSMutableArray *)self->_array copy];

  return v2;
}

- (void)add:(id)add
{
  v20 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    capacity = self->_capacity;
    v18 = 134217984;
    v19 = capacity;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " Circular buffer capacity: %lu ", &v18, 0xCu);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(NSMutableArray *)self->_array count];
    v18 = 134217984;
    v19 = v8;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " Circular buffer count: %lu ", &v18, 0xCu);
  }

  v9 = [(NSMutableArray *)self->_array count];
  v10 = self->_capacity;
  v11 = __ABPKLogSharedInstance();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v9 == v10)
  {
    if (v12)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " Circular buffer full ", &v18, 2u);
    }

    v13 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Removing first element ", &v18, 2u);
    }

    [(NSMutableArray *)self->_array removeObjectAtIndex:0];
    v11 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(NSMutableArray *)self->_array count];
      v18 = 134217984;
      v19 = v14;
      v15 = " Insert new element at the index: %lu ";
LABEL_14:
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, v15, &v18, 0xCu);
    }
  }

  else if (v12)
  {
    v16 = [(NSMutableArray *)self->_array count];
    v18 = 134217984;
    v19 = v16;
    v15 = " Inserting element to the circular buffer: %lu ";
    goto LABEL_14;
  }

  [(NSMutableArray *)self->_array addObject:addCopy];
  v17 = *MEMORY[0x277D85DE8];
}

@end