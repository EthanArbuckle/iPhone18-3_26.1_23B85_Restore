@interface AVCaptionLength
- (AVCaptionLength)init;
- (AVCaptionLength)initWithCellCount:(int64_t)a3;
- (AVCaptionLength)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVCaptionLength

- (AVCaptionLength)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithCellCount_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVCaptionLength)initWithCellCount:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = AVCaptionLength;
  v4 = [(AVCaptionLength *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCaptionLengthInternal);
    v4->_internal = v5;
    if (v5)
    {
      v5->cellCount = a3;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (AVCaptionLength)initWithCoder:(id)a3
{
  if ([a3 containsValueForKey:@"AVCaptionLengthArchiveKeyCellCount"])
  {
    v5 = [a3 decodeIntegerForKey:@"AVCaptionLengthArchiveKeyCellCount"];

    return [(AVCaptionLength *)self initWithCellCount:v5];
  }

  else
  {

    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:1 forKey:@"AVCaptionLengthArchiveKeyVersion"];
  v5 = [(AVCaptionLength *)self numberOfCells];

  [a3 encodeInteger:v5 forKey:@"AVCaptionLengthArchiveKeyCellCount"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionLength;
  [(AVCaptionLength *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVCaptionLength *)self numberOfCells];
  return v5 == [a3 numberOfCells];
}

@end