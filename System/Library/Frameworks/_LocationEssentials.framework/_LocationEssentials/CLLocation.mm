@interface CLLocation
- ($44DCC351AE6C4D5D67D1940BF7906435)clientLocation;
- (BOOL)isAltitudeWgs84Available;
- (CLFloor)floor;
- (CLLocation)initWithClientLocation:(id *)location;
- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private;
- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private coarseMetaData:(id)data;
- (CLLocation)initWithClientLocation:(id *)location coarseMetaData:(id)data;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude;
- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude fusionInfo:(id)fusionInfo trackRunInfo:(id)runInfo rawHorizontalAccuracy:(double)accuracy rawCourseAccuracy:(double)self0 coarseMetaData:(id)self1;
- (CLLocation)initWithCoder:(id)coder;
- (CLLocation)initWithLatitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)rawCoordinate;
- (CLLocationDistance)distanceFromLocation:(const CLLocation *)location;
- (CLLocationSourceInformation)sourceInformation;
- (NSData)coarseMetaData;
- (NSString)iso6709Notation;
- (double)altitudeWgs84;
- (double)magneticDeclination;
- (id)_groundAltitude;
- (id)_initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 timestamp:(id)self1 floor:(int)self2 type:(int)self3 sourceParams:(id)self4 referenceFrame:(int)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonObject;
- (id)propagateLocationToTime:(double)time;
- (id)shortDescription;
- (id)snapToResolution:(double)resolution;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)unmatch;
@end

@implementation CLLocation

- ($44DCC351AE6C4D5D67D1940BF7906435)clientLocation
{
  var0 = self->var1.var0;
  v4 = *(*&var0 + 120);
  *&retstr->var11 = *(*&var0 + 104);
  retstr->var13 = v4;
  *&retstr->var14 = *(*&var0 + 136);
  *&retstr->var16 = *(*&var0 + 148);
  v5 = *(*&var0 + 56);
  *&retstr->var3 = *(*&var0 + 40);
  *&retstr->var5 = v5;
  v6 = *(*&var0 + 88);
  *&retstr->var7 = *(*&var0 + 72);
  *&retstr->var9 = v6;
  v7 = *(*&var0 + 24);
  *&retstr->var0 = *(*&var0 + 8);
  *&retstr->var1.var1 = v7;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocation;
  [(CLLocation *)&v3 dealloc];
}

- (CLLocationCoordinate2D)coordinate
{
  internal = self->_internal;
  v3 = *(internal + 12);
  v4 = *(internal + 20);
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CLLocationSourceInformation)sourceInformation
{
  internal = self->_internal;
  v3 = [CLLocationSourceInformation alloc];
  v7 = objc_msgSend_initWithSoftwareSimulationState_andExternalAccessoryState_(v3, v4, v5, v6, *(internal + 160), internal[26] == 3);

  return v7;
}

- (CLFloor)floor
{
  internal = self->_internal;
  if (internal[33] == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = [CLFloor alloc];
  v8 = objc_msgSend_initWithLevel_(v4, v5, v6, v7, internal[33]);

  return v8;
}

- (id)description
{
  internal = self->_internal;
  if (qword_1ED4B7F70 != -1)
  {
    dispatch_once(&qword_1ED4B7F70, &unk_1F2039680);
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = *(internal + 12);
  v19 = v6;
  v7 = *(internal + 28);
  v8 = *(internal + 52);
  v9 = *(internal + 68);
  v10 = qword_1ED4B7F68;
  v11 = objc_msgSend_timestamp(self, a2, *&v6, v2);
  v15 = objc_msgSend_stringFromDate_(v10, v12, v13, v14, v11);
  return objc_msgSend_stringWithFormat_(v5, v16, *&v19, v17, @"<%+.8f,%+.8f> +/- %.2fm (speed %.2f mps / course %.2f) @ %@", v19, v7, v8, v9, v15);
}

- (NSData)coarseMetaData
{
  v2 = *(self->_internal + 24);

  return v2;
}

- (CLLocationCoordinate2D)rawCoordinate
{
  internal = self->_internal;
  v3 = *(internal + 108);
  v4 = *(internal + 116);
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (CLLocation)initWithLatitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude
{
  objc_msgSend_date(MEMORY[0x1E695DF00], a2, latitude, longitude);

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_, latitude, longitude);
}

- (id)_initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 timestamp:(id)self1 floor:(int)self2 type:(int)self3 sourceParams:(id)self4 referenceFrame:(int)self5
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  objc_msgSend_timeIntervalSinceReferenceDate(timestamp, a2, coordinate.latitude, coordinate.longitude);
  v29 = v27;
  if (params)
  {
    isSimulatedBySoftware = objc_msgSend_isSimulatedBySoftware(params, v26, v27, v28);
  }

  else
  {
    isSimulatedBySoftware = 0;
  }

  v34 = 0xFFFF;
  v35 = latitude;
  v36 = longitude;
  accuracyCopy = accuracy;
  altitudeCopy = altitude;
  verticalAccuracyCopy = verticalAccuracy;
  speedCopy = speed;
  speedAccuracyCopy = speedAccuracy;
  courseCopy = course;
  courseAccuracyCopy = courseAccuracy;
  v44 = v29;
  v45 = 0;
  v46 = 0xBFF0000000000000;
  typeCopy = type;
  v48 = *(&xmmword_1AB62AA00 + 4);
  v49 = 0xBFF0000000000000;
  floorCopy = floor;
  v51 = 0;
  frameCopy = frame;
  v53 = 0;
  v54 = 0;
  v55 = isSimulatedBySoftware;
  v56 = 0;
  v57 = 0;
  return objc_msgSend_initWithClientLocation_(self, v26, 0.0, course, &v34);
}

- (CLLocation)initWithClientLocation:(id *)location
{
  v14.receiver = self;
  v14.super_class = CLLocation;
  v4 = [(CLLocation *)&v14 init];
  if (v4)
  {
    v5 = [CLLocationInternal alloc];
    var13 = location->var13;
    v12[6] = *&location->var11;
    v12[7] = var13;
    v13[0] = *&location->var14;
    *(v13 + 12) = *&location->var16;
    v7 = *&location->var5;
    v12[2] = *&location->var3;
    v12[3] = v7;
    v8 = *&location->var9;
    v12[4] = *&location->var7;
    v12[5] = v8;
    v9 = *&location->var1.var1;
    v12[0] = *&location->var0;
    v12[1] = v9;
    v4->_internal = objc_msgSend_initWithClientLocation_(v5, v10, *v12, *&v9, v12);
  }

  return v4;
}

- (CLLocation)initWithClientLocation:(id *)location coarseMetaData:(id)data
{
  v16.receiver = self;
  v16.super_class = CLLocation;
  v6 = [(CLLocation *)&v16 init];
  if (v6)
  {
    v7 = [CLLocationInternal alloc];
    var13 = location->var13;
    v14[6] = *&location->var11;
    v14[7] = var13;
    v15[0] = *&location->var14;
    *(v15 + 12) = *&location->var16;
    v9 = *&location->var5;
    v14[2] = *&location->var3;
    v14[3] = v9;
    v10 = *&location->var9;
    v14[4] = *&location->var7;
    v14[5] = v10;
    v11 = *&location->var1.var1;
    v14[0] = *&location->var0;
    v14[1] = v11;
    v6->_internal = objc_msgSend_initWithClientLocation_coarseMetaData_(v7, v12, *v14, *&v11, v14, data);
  }

  return v6;
}

- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private
{
  v19.receiver = self;
  v19.super_class = CLLocation;
  v6 = [(CLLocation *)&v19 init];
  if (v6)
  {
    v7 = [CLLocationInternal alloc];
    var13 = location->var13;
    v17[6] = *&location->var11;
    v17[7] = var13;
    v18[0] = *&location->var14;
    *(v18 + 12) = *&location->var16;
    v9 = *&location->var5;
    v17[2] = *&location->var3;
    v17[3] = v9;
    v10 = *&location->var9;
    v17[4] = *&location->var7;
    v17[5] = v10;
    v11 = *&location->var1.var1;
    v17[0] = *&location->var0;
    v17[1] = v11;
    memcpy(v16, private, sizeof(v16));
    v6->_internal = objc_msgSend_initWithClientLocation_clientLocationPrivate_(v7, v12, v13, v14, v17, v16);
  }

  return v6;
}

- (CLLocation)initWithClientLocation:(id *)location clientLocationPrivate:(id *)private coarseMetaData:(id)data
{
  v21.receiver = self;
  v21.super_class = CLLocation;
  v8 = [(CLLocation *)&v21 init];
  if (v8)
  {
    v9 = [CLLocationInternal alloc];
    var13 = location->var13;
    v19[6] = *&location->var11;
    v19[7] = var13;
    v20[0] = *&location->var14;
    *(v20 + 12) = *&location->var16;
    v11 = *&location->var5;
    v19[2] = *&location->var3;
    v19[3] = v11;
    v12 = *&location->var9;
    v19[4] = *&location->var7;
    v19[5] = v12;
    v13 = *&location->var1.var1;
    v19[0] = *&location->var0;
    v19[1] = v13;
    memcpy(v18, private, sizeof(v18));
    v8->_internal = objc_msgSend_initWithClientLocation_clientLocationPrivate_coarseMetaData_(v9, v14, v15, v16, v19, v18, data);
  }

  return v8;
}

- (CLLocation)initWithCoder:(id)coder
{
  *v253 = xmmword_1AB62AA00;
  *&v253[16] = unk_1AB62AA10;
  memset(v254, 0, 28);
  *&v252[32] = xmmword_1AB62A9C0;
  *&v252[48] = unk_1AB62A9D0;
  *&v252[64] = xmmword_1AB62A9E0;
  *&v252[80] = unk_1AB62A9F0;
  *v252 = xmmword_1AB62A9A0;
  *&v252[16] = *dbl_1AB62A9B0;
  v250 = 0.0;
  *&v251 = -1.0;
  *&v248 = -1.0;
  *&v249 = -1.0;
  v247 = 0;
  v245 = 0.0;
  v246 = 0.0;
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, COERCE_DOUBLE(0xFFFFLL), dbl_1AB62A9B0[0]) & 1) == 0)
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v5, v6, v7, "d", &v252[4]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v118, v119, v120, "d", v252 | 0xC);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v121, v122, v123, "d", &v252[20]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v124, v125, v126, "d", &v252[28]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v127, v128, v129, "d", &v252[36]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v130, v131, v132, "d", &v252[44]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v133, v134, v135, "d", &v252[52]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v136, v137, v138, "d", &v252[60]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v139, v140, v141, "d", &v252[68]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v142, v143, v144, "d", &v252[76]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v145, v146, v147, "i", v253);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v148, v149, v150, "d", &v252[88]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v151, v152, v153, "i", &v253[28]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v154, v155, v156, "I", v254);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v157, v158, v159, "i", v254 + 4);
    v59 = objc_msgSend_decodeObject(coder, v160, v161, v162);
    v64 = objc_msgSend_decodeObject(coder, v163, v164, v165);
    v69 = objc_msgSend_decodeObject(coder, v166, v167, v168);
    v74 = objc_msgSend_decodeObject(coder, v169, v170, v171);
    v79 = objc_msgSend_decodeObject(coder, v172, v173, v174);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v175, v176, v177, "d", &v253[4]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v178, v179, v180, "d", &v253[12]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v181, v182, v183, "d", &v251);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v184, v185, v186, "i", v254 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v187, v188, v189, "d", &v250);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v190, v191, v192, "d", &v249);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v193, v194, v195, "d", &v253[20]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v196, v197, v198, "d", &v248);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v199, v200, v201, "i", v254 + 12);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v202, v203, v204, "d", &v254[1]);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v205, v206, v207, "i", &v247);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v208, v209, v210, "d", &v246);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v211, v212, v213, "d", &v245);
    objc_msgSend_decodeObject(coder, v214, v215, v216);
    v220 = objc_msgSend_decodeObject(coder, v217, v218, v219);
    v99 = v250;
    v92 = *&v251;
    v110 = *&v248;
    v103 = *&v249;
    v222 = v247;
    v223 = v245;
    v224 = v246;
    goto LABEL_33;
  }

  objc_msgSend_decodeDoubleForKey_(coder, v5, v6, v7, @"kCLLocationCodingKeyCoordinateLatitude");
  *&v252[4] = v8;
  objc_msgSend_decodeDoubleForKey_(coder, v9, v8, v10, @"kCLLocationCodingKeyCoordinateLongitude");
  *&v252[12] = v11;
  objc_msgSend_decodeDoubleForKey_(coder, v12, v11, v13, @"kCLLocationCodingKeyHorizontalAccuracy");
  *&v252[20] = v14;
  objc_msgSend_decodeDoubleForKey_(coder, v15, v14, v16, @"kCLLocationCodingKeyAltitude");
  *&v252[28] = v17;
  objc_msgSend_decodeDoubleForKey_(coder, v18, v17, v19, @"kCLLocationCodingKeyVerticalAccuracy");
  v21 = v20;
  *&v252[36] = v20;
  objc_msgSend_decodeDoubleForKey_(coder, v22, v20, v23, @"kCLLocationCodingKeySpeed");
  *&v252[44] = v24;
  objc_msgSend_decodeDoubleForKey_(coder, v25, v24, v26, @"kCLLocationCodingKeySpeedAccuracy");
  *&v252[52] = v27;
  objc_msgSend_decodeDoubleForKey_(coder, v28, v27, v29, @"kCLLocationCodingKeyCourse");
  *&v252[60] = v30;
  objc_msgSend_decodeDoubleForKey_(coder, v31, v30, v32, @"kCLLocationCodingKeyCourseAccuracy");
  *&v252[68] = v33;
  objc_msgSend_decodeDoubleForKey_(coder, v34, v33, v35, @"kCLLocationCodingKeyTimestamp");
  *&v252[76] = v36;
  *v253 = objc_msgSend_decodeIntForKey_(coder, v37, v36, v38, @"kCLLocationCodingKeyType");
  objc_msgSend_decodeDoubleForKey_(coder, v39, v40, v41, @"kCLLocationCodingKeyLifespan");
  *&v252[88] = v42;
  *&v253[28] = objc_msgSend_decodeIntForKey_(coder, v43, v42, v44, @"kCLLocationCodingKeyFloor");
  LODWORD(v254[0]) = objc_msgSend_decodeIntForKey_(coder, v45, v46, v47, @"kCLLocationCodingKeyIntegrity");
  v51 = objc_msgSend_containsValueForKey_(coder, v48, v49, v50, @"reserved");
  if (v51)
  {
    v51 = objc_msgSend_decodeIntForKey_(coder, v52, v53, v54, @"reserved");
  }

  DWORD1(v254[0]) = v51;
  v55 = objc_opt_class();
  v59 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v56, v57, v58, v55, @"kCLLocationCodingKeyMatchInfo");
  v60 = objc_opt_class();
  v64 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v61, v62, v63, v60, @"kCLLocationCodingKeyGroundAltitude");
  v65 = objc_opt_class();
  v69 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v66, v67, v68, v65, @"kCLLocationCodingKeyFusionInfo");
  v70 = objc_opt_class();
  v74 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v71, v72, v73, v70, @"kCLLocationCodingKeyTrackRunInfo");
  v75 = objc_opt_class();
  v79 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v76, v77, v78, v75, @"kCLLocationCodingKeyCoarseMetaData");
  objc_msgSend_decodeDoubleForKey_(coder, v80, v81, v82, @"kCLLocationCodingKeyRawCoordinateLatitude");
  *&v253[4] = v83;
  objc_msgSend_decodeDoubleForKey_(coder, v84, v83, v85, @"kCLLocationCodingKeyRawCoordinateLongitude");
  *&v253[12] = v86;
  v92 = -1.0;
  if (objc_msgSend_containsValueForKey_(coder, v87, v86, v88, @"kCLLocationCodingKeyRawHorizontalAccuracy"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v89, v90, v91, @"kCLLocationCodingKeyRawHorizontalAccuracy");
    v92 = v90;
    *&v251 = v90;
  }

  if (objc_msgSend_containsValueForKey_(coder, v89, v90, v91, @"kCLLocationCodingKeyRawReferenceFrame"))
  {
    DWORD2(v254[0]) = objc_msgSend_decodeIntForKey_(coder, v93, v94, v95, @"kCLLocationCodingKeyRawReferenceFrame");
  }

  v99 = 0.0;
  if (objc_msgSend_containsValueForKey_(coder, v93, v94, v95, @"kCLLocationCodingKeyRawAltitude"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v96, v97, v98, @"kCLLocationCodingKeyRawAltitude");
    v99 = v97;
    v250 = v97;
  }

  v103 = -1.0;
  if (objc_msgSend_containsValueForKey_(coder, v96, v97, v98, @"kCLLocationCodingKeyRawVerticalAccuracy"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v100, v101, v102, @"kCLLocationCodingKeyRawVerticalAccuracy");
    v103 = v101;
    *&v249 = v101;
  }

  if (objc_msgSend_containsValueForKey_(coder, v100, v101, v102, @"kCLLocationCodingKeyRawCourse"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v104, v105, v106, @"kCLLocationCodingKeyRawCourse");
    *&v253[20] = v105;
  }

  v110 = -1.0;
  if (objc_msgSend_containsValueForKey_(coder, v104, v105, v106, @"kCLLocationCodingKeyRawCourseAccuracy"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v107, v108, v109, @"kCLLocationCodingKeyRawCourseAccuracy");
    v110 = v108;
    *&v248 = v108;
  }

  if (objc_msgSend_containsValueForKey_(coder, v107, v108, v109, @"kCLLocationCodingKeySignalEnvironmentType"))
  {
    HIDWORD(v254[0]) = objc_msgSend_decodeIntForKey_(coder, v111, v112, v113, @"kCLLocationCodingKeySignalEnvironmentType");
  }

  if (objc_msgSend_containsValueForKey_(coder, v111, v112, v113, @"kCLLocationCodingKeyEllipsoidalAltitude"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v114, v115, v116, @"kCLLocationCodingKeyEllipsoidalAltitude");
LABEL_22:
    *&v254[1] = v117;
    goto LABEL_23;
  }

  v117 = 0.0;
  if (v21 >= 0.0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (objc_msgSend_containsValueForKey_(coder, v114, v117, v116, @"kCLLocationCodingKeyPositionContextState"))
  {
    v222 = objc_msgSend_decodeIntForKey_(coder, v225, v226, v227, @"kCLLocationCodingKeyPositionContextState");
    v247 = v222;
  }

  else
  {
    v222 = 0;
  }

  v223 = 0.0;
  v224 = 0.0;
  if (objc_msgSend_containsValueForKey_(coder, v225, v226, v227, @"kCLLocationCodingKeyProbabilityPositionContextStateIndoor"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v228, v229, v230, @"kCLLocationCodingKeyProbabilityPositionContextStateIndoor");
    v224 = v229;
    v246 = v229;
  }

  if (objc_msgSend_containsValueForKey_(coder, v228, v229, v230, @"kCLLocationCodingKeyProbabilityPositionContextStateOutdoor"))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v231, v232, v233, @"kCLLocationCodingKeyProbabilityPositionContextStateOutdoor");
    v223 = v232;
    v245 = v232;
  }

  if (objc_msgSend_containsValueForKey_(coder, v231, v232, v233, @"kCLLocationCodingKeySimulationParams"))
  {
    v234 = objc_opt_class();
    objc_msgSend_decodeObjectOfClass_forKey_(coder, v235, v236, v237, v234, @"kCLLocationCodingKeySimulationParams");
  }

  v238 = objc_opt_class();
  v220 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v239, v240, v241, v238, @"kCLLocationCodingKeyGnssOdometerInfo");
LABEL_33:
  v243[6] = *v253;
  v243[7] = *&v253[16];
  v244[0] = v254[0];
  *(v244 + 12) = *(v254 + 12);
  v243[2] = *&v252[32];
  v243[3] = *&v252[48];
  v243[4] = *&v252[64];
  v243[5] = *&v252[80];
  v243[0] = *v252;
  v243[1] = *&v252[16];
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_coarseMetaData_(self, v221, -1.0, v92, v243, v59, v64, v69, v74, v222, v99, v103, v110, v224, v223, v220, v79);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, v3, v4))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v8, *(internal + 12), v10, @"kCLLocationCodingKeyCoordinateLatitude");
    objc_msgSend_encodeDouble_forKey_(coder, v11, *(internal + 20), v12, @"kCLLocationCodingKeyCoordinateLongitude");
    objc_msgSend_encodeDouble_forKey_(coder, v13, *(internal + 28), v14, @"kCLLocationCodingKeyHorizontalAccuracy");
    objc_msgSend_encodeDouble_forKey_(coder, v15, *(internal + 36), v16, @"kCLLocationCodingKeyAltitude");
    objc_msgSend_encodeDouble_forKey_(coder, v17, *(internal + 44), v18, @"kCLLocationCodingKeyVerticalAccuracy");
    objc_msgSend_encodeDouble_forKey_(coder, v19, *(internal + 52), v20, @"kCLLocationCodingKeySpeed");
    objc_msgSend_encodeDouble_forKey_(coder, v21, *(internal + 60), v22, @"kCLLocationCodingKeySpeedAccuracy");
    objc_msgSend_encodeDouble_forKey_(coder, v23, *(internal + 68), v24, @"kCLLocationCodingKeyCourse");
    objc_msgSend_encodeDouble_forKey_(coder, v25, *(internal + 76), v26, @"kCLLocationCodingKeyCourseAccuracy");
    objc_msgSend_encodeDouble_forKey_(coder, v27, *(internal + 84), v28, @"kCLLocationCodingKeyTimestamp");
    objc_msgSend_encodeInt_forKey_(coder, v29, v30, v31, *(internal + 26), @"kCLLocationCodingKeyType");
    objc_msgSend_encodeDouble_forKey_(coder, v32, internal[12], v33, @"kCLLocationCodingKeyLifespan");
    objc_msgSend_encodeInt_forKey_(coder, v34, v35, v36, *(internal + 33), @"kCLLocationCodingKeyFloor");
    objc_msgSend_encodeInt_forKey_(coder, v37, v38, v39, *(internal + 34), @"kCLLocationCodingKeyIntegrity");
    objc_msgSend_encodeInt_forKey_(coder, v40, v41, v42, *(internal + 35), @"reserved");
    objc_msgSend_encodeObject_forKey_(coder, v43, v44, v45, *(internal + 21), @"kCLLocationCodingKeyMatchInfo");
    objc_msgSend_encodeObject_forKey_(coder, v46, v47, v48, *(internal + 22), @"kCLLocationCodingKeyGroundAltitude");
    objc_msgSend_encodeObject_forKey_(coder, v49, v50, v51, *(internal + 25), @"kCLLocationCodingKeyFusionInfo");
    objc_msgSend_encodeObject_forKey_(coder, v52, v53, v54, *(internal + 26), @"kCLLocationCodingKeyTrackRunInfo");
    objc_msgSend_encodeObject_forKey_(coder, v55, v56, v57, *(internal + 24), @"kCLLocationCodingKeyCoarseMetaData");
    objc_msgSend_encodeDouble_forKey_(coder, v58, *(internal + 108), v59, @"kCLLocationCodingKeyRawCoordinateLatitude");
    objc_msgSend_encodeDouble_forKey_(coder, v60, *(internal + 116), v61, @"kCLLocationCodingKeyRawCoordinateLongitude");
    objc_msgSend_encodeDouble_forKey_(coder, v62, internal[27], v63, @"kCLLocationCodingKeyRawHorizontalAccuracy");
    objc_msgSend_encodeInt_forKey_(coder, v64, v65, v66, *(internal + 36), @"kCLLocationCodingKeyRawReferenceFrame");
    objc_msgSend_encodeDouble_forKey_(coder, v67, internal[28], v68, @"kCLLocationCodingKeyRawAltitude");
    objc_msgSend_encodeDouble_forKey_(coder, v69, internal[29], v70, @"kCLLocationCodingKeyRawVerticalAccuracy");
    objc_msgSend_encodeDouble_forKey_(coder, v71, *(internal + 124), v72, @"kCLLocationCodingKeyRawCourse");
    objc_msgSend_encodeDouble_forKey_(coder, v73, internal[30], v74, @"kCLLocationCodingKeyRawCourseAccuracy");
    objc_msgSend_encodeInt_forKey_(coder, v75, v76, v77, *(internal + 37), @"kCLLocationCodingKeySignalEnvironmentType");
    objc_msgSend_encodeDouble_forKey_(coder, v78, internal[19], v79, @"kCLLocationCodingKeyEllipsoidalAltitude");
    objc_msgSend_encodeInt_forKey_(coder, v80, v81, v82, *(internal + 62), @"kCLLocationCodingKeyPositionContextState");
    objc_msgSend_encodeDouble_forKey_(coder, v83, internal[32], v84, @"kCLLocationCodingKeyProbabilityPositionContextStateIndoor");
    objc_msgSend_encodeDouble_forKey_(coder, v85, internal[33], v86, @"kCLLocationCodingKeyProbabilityPositionContextStateOutdoor");
    v90 = objc_msgSend_sourceInformation(self, v87, v88, v89);
    objc_msgSend_encodeObject_forKey_(coder, v91, v92, v93, v90, @"kCLLocationCodingKeySimulationParams");
    v97 = *(internal + 34);

    objc_msgSend_encodeObject_forKey_(coder, v94, v95, v96, v97, @"kCLLocationCodingKeyGnssOdometerInfo");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v8, v9, v10, "d", internal + 12);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v98, v99, v100, "d", internal + 20);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v101, v102, v103, "d", internal + 28);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v104, v105, v106, "d", internal + 36);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v107, v108, v109, "d", internal + 44);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v110, v111, v112, "d", internal + 52);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v113, v114, v115, "d", internal + 60);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v116, v117, v118, "d", internal + 68);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v119, v120, v121, "d", internal + 76);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v122, v123, v124, "d", internal + 84);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v125, v126, v127, "i", internal + 13);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v128, v129, v130, "d", internal + 12);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v131, v132, v133, "i", internal + 132);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v134, v135, v136, "I", internal + 17);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v137, v138, v139, "i", internal + 140);
    objc_msgSend_encodeObject_(coder, v140, v141, v142, *(internal + 21));
    objc_msgSend_encodeObject_(coder, v143, v144, v145, *(internal + 22));
    objc_msgSend_encodeObject_(coder, v146, v147, v148, *(internal + 25));
    objc_msgSend_encodeObject_(coder, v149, v150, v151, *(internal + 26));
    objc_msgSend_encodeObject_(coder, v152, v153, v154, *(internal + 24));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v155, v156, v157, "d", internal + 108);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v158, v159, v160, "d", internal + 116);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v161, v162, v163, "d", internal + 27);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v164, v165, v166, "i", internal + 18);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v167, v168, v169, "d", internal + 28);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v170, v171, v172, "d", internal + 29);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v173, v174, v175, "d", internal + 124);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v176, v177, v178, "d", internal + 30);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v179, v180, v181, "i", internal + 148);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v182, v183, v184, "d", internal + 19);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v185, v186, v187, "i", internal + 31);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v188, v189, v190, "d", internal + 32);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v191, v192, v193, "d", internal + 33);
    v197 = objc_msgSend_sourceInformation(self, v194, v195, v196);
    objc_msgSend_encodeObject_(coder, v198, v199, v200, v197);
    v204 = *(internal + 34);

    objc_msgSend_encodeObject_(coder, v201, v202, v203, v204);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, zone);
  v9[1] = objc_msgSend_copy(self->_internal, v10, v11, v12);
  return v9;
}

- (id)shortDescription
{
  v14 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  sub_1AB612D40(v13, 8uLL, *(internal + 68));
  v4 = MEMORY[0x1E696AEC0];
  v12 = *(internal + 12);
  v5 = *(internal + 28);
  v6 = *(internal + 52);
  if (v6 >= 0.0)
  {
    v7 = v6 * 2.23693629;
  }

  else
  {
    v7 = -1.0;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v3, -1.0, v6 * 2.23693629);
  result = objc_msgSend_stringWithFormat_(v4, v9, *&v12, *(internal + 84), @"<%+.5f,%+.5f> ±%.2fm %.0fmph %s %.0fs", v12, v5, *&v7, v13, v8 - *(internal + 84));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)jsonObject
{
  v58[21] = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v57[0] = @"suitability";
  v58[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, v2, v3, *(internal + 2));
  v57[1] = @"latitude";
  v58[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, *(internal + 12), v6);
  v57[2] = @"longitude";
  v58[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v7, *(internal + 20), v8);
  v57[3] = @"horizontalAccuracy";
  v58[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, *(internal + 28), v10);
  v57[4] = @"altitude";
  v58[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v11, *(internal + 36), v12);
  v57[5] = @"verticalAccuracy";
  v58[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v13, *(internal + 44), v14);
  v57[6] = @"speed";
  v58[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v15, *(internal + 52), v16);
  v57[7] = @"course";
  v58[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, *(internal + 68), v18);
  v57[8] = @"courseAccuracy";
  v58[8] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, *(internal + 76), v20);
  v57[9] = @"timestamp";
  v58[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v21, *(internal + 84), v22);
  v57[10] = @"confidence";
  v58[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v23, v24, v25, *(internal + 23));
  v57[11] = @"lifespan";
  v58[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v26, internal[12], v27);
  v57[12] = @"type";
  v58[12] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v28, v29, v30, *(internal + 26));
  v57[13] = @"rawLatitude";
  v58[13] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v31, *(internal + 108), v32);
  v57[14] = @"rawLongitude";
  v58[14] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v33, *(internal + 116), v34);
  v57[15] = @"referenceFrame";
  v58[15] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v35, v36, v37, *(internal + 35));
  v57[16] = @"rawReferenceFrame";
  v58[16] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v38, v39, v40, *(internal + 36));
  v57[17] = @"signalEnvironment";
  v58[17] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v41, v42, v43, *(internal + 37));
  v57[18] = @"ellipsoidalAltitude";
  v58[18] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v44, internal[19], v45);
  v57[19] = @"isSoftwareSimulated";
  v58[19] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v46, v47, v48, *(internal + 160));
  v57[20] = @"isFromExternalAccessory";
  v58[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, v50, v51, *(internal + 26) == 3);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v52, v53, v54, v58, v57, 21);
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)magneticDeclination
{
  internal = self->_internal;
  strcpy(&xmmword_1EB46D8C0, "/System/Library/Frameworks/CoreLocation.framework/Support/WMM.dat");
  v3 = *(internal + 12);
  v4 = *(internal + 20);
  v5 = *(internal + 36);
  v6 = sub_1AB614644(*(internal + 84), *"Frameworks/CoreLocation.framework/Support/WMM.dat", self, a2);
  v9 = 0uLL;
  v11 = 0;
  v10 = 0;
  v7 = sub_1AB60C9C4(&v9, v3, v4, v5, v6);
  result = *(&v10 + 1);
  if (v7)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)isAltitudeWgs84Available
{
  internal = self->_internal;
  v4 = *(internal + 22);
  v5 = *(internal + 44);
  return v5 >= 0.0 && v4 != 0 && objc_msgSend_undulationModel(v4, a2, v5, v2) != -1;
}

- (double)altitudeWgs84
{
  internal = self->_internal;
  v5 = *(internal + 22);
  isAltitudeWgs84Available = objc_msgSend_isAltitudeWgs84Available(self, a2, v2, v3);
  v10 = *(internal + 36);
  if (isAltitudeWgs84Available)
  {
    objc_msgSend_undulation(v5, v7, v8, v9);
    return v10 + v11;
  }

  return v10;
}

- (CLLocationDistance)distanceFromLocation:(const CLLocation *)location
{
  if (location)
  {
    return CLClientGetDistanceHighPrecision(self->_internal + 8, location->_internal + 8);
  }

  else
  {
    return -1.0;
  }
}

- (id)snapToResolution:(double)resolution
{
  internal = self->_internal;
  v4 = *(internal + 120);
  v20 = *(internal + 104);
  v21 = v4;
  v22[0] = *(internal + 136);
  *(v22 + 12) = *(internal + 148);
  v5 = *(internal + 56);
  v16 = *(internal + 40);
  v17 = v5;
  v6 = *(internal + 88);
  v18 = *(internal + 72);
  v19 = v6;
  v7 = *(internal + 24);
  v14 = *(internal + 8);
  v15 = v7;
  v8 = resolution * 1.41421356;
  if (COERCE_DOUBLE(v7 >> 32) < resolution * 1.41421356)
  {
    sub_1AB61199C((&v14 + 4), (&v14 | 0xC), resolution);
    *(&v15 + 4) = v8;
  }

  v9 = [CLLocation alloc];
  v12[6] = v20;
  v12[7] = v21;
  v13[0] = v22[0];
  *(v13 + 12) = *(v22 + 12);
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  return objc_msgSend_initWithClientLocation_(v9, v10, *&v14, *&v15, v12);
}

- (id)propagateLocationToTime:(double)time
{
  internal = self->_internal;
  v15 = xmmword_1AB62AA00;
  v16 = unk_1AB62AA10;
  memset(v17, 0, 28);
  v11 = xmmword_1AB62A9C0;
  v12 = unk_1AB62A9D0;
  v13 = xmmword_1AB62A9E0;
  v14 = unk_1AB62A9F0;
  v9 = xmmword_1AB62A9A0;
  v10 = *dbl_1AB62A9B0;
  sub_1AB609558(internal + 8, &v9, time);
  v4 = [CLLocation alloc];
  v7[6] = v15;
  v7[7] = v16;
  v8[0] = v17[0];
  *(v8 + 12) = *(v17 + 12);
  v7[2] = v11;
  v7[3] = v12;
  v7[4] = v13;
  v7[5] = v14;
  v7[0] = v9;
  v7[1] = v10;
  return objc_msgSend_initWithClientLocation_(v4, v5, *&v9, *&v10, v7);
}

- (NSString)iso6709Notation
{
  Iso6709Notation = CLClientCreateIso6709Notation(self->_internal + 8);

  return Iso6709Notation;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude
{
  v20.receiver = self;
  v20.super_class = CLLocation;
  v10 = [(CLLocation *)&v20 init];
  if (v10)
  {
    v11 = [CLLocationInternal alloc];
    var13 = location->var13;
    v18[6] = *&location->var11;
    v18[7] = var13;
    v19[0] = *&location->var14;
    *(v19 + 12) = *&location->var16;
    v13 = *&location->var5;
    v18[2] = *&location->var3;
    v18[3] = v13;
    v14 = *&location->var9;
    v18[4] = *&location->var7;
    v18[5] = v14;
    v15 = *&location->var1.var1;
    v18[0] = *&location->var0;
    v18[1] = v15;
    v10->_internal = objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_(v11, v16, timestamp, *&v15, v18, info, altitude);
  }

  return v10;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp groundAltitude:(id)altitude fusionInfo:(id)fusionInfo trackRunInfo:(id)runInfo rawHorizontalAccuracy:(double)accuracy rawCourseAccuracy:(double)self0 coarseMetaData:(id)self1
{
  v34.receiver = self;
  v34.super_class = CLLocation;
  v20 = [(CLLocation *)&v34 init];
  if (v20)
  {
    v21 = [CLLocationInternal alloc];
    v22 = *(&location->var2 + 4);
    var13 = location->var13;
    v24 = *&location->var14;
    v25 = *&location->var9;
    v32[6] = *&location->var11;
    v32[7] = var13;
    v33[0] = v24;
    *(v33 + 12) = *&location->var16;
    v26 = *&location->var5;
    v27 = *&location->var7;
    v32[2] = *&location->var3;
    v32[3] = v26;
    v28 = *(&location->var3 + 4);
    v32[4] = v27;
    v32[5] = v25;
    v29 = *&location->var1.var1;
    v32[0] = *&location->var0;
    v32[1] = v29;
    v20->_internal = objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_coarseMetaData_(v21, v30, timestamp, accuracy, v32, info, altitude, fusionInfo, runInfo, 0, v22, v28, courseAccuracy, 0.0, 0.0, 0, data);
  }

  return v20;
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info
{
  var13 = location->var13;
  v9[6] = *&location->var11;
  v9[7] = var13;
  v10[0] = *&location->var14;
  *(v10 + 12) = *&location->var16;
  v5 = *&location->var5;
  v9[2] = *&location->var3;
  v9[3] = v5;
  v6 = *&location->var9;
  v9[4] = *&location->var7;
  v9[5] = v6;
  v7 = *&location->var1.var1;
  v9[0] = *&location->var0;
  v9[1] = v7;
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_(self, a2, -1.0, *&v7, v9, info);
}

- (CLLocation)initWithClientLocation:(id *)location matchInfo:(id)info trustedTimestamp:(double)timestamp
{
  var13 = location->var13;
  v10[6] = *&location->var11;
  v10[7] = var13;
  v11[0] = *&location->var14;
  *(v11 + 12) = *&location->var16;
  v6 = *&location->var5;
  v10[2] = *&location->var3;
  v10[3] = v6;
  v7 = *&location->var9;
  v10[4] = *&location->var7;
  v10[5] = v7;
  v8 = *&location->var1.var1;
  v10[0] = *&location->var0;
  v10[1] = v8;
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_(self, a2, timestamp, *v10, v10, info, 0);
}

- (void)unmatch
{
  internal = self->_internal;
  if (objc_msgSend_isCoordinateFused(*(internal + 25), a2, v2, v3))
  {
    objc_msgSend_coordinate(*(internal + 25), v5, v6, v7);
    *(internal + 12) = v8;
    *(internal + 20) = v9;
    objc_msgSend_horizontalAccuracy(*(internal + 25), v10, v8, v9);
    *(internal + 28) = v11;
    *(internal + 35) = objc_msgSend_referenceFrame(*(internal + 25), v12, v11, v13);
    objc_msgSend_verticalAccuracy(*(internal + 25), v14, v15, v16);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      objc_msgSend_verticalAccuracy(*(internal + 25), v17, v18, v19);
      if (v18 > 0.0)
      {
        objc_msgSend_altitude(*(internal + 25), v17, v18, v19);
        *(internal + 36) = v20;
        objc_msgSend_verticalAccuracy(*(internal + 25), v21, v20, v22);
        *(internal + 44) = v18;
      }
    }

    objc_msgSend_courseAccuracy(*(internal + 25), v17, v18, v19);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      objc_msgSend_courseAccuracy(*(internal + 25), v23, v24, v25);
      if (v27 > 0.0)
      {
        objc_msgSend_course(*(internal + 25), v26, v27, v28);
        *(internal + 68) = v29;
        objc_msgSend_courseAccuracy(*(internal + 25), v30, v29, v31);
LABEL_32:
        *(internal + 76) = v32;
      }
    }
  }

  else
  {
    *(internal + 12) = *(internal + 108);
    *(internal + 35) = *(internal + 36);
    v33 = *(internal + 27);
    if (v33 >= 0 && ((v33 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v33 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      *(internal + 28) = *(internal + 27);
    }

    v36 = *(internal + 29);
    if (v36 >= 0 && ((v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v36 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      *(internal + 36) = *(internal + 28);
      *(internal + 44) = v36;
    }

    v39 = *(internal + 124);
    if (v39 >= 0.0)
    {
      *(internal + 68) = v39;
      v32 = *(internal + 30);
      v40 = v32 < 0 || ((v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
      if (!v40 || (v32 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        goto LABEL_32;
      }
    }
  }
}

- (id)_groundAltitude
{
  internal = self->_internal;
  v5 = *(internal + 22);
  if (!v5)
  {
    return 0;
  }

  objc_msgSend_uncertainty(*(internal + 22), a2, v2, v3);
  objc_msgSend_uncertainty(v5, v6, v7, v8);
  if (v9 <= 0.0)
  {
    return 0;
  }

  return v5;
}

@end