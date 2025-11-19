@interface NTKGalleonAltitude
+ (id)initAltitude:(id)a3;
- (NTKGalleonAltitude)initWithAbsoluteAltitude:(id)a3;
- (double)_convertMeterInFeet:(double)a3;
- (double)_getCloserValue:(double)a3 low:(double)a4 high:(double)a5;
- (double)_getRoundedAccuracy:(double)a3 byUnit:(BOOL)a4;
- (double)_getRoundedPrecisionWithValue:(double)a3 multiplier:(double)a4;
- (void)_populateRoundedValue;
@end

@implementation NTKGalleonAltitude

+ (id)initAltitude:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v8 = objc_msgSend_initWithAbsoluteAltitude_(v5, v6, v4, v7);

  return v8;
}

- (NTKGalleonAltitude)initWithAbsoluteAltitude:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NTKGalleonAltitude;
  v8 = [(NTKGalleonAltitude *)&v22 init];
  if (v8)
  {
    objc_msgSend_altitude(v4, v5, v6, v7);
    v8->_rawAltitude = v9;
    objc_msgSend_accuracy(v4, v10, v11, v12);
    v8->_rawAccuracy = v13;
    objc_msgSend_precision(v4, v14, v15, v16);
    v8->_rawPrecision = v17;
    objc_msgSend__populateRoundedValue(v8, v18, v19, v20);
  }

  return v8;
}

- (double)_convertMeterInFeet:(double)a3
{
  v4 = objc_alloc(MEMORY[0x277CCAB10]);
  v8 = objc_msgSend_meters(MEMORY[0x277CCAE20], v5, v6, v7);
  v11 = objc_msgSend_initWithDoubleValue_unit_(v4, v9, v8, v10, a3);

  v15 = objc_msgSend_feet(MEMORY[0x277CCAE20], v12, v13, v14);
  v18 = objc_msgSend_measurementByConvertingToUnit_(v11, v16, v15, v17);

  objc_msgSend_doubleValue(v18, v19, v20, v21);
  v23 = v22;

  return v23;
}

- (void)_populateRoundedValue
{
  v85 = *MEMORY[0x277D85DE8];
  objc_msgSend_setDisplayTilde_(self, a2, self->_rawPrecision > 10.0, v2);
  v7 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v4, v5, v6);
  v10 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x277CBE718], v9);
  v14 = objc_msgSend_BOOLValue(v10, v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    objc_msgSend__convertMeterInFeet_(self, v15, v16, v17, self->_rawAltitude);
    self->_rawAltitude = v18;
    objc_msgSend__convertMeterInFeet_(self, v19, v20, v21, self->_rawPrecision);
    self->_rawPrecision = v22;
    objc_msgSend__convertMeterInFeet_(self, v23, v24, v25, self->_rawAccuracy);
    self->_rawAccuracy = v26;
  }

  objc_msgSend__getRoundedPrecisionWithValue_multiplier_(self, v15, v16, v17, self->_rawPrecision, 1.0);
  v28 = v27;
  v32 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v29, v30, v31);
  objc_msgSend_setAbsoluteAltitudePrecision_(self, v33, v32, v34);

  objc_msgSend__getRoundedValue_byRoundedPrecision_(self, v35, v36, v37, self->_rawAltitude, v28);
  objc_msgSend_setAltitude_(self, v38, v39, v40);
  v41 = MEMORY[0x277CCABB0];
  objc_msgSend__getRoundedAccuracy_byUnit_(self, v42, v14, v43, self->_rawAccuracy);
  v47 = objc_msgSend_numberWithDouble_(v41, v44, v45, v46);
  objc_msgSend_setAbsoluteAltitudeAccuracy_(self, v48, v47, v49);

  v53 = objc_msgSend_logObject(NTKGalleonFaceBundle, v50, v51, v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    rawPrecision = self->_rawPrecision;
    rawAltitude = self->_rawAltitude;
    objc_msgSend_altitude(self, v54, v55, v56);
    v61 = v60;
    rawAccuracy = self->_rawAccuracy;
    v66 = objc_msgSend_absoluteAltitudeAccuracy(self, v63, v64, v65);
    v70 = objc_msgSend_stringValue(v66, v67, v68, v69);
    v71 = 138413826;
    v72 = v57;
    v73 = 2048;
    v74 = rawPrecision;
    v75 = 2048;
    v76 = v28;
    v77 = 2048;
    v78 = rawAltitude;
    v79 = 2048;
    v80 = v61;
    v81 = 2048;
    v82 = rawAccuracy;
    v83 = 2112;
    v84 = v70;
    _os_log_impl(&dword_23BE91000, v53, OS_LOG_TYPE_DEFAULT, "Current unit is meter: %@. Raw precision is %f and rounded precision is %f. Raw altitude is %f and rounded altitude is %f. Raw accuracy is %f and rounded accuracy is %@.", &v71, 0x48u);
  }
}

- (double)_getRoundedPrecisionWithValue:(double)a3 multiplier:(double)a4
{
  v9 = 0;
  while (objc_msgSend_count(&unk_284EA8238, a2, v4, v5) - 1 > v9)
  {
    v13 = objc_msgSend_objectAtIndex_(&unk_284EA8238, v10, v9, v12);
    objc_msgSend_doubleValue(v13, v14, v15, v16);
    v18 = v17 * a4;

    v21 = objc_msgSend_objectAtIndex_(&unk_284EA8238, v19, ++v9, v20);
    objc_msgSend_doubleValue(v21, v22, v23, v24);
    v26 = v25;

    if (v18 > a3)
    {
      return v18;
    }

    if (v26 * a4 >= a3)
    {

      MEMORY[0x2821F9670](self, sel__getCloserValue_low_high_, v4, v5);
      return result;
    }
  }

  objc_msgSend__getRoundedPrecisionWithValue_multiplier_(self, v10, v11, v12, a3, a4 * 10.0);
  return result;
}

- (double)_getCloserValue:(double)a3 low:(double)a4 high:(double)a5
{
  if (a3 - a4 <= a5 - a3)
  {
    return a4;
  }

  else
  {
    return a5;
  }
}

- (double)_getRoundedAccuracy:(double)a3 byUnit:(BOOL)a4
{
  result = 10.0;
  if (a4)
  {
    result = 5.0;
  }

  if (a3 > 0.0)
  {
    return result * ceil(a3 / result);
  }

  return result;
}

@end