@interface _CLLocationGroundAltitude
- (_CLLocationGroundAltitude)initWithCoder:(id)coder;
- (_CLLocationGroundAltitude)initWithEstimate:(double)estimate uncertainty:(double)uncertainty undulation:(double)undulation undulationModel:(int)model;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLocationGroundAltitude

- (_CLLocationGroundAltitude)initWithEstimate:(double)estimate uncertainty:(double)uncertainty undulation:(double)undulation undulationModel:(int)model
{
  v13.receiver = self;
  v13.super_class = _CLLocationGroundAltitude;
  result = [(_CLLocationGroundAltitude *)&v13 init];
  if (result)
  {
    result->_estimate = estimate;
    result->_uncertainty = uncertainty;
    result->_undulationModel = model;
    uncertaintyCopy2 = sqrt(uncertainty * uncertainty + 900.0);
    if (model != -1)
    {
      uncertaintyCopy2 = uncertainty;
    }

    if (uncertainty <= 0.0)
    {
      uncertaintyCopy2 = uncertainty;
    }

    estimateCopy = estimate + undulation;
    result->_isAltitudeWgs84Available = uncertainty > 0.0 && model != -1;
    if (uncertainty <= 0.0 || model == -1)
    {
      estimateCopy = estimate;
    }

    result->_undulation = undulation;
    result->_altitudeWgs84 = estimateCopy;
    result->_uncertaintyWgs84 = uncertaintyCopy2;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v7, self->_estimate, v9, @"kCLLocationCodingKeyGroundAltitudeEstimate");
    objc_msgSend_encodeDouble_forKey_(coder, v10, self->_uncertainty, v11, @"kCLLocationCodingKeyGroundAltitudeUncertainty");
    objc_msgSend_encodeDouble_forKey_(coder, v12, self->_undulation, v13, @"kCLLocationCodingKeyGroundAltitudeUndulation");
    undulationModel = self->_undulationModel;

    objc_msgSend_encodeInt_forKey_(coder, v14, v15, v16, undulationModel, @"kCLLocationCodingKeyGroundAltitudeUndulationModel");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v7, v8, v9, "d", &self->_estimate);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v18, v19, v20, "d", &self->_uncertainty);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v21, v22, v23, "d", &self->_undulation);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v24, v25, v26, "i", &self->_undulationModel);
  }
}

- (_CLLocationGroundAltitude)initWithCoder:(id)coder
{
  v37 = -1.0;
  v38 = 0.0;
  v36 = 0.0;
  v35 = -1;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v7, v8, v9, @"kCLLocationCodingKeyGroundAltitudeEstimate");
    v11 = v10;
    v38 = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v12, v10, v13, @"kCLLocationCodingKeyGroundAltitudeUncertainty");
    v15 = v14;
    v37 = v14;
    objc_msgSend_decodeDoubleForKey_(coder, v16, v14, v17, @"kCLLocationCodingKeyGroundAltitudeUndulation");
    v19 = v18;
    v36 = v18;
    v22 = objc_msgSend_decodeIntForKey_(coder, v20, v18, v21, @"kCLLocationCodingKeyGroundAltitudeUndulationModel");
    v35 = v22;
    return objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(self, v23, v11, v15, v22, v19);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v7, v8, v9, "d", &v38);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v25, v26, v27, "d", &v37);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v28, v29, v30, "d", &v36);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v31, v32, v33, "i", &v35);
    return objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(self, v34, v38, v37, v35, v36);
  }
}

@end