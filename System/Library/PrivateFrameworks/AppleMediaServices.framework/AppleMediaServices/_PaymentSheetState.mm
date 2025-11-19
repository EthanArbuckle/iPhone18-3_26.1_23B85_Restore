@interface _PaymentSheetState
- (_PaymentSheetState)init;
@end

@implementation _PaymentSheetState

- (_PaymentSheetState)init
{
  v3.receiver = self;
  v3.super_class = _PaymentSheetState;
  result = [(_PaymentSheetState *)&v3 init];
  if (result)
  {
    result->_cancellationType = 0;
  }

  return result;
}

@end