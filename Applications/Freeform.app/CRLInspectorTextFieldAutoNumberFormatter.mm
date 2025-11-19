@interface CRLInspectorTextFieldAutoNumberFormatter
- (id)textAttributesForZero;
@end

@implementation CRLInspectorTextFieldAutoNumberFormatter

- (id)textAttributesForZero
{
  v2 = +[UIColor grayColor];
  v5 = NSForegroundColorAttributeName;
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

@end