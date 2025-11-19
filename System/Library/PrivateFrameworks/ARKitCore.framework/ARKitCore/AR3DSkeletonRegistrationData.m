@interface AR3DSkeletonRegistrationData
- (AR3DSkeletonRegistrationData)init;
- (BOOL)isEqual:(id)a3;
- (__n128)setVisionTransform:(__n128)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AR3DSkeletonRegistrationData

- (AR3DSkeletonRegistrationData)init
{
  v6.receiver = self;
  v6.super_class = AR3DSkeletonRegistrationData;
  result = [(AR3DSkeletonRegistrationData *)&v6 init];
  if (result)
  {
    result->_estimatedScaleFactor = 1.0;
    v3 = MEMORY[0x1E69E9B18];
    v4 = *(MEMORY[0x1E69E9B18] + 16);
    *&result[1].super.isa = *MEMORY[0x1E69E9B18];
    *&result[1]._timestamp = v4;
    v5 = *(v3 + 48);
    *&result[2].super.isa = *(v3 + 32);
    *&result[2]._timestamp = v5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = LODWORD(self->_estimatedScaleFactor);
  v5 = *&self[1].super.isa;
  v6 = *&self[1]._timestamp;
  v7 = *&self[2]._timestamp;
  *(result + 4) = *&self[2].super.isa;
  *(result + 5) = v7;
  *(result + 2) = v5;
  *(result + 3) = v6;
  *(result + 2) = *&self->_timestamp;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = v5;
    if (vabdd_f64(*(v5 + 2), self->_timestamp) >= 0.00000011920929 || vabds_f32(*(v5 + 2), self->_estimatedScaleFactor) >= 0.00000011921)
    {
      v7 = 0;
    }

    else
    {
      v7 = AREqualTransforms(*(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *&self[1].super.isa, *&self[1]._timestamp, *&self[2].super.isa, *&self[2]._timestamp);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (__n128)setVisionTransform:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

@end