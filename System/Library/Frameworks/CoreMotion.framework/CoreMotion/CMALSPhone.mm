@interface CMALSPhone
- (CMALSPhone)initWithCoder:(id)coder;
- (CMALSPhone)initWithTimestamp:(double)timestamp illumination:(float)illumination;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMALSPhone

- (CMALSPhone)initWithTimestamp:(double)timestamp illumination:(float)illumination
{
  v15.receiver = self;
  v15.super_class = CMALSPhone;
  v6 = [(CMALSPhone *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    v6->fTimestamp = objc_msgSend_initWithDouble_(v7, v8, v9, timestamp);
    v10 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v11 = illumination;
    v6->fIllumination = objc_msgSend_initWithFloat_(v10, v12, v13, v11);
  }

  return v6;
}

- (CMALSPhone)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CMALSPhone;
  v4 = [(CMALSPhone *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fTimestamp = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMALSPhoneTimestamp");
    v7 = objc_opt_class();
    v4->fIllumination = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"kCMALSPhoneIllumination");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->fTimestamp, @"kCMALSPhoneTimestamp");
  fIllumination = self->fIllumination;

  objc_msgSend_encodeObject_forKey_(coder, v5, fIllumination, @"kCMALSPhoneIllumination");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    v12[1] = objc_msgSend_copy(self->fTimestamp, v10, v11);
    v12[2] = objc_msgSend_copy(self->fIllumination, v13, v14);
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMALSPhone;
  [(CMALSPhone *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_timestamp(self, v6, v7);
  v11 = objc_msgSend_illumination(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"%@, <timestamp %@, illumination %@>", v5, v8, v11);
}

@end