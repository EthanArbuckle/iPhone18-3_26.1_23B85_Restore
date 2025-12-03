@interface _CLVIOEstimation
- (CGSize)cameraImageResolution;
- (_CLVIOEstimation)initWithCoder:(id)coder;
- (__n128)cameraIntrinsics;
- (__n128)cameraPose;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (__n128)setCameraPose:(__n128)pose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setInertialCovarianceInfo:(id *)info;
- (void)setInertialStateInfo:(id *)info;
@end

@implementation _CLVIOEstimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVIOEstimation;
  [(_CLVIOEstimation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_trackingState;
  *(v5 + 16) = self->_originTimestamp;
  *(v5 + 24) = self->_timestamp;
  v6 = *&self->_inertialStateInfo.accelBiasLength;
  *(v5 + 64) = *&self->_inertialStateInfo.stateLengthInBytes;
  *(v5 + 80) = v6;
  *(v5 + 32) = [(NSData *)self->_inertialState copyWithZone:zone];
  v7 = *&self->_inertialCovarianceInfo.accelBiasDof;
  *(v5 + 88) = *&self->_inertialCovarianceInfo.covarianceSizeInBytes;
  *(v5 + 104) = v7;
  *(v5 + 40) = [(NSData *)self->_inertialCovariance copyWithZone:zone];
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

- (_CLVIOEstimation)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = _CLVIOEstimation;
  v4 = [(_CLVIOEstimation *)&v22 init];
  if (v4)
  {
    v4->_trackingState = [coder decodeIntForKey:@"trackingState"];
    [coder decodeDoubleForKey:@"originTimestamp"];
    v4->_originTimestamp = v5;
    [coder decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v6;
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inertialStateInfo"];
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
    v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inertialState"];
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
    v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inertialCovarianceInfo"];
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
    v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inertialCovariance"];
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
    v15 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"cameraPose"];
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = v15;
    if ([v15 length] == 64 && (objc_msgSend(v16, "getBytes:length:", &v4[1], 64), (v17 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"cameraIntrinsics")) != 0) && (v18 = v17, objc_msgSend(v17, "length") == 48) && (objc_msgSend(v18, "getBytes:length:", v4->_anon_70, 48), (v19 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"cameraImageResolutionKey")) != 0) && (v20 = v19, !strcmp(objc_msgSend(v19, "objCType"), "{CGSize=dd}")))
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_trackingState forKey:@"trackingState"];
  [coder encodeDouble:@"originTimestamp" forKey:self->_originTimestamp];
  [coder encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self->_inertialStateInfo, 24), @"inertialStateInfo"}];
  [coder encodeObject:self->_inertialState forKey:@"inertialState"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self->_inertialCovarianceInfo, 24), @"inertialCovarianceInfo"}];
  [coder encodeObject:self->_inertialCovariance forKey:@"inertialCovariance"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self[1], 64), @"cameraPose"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", self->_anon_70, 48), @"cameraIntrinsics"}];
  v5 = [MEMORY[0x1E696B098] value:&self->_cameraImageResolution withObjCType:"{CGSize=dd}"];

  [coder encodeObject:v5 forKey:@"cameraImageResolutionKey"];
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = [indent stringByAppendingString:@"\t"];
  v75 = MEMORY[0x1E696AEC0];
  trackingState = [(_CLVIOEstimation *)self trackingState];
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

  inertialState = [(_CLVIOEstimation *)self inertialState];
  inertialState2 = [(_CLVIOEstimation *)self inertialState];
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

  inertialCovariance = [(_CLVIOEstimation *)self inertialCovariance];
  inertialCovariance2 = [(_CLVIOEstimation *)self inertialCovariance];
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
  return [v75 stringWithFormat:@"<_CLVIOEstimation: %p> {\n%@.trackingState = %d, \n%@.originTimestamp = %f, \n%@.timestamp = %f, \n%@.inertialStateInfo = { .stateLengthInbytes = %lu, .stateLength = %d, ... }, \n%@.inertialState = <NSData: %p> %@, \n%@.inertialCovarianceInfo = { .covarianceSizeInbytes = %lu, .covariance = %d, ... }, \n%@.inertialCovariance = <NSData: %p> %@, \n%@.cameraPose = [%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f], \n%@.cameraIntrinsics = [%f, %f, %f;\n%@%f, %f, %f;\n%@%f, %f, %f], \n%@.cameraImageResolution = [%f, %f]\n%@}", self, indent, trackingState, indent, v73, indent, v72, indent, v71, v70, indent, inertialState, inertialState2, indent, v12, v13, indent, inertialCovariance, inertialCovariance2, indent, *&v69, *&v68, *&v67, *&v66, v7, *&v65, *&v64, *&v63, *&v62, v7, *&v61, *&v60, *&v59, *&v58, v7, *&v57, *&v56, *&v55, *&v54, indent, *&v53, *&v52, *&v35, v7, *&v37, *&v39, *&v41, v7, *&v43, *&v45, *&v47, indent, v49, v50, endIndent];
}

- (void)setInertialStateInfo:(id *)info
{
  v3 = *&info->var0;
  *&self->_inertialStateInfo.accelBiasLength = *&info->var9;
  *&self->_inertialStateInfo.stateLengthInBytes = v3;
}

- (void)setInertialCovarianceInfo:(id *)info
{
  v3 = *&info->var0;
  *&self->_inertialCovarianceInfo.accelBiasDof = *&info->var9;
  *&self->_inertialCovarianceInfo.covarianceSizeInBytes = v3;
}

- (__n128)cameraPose
{
  result = *(self + 160);
  v2 = *(self + 176);
  v3 = *(self + 192);
  v4 = *(self + 208);
  return result;
}

- (__n128)setCameraPose:(__n128)pose
{
  result[10] = a2;
  result[11] = pose;
  result[12] = a4;
  result[13] = a5;
  return result;
}

- (__n128)cameraIntrinsics
{
  result = *(self + 112);
  v2 = *(self + 128);
  v3 = *(self + 144);
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[7] = a2;
  result[8] = intrinsics;
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