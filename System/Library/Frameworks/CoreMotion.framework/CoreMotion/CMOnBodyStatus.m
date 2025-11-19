@interface CMOnBodyStatus
- (CMOnBodyStatus)initWithCoder:(id)a3;
- (CMOnBodyStatus)initWithOnBodyResult:(int)a3 confidence:(int)a4 timestamp:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMOnBodyStatus

- (CMOnBodyStatus)initWithOnBodyResult:(int)a3 confidence:(int)a4 timestamp:(double)a5
{
  v8.receiver = self;
  v8.super_class = CMOnBodyStatus;
  result = [(CMLogItem *)&v8 initWithTimestamp:a5];
  if (result)
  {
    result->fResult = a3;
    result->fConfidence = a4;
  }

  return result;
}

- (CMOnBodyStatus)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CMOnBodyStatus;
  v5 = [(CMLogItem *)&v8 initWithCoder:?];
  if (v5)
  {
    v5->fResult = objc_msgSend_decodeIntForKey_(a3, v4, @"kCMOnBodyStatusResult");
    v5->fConfidence = objc_msgSend_decodeIntForKey_(a3, v6, @"kCMOnBodyStatusConfidence");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  fResult = self->fResult;
  fConfidence = self->fConfidence;
  v12.receiver = self;
  v12.super_class = CMOnBodyStatus;
  [(CMLogItem *)&v12 timestamp];
  return objc_msgSend_initWithOnBodyResult_confidence_timestamp_(v7, v10, fResult, fConfidence);
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMOnBodyStatus;
  [(CMLogItem *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInt_forKey_(a3, v5, self->fResult, @"kCMOnBodyStatusResult");
  objc_msgSend_encodeInt_forKey_(a3, v6, self->fConfidence, @"kCMOnBodyStatusConfidence");
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CMOnBodyStatus;
  fResult = self->fResult;
  fConfidence = self->fConfidence;
  [(CMLogItem *)&v8 timestamp];
  return objc_msgSend_stringWithFormat_(v2, v5, @"result %d confidence %d timestamp %f", fResult, fConfidence, v6);
}

@end