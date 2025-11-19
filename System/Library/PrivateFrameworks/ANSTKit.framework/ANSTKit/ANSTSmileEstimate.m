@interface ANSTSmileEstimate
+ (id)new;
- (ANSTSmileEstimate)init;
- (ANSTSmileEstimate)initWithCoder:(id)a3;
- (ANSTSmileEstimate)initWithSmile:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTSmileEstimate

- (ANSTSmileEstimate)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTSmileEstimate)initWithSmile:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ANSTSmileEstimate;
  result = [(ANSTSmileEstimate *)&v5 init];
  result->_smile = a3;
  return result;
}

- (ANSTSmileEstimate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ANSTSmileEstimate;
  v5 = [(ANSTSmileEstimate *)&v14 init];
  v6 = v4;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_smile);
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

  if (v10)
  {
    v5->_smile = objc_msgSend_integerValue(v10, v11, v12);

    v10 = v5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  smile = self->_smile;
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v9 = objc_msgSend_numberWithInteger_(v4, v6, smile);
  v7 = NSStringFromSelector(sel_smile);
  objc_msgSend_encodeObject_forKey_(v5, v8, v9, v7);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTSmileEstimate %p> {\n", self);
  objc_msgSend_appendFormat_(v3, v5, @"    smile %ld\n", self->_smile);
  objc_msgSend_appendString_(v3, v6, @"}");
  v9 = objc_msgSend_copy(v3, v7, v8);

  return v9;
}

@end