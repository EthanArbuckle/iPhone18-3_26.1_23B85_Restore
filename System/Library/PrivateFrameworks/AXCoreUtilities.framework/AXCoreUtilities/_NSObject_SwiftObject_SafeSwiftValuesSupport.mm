@interface _NSObject_SwiftObject_SafeSwiftValuesSupport
- (CGPoint)safeSwiftCGPointForKey:(id)key;
- (CGRect)safeSwiftCGRectForKey:(id)key;
- (CGSize)safeSwiftCGSizeForKey:(id)key;
@end

@implementation _NSObject_SwiftObject_SafeSwiftValuesSupport

- (CGPoint)safeSwiftCGPointForKey:(id)key
{
  v3 = _AXSafeSwiftCGPointForKey(self, key);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)safeSwiftCGSizeForKey:(id)key
{
  v3 = _AXSafeSwiftCGSizeForKey(self, key);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)safeSwiftCGRectForKey:(id)key
{
  _AXSafeSwiftCGRectForKey(self);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end