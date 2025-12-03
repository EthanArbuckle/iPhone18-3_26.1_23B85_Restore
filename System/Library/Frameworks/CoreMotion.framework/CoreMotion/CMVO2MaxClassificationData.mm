@interface CMVO2MaxClassificationData
- (CMVO2MaxClassificationData)initWithBiologicalSex:(int64_t)sex ageLowerBound:(int64_t)bound ageUpperBound:(int64_t)upperBound classificationType:(int64_t)type vo2MaxLowerBound:(double)lowerBound vo2MaxUpperBound:(double)maxUpperBound;
- (CMVO2MaxClassificationData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMVO2MaxClassificationData

- (CMVO2MaxClassificationData)initWithBiologicalSex:(int64_t)sex ageLowerBound:(int64_t)bound ageUpperBound:(int64_t)upperBound classificationType:(int64_t)type vo2MaxLowerBound:(double)lowerBound vo2MaxUpperBound:(double)maxUpperBound
{
  v15.receiver = self;
  v15.super_class = CMVO2MaxClassificationData;
  result = [(CMVO2MaxClassificationData *)&v15 init];
  if (result)
  {
    result->_biologicalSex = sex;
    result->_ageLowerBound = bound;
    result->_ageUpperBound = upperBound;
    result->_classificationType = type;
    result->_vo2MaxLowerBound = lowerBound;
    result->_vo2MaxUpperBound = maxUpperBound;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMVO2MaxClassificationData;
  [(CMVO2MaxClassificationData *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  biologicalSex = self->_biologicalSex;
  ageLowerBound = self->_ageLowerBound;
  ageUpperBound = self->_ageUpperBound;
  classificationType = self->_classificationType;
  vo2MaxLowerBound = self->_vo2MaxLowerBound;
  vo2MaxUpperBound = self->_vo2MaxUpperBound;

  return objc_msgSend_initWithBiologicalSex_ageLowerBound_ageUpperBound_classificationType_vo2MaxLowerBound_vo2MaxUpperBound_(v7, v8, biologicalSex, ageLowerBound, ageUpperBound, classificationType, vo2MaxLowerBound, vo2MaxUpperBound);
}

- (CMVO2MaxClassificationData)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = CMVO2MaxClassificationData;
  v5 = [(CMVO2MaxClassificationData *)&v22 init];
  if (v5)
  {
    v5->_biologicalSex = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMVO2MaxClassificationDataCodingKeyBiologicalSex");
    v5->_ageLowerBound = objc_msgSend_decodeIntegerForKey_(coder, v6, @"kCMVO2MaxClassificationDataCodingKeyAgeLowerBound");
    v5->_ageUpperBound = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kCMVO2MaxClassificationDataCodingKeyAgeUpperBound");
    v5->_classificationType = objc_msgSend_decodeIntegerForKey_(coder, v8, @"kCMVO2MaxClassificationDataCodingKeyClassificationType");
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"kCMVO2MaxClassificationDataCodingKeyVO2MaxLowerBound");
    objc_msgSend_doubleValue(v11, v12, v13);
    v5->_vo2MaxLowerBound = v14;
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"kCMVO2MaxClassificationDataCodingKeyVO2MaxUpperBound");
    objc_msgSend_doubleValue(v17, v18, v19);
    v5->_vo2MaxUpperBound = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_biologicalSex, @"kCMVO2MaxClassificationDataCodingKeyBiologicalSex");
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_ageLowerBound, @"kCMVO2MaxClassificationDataCodingKeyAgeLowerBound");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_ageUpperBound, @"kCMVO2MaxClassificationDataCodingKeyAgeUpperBound");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_classificationType, @"kCMVO2MaxClassificationDataCodingKeyClassificationType");
  v10 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v8, v9, self->_vo2MaxLowerBound);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"kCMVO2MaxClassificationDataCodingKeyVO2MaxLowerBound");
  v15 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v12, v13, self->_vo2MaxUpperBound);

  objc_msgSend_encodeObject_forKey_(coder, v14, v15, @"kCMVO2MaxClassificationDataCodingKeyVO2MaxUpperBound");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@,<biologicalSex %ld, ageLowerBound %lu, ageUpperBound %lu, classificationType %ld, vo2MaxLowerBound %f, vo2MaxUpperBound %f>", v5, self->_biologicalSex, self->_ageLowerBound, self->_ageUpperBound, self->_classificationType, *&self->_vo2MaxLowerBound, *&self->_vo2MaxUpperBound);
}

@end