@interface _CLLocationFusionInfo
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_CLLocationFusionInfo)initWithCoder:(id)coder;
- (_CLLocationFusionInfo)initWithCoordinateFused:(BOOL)fused coordinateFusedWithVL:(BOOL)l coordinate:(id)coordinate horizontalAccuracy:(double)accuracy referenceFrame:(int)frame altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy course:(double)self0 courseAccuracy:(double)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLocationFusionInfo

- (_CLLocationFusionInfo)initWithCoordinateFused:(BOOL)fused coordinateFusedWithVL:(BOOL)l coordinate:(id)coordinate horizontalAccuracy:(double)accuracy referenceFrame:(int)frame altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy course:(double)self0 courseAccuracy:(double)self1
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v26.receiver = self;
  v26.super_class = _CLLocationFusionInfo;
  result = [(_CLLocationFusionInfo *)&v26 init];
  if (result)
  {
    v23 = (((*&accuracy & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF || accuracy < 0.0) && (*&accuracy - 1) >= 0xFFFFFFFFFFFFFLL;
    v24 = !v23 && fused;
    result->_coordinateFused = v24;
    v25 = !v23 && l;
    result->_coordinateFusedWithVL = v25;
    result->_coordinate.latitude = var0;
    result->_coordinate.longitude = var1;
    result->_referenceFrame = frame;
    result->_horizontalAccuracy = accuracy;
    result->_altitude = altitude;
    result->_verticalAccuracy = verticalAccuracy;
    result->_course = course;
    result->_courseAccuracy = courseAccuracy;
  }

  return result;
}

- (_CLLocationFusionInfo)initWithCoder:(id)coder
{
  v85 = 0;
  v83 = 0.0;
  v84 = 0.0;
  v82 = -1.0;
  v81 = 0;
  v79 = -1.0;
  v80 = 0.0;
  v77 = -1.0;
  v78 = -1.0;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    v10 = objc_msgSend_decodeBoolForKey_(coder, v7, v8, v9, @"coordinateFused");
    HIBYTE(v85) = v10;
    if (objc_msgSend_containsValueForKey_(coder, v11, v12, v13, @"coordinateFusedWithVL"))
    {
      v17 = objc_msgSend_decodeBoolForKey_(coder, v14, v15, v16, @"coordinateFusedWithVL");
      LOBYTE(v85) = v17;
    }

    else
    {
      v17 = 0;
    }

    objc_msgSend_decodeDoubleForKey_(coder, v14, v15, v16, @"coordinateLatitude");
    v48 = v47;
    v83 = v47;
    objc_msgSend_decodeDoubleForKey_(coder, v49, v47, v50, @"coordinateLongitude");
    v52 = v51;
    v84 = v51;
    objc_msgSend_decodeDoubleForKey_(coder, v53, v51, v54, @"horizontalAccuracy");
    v56 = v55;
    v82 = v55;
    v59 = objc_msgSend_decodeIntForKey_(coder, v57, v55, v58, @"referenceFrame");
    v81 = v59;
    v66 = 0.0;
    if (objc_msgSend_containsValueForKey_(coder, v60, v61, v62, @"altitude"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v63, v64, v65, @"altitude");
      v66 = v64;
      v80 = v64;
    }

    v70 = -1.0;
    if (objc_msgSend_containsValueForKey_(coder, v63, v64, v65, @"verticalAccuracy"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v67, v68, v69, @"verticalAccuracy");
      v70 = v68;
      v79 = v68;
    }

    objc_msgSend_decodeDoubleForKey_(coder, v67, v68, v69, @"course");
    v72 = v71;
    objc_msgSend_decodeDoubleForKey_(coder, v73, v71, v74, @"courseAccuracy");
    return objc_msgSend_initWithCoordinateFused_coordinateFusedWithVL_coordinate_horizontalAccuracy_referenceFrame_altitude_verticalAccuracy_course_courseAccuracy_(self, v75, v48, v52, v10 & 1, v17 & 1, v59, v56, v66, v70, v72, v76);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v7, v8, v9, "B", &v85 + 1);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v18, v19, v20, "B", &v85);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v21, v22, v23, "d", &v83);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v24, v25, v26, "d", &v84);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v27, v28, v29, "d", &v82);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v30, v31, v32, "i", &v81);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v33, v34, v35, "d", &v80);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v36, v37, v38, "d", &v79);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v39, v40, v41, "d", &v78);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v42, v43, v44, "d", &v77);
    return objc_msgSend_initWithCoordinateFused_coordinateFusedWithVL_coordinate_horizontalAccuracy_referenceFrame_altitude_verticalAccuracy_course_courseAccuracy_(self, v45, v83, v84, HIBYTE(v85) & 1, v85 & 1, v81, v82, v80, v79, v78, v77);
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    objc_msgSend_encodeBool_forKey_(coder, v7, v8, v9, self->_coordinateFused, @"coordinateFused");
    objc_msgSend_encodeBool_forKey_(coder, v10, v11, v12, self->_coordinateFusedWithVL, @"coordinateFusedWithVL");
    objc_msgSend_encodeDouble_forKey_(coder, v13, self->_coordinate.latitude, v14, @"coordinateLatitude");
    objc_msgSend_encodeDouble_forKey_(coder, v15, self->_coordinate.longitude, v16, @"coordinateLongitude");
    objc_msgSend_encodeDouble_forKey_(coder, v17, self->_horizontalAccuracy, v18, @"horizontalAccuracy");
    objc_msgSend_encodeInt_forKey_(coder, v19, v20, v21, self->_referenceFrame, @"referenceFrame");
    objc_msgSend_encodeDouble_forKey_(coder, v22, self->_altitude, v23, @"altitude");
    objc_msgSend_encodeDouble_forKey_(coder, v24, self->_verticalAccuracy, v25, @"verticalAccuracy");
    objc_msgSend_encodeDouble_forKey_(coder, v26, self->_course, v27, @"course");
    courseAccuracy = self->_courseAccuracy;

    objc_msgSend_encodeDouble_forKey_(coder, v28, courseAccuracy, v29, @"courseAccuracy");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v7, v8, v9, "B", &self->_coordinateFused);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v31, v32, v33, "B", &self->_coordinateFusedWithVL);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v34, v35, v36, "d", &self->_coordinate);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v37, v38, v39, "d", &self->_coordinate.longitude);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v40, v41, v42, "d", &self->_horizontalAccuracy);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v43, v44, v45, "i", &self->_referenceFrame);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v46, v47, v48, "d", &self->_altitude);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v49, v50, v51, "d", &self->_verticalAccuracy);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v52, v53, v54, "d", &self->_course);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v55, v56, v57, "d", &self->_courseAccuracy);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end