@interface CRLAccessibilityValueFormat
- (CRLAccessibilityValueFormat)initWithNumberFormat:(id)a3 andUnitStringsDictKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRLAccessibilityValueFormat

- (CRLAccessibilityValueFormat)initWithNumberFormat:(id)a3 andUnitStringsDictKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLAccessibilityValueFormat;
  v8 = [(CRLAccessibilityValueFormat *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLAccessibilityValueFormat *)v8 setNumberFormat:v6];
    [(CRLAccessibilityValueFormat *)v9 setUnitStringsDictKey:v7];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLAccessibilityValueFormat alloc];
  v5 = [(CRLAccessibilityValueFormat *)self numberFormat];
  v6 = [v5 copy];
  v7 = [(CRLAccessibilityValueFormat *)self unitStringsDictKey];
  v8 = [v7 copy];
  v9 = [(CRLAccessibilityValueFormat *)v4 initWithNumberFormat:v6 andUnitStringsDictKey:v8];

  return v9;
}

@end