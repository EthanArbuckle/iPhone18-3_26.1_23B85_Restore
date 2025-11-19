@interface CLLocationInternal
- (CLLocationInternal)initWithClientLocation:(id *)a3;
- (CLLocationInternal)initWithClientLocation:(id *)a3 clientLocationPrivate:(id *)a4;
- (CLLocationInternal)initWithClientLocation:(id *)a3 clientLocationPrivate:(id *)a4 coarseMetaData:(id)a5;
- (CLLocationInternal)initWithClientLocation:(id *)a3 coarseMetaData:(id)a4;
- (CLLocationInternal)initWithClientLocation:(id *)a3 matchInfo:(id)a4 trustedTimestamp:(double)a5 groundAltitude:(id)a6;
- (CLLocationInternal)initWithClientLocation:(id *)a3 matchInfo:(id)a4 trustedTimestamp:(double)a5 groundAltitude:(id)a6 fusionInfo:(id)a7 trackRunInfo:(id)a8 rawHorizontalAccuracy:(double)a9 rawAltitude:(double)a10 rawVerticalAccuracy:(double)a11 rawCourseAccuracy:(double)a12 positionContextStateType:(int)a13 probabilityPositionContextStateIndoor:(double)a14 probabilityPositionContextStateOutdoor:(double)a15 gnssOdometerInfo:(id)a16 coarseMetaData:(id)a17;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CLLocationInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationInternal;
  [(CLLocationInternal *)&v3 dealloc];
}

- (CLLocationInternal)initWithClientLocation:(id *)a3
{
  v12.receiver = self;
  v12.super_class = CLLocationInternal;
  result = [(CLLocationInternal *)&v12 init];
  if (result)
  {
    v5 = *&a3->var0;
    *&result->fLocation.coordinate.longitude = *&a3->var1.var1;
    *&result->fLocation.suitability = v5;
    v6 = *&a3->var3;
    v7 = *&a3->var5;
    v8 = *&a3->var7;
    *&result->fLocation.timestamp = *&a3->var9;
    *&result->fLocation.course = v8;
    *&result->fLocation.speed = v7;
    *&result->fLocation.altitude = v6;
    v9 = *&a3->var11;
    var13 = a3->var13;
    v11 = *&a3->var14;
    *&result->fLocation.integrity = *&a3->var16;
    *&result->fLocation.rawCourse = v11;
    result->fLocation.rawCoordinate = var13;
    *&result->fLocation.lifespan = v9;
    result->fLocation.ellipsoidalAltitude = 0.0;
    *&result->fLocation.fromSimulationController = 0;
    result->fTrustedTimestamp = 0.0;
    result->fCoarseMetaData = 0;
    result->fMatchInfo = 0xBFF0000000000000;
    result->fGroundAltitude = 0;
    result->fFusionInfo = *(&a3->var1.var1 + 4);
    result->fTrackRunInfo = *(&a3->var2 + 4);
    result->fRawHorizontalAccuracy = *(&a3->var3 + 4);
    result->fRawAltitude = *(&a3->var7 + 4);
    result->fProbabilityPositionContextStateIndoor = 0.0;
  }

  return result;
}

- (CLLocationInternal)initWithClientLocation:(id *)a3 coarseMetaData:(id)a4
{
  var13 = a3->var13;
  v11[6] = *&a3->var11;
  v11[7] = var13;
  v12[0] = *&a3->var14;
  *(v12 + 12) = *&a3->var16;
  v6 = *&a3->var5;
  v11[2] = *&a3->var3;
  v11[3] = v6;
  v7 = *&a3->var9;
  v11[4] = *&a3->var7;
  v11[5] = v7;
  v8 = *&a3->var1.var1;
  v11[0] = *&a3->var0;
  v11[1] = v8;
  v9 = objc_msgSend_initWithClientLocation_(self, a2, *v11, *&v8, v11);
  if (v9)
  {
    v9->fGroundAltitude = a4;
  }

  return v9;
}

- (CLLocationInternal)initWithClientLocation:(id *)a3 clientLocationPrivate:(id *)a4
{
  var0 = a4->var10.var0;
  var1 = a4->var10.var1;
  v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, v4, v5, &a4->var15, 64);
  v12 = [CLLocationMatchInfo alloc];
  v14 = objc_msgSend_initWithMatchQuality_matchCoordinate_matchCourse_matchFormOfWay_matchRoadClass_matchShifted_matchDataArray_(v12, v13, var0, var1, a4->var9, a4->var12, a4->var13, a4->var14, v11, a4->var11);
  var3 = a4->var3;
  if ((a4->var18 + 1) >= 2)
  {
    v17 = [_CLLocationGroundAltitude alloc];
    v16 = objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(v17, v18, a4->var27, a4->var28, a4->var18, a4->var19);
  }

  else
  {
    v16 = 0;
  }

  if (var3 <= 0.0)
  {
    var3 = -1.0;
  }

  v19 = [_CLLocationFusionInfo alloc];
  v21 = objc_msgSend_initWithCoordinateFused_coordinateFusedWithVL_coordinate_horizontalAccuracy_referenceFrame_altitude_verticalAccuracy_course_courseAccuracy_(v19, v20, a4->var35.var0, a4->var35.var1, a4->var33, a4->var34, a4->var37, a4->var36, a4->var38, a4->var39, a4->var40, a4->var41);
  v22 = [CLLocationGnssOdometerInfo alloc];
  v24 = objc_msgSend_initWithOdometer_deltaDistance_deltaDistanceAccuracy_(v22, v23, a4->var0, a4->var1, a4->var2);
  v25 = [CLLocationTrackRunInfo alloc];
  v26 = a4->var16.var1;
  var4 = a4->var16.var4;
  v28 = objc_alloc(MEMORY[0x1E696AD98]);
  v32 = objc_msgSend_initWithUnsignedLongLong_(v28, v29, v30, v31, a4->var16.var2);
  v33 = a4->var16.var3;
  var5 = a4->var16.var5;
  var6 = a4->var16.var6;
  v36 = *&a4->var16.var0.var2;
  v37 = a4->var16.var0.var6;
  v56 = *&a4->var16.var0.var4;
  v57 = v37;
  v58 = *&a4->var16.var0.var7;
  v54 = *&a4->var16.var0.var0;
  v55 = v36;
  v53 = var6;
  v39 = objc_msgSend_initWithLapInfo_laneNumber_laneCount_trackId_estimatedLaneNumber_estimatedLaneConfidence_trackProximity_(v25, v38, *&v36, *&v54, &v54, v26, var4, v32, v33, var5, v53);
  var29 = a4->var29;
  var30 = a4->var30;
  var31 = a4->var31;
  var32 = a4->var32;
  var44 = a4->var44;
  var45 = a4->var45;
  var46 = a4->var46;
  var13 = a3->var13;
  v60 = *&a3->var11;
  v61 = var13;
  v62[0] = *&a3->var14;
  *(v62 + 12) = *&a3->var16;
  v48 = *&a3->var5;
  v56 = *&a3->var3;
  v57 = v48;
  v49 = *&a3->var9;
  v58 = *&a3->var7;
  v59 = v49;
  v50 = *&a3->var1.var1;
  v54 = *&a3->var0;
  v55 = v50;
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_(self, v51, var3, var29, &v54, v14, v16, v21, v39, var44, var30, var31, var32, var45, var46, v24);
}

- (CLLocationInternal)initWithClientLocation:(id *)a3 clientLocationPrivate:(id *)a4 coarseMetaData:(id)a5
{
  var13 = a3->var13;
  v17[6] = *&a3->var11;
  v17[7] = var13;
  v18[0] = *&a3->var14;
  *(v18 + 12) = *&a3->var16;
  v8 = *&a3->var5;
  v17[2] = *&a3->var3;
  v17[3] = v8;
  v9 = *&a3->var9;
  v17[4] = *&a3->var7;
  v17[5] = v9;
  v10 = *&a3->var1.var1;
  v17[0] = *&a3->var0;
  v17[1] = v10;
  memcpy(v16, a4, sizeof(v16));
  v14 = objc_msgSend_initWithClientLocation_clientLocationPrivate_(self, v11, v12, v13, v17, v16);
  if (v14)
  {
    v14->fGroundAltitude = a5;
  }

  return v14;
}

- (CLLocationInternal)initWithClientLocation:(id *)a3 matchInfo:(id)a4 trustedTimestamp:(double)a5 groundAltitude:(id)a6
{
  v6 = *(&a3->var1.var1 + 4);
  v7 = *(&a3->var2 + 4);
  v8 = *(&a3->var3 + 4);
  var13 = a3->var13;
  v10 = *&a3->var14;
  v11 = *&a3->var9;
  v16[6] = *&a3->var11;
  v16[7] = var13;
  v17[0] = v10;
  *(v17 + 12) = *&a3->var16;
  v12 = *&a3->var5;
  v13 = *&a3->var7;
  v16[2] = *&a3->var3;
  v16[3] = v12;
  var13.var0 = *(&a3->var7 + 4);
  v16[4] = v13;
  v16[5] = v11;
  v14 = *&a3->var1.var1;
  v16[0] = *&a3->var0;
  v16[1] = v14;
  return objc_msgSend_initWithClientLocation_matchInfo_trustedTimestamp_groundAltitude_fusionInfo_trackRunInfo_rawHorizontalAccuracy_rawAltitude_rawVerticalAccuracy_rawCourseAccuracy_positionContextStateType_probabilityPositionContextStateIndoor_probabilityPositionContextStateOutdoor_gnssOdometerInfo_(self, a2, a5, v6, v16, a4, a6, 0, 0, 0, v7, v8, var13.var0, 0.0, 0.0, 0);
}

- (CLLocationInternal)initWithClientLocation:(id *)a3 matchInfo:(id)a4 trustedTimestamp:(double)a5 groundAltitude:(id)a6 fusionInfo:(id)a7 trackRunInfo:(id)a8 rawHorizontalAccuracy:(double)a9 rawAltitude:(double)a10 rawVerticalAccuracy:(double)a11 rawCourseAccuracy:(double)a12 positionContextStateType:(int)a13 probabilityPositionContextStateIndoor:(double)a14 probabilityPositionContextStateOutdoor:(double)a15 gnssOdometerInfo:(id)a16 coarseMetaData:(id)a17
{
  var13 = a3->var13;
  v38[6] = *&a3->var11;
  v38[7] = var13;
  v39[0] = *&a3->var14;
  *(v39 + 12) = *&a3->var16;
  v30 = *&a3->var5;
  v38[2] = *&a3->var3;
  v38[3] = v30;
  v31 = *&a3->var9;
  v38[4] = *&a3->var7;
  v38[5] = v31;
  v32 = *&a3->var1.var1;
  v38[0] = *&a3->var0;
  v38[1] = v32;
  v33 = objc_msgSend_initWithClientLocation_(self, a2, *v38, *&v32, v38);
  if (v33)
  {
    *(v33 + 168) = a4;
    *(v33 + 176) = a6;
    *(v33 + 184) = a5;
    *(v33 + 200) = a7;
    *(v33 + 208) = a8;
    *(v33 + 216) = a9;
    *(v33 + 224) = a10;
    *(v33 + 232) = a11;
    *(v33 + 240) = a12;
    *(v33 + 192) = objc_msgSend_copy(a17, v34, v35, v36);
    *(v33 + 248) = a13;
    *(v33 + 256) = a14;
    *(v33 + 264) = a15;
    *(v33 + 272) = a16;
  }

  return v33;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, a3);
  v10 = *&self->fLocation.coordinate.longitude;
  *(v9 + 8) = *&self->fLocation.suitability;
  *(v9 + 24) = v10;
  v11 = *&self->fLocation.speed;
  v12 = *&self->fLocation.course;
  v13 = *&self->fLocation.timestamp;
  *(v9 + 40) = *&self->fLocation.altitude;
  *(v9 + 88) = v13;
  *(v9 + 72) = v12;
  *(v9 + 56) = v11;
  rawCoordinate = self->fLocation.rawCoordinate;
  v15 = *&self->fLocation.rawCourse;
  v16 = *&self->fLocation.integrity;
  *(v9 + 104) = *&self->fLocation.lifespan;
  *(v9 + 148) = v16;
  *(v9 + 136) = v15;
  *(v9 + 120) = rawCoordinate;
  *(v9 + 168) = objc_msgSend_copy(*&self->fLocation.ellipsoidalAltitude, v17, rawCoordinate.latitude, *&v15);
  *(v9 + 176) = objc_msgSend_copy(*&self->fLocation.fromSimulationController, v18, v19, v20);
  fMatchInfo = self->fMatchInfo;
  *(v9 + 184) = fMatchInfo;
  *(v9 + 192) = objc_msgSend_copy(self->fGroundAltitude, v22, *&fMatchInfo, v23);
  *(v9 + 200) = objc_msgSend_copy(*&self->fTrustedTimestamp, v24, v25, v26);
  *(v9 + 208) = objc_msgSend_copy(self->fCoarseMetaData, v27, v28, v29);
  *(v9 + 216) = self->fFusionInfo;
  *(v9 + 224) = self->fTrackRunInfo;
  *(v9 + 232) = self->fRawHorizontalAccuracy;
  *(v9 + 240) = self->fRawAltitude;
  *(v9 + 248) = LODWORD(self->fRawVerticalAccuracy);
  *(v9 + 256) = self->fRawCourseAccuracy;
  v30 = *&self->fPositionContextState;
  *(v9 + 264) = v30;
  *(v9 + 272) = objc_msgSend_copy(*&self->fProbabilityPositionContextStateIndoor, v31, v30, v32);
  return v9;
}

@end