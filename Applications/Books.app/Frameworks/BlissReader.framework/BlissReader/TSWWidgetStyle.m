@interface TSWWidgetStyle
+ (id)properties;
@end

@implementation TSWWidgetStyle

+ (id)properties
{
  result = qword_567770;
  if (!qword_567770)
  {
    result = [[TSSPropertySet alloc] initWithProperties:{4622, 0}];
    qword_567770 = result;
  }

  return result;
}

@end