@interface CRLAccessibilityValueFormat
- (CRLAccessibilityValueFormat)initWithNumberFormat:(id)format andUnitStringsDictKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRLAccessibilityValueFormat

- (CRLAccessibilityValueFormat)initWithNumberFormat:(id)format andUnitStringsDictKey:(id)key
{
  formatCopy = format;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = CRLAccessibilityValueFormat;
  v8 = [(CRLAccessibilityValueFormat *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLAccessibilityValueFormat *)v8 setNumberFormat:formatCopy];
    [(CRLAccessibilityValueFormat *)v9 setUnitStringsDictKey:keyCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLAccessibilityValueFormat alloc];
  numberFormat = [(CRLAccessibilityValueFormat *)self numberFormat];
  v6 = [numberFormat copy];
  unitStringsDictKey = [(CRLAccessibilityValueFormat *)self unitStringsDictKey];
  v8 = [unitStringsDictKey copy];
  v9 = [(CRLAccessibilityValueFormat *)v4 initWithNumberFormat:v6 andUnitStringsDictKey:v8];

  return v9;
}

@end