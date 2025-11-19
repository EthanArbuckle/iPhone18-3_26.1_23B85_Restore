@interface AXMathExpressionUnderOver
- (AXMathExpressionUnderOver)initWithBaseExpression:(id)a3 underExpression:(id)a4 overExpression:(id)a5;
@end

@implementation AXMathExpressionUnderOver

- (AXMathExpressionUnderOver)initWithBaseExpression:(id)a3 underExpression:(id)a4 overExpression:(id)a5
{
  v12.receiver = self;
  v12.super_class = AXMathExpressionUnderOver;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(AXMathExpressionUnderOver *)&v12 init];
  [(AXMathExpressionUnderOver *)v10 setBaseExpression:v9, v12.receiver, v12.super_class];

  [(AXMathExpressionUnderOver *)v10 setUnderExpression:v8];
  [(AXMathExpressionUnderOver *)v10 setOverExpression:v7];

  return v10;
}

@end