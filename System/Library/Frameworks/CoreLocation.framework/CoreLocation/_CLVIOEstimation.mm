@interface _CLVIOEstimation
- (CGSize)cameraImageResolution;
- (_CLVIOEstimation)initWithCoder:(id)a3;
- (__n128)cameraIntrinsics;
- (__n128)cameraPose;
- (__n128)setCameraIntrinsics:(__n128)a3;
- (__n128)setCameraPose:(__n128)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setInertialCovarianceInfo:(id *)a3;
- (void)setInertialStateInfo:(id *)a3;
@end

@implementation _CLVIOEstimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVIOEstimation;
  [(_CLVIOEstimation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_trackingState;
  *(v5 + 16) = self->_originTimestamp;
  *(v5 + 24) = self->_timestamp;
  v6 = *&self->_inertialStateInfo.accelBiasLength;
  *(v5 + 64) = *&self->_inertialStateInfo.stateLengthInBytes;
  *(v5 + 80) = v6;
  *(v5 + 32) = [(NSData *)self->_inertialState copyWithZone:a3];
  v7 = *&self->_inertialCovarianceInfo.accelBiasDof;
  *(v5 + 88) = *&self->_inertialCovarianceInfo.covarianceSizeInBytes;
  *(v5 + 104) = v7;
  *(v5 + 40) = [(NSData *)self->_inertialCovariance copyWithZone:a3];
  cameraImageResolution = self[1]._cameraImageResolution;
  v10 = *&self[1].super.isa;
  v9 = *&self[1]._originTimestamp;
  *(v5 + 192) = *&self[1]._inertialState;
  *(v5 + 208) = cameraImageResolution;
  *(v5 + 160) = v10;
  *(v5 + 176) = v9;
  v12 = *&self->_anon_70[16];
  v11 = *&self->_anon_70[32];
  *(v5 + 112) = *self->_anon_70;
  *(v5 + 128) = v12;
  *(v5 + 144) = v11;
  *(v5 + 48) = self->_cameraImageResolution;
  return v5;
}

- (_CLVIOEstimation)initWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = _CLVIOEstimation;
  v4 = [(_CLVIOEstimation *)&v22 init];
  if (v4)
  {
    v4->_trackingState = [a3 decodeIntForKey:@"trackingState"];
    [a3 decodeDoubleForKey:@"originTimestamp"];
    v4->_originTimestamp = v5;
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v6;
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inertialStateInfo"];
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    if ([v7 length] != 24)
    {
      goto LABEL_20;
    }

    [v8 getBytes:&v4->_inertialStateInfo length:24];
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inertialState"];
    if (v9)
    {
      v10 = v9;
      if ([(NSData *)v9 length]== v4->_inertialStateInfo.stateLengthInBytes)
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }
    }

    v4->_inertialState = v9;
    v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inertialCovarianceInfo"];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = v11;
    if ([v11 length] != 24)
    {
      goto LABEL_20;
    }

    [v12 getBytes:&v4->_inertialCovarianceInfo length:24];
    v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inertialCovariance"];
    if (v13)
    {
      v14 = v13;
      if ([(NSData *)v13 length]== v4->_inertialCovarianceInfo.covarianceSizeInBytes)
      {
        v13 = v14;
      }

      else
      {
        v13 = 0;
      }
    }

    v4->_inertialCovariance = v13;
    v15 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"cameraPose"];
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = v15;
    if ([v15 length] == 64 && (objc_msgSend(v16, "getBytes:length:", &v4[1], 64), (v17 = objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"cameraIntrinsics")) != 0) && (v18 = v17, objc_msgSend(v17, "length") == 48) && (objc_msgSend(v18, "getBytes:length:", v4->_anon_70, 48), (v19 = objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"cameraImageResolutionKey")) != 0) && (v20 = v19, !strcmp(objc_msgSend(v19, "objCType"), "{CGSize=dd}")))
    {
      [v20 getValue:&v4->_cameraImageResolution];
    }

    else
    {
LABEL_20:

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_trackingState forKey:@"trackingState"];
  [a3 encodeDouble:@"originTimestamp" forKey:self->_originTimestamp];
  [a3 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self->_inertialStateInfo, 24), @"inertialStateInfo"}];
  [a3 encodeObject:self->_inertialState forKey:@"inertialState"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self->_inertialCovarianceInfo, 24), @"inertialCovarianceInfo"}];
  [a3 encodeObject:self->_inertialCovariance forKey:@"inertialCovariance"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self[1], 64), @"cameraPose"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", self->_anon_70, 48), @"cameraIntrinsics"}];
  v5 = [MEMORY[0x1E696B098] value:&self->_cameraImageResolution withObjCType:"{CGSize=dd}"];

  [a3 encodeObject:v5 forKey:@"cameraImageResolutionKey"];
}

- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4
{
  v7 = [a3 stringByAppendingString:@"\t"];
  v75 = MEMORY[0x1E696AEC0];
  v74 = [(_CLVIOEstimation *)self trackingState];
  [(_CLVIOEstimation *)self originTimestamp];
  v73 = v8;
  [(_CLVIOEstimation *)self timestamp];
  v72 = v9;
  if (self)
  {
    [(_CLVIOEstimation *)self inertialStateInfo];
    v71 = v79;
    [(_CLVIOEstimation *)self inertialStateInfo];
    v70 = v78;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v10 = [(_CLVIOEstimation *)self inertialState];
  v11 = [(_CLVIOEstimation *)self inertialState];
  if (self)
  {
    [(_CLVIOEstimation *)self inertialCovarianceInfo];
    v12 = v77;
    [(_CLVIOEstimation *)self inertialCovarianceInfo];
    v13 = v76;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = [(_CLVIOEstimation *)self inertialCovariance];
  v15 = [(_CLVIOEstimation *)self inertialCovariance];
  [(_CLVIOEstimation *)self cameraPose];
  v69 = v16;
  [(_CLVIOEstimation *)self cameraPose];
  v68 = v17;
  [(_CLVIOEstimation *)self cameraPose];
  v67 = v18;
  [(_CLVIOEstimation *)self cameraPose];
  v66 = v19;
  [(_CLVIOEstimation *)self cameraPose];
  v65 = v20;
  [(_CLVIOEstimation *)self cameraPose];
  v64 = v21;
  [(_CLVIOEstimation *)self cameraPose];
  v63 = v22;
  [(_CLVIOEstimation *)self cameraPose];
  v62 = v23;
  [(_CLVIOEstimation *)self cameraPose];
  v61 = v24;
  [(_CLVIOEstimation *)self cameraPose];
  v60 = v25;
  [(_CLVIOEstimation *)self cameraPose];
  v59 = v26;
  [(_CLVIOEstimation *)self cameraPose];
  v58 = v27;
  [(_CLVIOEstimation *)self cameraPose];
  v57 = v28;
  [(_CLVIOEstimation *)self cameraPose];
  v56 = v29;
  [(_CLVIOEstimation *)self cameraPose];
  v55 = v30;
  [(_CLVIOEstimation *)self cameraPose];
  v54 = v31;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v53 = v32;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v52 = v33;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v35 = v34;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v37 = v36;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v39 = v38;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v41 = v40;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v43 = v42;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v45 = v44;
  [(_CLVIOEstimation *)self cameraIntrinsics];
  v47 = v46;
  [(_CLVIOEstimation *)self cameraImageResolution];
  v49 = v48;
  [(_CLVIOEstimation *)self cameraImageResolution];
  return [v75 stringWithFormat:@"<_CLVIOEstimation: %p> {\n%@.trackingState = %d, \n%@.originTimestamp = %f, \n%@.timestamp = %f, \n%@.inertialStateInfo = { .stateLengthInbytes = %lu, .stateLength = %d, ... }, \n%@.inertialState = <NSData: %p> %@, \n%@.inertialCovarianceInfo = { .covarianceSizeInbytes = %lu, .covariance = %d, ... }, \n%@.inertialCovariance = <NSData: %p> %@, \n%@.cameraPose = [%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f], \n%@.cameraIntrinsics = [%f, %f, %f;\n%@%f, %f, %f;\n%@%f, %f, %f], \n%@.cameraImageResolution = [%f, %f]\n%@}", self, a3, v74, a3, v73, a3, v72, a3, v71, v70, a3, v10, v11, a3, v12, v13, a3, v14, v15, a3, *&v69, *&v68, *&v67, *&v66, v7, *&v65, *&v64, *&v63, *&v62, v7, *&v61, *&v60, *&v59, *&v58, v7, *&v57, *&v56, *&v55, *&v54, a3, *&v53, *&v52, *&v35, v7, *&v37, *&v39, *&v41, v7, *&v43, *&v45, *&v47, a3, v49, v50, a4];
}

- (void)setInertialStateInfo:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_inertialStateInfo.accelBiasLength = *&a3->var9;
  *&self->_inertialStateInfo.stateLengthInBytes = v3;
}

- (void)setInertialCovarianceInfo:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_inertialCovarianceInfo.accelBiasDof = *&a3->var9;
  *&self->_inertialCovarianceInfo.covarianceSizeInBytes = v3;
}

- (__n128)cameraPose
{
  result = *(a1 + 160);
  v2 = *(a1 + 176);
  v3 = *(a1 + 192);
  v4 = *(a1 + 208);
  return result;
}

- (__n128)setCameraPose:(__n128)a3
{
  result[10] = a2;
  result[11] = a3;
  result[12] = a4;
  result[13] = a5;
  return result;
}

- (__n128)cameraIntrinsics
{
  result = *(a1 + 112);
  v2 = *(a1 + 128);
  v3 = *(a1 + 144);
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  return result;
}

- (CGSize)cameraImageResolution
{
  width = self->_cameraImageResolution.width;
  height = self->_cameraImageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end