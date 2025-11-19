@interface HIDEvent
- (_IOHID3DPoint)position;
@end

@implementation HIDEvent

- (_IOHID3DPoint)position
{
  _IOHIDEventGetPosition(self, a2);
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end