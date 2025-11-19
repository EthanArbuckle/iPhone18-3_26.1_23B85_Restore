@interface UIKeyboardImpl_TFExtras
- (_NSRange)_selectedTextRangeForInputDelegate:(id)a3;
- (id)_textInInputDelegate:(id)a3;
@end

@implementation UIKeyboardImpl_TFExtras

- (_NSRange)_selectedTextRangeForInputDelegate:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedTextRange];
  v5 = [v3 beginningOfDocument];
  v6 = [v4 start];
  v7 = [v3 offsetFromPosition:v5 toPosition:v6];

  v8 = [v4 end];
  v9 = [v3 offsetFromPosition:v5 toPosition:v8];

  v10 = v7;
  v11 = v9 - v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_textInInputDelegate:(id)a3
{
  v3 = a3;
  v4 = [v3 beginningOfDocument];
  v5 = [v3 endOfDocument];
  v6 = [v3 textRangeFromPosition:v4 toPosition:v5];
  v7 = [v3 textInRange:v6];

  return v7;
}

@end