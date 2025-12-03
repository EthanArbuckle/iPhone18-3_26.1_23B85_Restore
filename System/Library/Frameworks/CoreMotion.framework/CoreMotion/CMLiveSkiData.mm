@interface CMLiveSkiData
- (CMLiveSkiData)initWithCoder:(id)coder;
- (CMLiveSkiData)initWithDate:(id)date distance:(double)distance averageSpeed:(double)speed verticalDescent:(double)descent runCount:(int)count maximumSpeed:(double)maximumSpeed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLiveSkiData

- (CMLiveSkiData)initWithDate:(id)date distance:(double)distance averageSpeed:(double)speed verticalDescent:(double)descent runCount:(int)count maximumSpeed:(double)maximumSpeed
{
  if (!date)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CMLiveSkiData.mm", 33, @"Invalid parameter not satisfying: %@", @"date");
  }

  v20.receiver = self;
  v20.super_class = CMLiveSkiData;
  v15 = [(CMLiveSkiData *)&v20 init];
  if (v15)
  {
    v15->_date = date;
    v15->_distance = distance;
    v15->_averageSpeed = speed;
    v15->_verticalDescent = descent;
    v15->_runCount = count;
    v15->_maximumSpeed = maximumSpeed;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMLiveSkiData;
  [(CMLiveSkiData *)&v3 dealloc];
}

- (CMLiveSkiData)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = CMLiveSkiData;
  v4 = [(CMLiveSkiData *)&v17 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_date = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMLiveSkiDataCodingKeyDate");
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCMLiveSkiDataCodingKeyDistance");
    v4->_distance = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCMLiveSkiDataCodingKeyAverageSpeed");
    v4->_averageSpeed = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMLiveSkiDataCodingKeyVerticalDescent");
    v4->_verticalDescent = v12;
    v4->_runCount = objc_msgSend_decodeIntForKey_(coder, v13, @"kCMLiveSkiDataCodingKeyRunCount");
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCMLiveSkiDataCodingKeyMaximumSpeed");
    v4->_maximumSpeed = v15;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  date = self->_date;
  distance = self->_distance;
  averageSpeed = self->_averageSpeed;
  verticalDescent = self->_verticalDescent;
  runCount = self->_runCount;
  maximumSpeed = self->_maximumSpeed;

  return MEMORY[0x1EEE66B58](v7, sel_initWithDate_distance_averageSpeed_verticalDescent_runCount_maximumSpeed_, date);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_date, @"kCMLiveSkiDataCodingKeyDate");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMLiveSkiDataCodingKeyDistance", self->_distance);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMLiveSkiDataCodingKeyAverageSpeed", self->_averageSpeed);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMLiveSkiDataCodingKeyVerticalDescent", self->_verticalDescent);
  objc_msgSend_encodeInt_forKey_(coder, v8, self->_runCount, @"kCMLiveSkiDataCodingKeyRunCount");
  maximumSpeed = self->_maximumSpeed;

  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMLiveSkiDataCodingKeyMaximumSpeed", maximumSpeed);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_date(self, v6, v7);
  objc_msgSend_distance(self, v9, v10);
  v12 = v11;
  objc_msgSend_averageSpeed(self, v13, v14);
  v16 = v15;
  objc_msgSend_verticalDescent(self, v17, v18);
  v20 = v19;
  v23 = objc_msgSend_runCount(self, v21, v22);
  objc_msgSend_maximumSpeed(self, v24, v25);
  return objc_msgSend_stringWithFormat_(v3, v26, @"%@, <date %@, distance %.2f, averageSpeed %.2f, verticalDescent %.2f, runCount %lu, maxSpeed %.2f>", v5, v8, v12, v16, v20, v23, v27);
}

@end