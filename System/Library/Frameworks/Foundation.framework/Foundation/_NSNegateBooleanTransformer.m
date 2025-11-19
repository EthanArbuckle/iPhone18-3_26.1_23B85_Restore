@interface _NSNegateBooleanTransformer
- (id)transformedValue:(id)a3;
@end

@implementation _NSNegateBooleanTransformer

- (id)transformedValue:(id)a3
{
  v3 = [a3 BOOLValue] ^ 1;

  return [NSNumber numberWithBool:v3];
}

@end