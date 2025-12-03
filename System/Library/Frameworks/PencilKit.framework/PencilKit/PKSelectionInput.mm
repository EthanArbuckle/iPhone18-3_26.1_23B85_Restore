@interface PKSelectionInput
+ (id)inputWithType:(int64_t)type location:(CGPoint)location inputType:(int64_t)inputType;
- (CGPoint)location;
@end

@implementation PKSelectionInput

+ (id)inputWithType:(int64_t)type location:(CGPoint)location inputType:(int64_t)inputType
{
  y = location.y;
  x = location.x;
  v9 = objc_alloc_init(PKSelectionInput);
  [(PKSelectionInput *)v9 setSelectionType:type];
  [(PKSelectionInput *)v9 setLocation:x, y];
  [(PKSelectionInput *)v9 setInputType:inputType];

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