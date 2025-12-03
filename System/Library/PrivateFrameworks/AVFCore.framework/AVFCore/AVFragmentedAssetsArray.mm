@interface AVFragmentedAssetsArray
- (AVFragmentedAssetsArray)init;
- (AVFragmentedAssetsArray)initWithCount:(unint64_t)count firstSequenceNumber:(unint64_t)number;
- (id)objectAtIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation AVFragmentedAssetsArray

- (AVFragmentedAssetsArray)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithCount_firstSequenceNumber_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVFragmentedAssetsArray)initWithCount:(unint64_t)count firstSequenceNumber:(unint64_t)number
{
  v9.receiver = self;
  v9.super_class = AVFragmentedAssetsArray;
  v6 = [(AVFragmentedAssetsArray *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_count = count;
    v6->_firstSequenceNumber = number;
    v6->_cachedFragments = [MEMORY[0x1E695DF90] dictionary];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFragmentedAssetsArray;
  [(AVFragmentedAssetsArray *)&v3 dealloc];
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_count <= index)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"index %d out of bounds.", v3, v4, v5, v6, v7, index), 0}];
    objc_exception_throw(v13);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  index = [(NSMutableDictionary *)self->_cachedFragments objectForKey:v10];
  if (!index)
  {
    index = [AVAssetFragment fragmentWithSequenceNumber:self->_firstSequenceNumber + index];
    [(NSMutableDictionary *)self->_cachedFragments setObject:index forKey:v10];
  }

  return index;
}

@end