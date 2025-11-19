@interface AVFragmentedAssetsArray
- (AVFragmentedAssetsArray)init;
- (AVFragmentedAssetsArray)initWithCount:(unint64_t)a3 firstSequenceNumber:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3;
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

- (AVFragmentedAssetsArray)initWithCount:(unint64_t)a3 firstSequenceNumber:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = AVFragmentedAssetsArray;
  v6 = [(AVFragmentedAssetsArray *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_count = a3;
    v6->_firstSequenceNumber = a4;
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

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_count <= a3)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"index %d out of bounds.", v3, v4, v5, v6, v7, a3), 0}];
    objc_exception_throw(v13);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11 = [(NSMutableDictionary *)self->_cachedFragments objectForKey:v10];
  if (!v11)
  {
    v11 = [AVAssetFragment fragmentWithSequenceNumber:self->_firstSequenceNumber + a3];
    [(NSMutableDictionary *)self->_cachedFragments setObject:v11 forKey:v10];
  }

  return v11;
}

@end