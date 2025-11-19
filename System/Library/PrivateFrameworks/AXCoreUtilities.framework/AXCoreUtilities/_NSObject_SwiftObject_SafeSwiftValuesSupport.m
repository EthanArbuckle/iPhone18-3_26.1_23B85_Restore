@interface _NSObject_SwiftObject_SafeSwiftValuesSupport
- (CGPoint)safeSwiftCGPointForKey:(id)a3;
- (CGRect)safeSwiftCGRectForKey:(id)a3;
- (CGSize)safeSwiftCGSizeForKey:(id)a3;
@end

@implementation _NSObject_SwiftObject_SafeSwiftValuesSupport

- (CGPoint)safeSwiftCGPointForKey:(id)a3
{
  v3 = _AXSafeSwiftCGPointForKey(self, a3);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)safeSwiftCGSizeForKey:(id)a3
{
  v3 = _AXSafeSwiftCGSizeForKey(self, a3);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)safeSwiftCGRectForKey:(id)a3
{
  _AXSafeSwiftCGRectForKey(self);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end