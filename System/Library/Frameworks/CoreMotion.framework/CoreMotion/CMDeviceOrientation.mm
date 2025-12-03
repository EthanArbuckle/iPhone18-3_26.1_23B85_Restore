@interface CMDeviceOrientation
- (CMDeviceOrientation)initWithCoder:(id)coder;
- (CMDeviceOrientation)initWithOrientation:(int)orientation andTimestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMDeviceOrientation

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMDeviceOrientation;
  [(CMLogItem *)&v2 dealloc];
}

- (CMDeviceOrientation)initWithOrientation:(int)orientation andTimestamp:(double)timestamp
{
  v6.receiver = self;
  v6.super_class = CMDeviceOrientation;
  result = [(CMLogItem *)&v6 initWithTimestamp:timestamp];
  if (result)
  {
    result->fOrientation = orientation;
  }

  return result;
}

- (CMDeviceOrientation)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMDeviceOrientation;
  v5 = [(CMLogItem *)&v7 initWithCoder:?];
  if (v5)
  {
    v5->fOrientation = objc_msgSend_decodeIntForKey_(coder, v4, @"kCMDeviceOrientationCodingKeyOrientation");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMDeviceOrientation;
  [(CMLogItem *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeInt_forKey_(coder, v5, self->fOrientation, @"kCMDeviceOrientationCodingKeyOrientation");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CMDeviceOrientation;
  result = [(CMLogItem *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 4) = self->fOrientation;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fOrientation = self->fOrientation;
  v7 = MEMORY[0x1E696AEC0];
  v8 = sub_19B449494(self->fOrientation);
  v10 = objc_msgSend_stringWithUTF8String_(v7, v9, v8);
  v14.receiver = self;
  v14.super_class = CMDeviceOrientation;
  [(CMLogItem *)&v14 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v11, @"%@ orientation %d name %@ @ %f", v5, fOrientation, v10, v12);
}

@end