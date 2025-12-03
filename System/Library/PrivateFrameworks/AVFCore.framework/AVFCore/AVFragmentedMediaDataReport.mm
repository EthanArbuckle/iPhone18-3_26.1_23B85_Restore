@interface AVFragmentedMediaDataReport
- (AVFragmentedMediaDataReport)initWithFigFragmentedMediaDataReportDictionary:(id)dictionary;
- (int64_t)numberOfBytesToEndOfFirstVideoFrame;
- (void)dealloc;
@end

@implementation AVFragmentedMediaDataReport

- (AVFragmentedMediaDataReport)initWithFigFragmentedMediaDataReportDictionary:(id)dictionary
{
  v16.receiver = self;
  v16.super_class = AVFragmentedMediaDataReport;
  v5 = [(AVFragmentedMediaDataReport *)&v16 init];
  v6 = v5;
  if (!dictionary)
  {
    v9 = v5;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v6 userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "figFragmentedMediaDataReportDict != nil"), 0}];
    objc_exception_throw(v15);
  }

  if (v5)
  {
    v7 = objc_alloc_init(AVFragmentedMediaDataReportInternal);
    v6->_internal = v7;
    if (v7)
    {
      v6->_internal->figFragmentedMediaDataReportDict = [dictionary copy];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    internal = self->_internal;
  }

  v4.receiver = self;
  v4.super_class = AVFragmentedMediaDataReport;
  [(AVFragmentedMediaDataReport *)&v4 dealloc];
}

- (int64_t)numberOfBytesToEndOfFirstVideoFrame
{
  result = [(NSDictionary *)self->_internal->figFragmentedMediaDataReportDict valueForKey:*MEMORY[0x1E6971518]];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

@end