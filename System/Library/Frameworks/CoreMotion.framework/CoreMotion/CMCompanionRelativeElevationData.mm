@interface CMCompanionRelativeElevationData
- (CMCompanionRelativeElevationData)initWithCoder:(id)coder;
- (CMCompanionRelativeElevationData)initWithTimestamp:(double)timestamp companionRelativeElevation:(float)elevation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMCompanionRelativeElevationData

- (CMCompanionRelativeElevationData)initWithTimestamp:(double)timestamp companionRelativeElevation:(float)elevation
{
  v11.receiver = self;
  v11.super_class = CMCompanionRelativeElevationData;
  v5 = [(CMLogItem *)&v11 initWithTimestamp:timestamp];
  if (v5)
  {
    v6 = [CMCompanionRelativeElevationDataInternal alloc];
    *&v7 = elevation;
    v5->_internal = objc_msgSend_initWithCompanionRelativeElevation_(v6, v8, v9, v7);
  }

  return v5;
}

- (CMCompanionRelativeElevationData)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CMCompanionRelativeElevationData;
  v4 = [(CMLogItem *)&v11 initWithCoder:?];
  if (v4)
  {
    v5 = [CMCompanionRelativeElevationDataInternal alloc];
    v4->_internal = v5;
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMAltitudeCodingKeyCompanionRelativeElevation");
    *&v7 = v7;
    objc_msgSend_setCompanionRelativeElevation_(v5, v8, v9, v7);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMCompanionRelativeElevationData;
  [(CMLogItem *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMAltitudeCodingKeyCompanionRelativeElevation", *(self->_internal + 2));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMCompanionRelativeElevationData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CMCompanionRelativeElevationData;
  v6 = [(CMLogItem *)&v8 copyWithZone:?];
  if (v6)
  {
    v6[2] = objc_msgSend_copyWithZone_(self->_internal, v5, zone);
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(self->_internal + 2);
  v7.receiver = self;
  v7.super_class = CMCompanionRelativeElevationData;
  [(CMLogItem *)&v7 timestamp];
  return objc_msgSend_stringWithFormat_(v2, v4, @"Companion Relative Elevation %f @ %f", *&v3, v5);
}

@end