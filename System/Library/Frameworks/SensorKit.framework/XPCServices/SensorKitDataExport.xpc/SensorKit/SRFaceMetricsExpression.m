@interface SRFaceMetricsExpression
- (id)sr_dictionaryRepresentation;
@end

@implementation SRFaceMetricsExpression

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"identifier";
  v4[1] = @"value";
  v5[0] = [(SRFaceMetricsExpression *)self identifier];
  [(SRFaceMetricsExpression *)self value];
  v5[1] = [NSNumber numberWithDouble:?];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

@end