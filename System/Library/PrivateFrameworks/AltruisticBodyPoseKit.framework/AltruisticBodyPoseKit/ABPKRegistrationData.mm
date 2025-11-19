@interface ABPKRegistrationData
- (ABPKRegistrationData)initWithImagePoints:(ABPKRegistrationData *)self imagePointsCount:(SEL)a2 jointsLifted3D:jointsLifted3DCount:cameraIntrinsics:imageDimensions:cameraFromBodyPose:registrationValid:;
- (CGSize)imageDimensions;
- (__n128)cameraFromBodyPose;
- (__n128)cameraIntrinsics;
- (id).cxx_construct;
@end

@implementation ABPKRegistrationData

- (ABPKRegistrationData)initWithImagePoints:(ABPKRegistrationData *)self imagePointsCount:(SEL)a2 jointsLifted3D:jointsLifted3DCount:cameraIntrinsics:imageDimensions:cameraFromBodyPose:registrationValid:
{
  v12 = v6;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = v11;
  v17 = v10;
  v29 = v8;
  v30 = v9;
  v28 = v7;
  v18 = v2;
  v33.receiver = self;
  v33.super_class = ABPKRegistrationData;
  v19 = [(ABPKRegistrationData *)&v33 init];
  v20 = v19;
  if (v19)
  {
    v19->_imagePointsCount = v15;
    v31 = 0uLL;
    v32 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v31, v18, v18 + 8 * v15, v15);
    v21 = *v20->_anon_8;
    if (v21)
    {
      *&v20->_anon_8[8] = v21;
      operator delete(v21);
      *v20->_anon_8 = 0;
      *&v20->_anon_8[8] = 0;
      *&v20->_anon_8[16] = 0;
    }

    *v20->_anon_8 = v31;
    *&v20->_anon_8[16] = v32;
    v20->_jointsLifted3DCount = v13;
    v31 = 0uLL;
    v32 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v31, v14, v14 + 16 * v13, v13);
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v26 = *v20->_anon_20;
    if (v26)
    {
      *&v20->_anon_20[8] = v26;
      operator delete(v26);
      v25 = v37;
      v24 = v36;
      v23 = v35;
      v22 = v34;
      *v20->_anon_20 = 0;
      *&v20->_anon_20[8] = 0;
      *&v20->_anon_20[16] = 0;
    }

    *v20->_anon_20 = v31;
    *&v20->_anon_20[16] = v32;
    *v20->_anon_60 = v28;
    *&v20->_anon_60[16] = v29;
    v20->_imageDimensions.width = v17;
    v20->_imageDimensions.height = v16;
    *&v20->_anon_60[32] = v30;
    *&v20[1].super.isa = v22;
    *&v20[1]._anon_8[8] = v23;
    *v20[1]._anon_20 = v24;
    *&v20[1]._anon_20[16] = v25;
    v20->_registrationValid = v12;
  }

  return v20;
}

- (__n128)cameraIntrinsics
{
  result = *(a1 + 96);
  v2 = *(a1 + 112);
  v3 = *(a1 + 128);
  return result;
}

- (CGSize)imageDimensions
{
  width = self->_imageDimensions.width;
  height = self->_imageDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)cameraFromBodyPose
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  v4 = *(a1 + 192);
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