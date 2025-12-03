@interface _CLVLLocalizationResult
- ($153C3A5BC4E016D58A1B9CA554FFC462)location;
- ($4ED12C4C7630B45462BF021B0F75306B)covariance;
- (_CLVLLocalizationResult)initWithCoder:(id)coder;
- (_CLVLLocalizationResult)initWithTimestamp:(double)timestamp localizationResult:(id)result;
- (__n128)setTransform:(__int128 *)transform;
- (__n128)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCovariance:(id *)covariance;
- (void)setLocation:(id)location;
@end

@implementation _CLVLLocalizationResult

- (_CLVLLocalizationResult)initWithTimestamp:(double)timestamp localizationResult:(id)result
{
  v31 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _CLVLLocalizationResult;
  v6 = [(_CLVLLocalizationResult *)&v21 init];
  v7 = v6;
  if (v6)
  {
    if (result)
    {
      v6->_timestamp = timestamp;
      [result location];
      v9 = v23;
      v8 = v24;
      *v7->_anon_20 = v22;
      *&v7->_anon_20[16] = v9;
      *&v7->_anon_20[32] = v8;
      [result transform];
      v10 = v27;
      *&v7->_anon_50[64] = v26;
      *&v7->_anon_50[80] = v10;
      v11 = v29;
      *&v7->_anon_50[96] = v28;
      *&v7->_anon_50[112] = v11;
      v12 = v23;
      *v7->_anon_50 = v22;
      *&v7->_anon_50[16] = v12;
      v13 = v25;
      *&v7->_anon_50[32] = v24;
      *&v7->_anon_50[48] = v13;
      [result confidence];
      v7->_confidence = v14;
      [result covariance];
      v15 = v29;
      *&v7->_covariance.v[4][0] = v28;
      *&v7->_covariance.v[4][4] = v15;
      *&v7->_covariance.v[5][2] = v30;
      v16 = v25;
      *&v7->_covariance.v[1][2] = v24;
      *&v7->_covariance.v[2][0] = v16;
      v17 = v27;
      *&v7->_covariance.v[2][4] = v26;
      *&v7->_covariance.v[3][2] = v17;
      v18 = v23;
      *&v7->_covariance.v[0][0] = v22;
      *&v7->_covariance.v[0][4] = v18;
      v7->_debugInfo = 0;
      if ([result debugInfo])
      {
        v7->_debugInfo = -[_CLVLLocalizationDebugInfo initWithVLLocalizationDebugInfo:]([_CLVLLocalizationDebugInfo alloc], "initWithVLLocalizationDebugInfo:", [result debugInfo]);
      }
    }

    else
    {

      v7 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVLLocalizationResult;
  [(_CLVLLocalizationResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_timestamp;
  v6 = *self->_anon_20;
  v7 = *&self->_anon_20[32];
  *(v5 + 48) = *&self->_anon_20[16];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  v9 = *&self->_anon_50[64];
  v8 = *&self->_anon_50[80];
  v10 = *&self->_anon_50[112];
  *(v5 + 176) = *&self->_anon_50[96];
  *(v5 + 192) = v10;
  *(v5 + 144) = v9;
  *(v5 + 160) = v8;
  v11 = *&self->_anon_50[16];
  v12 = *&self->_anon_50[32];
  v13 = *&self->_anon_50[48];
  *(v5 + 80) = *self->_anon_50;
  *(v5 + 96) = v11;
  *(v5 + 112) = v12;
  *(v5 + 128) = v13;
  *(v5 + 208) = *&self->_covariance.v[0][0];
  v14 = *&self->_covariance.v[2][4];
  v16 = *&self->_covariance.v[0][4];
  v15 = *&self->_covariance.v[1][2];
  *(v5 + 256) = *&self->_covariance.v[2][0];
  *(v5 + 272) = v14;
  *(v5 + 224) = v16;
  *(v5 + 240) = v15;
  v17 = *&self->_covariance.v[5][2];
  v19 = *&self->_covariance.v[3][2];
  v18 = *&self->_covariance.v[4][0];
  *(v5 + 320) = *&self->_covariance.v[4][4];
  *(v5 + 336) = v17;
  *(v5 + 288) = v19;
  *(v5 + 304) = v18;
  *(v5 + 8) = self->_confidence;
  *(v5 + 24) = [(_CLVLLocalizationDebugInfo *)self->_debugInfo copyWithZone:zone];
  return v5;
}

- (_CLVLLocalizationResult)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = _CLVLLocalizationResult;
  v4 = [(_CLVLLocalizationResult *)&v14 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v5;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    if (v6 && (v7 = v6, [v6 length] == 48) && (objc_msgSend(v7, "getBytes:length:", v4->_anon_20, 48), (v8 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"transform")) != 0) && (v9 = v8, objc_msgSend(v8, "length") == 128) && (objc_msgSend(v9, "getBytes:length:", v4->_anon_50, 128), (v10 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"covariance")) != 0) && (v11 = v10, objc_msgSend(v10, "length") == 144))
    {
      [v11 getBytes:&v4->_covariance length:144];
      [coder decodeFloatForKey:@"confidence"];
      v4->_confidence = v12;
      if ([coder containsValueForKey:@"debugInfo"])
      {
        v4->_debugInfo = [coder decodeObjectOfClass:objc_opt_class() forKey:@"debugInfo"];
      }

      else
      {
        v4->_debugInfo = 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", self->_anon_20, 48), @"location"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", self->_anon_50, 128), @"transform"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self->_covariance, 144), @"covariance"}];
  *&v5 = self->_confidence;
  [coder encodeFloat:@"confidence" forKey:v5];
  debugInfo = self->_debugInfo;

  [coder encodeObject:debugInfo forKey:@"debugInfo"];
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = [indent stringByAppendingString:@"\t"];
  v8 = [endIndent stringByAppendingString:@"\t"];
  v9 = MEMORY[0x1E696AEC0];
  [(_CLVLLocalizationResult *)self timestamp];
  v11 = v10;
  if (self)
  {
    [(_CLVLLocalizationResult *)self location];
    v56 = v101;
    [(_CLVLLocalizationResult *)self location];
    *(&v42 + 1) = v100;
    [(_CLVLLocalizationResult *)self location];
    v55 = v99;
    [(_CLVLLocalizationResult *)self location];
    v54 = v98;
    [(_CLVLLocalizationResult *)self transform];
    v53 = v97;
    [(_CLVLLocalizationResult *)self transform];
    v51 = v96;
    [(_CLVLLocalizationResult *)self transform];
    v52 = v95;
    [(_CLVLLocalizationResult *)self transform];
    v49 = v94;
    [(_CLVLLocalizationResult *)self transform];
    v50 = v93;
    [(_CLVLLocalizationResult *)self transform];
    v48 = v92;
    [(_CLVLLocalizationResult *)self transform];
    v44 = v91;
    [(_CLVLLocalizationResult *)self transform];
    v47 = v90;
    [(_CLVLLocalizationResult *)self transform];
    v40 = v89;
    [(_CLVLLocalizationResult *)self transform];
    v43 = v88;
    [(_CLVLLocalizationResult *)self transform];
    v39 = v87;
    [(_CLVLLocalizationResult *)self transform];
    v46 = v86;
    [(_CLVLLocalizationResult *)self transform];
    v38 = v85;
    [(_CLVLLocalizationResult *)self transform];
    v45 = v84;
    [(_CLVLLocalizationResult *)self transform];
    v57 = v83;
    [(_CLVLLocalizationResult *)self transform];
    v41 = v82;
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    [(_CLVLLocalizationResult *)self covariance];
    v35 = v81;
    v27 = v58;
    v17 = v59;
    v29 = v60;
    v12 = v61;
    v30 = v62;
    v13 = v63;
    v20 = v64;
    v14 = v65;
    v21 = v66;
    v19 = v67;
    v22 = v68;
    v18 = v69;
    v34 = v70;
    v26 = v71;
    v36 = v72;
    v25 = v73;
    v37 = v74;
    v24 = v75;
    v31 = v76;
    v23 = v77;
    v32 = v78;
    v28 = v79;
    v33 = v80;
  }

  else
  {
    v50 = 0u;
    v52 = 0u;
    v53 = 0u;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v51 = 0u;
    v49 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v41 = 0u;
    v37 = 0.0;
    v36 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v27 = 0.0;
    v34 = 0.0;
    v22 = 0.0;
    v21 = 0.0;
    v20 = 0.0;
    v33 = 0.0;
    v32 = 0.0;
    v31 = 0.0;
    v42 = 0u;
    v43 = 0u;
    v28 = 0.0;
    v35 = 0.0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v44 = 0u;
    v19 = 0.0;
    v18 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
    v17 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v57 = 0u;
  }

  [(_CLVLLocalizationResult *)self confidence];
  [(_CLVLLocalizationDebugInfo *)[(_CLVLLocalizationResult *)self debugInfo] descriptionWithMemberIndent:v7 endIndent:v8];
  result = [v9 stringWithFormat:@"<_CLVLLocalizationResult: %p> {\n%@.timestamp = %f, \n%@.location = {\n%@.coordinate = [%f, %f, %f], \n%@.horizontalAccuracy = %f\n%@}, \n%@.transform = [%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f], \n%@.covariance = [%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f], \n%@.confidence = %f\n%@.debugInfo = %@\n%@}", self, indent, v11, indent, v7, v56, *(&v42 + 1), v55, v7, v54, v8, indent, vzip1q_s64(v53, v51), vzip1q_s64(v52, v49), v7, vzip2q_s64(v50, v48), vzip2q_s64(v44, v47), v7, vzip1q_s64(v40, v43), vzip1q_s64(v39, v46), v7, vzip2q_s64(v38, v45), vzip2q_s64(v57, v41), indent, *&v35, *&v33, *&v28, *&v32, *&v23, *&v31, v7, *&v24, *&v37, *&v25, *&v36, *&v26, *&v34, v7, *&v18, *&v22, *&v19, *&v21, *&v14, *&v20, v7, *&v13, *&v30, *&v12, *&v29, *&v17, *&v27, v7];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)location
{
  v3 = *&self->_anon_20[16];
  *v2 = *self->_anon_20;
  v2[1] = v3;
  v4 = *&self->_anon_20[32];
  v2[2] = v4;
  return v4;
}

- (void)setLocation:(id)location
{
  v4 = *v3;
  v5 = v3[2];
  *&self->_anon_20[16] = v3[1];
  *&self->_anon_20[32] = v5;
  *self->_anon_20 = v4;
}

- (__n128)transform
{
  v2 = *(self + 160);
  *(a2 + 64) = *(self + 144);
  *(a2 + 80) = v2;
  v3 = *(self + 192);
  *(a2 + 96) = *(self + 176);
  *(a2 + 112) = v3;
  v4 = *(self + 96);
  *a2 = *(self + 80);
  *(a2 + 16) = v4;
  result = *(self + 112);
  v6 = *(self + 128);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransform:(__int128 *)transform
{
  v3 = *transform;
  v4 = transform[1];
  v5 = transform[3];
  *(self + 112) = transform[2];
  *(self + 128) = v5;
  *(self + 80) = v3;
  *(self + 96) = v4;
  result = transform[4];
  v7 = transform[5];
  v8 = transform[7];
  *(self + 176) = transform[6];
  *(self + 192) = v8;
  *(self + 144) = result;
  *(self + 160) = v7;
  return result;
}

- ($4ED12C4C7630B45462BF021B0F75306B)covariance
{
  v3 = *&self[2].var0[1][2];
  *&retstr->var0[4][0] = *&self[2].var0[0][4];
  *&retstr->var0[4][4] = v3;
  *&retstr->var0[5][2] = *&self[2].var0[2][0];
  v4 = *&self[1].var0[4][4];
  *&retstr->var0[1][2] = *&self[1].var0[4][0];
  *&retstr->var0[2][0] = v4;
  v5 = *&self[2].var0[0][0];
  *&retstr->var0[2][4] = *&self[1].var0[5][2];
  *&retstr->var0[3][2] = v5;
  v6 = *&self[1].var0[3][2];
  *&retstr->var0[0][0] = *&self[1].var0[2][4];
  *&retstr->var0[0][4] = v6;
  return self;
}

- (void)setCovariance:(id *)covariance
{
  *&self->_covariance.v[0][0] = *&covariance->var0[0][0];
  v3 = *&covariance->var0[0][4];
  v4 = *&covariance->var0[1][2];
  v5 = *&covariance->var0[2][4];
  *&self->_covariance.v[2][0] = *&covariance->var0[2][0];
  *&self->_covariance.v[2][4] = v5;
  *&self->_covariance.v[0][4] = v3;
  *&self->_covariance.v[1][2] = v4;
  v6 = *&covariance->var0[3][2];
  v7 = *&covariance->var0[4][0];
  v8 = *&covariance->var0[5][2];
  *&self->_covariance.v[4][4] = *&covariance->var0[4][4];
  *&self->_covariance.v[5][2] = v8;
  *&self->_covariance.v[3][2] = v6;
  *&self->_covariance.v[4][0] = v7;
}

@end