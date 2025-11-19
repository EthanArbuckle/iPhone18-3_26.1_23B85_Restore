@interface _LSExtensionPointEnumerator
- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5;
@end

@implementation _LSExtensionPointEnumerator

- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5
{
  v10.receiver = self;
  v10.super_class = _LSExtensionPointEnumerator;
  v11 = 0;
  v6 = [(_LSExtensionPointRecordEnumerator *)&v10 _getObject:&v11 atIndex:a4 context:a5];
  if (v6)
  {
    v7 = [v11 compatibilityObject];
    v8 = *a3;
    *a3 = v7;
  }

  return v6;
}

@end