@interface SCNJSValue
+ (id)valueWithMatrix4:(SCNMatrix4 *)a3;
- (SCNMatrix4)matrix4;
@end

@implementation SCNJSValue

+ (id)valueWithMatrix4:(SCNMatrix4 *)a3
{
  v3 = *&a3->m21;
  v6[0] = *&a3->m11;
  v6[1] = v3;
  v4 = *&a3->m41;
  v6[2] = *&a3->m31;
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