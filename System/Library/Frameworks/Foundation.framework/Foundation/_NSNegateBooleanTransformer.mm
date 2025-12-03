@interface _NSNegateBooleanTransformer
- (id)transformedValue:(id)value;
@end

@implementation _NSNegateBooleanTransformer

- (id)transformedValue:(id)value
{
  v3 = [value BOOLValue] ^ 1;

  return [NSNumber numberWithBool:v3];
}

@end