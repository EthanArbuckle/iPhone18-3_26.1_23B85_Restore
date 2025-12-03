@interface SCNJSValue
+ (id)valueWithMatrix4:(SCNMatrix4 *)matrix4;
- (SCNMatrix4)matrix4;
@end

@implementation SCNJSValue

+ (id)valueWithMatrix4:(SCNMatrix4 *)matrix4
{
  v3 = *&matrix4->m21;
  v6[0] = *&matrix4->m11;
  v6[1] = v3;
  v4 = *&matrix4->m41;
  v6[2] = *&matrix4->m31;
  v6[3] = v4;
  return [(NSValue *)SCNJSValue valueWithSCNMatrix4:v6];
}

- (SCNMatrix4)matrix4
{
  if (self)
  {
    return [(SCNMatrix4 *)self SCNMatrix4Value];
  }

  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  return self;
}

@end