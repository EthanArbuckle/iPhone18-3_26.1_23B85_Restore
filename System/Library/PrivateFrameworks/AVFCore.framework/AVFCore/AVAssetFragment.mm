@interface AVAssetFragment
+ (id)fragmentWithSequenceNumber:(int64_t)number;
- (AVAssetFragment)init;
- (AVAssetFragment)initWithSequenceNumber:(int64_t)number;
- (void)dealloc;
@end

@implementation AVAssetFragment

+ (id)fragmentWithSequenceNumber:(int64_t)number
{
  v3 = [[self alloc] initWithSequenceNumber:number];

  return v3;
}

- (AVAssetFragment)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithSequenceNumber_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVAssetFragment)initWithSequenceNumber:(int64_t)number
{
  v7.receiver = self;
  v7.super_class = AVAssetFragment;
  v4 = [(AVAssetFragment *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVAssetFragmentInternal);
    v4->_internal = v5;
    if (v5)
    {
      v5->_sequenceNumber = number;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetFragment;
  [(AVAssetFragment *)&v3 dealloc];
}

@end