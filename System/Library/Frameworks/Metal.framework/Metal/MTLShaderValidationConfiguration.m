@interface MTLShaderValidationConfiguration
- (BOOL)isEqual:(id)a3;
- (MTLShaderValidationConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MTLShaderValidationConfiguration

- (MTLShaderValidationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MTLShaderValidationConfiguration;
  result = [(MTLShaderValidationConfiguration *)&v3 init];
  *&result->_enableBoundsChecking = 0;
  result->_enableStackOverflow = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 8) = self->_enableBoundsChecking;
  *(result + 9) = self->_enableThreadgroupMemoryChecks;
  *(result + 10) = self->_enableTextureChecks;
  *(result + 11) = self->_enableResourceUsageValidation;
  *(result + 12) = self->_enableStackOverflow;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  return *(a3 + 2) == *&self->_enableBoundsChecking && *(a3 + 12) == self->_enableStackOverflow;
}

- (unint64_t)hash
{
  v2.i32[0] = *&self->_enableBoundsChecking;
  v3 = vmovl_u16((vmovl_u8(v2).u64[0] & 0xFF01FF01FF01FF01));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  v8[1] = vandq_s8(v4, v5);
  v8[0] = v6;
  enableStackOverflow = self->_enableStackOverflow;
  return _MTLHashState(v8, 0x28uLL);
}

@end