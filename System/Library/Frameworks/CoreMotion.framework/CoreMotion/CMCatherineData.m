@interface CMCatherineData
- (CMCatherineData)initWithCatherine:(double)a3 confidence:(double)a4 timestamp:(double)a5;
- (CMCatherineData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMCatherineData

- (CMCatherineData)initWithCatherine:(double)a3 confidence:(double)a4 timestamp:(double)a5
{
  v8.receiver = self;
  v8.super_class = CMCatherineData;
  result = [(CMLogItem *)&v8 initWithTimestamp:a5];
  if (result)
  {
    result->_catherine = a3;
    result->_confidence = a4;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMCatherineData;
  [(CMLogItem *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CMCatherineData;
  result = [(CMLogItem *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 2) = *&self->_catherine;
    *(result + 3) = *&self->_confidence;
  }

  return result;
}

- (CMCatherineData)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = CMCatherineData;
  v4 = [(CMLogItem *)&v18 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMCatherineDataCodingKeyCatherine");
    objc_msgSend_doubleValue(v7, v8, v9);
    v4->_catherine = v10;
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMCatherineDataCodingKeyConfidence");
    objc_msgSend_doubleValue(v13, v14, v15);
    v4->_confidence = v16;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CMCatherineData;
  [(CMLogItem *)&v13 encodeWithCoder:?];
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, self->_catherine);
  objc_msgSend_encodeObject_forKey_(a3, v8, v7, @"kCMCatherineDataCodingKeyCatherine");
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, self->_confidence);
  objc_msgSend_encodeObject_forKey_(a3, v12, v11, @"kCMCatherineDataCodingKeyConfidence");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  catherine = self->_catherine;
  confidence = self->_confidence;
  v11.receiver = self;
  v11.super_class = CMCatherineData;
  [(CMLogItem *)&v11 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v8, @"%@,<catherine %f confidence %f @ %f>", v5, *&catherine, *&confidence, v9);
}

@end