@interface _HKDataCollectorFlushRequest
- (_HKDataCollectorFlushRequest)initWithDate:(id)date completion:(id)completion;
@end

@implementation _HKDataCollectorFlushRequest

- (_HKDataCollectorFlushRequest)initWithDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _HKDataCollectorFlushRequest;
  v8 = [(_HKDataCollectorFlushRequest *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [completionCopy copy];
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

@end