@interface CMMetMinute
- (CMMetMinute)initWithCoder:(id)coder;
- (CMMetMinute)initWithSample:(CLMetMinute)sample;
- (CMMetMinute)initWithStartDate:(id)date averageIntensity:(id)intensity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMMetMinute

- (CMMetMinute)initWithStartDate:(id)date averageIntensity:(id)intensity
{
  v12.receiver = self;
  v12.super_class = CMMetMinute;
  v8 = [(CMMetMinute *)&v12 init];
  if (v8)
  {
    v8->fStartDate = objc_msgSend_copy(date, v6, v7);
    v8->fAverageIntensity = objc_msgSend_copy(intensity, v9, v10);
  }

  return v8;
}

- (CMMetMinute)initWithSample:(CLMetMinute)sample
{
  var1 = sample.var1;
  var0 = sample.var0;
  v13.receiver = self;
  v13.super_class = CMMetMinute;
  v5 = [(CMMetMinute *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, var0);
    v9 = objc_alloc(MEMORY[0x1E696AD98]);
    v5->fAverageIntensity = objc_msgSend_initWithDouble_(v9, v10, v11, var1);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMMetMinute;
  [(CMMetMinute *)&v3 dealloc];
}

- (CMMetMinute)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = CMMetMinute;
  v4 = [(CMMetMinute *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kMetMinuteDataCodingKeyStartDate");
    v4->fStartDate = objc_msgSend_copy(v7, v8, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kMetMinuteDataCodingKeyAverageIntensity");
    v4->fAverageIntensity = objc_msgSend_copy(v12, v13, v14);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fStartDate = self->fStartDate;
  fAverageIntensity = self->fAverageIntensity;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_averageIntensity_, fStartDate);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->fStartDate, @"kMetMinuteDataCodingKeyStartDate");
  fAverageIntensity = self->fAverageIntensity;

  objc_msgSend_encodeObject_forKey_(coder, v5, fAverageIntensity, @"kMetMinuteDataCodingKeyAverageIntensity");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_averageIntensity(self, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v3, v14, @"%@, <startDate, %@, averageIntensity, %f>", v5, started, v15);
}

@end