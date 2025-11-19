@interface CMDeviceOrientation
- (CMDeviceOrientation)initWithCoder:(id)a3;
- (CMDeviceOrientation)initWithOrientation:(int)a3 andTimestamp:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMDeviceOrientation

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMDeviceOrientation;
  [(CMLogItem *)&v2 dealloc];
}

- (CMDeviceOrientation)initWithOrientation:(int)a3 andTimestamp:(double)a4
{
  v6.receiver = self;
  v6.super_class = CMDeviceOrientation;
  result = [(CMLogItem *)&v6 initWithTimestamp:a4];
  if (result)
  {
    result->fOrientation = a3;
  }

  return result;
}

- (CMDeviceOrientation)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMDeviceOrientation;
  v5 = [(CMLogItem *)&v7 initWithCoder:?];
  if (v5)
  {
    v5->fOrientation = objc_msgSend_decodeIntForKey_(a3, v4, @"kCMDeviceOrientationCodingKeyOrientation");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CMDeviceOrientation;
  [(CMLogItem *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeInt_forKey_(a3, v5, self->fOrientation, @"kCMDeviceOrientationCodingKeyOrientation");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CMDeviceOrientation;
  result = [(CMLogItem *)&v5 copyWithZone:a3];
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