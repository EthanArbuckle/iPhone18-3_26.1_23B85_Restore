@interface CAMediaTimingFunction(MKAdditions)
+ (id)sigmoidFunction;
@end

@implementation CAMediaTimingFunction(MKAdditions)

+ (id)sigmoidFunction
{
  v0 = sigmoidFunction__sigmoidFunction;
  if (!sigmoidFunction__sigmoidFunction)
  {
    v1 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v2) = 0.5;
    LODWORD(v3) = 0.5;
    LODWORD(v4) = 0.5;
    LODWORD(v5) = 1.0;
    v6 = [v1 initWithControlPoints:v2 :v3 :v4 :v5];
    v7 = sigmoidFunction__sigmoidFunction;
    sigmoidFunction__sigmoidFunction = v6;

    v0 = sigmoidFunction__sigmoidFunction;
  }

  return v0;
}

@end