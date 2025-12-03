@interface CLLocationGnssOdometerInfo
- (CLLocationGnssOdometerInfo)initWithCoder:(id)coder;
- (CLLocationGnssOdometerInfo)initWithOdometer:(double)odometer deltaDistance:(double)distance deltaDistanceAccuracy:(double)accuracy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationGnssOdometerInfo

- (CLLocationGnssOdometerInfo)initWithOdometer:(double)odometer deltaDistance:(double)distance deltaDistanceAccuracy:(double)accuracy
{
  v9.receiver = self;
  v9.super_class = CLLocationGnssOdometerInfo;
  result = [(CLLocationGnssOdometerInfo *)&v9 init];
  if (result)
  {
    result->_odometer = odometer;
    result->_deltaDistance = distance;
    result->_deltaDistanceAccuracy = accuracy;
  }

  return result;
}

- (CLLocationGnssOdometerInfo)initWithCoder:(id)coder
{
  v33 = 0xBFF0000000000000;
  v34 = 0xBFF0000000000000;
  v32 = 0xBFF0000000000000;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    v13 = -1.0;
    v14 = -1.0;
    if (objc_msgSend_containsValueForKey_(coder, v7, v8, v9, @"odometer"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v10, v11, v12, @"odometer");
      v14 = v11;
      v34 = *&v11;
    }

    if (objc_msgSend_containsValueForKey_(coder, v10, v11, v12, @"deltaDistance"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v15, v16, v17, @"deltaDistance");
      v13 = v16;
      v33 = *&v16;
    }

    v18 = objc_msgSend_containsValueForKey_(coder, v15, v16, v17, @"deltaDistanceAccuracy");
    v22 = -1.0;
    if (v18)
    {
      objc_msgSend_decodeDoubleForKey_(coder, v19, v20, v21, @"deltaDistanceAccuracy", -1.0);
      v32 = *&v23;
      return objc_msgSend_initWithOdometer_deltaDistance_deltaDistanceAccuracy_(self, v24, v14, v13, v23);
    }
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v7, v8, v9, "d", &v34);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v26, v27, v28, "d", &v33);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v29, v30, v31, "d", &v32);
    v13 = *&v33;
    v14 = *&v34;
    v22 = *&v32;
  }

  return objc_msgSend_initWithOdometer_deltaDistance_deltaDistanceAccuracy_(self, v19, v14, v13, v22);
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v7, self->_odometer, v9, @"odometer");
    objc_msgSend_encodeDouble_forKey_(coder, v10, self->_deltaDistance, v11, @"deltaDistance");
    deltaDistanceAccuracy = self->_deltaDistanceAccuracy;

    objc_msgSend_encodeDouble_forKey_(coder, v12, deltaDistanceAccuracy, v13, @"deltaDistanceAccuracy");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v7, v8, v9, "d", &self->_odometer);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v15, v16, v17, "d", &self->_deltaDistance);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v18, v19, v20, "d", &self->_deltaDistanceAccuracy);
  }
}

@end