@interface CLLocationTrackRunInfo
- ($B829D7361B4C947FBEDB7938E147A070)lapInfo;
- (CLLocationTrackRunInfo)initWithCoder:(id)a3;
- (CLLocationTrackRunInfo)initWithLapInfo:(id *)a3 laneNumber:(int64_t)a4 laneCount:(int64_t)a5 trackId:(id)a6 estimatedLaneNumber:(int64_t)a7 estimatedLaneConfidence:(int)a8 trackProximity:(int)a9;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLLocationTrackRunInfo

- (void)dealloc
{
  self->_trackId = 0;
  v3.receiver = self;
  v3.super_class = CLLocationTrackRunInfo;
  [(CLLocationTrackRunInfo *)&v3 dealloc];
}

- (CLLocationTrackRunInfo)initWithLapInfo:(id *)a3 laneNumber:(int64_t)a4 laneCount:(int64_t)a5 trackId:(id)a6 estimatedLaneNumber:(int64_t)a7 estimatedLaneConfidence:(int)a8 trackProximity:(int)a9
{
  v21.receiver = self;
  v21.super_class = CLLocationTrackRunInfo;
  v15 = [(CLLocationTrackRunInfo *)&v21 init];
  v16 = v15;
  if (v15)
  {
    *&v15->_lapInfo.lapCount = *&a3->var0;
    v17 = *&a3->var2;
    v18 = *&a3->var4;
    v19 = *&a3->var7;
    v15->_lapInfo.previousLapPositionAtCompletionInDegrees = a3->var6;
    *&v15->_lapInfo.currentTrackRunSessionDurationInSeconds = v19;
    *&v15->_lapInfo.currentLapDurationInSeconds = v17;
    *&v15->_lapInfo.previousLapDurationInSeconds = v18;
    v15->_laneNumber = a4;
    v15->_laneCount = a5;
    v15->_trackId = a6;
    v16->_estimatedLaneNumber = a7;
    v16->_estimatedLaneConfidence = a8;
    v16->_trackProximity = a9;
  }

  return v16;
}

- (CLLocationTrackRunInfo)initWithCoder:(id)a3
{
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v118 = 0u;
  v116 = -1;
  v117 = -1;
  v114 = -1;
  v115 = 0;
  v113 = 0;
  if (!objc_msgSend_allowsKeyedCoding(a3, a2, 0.0, v3))
  {
    objc_msgSend_decodeValueOfObjCType_at_(a3, v6, v7, v8, "i", &v118);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v63, v64, v65, "d", &v118 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v66, v67, v68, "d", &v119);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v69, v70, v71, "d", &v119 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v72, v73, v74, "d", &v120);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v75, v76, v77, "d", &v120 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v78, v79, v80, "d", &v121);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v81, v82, v83, "d", &v121 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v84, v85, v86, "d", &v122);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v87, v88, v89, "d", &v122 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v90, v91, v92, "i", &v117);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v93, v94, v95, "i", &v116);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v96, v97, v98, "@", &v115);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v99, v100, v101, "i", &v114);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v102, v103, v104, "i", &v113 + 4);
    objc_msgSend_decodeValueOfObjCType_at_(a3, v105, v106, v107, "i", &v113);
    v45 = v116;
    v40 = v117;
    v55 = v114;
    v50 = v115;
    v110 = v113;
    v109 = HIDWORD(v113);
    goto LABEL_17;
  }

  LODWORD(v118) = objc_msgSend_decodeIntForKey_(a3, v6, v7, v8, @"trackRunLapCount");
  objc_msgSend_decodeDoubleForKey_(a3, v9, v10, v11, @"trackRunCurrentLapStartTime");
  *(&v118 + 1) = v12;
  objc_msgSend_decodeDoubleForKey_(a3, v13, v12, v14, @"trackRunCurrentLapDurationInSeconds");
  *&v119 = v15;
  objc_msgSend_decodeDoubleForKey_(a3, v16, v15, v17, @"trackRunCurrentLapDistanceInMeters");
  *(&v119 + 1) = v18;
  objc_msgSend_decodeDoubleForKey_(a3, v19, v18, v20, @"trackRunPreviousLapDurationInSeconds");
  *&v120 = v21;
  objc_msgSend_decodeDoubleForKey_(a3, v22, v21, v23, @"trackRunPreviousLapDistanceInMeters");
  *(&v120 + 1) = v24;
  objc_msgSend_decodeDoubleForKey_(a3, v25, v24, v26, @"trackRunPreviousLapPositionAtCompletionInDegreesLatitude");
  *&v121 = v27;
  objc_msgSend_decodeDoubleForKey_(a3, v28, v27, v29, @"trackRunPreviousLapPositionAtCompletionInDegreesLongitude");
  *(&v121 + 1) = v30;
  objc_msgSend_decodeDoubleForKey_(a3, v31, v30, v32, @"trackRunCurrentTrackRunSessionDurationInSeconds");
  *&v122 = v33;
  objc_msgSend_decodeDoubleForKey_(a3, v34, v33, v35, @"trackRunCurrentTrackRunSessionDistanceInMeters");
  *(&v122 + 1) = v36;
  v39 = objc_msgSend_decodeIntForKey_(a3, v37, v36, v38, @"trackRunLaneNumber");
  v40 = v39;
  v117 = v39;
  v44 = objc_msgSend_decodeIntForKey_(a3, v41, v42, v43, @"trackRunLaneCount");
  v45 = v44;
  v116 = v44;
  v46 = objc_opt_class();
  v50 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v47, v48, v49, v46, @"trackRunTrackId");
  v115 = v50;
  v54 = objc_msgSend_decodeIntForKey_(a3, v51, v52, v53, @"trackRunEstimatedLaneNumber");
  v55 = v54;
  v114 = v54;
  v59 = objc_msgSend_decodeIntForKey_(a3, v56, v57, v58, @"trackRunEstimatedLaneConfidence");
  if (v59 > 1)
  {
    if (v59 != 2)
    {
      if (v59 != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v59)
    {
      if (v59 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      HIDWORD(v113) = 0;
    }

    HIDWORD(v113) = 1;
  }

  HIDWORD(v113) = 2;
LABEL_13:
  HIDWORD(v113) = 3;
LABEL_14:
  HIDWORD(v113) = 0;
  if (objc_msgSend_decodeIntForKey_(a3, v60, v61, v62, @"trackRunTrackProximity") <= 1)
  {
    LODWORD(v113) = 1;
  }

  v110 = 0;
  v109 = 0;
  LODWORD(v113) = 0;
LABEL_17:
  v112[2] = v120;
  v112[3] = v121;
  v112[4] = v122;
  v112[0] = v118;
  v112[1] = v119;
  return objc_msgSend_initWithLapInfo_laneNumber_laneCount_trackId_estimatedLaneNumber_estimatedLaneConfidence_trackProximity_(self, v108, *&v119, *&v118, v112, v40, v45, v50, v55, v109, v110);
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_msgSend_allowsKeyedCoding(a3, a2, v3, v4))
  {
    objc_msgSend_encodeInt_forKey_(a3, v7, v8, v9, self->_lapInfo.lapCount, @"trackRunLapCount");
    objc_msgSend_encodeDouble_forKey_(a3, v10, self->_lapInfo.currentLapStartTime, v11, @"trackRunCurrentLapStartTime");
    objc_msgSend_encodeDouble_forKey_(a3, v12, self->_lapInfo.currentLapDurationInSeconds, v13, @"trackRunCurrentLapDurationInSeconds");
    objc_msgSend_encodeDouble_forKey_(a3, v14, self->_lapInfo.currentLapDistanceInMeters, v15, @"trackRunCurrentLapDistanceInMeters");
    objc_msgSend_encodeDouble_forKey_(a3, v16, self->_lapInfo.previousLapDurationInSeconds, v17, @"trackRunPreviousLapDurationInSeconds");
    objc_msgSend_encodeDouble_forKey_(a3, v18, self->_lapInfo.previousLapDistanceInMeters, v19, @"trackRunPreviousLapDistanceInMeters");
    objc_msgSend_encodeDouble_forKey_(a3, v20, self->_lapInfo.previousLapPositionAtCompletionInDegrees.latitude, v21, @"trackRunPreviousLapPositionAtCompletionInDegreesLatitude");
    objc_msgSend_encodeDouble_forKey_(a3, v22, self->_lapInfo.previousLapPositionAtCompletionInDegrees.longitude, v23, @"trackRunPreviousLapPositionAtCompletionInDegreesLongitude");
    objc_msgSend_encodeDouble_forKey_(a3, v24, self->_lapInfo.currentTrackRunSessionDurationInSeconds, v25, @"trackRunCurrentTrackRunSessionDurationInSeconds");
    objc_msgSend_encodeDouble_forKey_(a3, v26, self->_lapInfo.currentTrackRunSessionDistanceInMeters, v27, @"trackRunCurrentTrackRunSessionDistanceInMeters");
    objc_msgSend_encodeInt_forKey_(a3, v28, v29, v30, LODWORD(self->_laneNumber), @"trackRunLaneNumber");
    objc_msgSend_encodeInt_forKey_(a3, v31, v32, v33, LODWORD(self->_laneCount), @"trackRunLaneCount");
    objc_msgSend_encodeObject_forKey_(a3, v34, v35, v36, self->_trackId, @"trackRunTrackId");
    objc_msgSend_encodeInt_forKey_(a3, v37, v38, v39, LODWORD(self->_estimatedLaneNumber), @"trackRunEstimatedLaneNumber");
    objc_msgSend_encodeInt_forKey_(a3, v40, v41, v42, self->_estimatedLaneConfidence, @"trackRunEstimatedLaneConfidence");
    trackProximity = self->_trackProximity;

    objc_msgSend_encodeInt_forKey_(a3, v43, v44, v45, trackProximity, @"trackRunTrackProximity");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(a3, v7, v8, v9, "i", &self->_lapInfo);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v47, v48, v49, "d", &self->_lapInfo.currentLapStartTime);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v50, v51, v52, "d", &self->_lapInfo.currentLapDurationInSeconds);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v53, v54, v55, "d", &self->_lapInfo.currentLapDistanceInMeters);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v56, v57, v58, "d", &self->_lapInfo.previousLapDurationInSeconds);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v59, v60, v61, "d", &self->_lapInfo.previousLapDistanceInMeters);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v62, v63, v64, "d", &self->_lapInfo.previousLapPositionAtCompletionInDegrees);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v65, v66, v67, "d", &self->_lapInfo.previousLapPositionAtCompletionInDegrees.longitude);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v68, v69, v70, "d", &self->_lapInfo.currentTrackRunSessionDurationInSeconds);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v71, v72, v73, "d", &self->_lapInfo.currentTrackRunSessionDistanceInMeters);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v74, v75, v76, "i", &self->_laneNumber);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v77, v78, v79, "i", &self->_laneCount);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v80, v81, v82, "@", &self->_trackId);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v83, v84, v85, "i", &self->_estimatedLaneNumber);
    objc_msgSend_encodeValueOfObjCType_at_(a3, v86, v87, v88, "i", &self->_estimatedLaneConfidence);

    objc_msgSend_encodeValueOfObjCType_at_(a3, v89, v90, v91, "i", &self->_trackProximity);
  }
}

- ($B829D7361B4C947FBEDB7938E147A070)lapInfo
{
  v3 = *&self[1].var2;
  *&retstr->var4 = *&self[1].var0;
  retstr->var6 = v3;
  *&retstr->var7 = *&self[1].var4;
  v4 = *&self->var7;
  *&retstr->var0 = self->var6;
  *&retstr->var2 = v4;
  return self;
}

@end