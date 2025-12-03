@interface CLLocationMatchInfo
- (CLLocationCoordinate2D)matchCoordinate;
- (CLLocationMatchInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationMatchInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationMatchInfo;
  [(CLLocationMatchInfo *)&v3 dealloc];
}

- (CLLocationCoordinate2D)matchCoordinate
{
  internal = self->_internal;
  v3 = internal[2];
  v4 = internal[3];
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CLLocationMatchInfo)initWithCoder:(id)coder
{
  v7 = objc_msgSend_decodeIntegerForKey_(coder, a2, v3, v4, @"kCLLocationMatchInfoCodingKeyMatchQuality");
  objc_msgSend_decodeDoubleForKey_(coder, v8, v9, v10, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLatitude");
  v12 = v11;
  objc_msgSend_decodeDoubleForKey_(coder, v13, v11, v14, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLongitude");
  v16 = v15;
  objc_msgSend_decodeDoubleForKey_(coder, v17, v15, v18, @"kCLLocationMatchInfoCodingKeyMatchCourse");
  v20 = v19;
  v23 = objc_msgSend_decodeInt32ForKey_(coder, v21, v19, v22, @"kCLLocationMatchInfoCodingKeyMatchFormOfWay");
  v27 = objc_msgSend_decodeInt32ForKey_(coder, v24, v25, v26, @"kCLLocationMatchInfoCodingKeyMatchRoadClass");
  v31 = objc_msgSend_decodeBoolForKey_(coder, v28, v29, v30, @"kCLLocationMatchInfoCodingKeyMatchShifted");
  v32 = objc_opt_class();
  v37 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v33, v34, v35, v32, @"kCLLocationMatchInfoCodingKeyMatchDataArray");

  return objc_msgSend_initWithMatchQuality_matchCoordinate_matchCourse_matchFormOfWay_matchRoadClass_matchShifted_matchDataArray_(self, v36, v12, v16, v7, v23, v27, v31, v37, v20);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  objc_msgSend_encodeInteger_forKey_(coder, a2, v3, v4, *(internal + 1), @"kCLLocationMatchInfoCodingKeyMatchQuality");
  objc_msgSend_encodeDouble_forKey_(coder, v7, *(internal + 2), v8, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLatitude");
  objc_msgSend_encodeDouble_forKey_(coder, v9, *(internal + 3), v10, @"kCLLocationMatchInfoCodingKeyMatchCoordinateLongitude");
  objc_msgSend_encodeDouble_forKey_(coder, v11, *(internal + 4), v12, @"kCLLocationMatchInfoCodingKeyMatchCourse");
  objc_msgSend_encodeInt32_forKey_(coder, v13, v14, v15, internal[10], @"kCLLocationMatchInfoCodingKeyMatchFormOfWay");
  objc_msgSend_encodeInt32_forKey_(coder, v16, v17, v18, internal[11], @"kCLLocationMatchInfoCodingKeyMatchRoadClass");
  objc_msgSend_encodeBool_forKey_(coder, v19, v20, v21, *(internal + 48), @"kCLLocationMatchInfoCodingKeyMatchShifted");
  v25 = *(internal + 7);

  objc_msgSend_encodeObject_forKey_(coder, v22, v23, v24, v25, @"kCLLocationMatchInfoCodingKeyMatchDataArray");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, zone);
  v9[1] = objc_msgSend_copyWithZone_(self->_internal, v10, v11, v12, zone);
  return v9;
}

@end