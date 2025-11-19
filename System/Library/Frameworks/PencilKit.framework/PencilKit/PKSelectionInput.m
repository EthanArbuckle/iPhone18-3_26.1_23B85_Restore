@interface PKSelectionInput
+ (id)inputWithType:(int64_t)a3 location:(CGPoint)a4 inputType:(int64_t)a5;
- (CGPoint)location;
@end

@implementation PKSelectionInput

+ (id)inputWithType:(int64_t)a3 location:(CGPoint)a4 inputType:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = objc_alloc_init(PKSelectionInput);
  [(PKSelectionInput *)v9 setSelectionType:a3];
  [(PKSelectionInput *)v9 setLocation:x, y];
  [(PKSelectionInput *)v9 setInputType:a5];

  return v9;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end