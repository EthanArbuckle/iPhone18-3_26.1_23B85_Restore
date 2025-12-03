@interface ANSTEyeBlinkEstimate
+ (id)new;
- (ANSTEyeBlinkEstimate)init;
- (ANSTEyeBlinkEstimate)initWithBlinkLeft:(int64_t)left blinkRight:(int64_t)right;
- (ANSTEyeBlinkEstimate)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTEyeBlinkEstimate

- (ANSTEyeBlinkEstimate)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTEyeBlinkEstimate)initWithBlinkLeft:(int64_t)left blinkRight:(int64_t)right
{
  v7.receiver = self;
  v7.super_class = ANSTEyeBlinkEstimate;
  result = [(ANSTEyeBlinkEstimate *)&v7 init];
  result->_blinkLeft = left;
  result->_blinkRight = right;
  return result;
}

- (ANSTEyeBlinkEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ANSTEyeBlinkEstimate;
  v5 = [(ANSTEyeBlinkEstimate *)&v20 init];
  v6 = coderCopy;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_blinkLeft);
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

  if (v10)
  {
    v5->_blinkLeft = objc_msgSend_integerValue(v10, v11, v12);

    v13 = v6;
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_blinkRight);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v13, v16, v14, v15);

    if (v10)
    {
      v5->_blinkRight = objc_msgSend_integerValue(v10, v17, v18);

      v10 = v5;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, self->_blinkLeft);
  v7 = NSStringFromSelector(sel_blinkLeft);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v6, v7);

  blinkRight = self->_blinkRight;
  v10 = MEMORY[0x277CCABB0];
  v15 = coderCopy;
  v12 = objc_msgSend_numberWithInteger_(v10, v11, blinkRight);
  v13 = NSStringFromSelector(sel_blinkRight);
  objc_msgSend_encodeObject_forKey_(v15, v14, v12, v13);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTEyeBlinkEstimate %p> {\n", self);
  objc_msgSend_appendFormat_(v3, v5, @"    blinkLeft  %ld\n", self->_blinkLeft);
  objc_msgSend_appendFormat_(v3, v6, @"    blinkRight %ld\n", self->_blinkRight);
  objc_msgSend_appendString_(v3, v7, @"}");
  v10 = objc_msgSend_copy(v3, v8, v9);

  return v10;
}

@end