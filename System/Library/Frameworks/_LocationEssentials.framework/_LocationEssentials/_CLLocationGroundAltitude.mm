@interface _CLLocationGroundAltitude
- (_CLLocationGroundAltitude)initWithCoder:(id)a3;
- (_CLLocationGroundAltitude)initWithEstimate:(double)a3 uncertainty:(double)a4 undulation:(double)a5 undulationModel:(int)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLLocationGroundAltitude

- (_CLLocationGroundAltitude)initWithEstimate:(double)a3 uncertainty:(double)a4 undulation:(double)a5 undulationModel:(int)a6
{
  v13.receiver = self;
  v13.super_class = _CLLocationGroundAltitude;
  result = [(_CLLocationGroundAltitude *)&v13 init];
  if (result)
  {
    result->_estimate = a3;
    result->_uncertainty = a4;
    result->_undulationModel = a6;
    v11 = sqrt(a4 * a4 + 900.0);
    if (a6 != -1)
    {
      v11 = a4;
    }

    if (a4 <= 0.0)
    {
      v11 = a4;
    }

    v12 = a3 + a5;
    result->_isAltitudeWgs84Available = a4 > 0.0 && a6 != -1;
    if (a4 <= 0.0 || a6 == -1)
    {
      v12 = a3;
    }

    result->_undulation = a5;
    result->_altitudeWgs84 = v12;
    result->_uncertaintyWgs84 = v11;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_msgSend_allowsKeyedCoding(a3, a2, v3, v4))
  {
    objc_msgSend_encodeDouble_forKey_(a3, v7, self->_estimate, v9, @"kCLLocationCodingKeyGroundAltitudeEstimate");
    objc_msgSend_encodeDouble_forKey_(a3, v10, self->_uncertainty, v11, @"kCLLocationCodingKeyGroundAltitudeUncertainty");
    objc_msgSend_encodeDouble_forKey_(a3, v12, self->_undulation, v13, @"kCLLocationCodingKeyGroundAltitudeUndulation");
    undulationModel = self->_undulationModel;

    objc_msgSend_encodeInt_forKey_(a3, v14, v15, v16, undulationModel, @"kCLLocationCodingKeyGroundAltitudeUndulationModel");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(a3, v7, v8, v9, "d", &self->_estimate);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v18, v19, v20, "d", &self->_uncertainty);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v21, v22, v23, "d", &self->_undulation);

    objc_msgSend_encodeValueOfObjCType_at_(a3, v24, v25, v26, "i", &self->_undulationModel);
  }
}

- (_CLLocationGroundAltitude)initWithCoder:(id)a3
{
  v37 = -1.0;
  v38 = 0.0;
  v36 = 0.0;
  v35 = -1;
  if (objc_msgSend_allowsKeyedCoding(a3, a2, v3, v4))
  {
    objc_msgSend_decodeDoubleForKey_(a3, v7, v8, v9, @"kCLLocationCodingKeyGroundAltitudeEstimate");
    v11 = v10;
    v38 = v10;
    objc_msgSend_decodeDoubleForKey_(a3, v12, v10, v13, @"kCLLocationCodingKeyGroundAltitudeUncertainty");
    v15 = v14;
    v37 = v14;
    objc_msgSend_decodeDoubleForKey_(a3, v16, v14, v17, @"kCLLocationCodingKeyGroundAltitudeUndulation");
    v19 = v18;
    v36 = v18;
    v22 = objc_msgSend_decodeIntForKey_(a3, v20, v18, v21, @"kCLLocationCodingKeyGroundAltitudeUndulationModel");
    v35 = v22;
    return objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(self, v23, v11, v15, v22, v19);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(a3, v7, v8, v9, "d", &v38);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v25, v26, v27, "d", &v37);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v28, v29, v30, "d", &v36);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v31, v32, v33, "i", &v35);
    return objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(self, v34, v38, v37, v35, v36);
  }
}

@end