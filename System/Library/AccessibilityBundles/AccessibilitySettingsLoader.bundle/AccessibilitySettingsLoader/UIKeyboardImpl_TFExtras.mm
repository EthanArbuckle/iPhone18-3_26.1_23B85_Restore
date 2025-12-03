@interface UIKeyboardImpl_TFExtras
- (_NSRange)_selectedTextRangeForInputDelegate:(id)delegate;
- (id)_textInInputDelegate:(id)delegate;
@end

@implementation UIKeyboardImpl_TFExtras

- (_NSRange)_selectedTextRangeForInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  selectedTextRange = [delegateCopy selectedTextRange];
  beginningOfDocument = [delegateCopy beginningOfDocument];
  start = [selectedTextRange start];
  v7 = [delegateCopy offsetFromPosition:beginningOfDocument toPosition:start];

  v8 = [selectedTextRange end];
  v9 = [delegateCopy offsetFromPosition:beginningOfDocument toPosition:v8];

  v10 = v7;
  v11 = v9 - v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_textInInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  beginningOfDocument = [delegateCopy beginningOfDocument];
  endOfDocument = [delegateCopy endOfDocument];
  v6 = [delegateCopy textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];
  v7 = [delegateCopy textInRange:v6];

  return v7;
}

@end