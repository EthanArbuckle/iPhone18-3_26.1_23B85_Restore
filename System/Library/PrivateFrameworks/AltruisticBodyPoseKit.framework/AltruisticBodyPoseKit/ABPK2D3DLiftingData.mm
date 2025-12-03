@interface ABPK2D3DLiftingData
- (ABPK2D3DLiftingData)initWithCoder:(id)coder;
- (ABPK2D3DLiftingData)initWithHumanForLifting:(const void *)lifting imageSize:(CGSize)size rotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (ABPK2D3DLiftingData)initWithJoints:(ABPK2D3DLiftingData *)self numberOfJoints:(SEL)joints imageSize:;
- (ABPK2D3DLiftingData)initWithJoints:(ABPK2D3DLiftingData *)self numberOfJoints:(SEL)joints liftingData3D:liftingData3DElementCount:;
- (ABPK2D3DLiftingData)initWithJoints:(ABPK2D3DLiftingData *)self numberOfJoints:(SEL)joints rotation:croppedRect:liftingData3D:liftingData3DElementCount:;
- (BOOL)isEqual:(id)equal;
- (id).cxx_construct;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)prepareLiftingInput:(ABPK2D3DLiftingData *)self imageSize:(SEL)size pUnnormalizedMultiArray:pMultiArray:;
@end

@implementation ABPK2D3DLiftingData

- (ABPK2D3DLiftingData)initWithJoints:(ABPK2D3DLiftingData *)self numberOfJoints:(SEL)joints liftingData3D:liftingData3DElementCount:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v22.receiver = self;
  v22.super_class = ABPK2D3DLiftingData;
  v10 = [(ABPK2D3DLiftingData *)&v22 init];
  if (v10)
  {
    if (v6 != 32)
    {
      v18 = 0;
      goto LABEL_8;
    }

    v20 = 0uLL;
    v21 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v20, v9, v9 + 8 * v8, v8);
    v11 = *(v10 + 1);
    if (v11)
    {
      *(v10 + 2) = v11;
      operator delete(v11);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
    }

    *(v10 + 8) = v20;
    *(v10 + 3) = v21;
    v12 = *v7;
    v13 = v7[1];
    v14 = v7[2];
    *(v10 + 104) = v7[3];
    *(v10 + 88) = v14;
    *(v10 + 72) = v13;
    *(v10 + 56) = v12;
    v15 = v7[4];
    v16 = v7[5];
    v17 = v7[6];
    *(v10 + 168) = v7[7];
    *(v10 + 152) = v17;
    *(v10 + 136) = v16;
    *(v10 + 120) = v15;
  }

  v18 = v10;
LABEL_8:

  return v18;
}

- (ABPK2D3DLiftingData)initWithJoints:(ABPK2D3DLiftingData *)self numberOfJoints:(SEL)joints rotation:croppedRect:liftingData3D:liftingData3DElementCount:
{
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v3;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  v19 = v2;
  v36.receiver = self;
  v36.super_class = ABPK2D3DLiftingData;
  v20 = [(ABPK2D3DLiftingData *)&v36 init];
  if (v20)
  {
    if (v11 != 32)
    {
      v32 = 0;
      goto LABEL_22;
    }

    v34 = 0uLL;
    v35 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v34, v19, v19 + 8 * v14, v14);
    v21 = *(v20 + 1);
    if (v21)
    {
      *(v20 + 2) = v21;
      operator delete(v21);
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
    }

    *(v20 + 8) = v34;
    *(v20 + 3) = v35;
    v22 = *v12;
    v23 = v12[1];
    v24 = v12[2];
    *(v20 + 104) = v12[3];
    *(v20 + 88) = v24;
    *(v20 + 72) = v23;
    *(v20 + 56) = v22;
    v25 = v12[4];
    v26 = v12[5];
    v27 = v12[6];
    *(v20 + 168) = v12[7];
    *(v20 + 152) = v27;
    *(v20 + 136) = v26;
    *(v20 + 120) = v25;
    *(v20 + 39) = v13;
    if (v13 == -90)
    {
      v28 = v17;
    }

    else
    {
      v28 = v18;
    }

    if (v13 == -90)
    {
      v29 = v18;
    }

    else
    {
      v29 = v17;
    }

    if (v13 == -90)
    {
      v30 = v15;
    }

    else
    {
      v30 = v16;
    }

    if (v13 == -90)
    {
      v31 = v16;
    }

    else
    {
      v31 = v15;
    }

    if (v13 == 90)
    {
      v28 = v17;
      v29 = v18;
      v30 = v15;
      v31 = v16;
    }

    [v20 _rotateAndUndoCroppingFromRect:{v28, v29, v30, v31}];
  }

  v32 = v20;
LABEL_22:

  return v32;
}

- (ABPK2D3DLiftingData)initWithHumanForLifting:(const void *)lifting imageSize:(CGSize)size rotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = size.height;
  v12 = size.width;
  v21.receiver = self;
  v21.super_class = ABPK2D3DLiftingData;
  v14 = [(ABPK2D3DLiftingData *)&v21 init];
  if (v14)
  {
    v15 = abpk::Human::jointVector(lifting);
    if (v14->_anon_8 != v15)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v14->_anon_8, *v15, v15[1], (v15[1] - *v15) >> 3);
    }

    v14->_rotationNeeded = rotation;
    if (rotation == -90)
    {
      v16 = y;
    }

    else
    {
      v16 = x;
    }

    if (rotation == -90)
    {
      v17 = x;
    }

    else
    {
      v17 = y;
    }

    if (rotation == -90)
    {
      v18 = height;
    }

    else
    {
      v18 = width;
    }

    if (rotation == -90)
    {
      v19 = width;
    }

    else
    {
      v19 = height;
    }

    if (rotation == 90)
    {
      v16 = y;
      v17 = x;
      v18 = height;
      v19 = width;
    }

    [(ABPK2D3DLiftingData *)v14 _rotateAndUndoCroppingFromRect:v16, v17, v18, v19];
    [(ABPK2D3DLiftingData *)v14 prepareLiftingInput:*v14->_anon_8 imageSize:&v14->_unnormalizedMultiArray pUnnormalizedMultiArray:&v14->_multiArray pMultiArray:v12, v11];
  }

  return v14;
}

- (ABPK2D3DLiftingData)initWithJoints:(ABPK2D3DLiftingData *)self numberOfJoints:(SEL)joints imageSize:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v16.receiver = self;
  v16.super_class = ABPK2D3DLiftingData;
  v10 = [(ABPK2D3DLiftingData *)&v16 init];
  if (v10)
  {
    v14 = 0uLL;
    v15 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v14, v9, v9 + 8 * v8, v8);
    v11 = *(v10 + 1);
    if (v11)
    {
      *(v10 + 2) = v11;
      operator delete(v11);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
    }

    v12 = v14;
    *(v10 + 8) = v14;
    *(v10 + 3) = v15;
    [v10 prepareLiftingInput:v12 imageSize:v10 + 184 pUnnormalizedMultiArray:v10 + 56 pMultiArray:{v7, v6}];
  }

  return v10;
}

- (void)prepareLiftingInput:(ABPK2D3DLiftingData *)self imageSize:(SEL)size pUnnormalizedMultiArray:pMultiArray:
{
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = 0;
  v11 = &unk_23EE28CF4;
  do
  {
    v12 = v2[v10];
    v14 = *(v11 - 1);
    v13 = *v11;
    if (v12.f32[0] < 0.0 || v12.f32[1] < 0.0)
    {
      v3->i32[v14] = -1082130432;
      v15 = -1.0;
    }

    else
    {
      v12.f32[0] = v5 * v12.f32[0];
      v3->i32[v14] = v12.i32[0];
      v15 = v6 * v12.f32[1];
    }

    v11 += 2;
    v3->f32[v13] = v15;
    ++v10;
  }

  while (v10 != 14);
  v33 = v5;
  v34 = v6;
  if (determineDeviceANEVersionPriorOrEqualToH12())
  {
    *v8 = vmul_f32(vadd_f32(v8[4], v8[1]), 0x3F0000003F000000);
    v16 = v8[8];
    v17 = vmul_f32(vadd_f32(v16, v8[7]), 0x3F0000003F000000);
    v8[8] = v17;
    v18 = -(v17.f32[0] - (v16.f32[0] * 2.0));
    v19 = v17.f32[1] * -0.6 + v16.f32[1] * 1.6;
    v8[9].f32[0] = v18;
  }

  else
  {
    v20 = v9[16];
    if (v20.f32[0] < 0.0 || v20.f32[1] < 0.0)
    {
      __asm { FMOV            V0.2S, #-1.0 }
    }

    else
    {
      v25.f64[0] = v33;
      v25.f64[1] = v34;
      _D0 = vcvt_f32_f64(vmulq_f64(v25, vcvtq_f64_f32(v20)));
    }

    *v8 = _D0;
    v27 = v8[7].f32[0];
    if (v27 >= 0.0 && (v28 = v8[7].f32[1], v28 >= 0.0) && (v29 = v8[8].f32[0], v29 >= 0.0) && (v30 = v8[8].f32[1], v30 >= 0.0))
    {
      v32 = sqrt((v27 - v29) * (v27 - v29) + (v28 - v30) * (v28 - v30));
      v8[9].f32[0] = v29;
      v19 = v30 + v32 * -0.5;
    }

    else
    {
      v19 = v8[8].f32[1];
      v8[9].i32[0] = v8[8].i32[0];
    }
  }

  v31 = 0;
  v8[9].f32[1] = v19;
  do
  {
    *(v7 + v31 * 4) = (v8->f32[v31] - *&[ABPK2D3DLiftingData prepareLiftingInput:imageSize:pUnnormalizedMultiArray:pMultiArray:]::means[v31]) / *&[ABPK2D3DLiftingData prepareLiftingInput:imageSize:pUnnormalizedMultiArray:pMultiArray:]::stdDevs[v31];
    ++v31;
  }

  while (v31 != 32);
}

- (ABPK2D3DLiftingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ABPK2D3DLiftingData;
  v5 = [(ABPK2D3DLiftingData *)&v25 init];
  if (v5)
  {
    *(v5 + 39) = [coderCopy decodeIntegerForKey:@"rotationNeeded"];
    v24 = 0;
    v6 = [coderCopy decodeBytesForKey:@"rawJointsUsedForLifting" returnedLength:&v24];
    v7 = v24 >> 3;
    v22 = 0uLL;
    v23 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v22, v6, v6 + 8 * (v24 >> 3), v24 >> 3);
    v8 = *(v5 + 1);
    if (v8)
    {
      *(v5 + 2) = v8;
      operator delete(v8);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
    }

    *(v5 + 8) = v22;
    *(v5 + 3) = v23;
    v21 = 0;
    v9 = [coderCopy decodeBytesForKey:@"rotatedJointsUsedForLifting" returnedLength:&v21];
    v10 = v21 >> 3;
    v22 = 0uLL;
    v23 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v22, v9, v9 + 8 * (v21 >> 3), v21 >> 3);
    v11 = *(v5 + 4);
    if (v11)
    {
      *(v5 + 5) = v11;
      operator delete(v11);
      *(v5 + 4) = 0;
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
    }

    *(v5 + 2) = v22;
    *(v5 + 6) = v23;
    if (v7 != v10)
    {
      NSLog(&cfstr_InconsistentJo_0.isa);
    }

    *&v22 = 0;
    v12 = [coderCopy decodeBytesForKey:@"multiArray" returnedLength:&v22];
    if (v22 >> 2 != 32)
    {
      NSLog(&cfstr_InconsistentMu.isa, v22 >> 2);
      v19 = 0;
      goto LABEL_12;
    }

    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *(v5 + 104) = v12[3];
    *(v5 + 88) = v15;
    *(v5 + 72) = v14;
    *(v5 + 56) = v13;
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    *(v5 + 168) = v12[7];
    *(v5 + 152) = v18;
    *(v5 + 136) = v17;
    *(v5 + 120) = v16;
  }

  v19 = v5;
LABEL_12:

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_rotationNeeded forKey:@"rotationNeeded"];
  [coderCopy encodeBytes:*self->_anon_8 length:*&self->_anon_8[8] - *self->_anon_8 forKey:@"rawJointsUsedForLifting"];
  [coderCopy encodeBytes:*self->_anon_20 length:*&self->_anon_20[8] - *self->_anon_20 forKey:@"rotatedJointsUsedForLifting"];
  [coderCopy encodeBytes:&self->_multiArray length:128 forKey:@"multiArray"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    jointCount = [(ABPK2D3DLiftingData *)self jointCount];
    if (jointCount == [v5 jointCount])
    {
      v7 = *self->_anon_8;
      v8 = *&self->_anon_8[8];
      v9 = *self->_anon_20;
      v10 = *&self->_anon_20[8];
      if (v8 - v7 == v10 - v9)
      {
        v11 = v8 - v7;
        if (v8 == v7)
        {
LABEL_10:
          if (v10 == v9)
          {
LABEL_15:
            if (self->_rotationNeeded == *(v5 + 39))
            {
              v17 = 0;
              while (vabds_f32(self->_multiArray.__elems_[v17], v5[v17 + 14]) <= 0.00000011921)
              {
                if (++v17 == 32)
                {
                  v18 = 0;
                  while (vabds_f32(self->_unnormalizedMultiArray.__elems_[v18], v5[v18 + 46]) <= 0.00000011921)
                  {
                    if (++v18 == 32)
                    {
                      v19 = 1;
                      goto LABEL_25;
                    }
                  }

                  break;
                }
              }
            }
          }

          else
          {
            v15 = *(v5 + 4);
            if (v11 <= 1)
            {
              v11 = 1;
            }

            while (1)
            {
              v16 = vsub_f32(*v15, *v9);
              if (sqrtf(vaddv_f32(vmul_f32(v16, v16))) > 0.00000011921)
              {
                break;
              }

              ++v9;
              ++v15;
              if (!--v11)
              {
                goto LABEL_15;
              }
            }
          }
        }

        else
        {
          v12 = *(v5 + 1);
          if (v11 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v11;
          }

          while (1)
          {
            v14 = vsub_f32(*v12, *v7);
            if (sqrtf(vaddv_f32(vmul_f32(v14, v14))) > 0.00000011921)
            {
              break;
            }

            ++v7;
            ++v12;
            if (!--v13)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }

    v19 = 0;
LABEL_25:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  result = [(ABPK2D3DLiftingData *)self jointCount];
  if (result)
  {
    v4 = COERCE_FLOAT(**self->_anon_20);
    LODWORD(v5) = HIDWORD(*(*&self->_anon_20[8] - 8));
    return [(ABPK2D3DLiftingData *)self jointCount]^ v4 ^ v5;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end