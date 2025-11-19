@interface LAACLBuilderCustomACLParams
- (LAACLBuilderCustomACLParams)init;
@end

@implementation LAACLBuilderCustomACLParams

- (LAACLBuilderCustomACLParams)init
{
  v9.receiver = self;
  v9.super_class = LAACLBuilderCustomACLParams;
  v2 = [(LAACLBuilderCustomACLParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    *(v2 + 8) = vnegq_f64(v4);
    v5 = *(v2 + 3);
    v6 = MEMORY[0x1E695E0F8];
    *(v2 + 3) = MEMORY[0x1E695E0F8];

    credentials = v3->_credentials;
    v3->_credentials = v6;
  }

  return v3;
}

@end