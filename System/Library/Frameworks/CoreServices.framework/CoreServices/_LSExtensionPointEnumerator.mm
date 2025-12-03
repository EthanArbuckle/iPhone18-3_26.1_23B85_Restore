@interface _LSExtensionPointEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
@end

@implementation _LSExtensionPointEnumerator

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  v10.receiver = self;
  v10.super_class = _LSExtensionPointEnumerator;
  v11 = 0;
  v6 = [(_LSExtensionPointRecordEnumerator *)&v10 _getObject:&v11 atIndex:index context:context];
  if (v6)
  {
    compatibilityObject = [v11 compatibilityObject];
    v8 = *object;
    *object = compatibilityObject;
  }

  return v6;
}

@end