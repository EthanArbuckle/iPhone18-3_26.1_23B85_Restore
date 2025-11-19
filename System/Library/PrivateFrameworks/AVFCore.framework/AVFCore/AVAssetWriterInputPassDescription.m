@interface AVAssetWriterInputPassDescription
- (AVAssetWriterInputPassDescription)init;
- (AVAssetWriterInputPassDescription)initWithTimeRanges:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetWriterInputPassDescription

- (AVAssetWriterInputPassDescription)init
{
  v3 = [MEMORY[0x1E695DEC8] array];

  return [(AVAssetWriterInputPassDescription *)self initWithTimeRanges:v3];
}

- (AVAssetWriterInputPassDescription)initWithTimeRanges:(id)a3
{
  if (!a3)
  {
    v9 = self;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "timeRanges != nil"), 0}];
    objc_exception_throw(v15);
  }

  v16.receiver = self;
  v16.super_class = AVAssetWriterInputPassDescription;
  v5 = [(AVAssetWriterInputPassDescription *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(AVAssetWriterInputPassDescriptionInternal);
    v5->_internal = v6;
    if (v6)
    {
      CFRetain(v6);
      v5->_internal->timeRanges = [a3 copy];
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    CFRelease(self->_internal);
    internal = self->_internal;
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterInputPassDescription;
  [(AVAssetWriterInputPassDescription *)&v4 dealloc];
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  timeRanges = self->_internal->timeRanges;
  v5 = [(NSArray *)timeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(timeRanges);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        memset(&v15, 0, sizeof(v15));
        if (v10)
        {
          [v10 CMTimeRangeValue];
        }

        range = v15;
        [v3 addObject:{CMTimeRangeCopyDescription(v8, &range)}];
      }

      v6 = [(NSArray *)timeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  return [v11 stringWithFormat:@"<%@: %p, sourceTimeRanges=%@>", NSStringFromClass(v12), self, objc_msgSend(v3, "componentsJoinedByString:", @", ")];
}

@end