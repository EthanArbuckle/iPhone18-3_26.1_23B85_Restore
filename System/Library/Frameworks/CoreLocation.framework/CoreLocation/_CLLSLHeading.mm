@interface _CLLSLHeading
- (_CLLSLHeading)initWithCoder:(id)a3;
- (__n128)rotationFromGlobalToCameraFrame;
- (__n128)rotationFromGlobalToDeviceFrame;
- (__n128)rotationalAccuracyInRadians;
- (__n128)setRotationFromGlobalToCameraFrame:(uint64_t)a3;
- (__n128)setRotationFromGlobalToDeviceFrame:(uint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setRotationalAccuracyInRadians:(_CLLSLHeading *)self;
@end

@implementation _CLLSLHeading

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeading;
  [(_CLLSLHeading *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_timestamp;
  v6 = *&self->_anon_50[32];
  v7 = *&self->_anon_50[48];
  v8 = *&self->_anon_50[80];
  *(v5 + 144) = *&self->_anon_50[64];
  *(v5 + 160) = v8;
  *(v5 + 112) = v6;
  *(v5 + 128) = v7;
  v9 = *&self->_anon_50[16];
  *(v5 + 80) = *self->_anon_50;
  *(v5 + 96) = v9;
  v10 = *&self[1]._confidence;
  *(v5 + 176) = *&self[1].super.isa;
  *(v5 + 192) = v10;
  v11 = *self[1]._anon_50;
  v13 = *&self[1]._location;
  v12 = *self[1]._rotationalAccuracyInRadians;
  *(v5 + 240) = *&self[1]._rotationalAccuracyInRadians[16];
  *(v5 + 256) = v11;
  *(v5 + 208) = v13;
  *(v5 + 224) = v12;
  v14 = *&self->_rotationalAccuracyInRadians[16];
  *(v5 + 48) = *self->_rotationalAccuracyInRadians;
  *(v5 + 64) = v14;
  *(v5 + 16) = self->_confidence;
  *(v5 + 24) = self->_globalReferenceFrame;
  *(v5 + 32) = [(_CLLSLLocation *)self->_location copyWithZone:a3];
  *(v5 + 40) = [(_CLLSLHeadingSupplInfo *)self->_supplemantaryInfo copyWithZone:a3];
  return v5;
}

- (_CLLSLHeading)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = _CLLSLHeading;
  v4 = [(_CLLSLHeading *)&v14 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v5;
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"rotationFromGlobalToDeviceFrame"];
    if (v6 && (v7 = v6, [v6 length] == 96) && (objc_msgSend(v7, "getBytes:length:", v4->_anon_50, 96), (v8 = objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"rotationFromGlobalToCameraFrame")) != 0) && (v9 = v8, objc_msgSend(v8, "length") == 96) && (objc_msgSend(v9, "getBytes:length:", &v4[1], 96), (v10 = objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"rotationalAccuracyInRadians")) != 0) && (v11 = v10, objc_msgSend(v10, "length") == 32))
    {
      [v11 getBytes:v4->_rotationalAccuracyInRadians length:32];
      [a3 decodeDoubleForKey:@"confidence"];
      v4->_confidence = v12;
      v4->_globalReferenceFrame = [a3 decodeIntegerForKey:@"globalReferenceFrame"];
      v4->_location = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
      v4->_supplemantaryInfo = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"supplemantaryInfo"];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", self->_anon_50, 96), @"rotationFromGlobalToDeviceFrame"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &self[1], 96), @"rotationFromGlobalToCameraFrame"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", self->_rotationalAccuracyInRadians, 32), @"rotationalAccuracyInRadians"}];
  [a3 encodeDouble:@"confidence" forKey:self->_confidence];
  [a3 encodeInteger:self->_globalReferenceFrame forKey:@"globalReferenceFrame"];
  [a3 encodeObject:self->_location forKey:@"location"];
  supplemantaryInfo = self->_supplemantaryInfo;

  [a3 encodeObject:supplemantaryInfo forKey:@"supplemantaryInfo"];
}

- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4
{
  v7 = MEMORY[0x1E696AEC0];
  [(_CLLSLHeading *)self timestamp];
  v9 = v8;
  if (self)
  {
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v32 = v53;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v31 = v52;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v29 = v51;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    *(&v28 + 1) = v50;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v26 = v49;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v27 = v48;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v24 = v47;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v25 = v46;
    [(_CLLSLHeading *)self rotationFromGlobalToDeviceFrame];
    v22 = v45;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v23 = v44;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v20 = v43;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v21 = v42;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    *(&v18 + 1) = v41;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v19 = v40;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v16 = v39;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v17 = v38;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v14 = v37;
    [(_CLLSLHeading *)self rotationFromGlobalToCameraFrame];
    v30 = v36;
    [(_CLLSLHeading *)self rotationalAccuracyInRadians];
    v13 = v35;
    [(_CLLSLHeading *)self rotationalAccuracyInRadians];
    v15 = vextq_s8(v34, v34, 8uLL).u64[0];
    [(_CLLSLHeading *)self rotationalAccuracyInRadians];
    v10 = v33;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v22 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = 0;
    v16 = 0u;
    v13 = 0;
    v14 = 0u;
    v10 = 0;
    v29 = 0;
    v30 = 0;
  }

  [(_CLLSLHeading *)self confidence];
  return [v7 stringWithFormat:@"<_CLLSLHeading: %p> {\n%@.timestamp = %f, \n%@.rotationFromGlobalToDeviceFrame = [%f, %f, %f; %f, %f, %f; %f, %f, %f], \n%@.rotationFromGlobalToCameraFrame = [%f, %f, %f; %f, %f, %f; %f, %f, %f], \n%@.rotationalAccuracyInRadians = [%f, %f, %f], \n%@.confidence = %f, \n%@.globalReferenceFrame = %zu, \n%@.location = %@, \n%@.supplemantryInfo = %@\n%@}", self, a3, v9, a3, vzip1q_s64(v32, v31), v29, *(&v28 + 1), vzip2q_s64(v26, v27), vzip1q_s64(v24, v25), v22, a3, vzip1q_s64(v23, v20), v21, *(&v18 + 1), vzip2q_s64(v19, v16), vzip1q_s64(v17, v14), v30, a3, v13, v15, v10, a3, v11, a3, -[_CLLSLHeading globalReferenceFrame](self, "globalReferenceFrame"), a3, -[_CLLSLLocation descriptionWithMemberIndent:endIndent:](-[_CLLSLHeading location](self, "location"), "descriptionWithMemberIndent:endIndent:", objc_msgSend(a3, "stringByAppendingString:", @"\t", objc_msgSend(a4, "stringByAppendingString:", @"\t", a3, -[_CLLSLHeadingSupplInfo descriptionWithMemberIndent:endIndent:](-[_CLLSLHeading supplemantaryInfo](self, "supplemantaryInfo"), "descriptionWithMemberIndent:endIndent:", objc_msgSend(a3, "stringByAppendingString:", @"\t", objc_msgSend(a4, "stringByAppendingString:", @"\t", a4];
}

- (__n128)rotationFromGlobalToDeviceFrame
{
  v2 = *(a1 + 128);
  *(a2 + 32) = *(a1 + 112);
  *(a2 + 48) = v2;
  v3 = *(a1 + 160);
  *(a2 + 64) = *(a1 + 144);
  *(a2 + 80) = v3;
  result = *(a1 + 80);
  v5 = *(a1 + 96);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)setRotationFromGlobalToDeviceFrame:(uint64_t)a3
{
  v3 = *(a3 + 16);
  *(a1 + 80) = *a3;
  *(a1 + 96) = v3;
  result = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a1 + 144) = *(a3 + 64);
  *(a1 + 160) = v6;
  *(a1 + 112) = result;
  *(a1 + 128) = v5;
  return result;
}

- (__n128)rotationFromGlobalToCameraFrame
{
  v2 = *(a1 + 224);
  *(a2 + 32) = *(a1 + 208);
  *(a2 + 48) = v2;
  v3 = *(a1 + 256);
  *(a2 + 64) = *(a1 + 240);
  *(a2 + 80) = v3;
  result = *(a1 + 176);
  v5 = *(a1 + 192);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)setRotationFromGlobalToCameraFrame:(uint64_t)a3
{
  v3 = *(a3 + 16);
  *(a1 + 176) = *a3;
  *(a1 + 192) = v3;
  result = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a1 + 240) = *(a3 + 64);
  *(a1 + 256) = v6;
  *(a1 + 208) = result;
  *(a1 + 224) = v5;
  return result;
}

- (__n128)rotationalAccuracyInRadians
{
  result = a1[3];
  a2[1].n128_u64[0] = a1[4].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setRotationalAccuracyInRadians:(_CLLSLHeading *)self
{
  v3 = v2[1];
  *self->_rotationalAccuracyInRadians = *v2;
  *&self->_rotationalAccuracyInRadians[16] = v3;
}

@end