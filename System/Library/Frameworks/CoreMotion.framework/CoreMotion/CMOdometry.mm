@interface CMOdometry
- (CMOdometry)initWithCoder:(id)coder;
- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 isDOTBiasChangePossible:(BOOL)self5 isMounted:(BOOL)self6 isZUPT:(BOOL)self7 timestamp:(double)self8;
- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 timestamp:(double)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)rotateArbitraryToTrueNorth;
@end

@implementation CMOdometry

- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 isDOTBiasChangePossible:(BOOL)self5 isMounted:(BOOL)self6 isZUPT:(BOOL)self7 timestamp:(double)self8
{
  v27.receiver = self;
  v27.super_class = CMOdometry;
  v25 = [(CMLogItem *)&v27 initWithTimestamp:timestamp];
  if (v25)
  {
    v25->_deltaPositionX = x;
    v25->_deltaPositionY = y;
    v25->_deltaPositionZ = z;
    v25->_deltaVelocityX = velocityX;
    v25->_deltaVelocityY = velocityY;
    v25->_deltaVelocityZ = velocityZ;
    v25->_quaternionX = quaternionX;
    v25->_quaternionY = quaternionY;
    v25->_quaternionZ = quaternionZ;
    v25->_quaternionW = w;
    v25->_referenceFrame = 1;
    v25->_rotationArbitraryToTrueNorth = north;
    v25->_staticFlag = flag;
    v25->_isDOTBiasChangePossible = possible;
    v25->_isMounted = mounted;
    v25->_isZUPT = t;
  }

  return v25;
}

- (CMOdometry)initWithDeltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z deltaVelocityX:(id)velocityX deltaVelocityY:(id)velocityY deltaVelocityZ:(id)velocityZ quaternionX:(id)quaternionX quaternionY:(id)self0 quaternionZ:(id)self1 quaternionW:(id)self2 rotationArbitraryToTrueNorth:(float)self3 staticFlag:(int64_t)self4 timestamp:(double)self5
{
  BYTE2(v16) = 0;
  LOWORD(v16) = 0;
  return objc_msgSend_initWithDeltaPositionX_deltaPositionY_deltaPositionZ_deltaVelocityX_deltaVelocityY_deltaVelocityZ_quaternionX_quaternionY_quaternionZ_quaternionW_rotationArbitraryToTrueNorth_staticFlag_isDOTBiasChangePossible_isMounted_isZUPT_timestamp_(self, a2, x, y, z, velocityX, velocityY, velocityZ, quaternionX, quaternionY, quaternionZ, w, flag, v16);
}

- (void)rotateArbitraryToTrueNorth
{
  if (self->_referenceFrame == 1)
  {
    quaternionX = self->_quaternionX;
    if (quaternionX)
    {
      if (self->_quaternionY)
      {
        if (self->_quaternionZ)
        {
          if (self->_quaternionW)
          {
            rotationArbitraryToTrueNorth = self->_rotationArbitraryToTrueNorth;
            if (rotationArbitraryToTrueNorth != 0.0)
            {
              v82 = 0;
              v83 = rotationArbitraryToTrueNorth;
              v5 = sub_19B66C264(&v81, &v82);
              objc_msgSend_floatValue(quaternionX, v6, v7, v5);
              v9 = v8;
              objc_msgSend_floatValue(self->_quaternionY, v10, v11);
              v13 = v12;
              objc_msgSend_floatValue(self->_quaternionZ, v14, v15);
              v17 = v16;
              objc_msgSend_floatValue(self->_quaternionW, v18, v19);
              v80.i64[0] = __PAIR64__(v13, v9);
              v80.i64[1] = __PAIR64__(v20.u32[0], v17);
              v21 = sub_19B41E130(&v80, v20);
              v22 = sub_19B66BF70(&v80, v81.f32, v21);
              v24 = v23;
              v26 = v25;
              v28 = v27;

              v29 = objc_alloc(MEMORY[0x1E696AD98]);
              *&v30 = v22;
              self->_quaternionX = objc_msgSend_initWithFloat_(v29, v31, v32, v30);
              v33 = objc_alloc(MEMORY[0x1E696AD98]);
              LODWORD(v34) = v24;
              self->_quaternionY = objc_msgSend_initWithFloat_(v33, v35, v36, v34);
              v37 = objc_alloc(MEMORY[0x1E696AD98]);
              LODWORD(v38) = v26;
              self->_quaternionZ = objc_msgSend_initWithFloat_(v37, v39, v40, v38);
              v41 = objc_alloc(MEMORY[0x1E696AD98]);
              LODWORD(v42) = v28;
              self->_quaternionW = objc_msgSend_initWithFloat_(v41, v43, v44, v42);
              deltaPositionX = self->_deltaPositionX;
              if (deltaPositionX && self->_deltaPositionY)
              {
                objc_msgSend_floatValue(deltaPositionX, v45, v46);
                v49 = v48;
                objc_msgSend_floatValue(self->_deltaPositionY, v50, v51);
                v77 = v49;
                v78 = v52;
                v79 = 0;
                sub_19B66C1E0(v81.f32, &v77);

                v53 = objc_alloc(MEMORY[0x1E696AD98]);
                LODWORD(v54) = v77;
                self->_deltaPositionX = objc_msgSend_initWithFloat_(v53, v55, v56, v54);
                v57 = objc_alloc(MEMORY[0x1E696AD98]);
                LODWORD(v58) = v78;
                self->_deltaPositionY = objc_msgSend_initWithFloat_(v57, v59, v60, v58);
              }

              else
              {

                self->_deltaPositionX = 0;
                self->_deltaPositionY = 0;
              }

              deltaVelocityX = self->_deltaVelocityX;
              if (deltaVelocityX && self->_deltaVelocityY)
              {
                objc_msgSend_floatValue(deltaVelocityX, v61, v62);
                v65 = v64;
                objc_msgSend_floatValue(self->_deltaVelocityY, v66, v67);
                v77 = v65;
                v78 = v68;
                v79 = 0;
                sub_19B66C1E0(v81.f32, &v77);

                v69 = objc_alloc(MEMORY[0x1E696AD98]);
                LODWORD(v70) = v77;
                self->_deltaVelocityX = objc_msgSend_initWithFloat_(v69, v71, v72, v70);
                v73 = objc_alloc(MEMORY[0x1E696AD98]);
                LODWORD(v74) = v78;
                self->_deltaVelocityY = objc_msgSend_initWithFloat_(v73, v75, v76, v74);
              }

              else
              {

                self->_deltaVelocityX = 0;
                self->_deltaVelocityY = 0;
              }

              self->_referenceFrame = 8;
            }
          }
        }
      }
    }
  }
}

- (CMOdometry)initWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = CMOdometry;
  v5 = [(CMLogItem *)&v27 initWithCoder:?];
  if (v5)
  {
    v5->_deltaPositionX = objc_msgSend_decodeObjectForKey_(coder, v4, @"kCMOdometryCodingKeyDeltaPositionX");
    v5->_deltaPositionY = objc_msgSend_decodeObjectForKey_(coder, v6, @"kCMOdometryCodingKeyDeltaPositionY");
    v5->_deltaPositionZ = objc_msgSend_decodeObjectForKey_(coder, v7, @"kCMOdometryCodingKeyDeltaPositionZ");
    v5->_deltaVelocityX = objc_msgSend_decodeObjectForKey_(coder, v8, @"kCMOdometryCodingKeyDeltaVelocityX");
    v5->_deltaVelocityY = objc_msgSend_decodeObjectForKey_(coder, v9, @"kCMOdometryCodingKeyDeltaVelocityY");
    v5->_deltaVelocityZ = objc_msgSend_decodeObjectForKey_(coder, v10, @"kCMOdometryCodingKeyDeltaVelocityZ");
    v5->_quaternionX = objc_msgSend_decodeObjectForKey_(coder, v11, @"kCMOdometryCodingKeyQuaternionX");
    v5->_quaternionY = objc_msgSend_decodeObjectForKey_(coder, v12, @"kCMOdometryCodingKeyQuaternionY");
    v5->_quaternionZ = objc_msgSend_decodeObjectForKey_(coder, v13, @"kCMOdometryCodingKeyQuaternionZ");
    v5->_quaternionW = objc_msgSend_decodeObjectForKey_(coder, v14, @"kCMOdometryCodingKeyQuaternionW");
    objc_msgSend_decodeFloatForKey_(coder, v15, @"kCMOdometryCodingKeyReferenceFrame");
    v5->_referenceFrame = v16;
    objc_msgSend_decodeFloatForKey_(coder, v17, @"kCMOdometryCodingKeyRotationArbitraryToTrueNort");
    v5->_rotationArbitraryToTrueNorth = v18;
    v20 = objc_msgSend_decodeObjectForKey_(coder, v19, @"kCMOdometryCodingKeyStaticFlag");
    v5->_staticFlag = objc_msgSend_integerValue(v20, v21, v22);
    v5->_isDOTBiasChangePossible = objc_msgSend_decodeBoolForKey_(coder, v23, @"kCMOdometryCodingKeyIsDOTBiasChangePossible");
    v5->_isMounted = objc_msgSend_decodeBoolForKey_(coder, v24, @"kCMOdometryCodingKeyIsMounted");
    v5->_isZUPT = objc_msgSend_decodeBoolForKey_(coder, v25, @"kCMOdometryCodingKeyIsZUPT");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = CMOdometry;
  [(CMLogItem *)&v25 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_deltaPositionX, @"kCMOdometryCodingKeyDeltaPositionX");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_deltaPositionY, @"kCMOdometryCodingKeyDeltaPositionY");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_deltaPositionZ, @"kCMOdometryCodingKeyDeltaPositionZ");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_deltaVelocityX, @"kCMOdometryCodingKeyDeltaVelocityX");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_deltaVelocityY, @"kCMOdometryCodingKeyDeltaVelocityY");
  objc_msgSend_encodeObject_forKey_(coder, v10, self->_deltaVelocityZ, @"kCMOdometryCodingKeyDeltaVelocityZ");
  objc_msgSend_encodeObject_forKey_(coder, v11, self->_quaternionX, @"kCMOdometryCodingKeyQuaternionX");
  objc_msgSend_encodeObject_forKey_(coder, v12, self->_quaternionY, @"kCMOdometryCodingKeyQuaternionY");
  objc_msgSend_encodeObject_forKey_(coder, v13, self->_quaternionZ, @"kCMOdometryCodingKeyQuaternionZ");
  objc_msgSend_encodeObject_forKey_(coder, v14, self->_quaternionW, @"kCMOdometryCodingKeyQuaternionW");
  *&v15 = self->_referenceFrame;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"kCMOdometryCodingKeyReferenceFrame", v15);
  *&v17 = self->_rotationArbitraryToTrueNorth;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"kCMOdometryCodingKeyRotationArbitraryToTrueNort", v17);
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v19, self->_staticFlag);
  objc_msgSend_encodeObject_forKey_(coder, v21, v20, @"kCMOdometryCodingKeyStaticFlag");
  objc_msgSend_encodeBool_forKey_(coder, v22, self->_isDOTBiasChangePossible, @"kCMOdometryCodingKeyIsDOTBiasChangePossible");
  objc_msgSend_encodeBool_forKey_(coder, v23, self->_isMounted, @"kCMOdometryCodingKeyIsMounted");
  objc_msgSend_encodeBool_forKey_(coder, v24, self->_isZUPT, @"kCMOdometryCodingKeyIsZUPT");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometry;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = CMOdometry;
  v6 = [(CMLogItem *)&v17 copyWithZone:?];
  if (v6)
  {
    v6[3] = objc_msgSend_copyWithZone_(self->_deltaPositionX, v5, zone);
    v6[4] = objc_msgSend_copyWithZone_(self->_deltaPositionY, v7, zone);
    v6[5] = objc_msgSend_copyWithZone_(self->_deltaPositionZ, v8, zone);
    v6[6] = objc_msgSend_copyWithZone_(self->_deltaVelocityX, v9, zone);
    v6[7] = objc_msgSend_copyWithZone_(self->_deltaVelocityY, v10, zone);
    v6[8] = objc_msgSend_copyWithZone_(self->_deltaVelocityZ, v11, zone);
    v6[9] = objc_msgSend_copyWithZone_(self->_quaternionX, v12, zone);
    v6[10] = objc_msgSend_copyWithZone_(self->_quaternionY, v13, zone);
    v6[11] = objc_msgSend_copyWithZone_(self->_quaternionZ, v14, zone);
    v6[12] = objc_msgSend_copyWithZone_(self->_quaternionW, v15, zone);
    v6[13] = self->_referenceFrame;
    *(v6 + 5) = LODWORD(self->_rotationArbitraryToTrueNorth);
    v6[14] = self->_staticFlag;
    *(v6 + 16) = self->_isDOTBiasChangePossible;
    *(v6 + 17) = self->_isMounted;
    *(v6 + 18) = self->_isZUPT;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  v9.receiver = self;
  v9.super_class = CMOdometry;
  [(CMLogItem *)&v9 timestamp];
  v7 = objc_msgSend_numberWithDouble_(v4, v5, v6);
  return objc_msgSend_stringWithFormat_(v3, self->_quaternionW, @"Timestamp, %@, DeltaPositionXYZ, %@, %@, %@, DeltaVelocityXYZ, %@, %@, %@, QuaternionXYZW, %@, %@, %@, %@, ReferenceFrame, %d, StaticFlag, %d", v7, self->_deltaPositionX, self->_deltaPositionY, self->_deltaPositionZ, self->_deltaVelocityX, self->_deltaVelocityY, self->_deltaVelocityZ, self->_quaternionX, self->_quaternionY, self->_quaternionZ, self->_quaternionW, self->_referenceFrame, self->_staticFlag);
}

@end