@interface ADJasperPearlInFieldCalibrationTelemetry
+ (void)reportTelemetry:(id)a3 firstTimeEvent:(BOOL)a4;
+ (void)reportTriggeringTelemetry:(id)a3;
@end

@implementation ADJasperPearlInFieldCalibrationTelemetry

+ (void)reportTriggeringTelemetry:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 caCurrentTriggerEndReasonIsConvergence] & 1) != 0 || (objc_msgSend(v3, "caCurrentTriggerEndReasonIsMaxFrameCount") & 1) != 0 || (objc_msgSend(v3, "caCurrentTriggerEndReasonIsOutputValidationMetricIncreased"))
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v3 caCurrentTriggerFirstFrameTimestamp];
    v6 = v5;
    [v3 caLastTriggerLastFrameTimestamp];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6 - v7];
    [v4 setObject:v8 forKeyedSubscript:@"TriggerTimeDifference"];

    [v3 caCurrentTriggerFirstFrameTemperature];
    LODWORD(v6) = v9;
    [v3 caLastTriggerLastFrameTemperature];
    *&v11 = *&v6 - v10;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v4 setObject:v12 forKeyedSubscript:@"TriggerTemperatureDifference"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v3, "caCurrentTriggerFrameCount")}];
    [v4 setObject:v13 forKeyedSubscript:@"CurrentTriggerNumberOfFrames"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "caCurrentTriggerEndReasonIsConvergence")}];
    [v4 setObject:v14 forKeyedSubscript:@"CurrentTriggerEndReasonIsConvergence"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "caCurrentTriggerEndReasonIsMaxFrameCount")}];
    [v4 setObject:v15 forKeyedSubscript:@"CurrentTriggerEndReasonIsMaxFrameCount"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "caCurrentTriggerEndReasonIsOutputValidationMetricIncreased")}];
    [v4 setObject:v16 forKeyedSubscript:@"CurrentTriggerEndReasonIsJasperMisalignmentIncreased"];

    v17 = v4;
    if (AnalyticsSendEventLazy())
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = @"com.apple.applecamerad.JasperPearlCalibrationTriggering";
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Jasper Pearl In-Field calibration pipeline Triggering Telemetry event %@ fired", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = @"com.apple.applecamerad.JasperPearlCalibrationTriggering";
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Jasper Pearl In-Field calibration pipeline Triggering Telemetry event %@ fired", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = @"com.apple.applecamerad.JasperPearlCalibrationTriggering";
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Jasper Pearl In-Field calibration pipeline Triggering Telemetry event %{public}@ failed to fire", buf, 0xCu);
    }
  }

  else if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Jasper Pearl In-Field calibration pipeline skipping Triggering Telemetry", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Jasper Pearl In-Field calibration pipeline skipping Triggering Telemetry", buf, 2u);
  }
}

+ (void)reportTelemetry:(id)a3 firstTimeEvent:(BOOL)a4
{
  v4 = a4;
  v206 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%0X", objc_msgSend(v5, "jpcErrorCode")];
  [v6 setObject:v7 forKeyedSubscript:@"JPCErrorCode"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "gmcjErrorCode")}];
  [v6 setObject:v8 forKeyedSubscript:@"GMCJErrorCode"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "gmcjOutputValidationErrorCode")}];
  [v6 setObject:v9 forKeyedSubscript:@"GMCJOutputValidationErrorCode"];

  if ([v5 isAssignedPipelineCurrent])
  {
    v10 = [v5 pceCalib];

    if (v10)
    {
      v11 = [v5 pceCalib];
      v12 = [v11 bytes];

      v13 = v12[3];
      v14 = MEMORY[0x277CCABB0];
      [v5 newEfl];
      v15 = v13;
      v16 = v15;
      v18 = [v14 numberWithDouble:(v17 * v15 / v12[4] + -1.0) * 100.0];
      [v6 setObject:v18 forKeyedSubscript:@"IRCamScaleChangePercentFromT0"];

      v19 = MEMORY[0x277CCABB0];
      [v5 newPPX];
      v21 = [v19 numberWithDouble:-(v12[5] - v20 * v16) * 1000.0];
      [v6 setObject:v21 forKeyedSubscript:@"IRCamPPXChangeMicronFromT0"];

      v22 = MEMORY[0x277CCABB0];
      [v5 newPPY];
      v24 = [v22 numberWithDouble:-(v12[6] - v23 * v16) * 1000.0];
      [v6 setObject:v24 forKeyedSubscript:@"IRCamPPYChangeMicronFromT0"];

      v25 = MEMORY[0x277CCABB0];
      [v5 newRotX];
      v26 = [v25 numberWithFloat:?];
      [v6 setObject:v26 forKeyedSubscript:@"IRCamIRProjRotXChangeFromT0"];

      v27 = MEMORY[0x277CCABB0];
      [v5 newRotY];
      v28 = [v27 numberWithFloat:?];
      [v6 setObject:v28 forKeyedSubscript:@"IRCamIRProjRotYChangeFromT0"];

      v29 = MEMORY[0x277CCABB0];
      [v5 newRotZ];
      v30 = [v29 numberWithFloat:?];
      [v6 setObject:v30 forKeyedSubscript:@"IRCamIRProjRotZChangeFromT0"];
    }
  }

  if ([v5 isAssignedPipelinePrevious])
  {
    v31 = [v5 pceCalib];

    if (v31)
    {
      v32 = [v5 pceCalib];
      v33 = [v32 bytes];

      v34 = *(v33 + 24);
      v35 = MEMORY[0x277CCABB0];
      [v5 newEfl];
      v37 = v36;
      [v5 prevEfl];
      *&v34 = v34;
      v39 = [v35 numberWithDouble:(v37 * *&v34 / v38 + -1.0) * 100.0];
      [v6 setObject:v39 forKeyedSubscript:@"IRCamScaleChangePercentFromPrevCalib"];

      v40 = MEMORY[0x277CCABB0];
      [v5 newPPX];
      v42 = v41;
      [v5 prevPPX];
      v43 = (*&v34 * 1000.0);
      v45 = [v40 numberWithDouble:(v42 - v44) * v43];
      [v6 setObject:v45 forKeyedSubscript:@"IRCamPPXChangeMicronFromPrevCalib"];

      v46 = MEMORY[0x277CCABB0];
      [v5 newPPY];
      v48 = v47;
      [v5 prevPPY];
      v50 = [v46 numberWithDouble:(v48 - v49) * v43];
      [v6 setObject:v50 forKeyedSubscript:@"IRCamPPYChangeMicronFromPrevCalib"];

      v51 = MEMORY[0x277CCABB0];
      [v5 newRotX];
      LODWORD(v48) = v52;
      [v5 prevRotX];
      *&v54 = *&v48 - v53;
      v55 = [v51 numberWithFloat:v54];
      [v6 setObject:v55 forKeyedSubscript:@"IRCamIRProjRotXChangeFromPrevCalib"];

      v56 = MEMORY[0x277CCABB0];
      [v5 newRotY];
      LODWORD(v48) = v57;
      [v5 prevRotY];
      *&v59 = *&v48 - v58;
      v60 = [v56 numberWithFloat:v59];
      [v6 setObject:v60 forKeyedSubscript:@"IRCamIRProjRotYChangeFromPrevCalib"];

      v61 = MEMORY[0x277CCABB0];
      [v5 newRotZ];
      LODWORD(v48) = v62;
      [v5 prevRotZ];
      *&v64 = *&v48 - v63;
      v65 = [v61 numberWithFloat:v64];
      [v6 setObject:v65 forKeyedSubscript:@"IRCamIRProjRotZChangeFromPrevCalib"];
    }
  }

  if ([v5 isAssignedJasperReflectionsFrameFilter])
  {
    v66 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v5, "numJasperSpotsFlaggedAsReflectiveSurface")}];
    [v6 setObject:v66 forKeyedSubscript:@"NumSpotsFlaggedAsReflectiveSurface"];

    v67 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v5, "numJasperSpotsFlaggedAsGlare")}];
    [v6 setObject:v67 forKeyedSubscript:@"NumSpotsFlaggedAsGlare"];
  }

  [v5 depthDiffThresholdAboveMedian];
  if (v68 > 0.0)
  {
    v69 = MEMORY[0x277CCABB0];
    [v5 depthDiffThresholdAboveMedian];
    v70 = [v69 numberWithFloat:?];
    [v6 setObject:v70 forKeyedSubscript:@"IFA_DepthDiffThresholdAboveMedian"];
  }

  if ([v5 numPearlJasperCorrespondencesPreIFA])
  {
    v71 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "numPearlJasperCorrespondencesPreIFA") - objc_msgSend(v5, "numPearlJasperCorrespondencesPostPJWorkDistOverlapFilter")}];
    [v6 setObject:v71 forKeyedSubscript:@"IFA_NumSpotsFiltered_WorkDistOverlap"];

    v72 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "numPearlJasperCorrespondencesPostPJWorkDistOverlapFilter") - objc_msgSend(v5, "numPearlJasperCorrespondencesPostPJDepthDiffFilter")}];
    [v6 setObject:v72 forKeyedSubscript:@"IFA_NumSpotsFiltered_DepthDiff"];

    v73 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "numPearlJasperCorrespondencesPostPJDepthDiffFilter") - objc_msgSend(v5, "numPearlJasperCorrespondencesPostLocalDepthVarFilter")}];
    [v6 setObject:v73 forKeyedSubscript:@"IFA_NumSpotsFiltered_LocalDepthVar"];

    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v5, "numPearlJasperCorrespondencesPostLocalDepthVarFilter")}];
    [v6 setObject:v74 forKeyedSubscript:@"IFA_NumSpotsAdded_JasperPearl"];
  }

  if ([v5 numPearlOnlyCorrespondencesPreIFA])
  {
    v75 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "numPearlOnlyCorrespondencesPreIFA") - objc_msgSend(v5, "numPearlOnlyCorrespondencesPostSpatialCoverageFilter")}];
    [v6 setObject:v75 forKeyedSubscript:@"IFA_NumSpotsFiltered_SpatialCoverage"];

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v5, "numPearlOnlyCorrespondencesPostSpatialCoverageFilter")}];
    [v6 setObject:v76 forKeyedSubscript:@"IFA_NumSpotsAdded_Pearl"];
  }

  if ([v5 isAssignedIFABlock])
  {
    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "pearlCalibSetSize")}];
    [v6 setObject:v77 forKeyedSubscript:@"PearlCalibSetSize"];

    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "pearlJapserCalibSetSize")}];
    [v6 setObject:v78 forKeyedSubscript:@"PearlJapserCalibSetSize"];

    v79 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "pearlJapserCalibSetSize") + objc_msgSend(v5, "pearlCalibSetSize")}];
    [v6 setObject:v79 forKeyedSubscript:@"SumOfPearlJapserCalibSetSizes"];
  }

  [v5 irCamFOVCoveragePercent];
  if (v80 > -1.0)
  {
    v81 = MEMORY[0x277CCABB0];
    [v5 irCamFOVCoveragePercent];
    v82 = [v81 numberWithDouble:?];
    [v6 setObject:v82 forKeyedSubscript:@"IRCamFOVCoveragePercent"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    [v5 irCamFOVCoveragePercent];
    v84 = v83;
    v85 = &qword_27E4B4230;
    v86 = *qword_27E4B4238;
    if (*qword_27E4B4238 >= v84 || (v85 = &qword_27E4B4228, *(qword_27E4B4240 - 4) < v84))
    {
LABEL_30:
      v90 = *v85;
    }

    else
    {
      v87 = 0;
      v88 = (qword_27E4B4240 - qword_27E4B4238) >> 2;
      if (v88 <= 1)
      {
        LODWORD(v88) = 1;
      }

      v89 = (v88 - 1);
      v90 = @"N/A";
      while (v89 != v87)
      {
        v91 = v87++;
        v92 = v86 < v84;
        v86 = *(qword_27E4B4238 + 4 + 4 * v91);
        v92 = !v92 || v86 < v84;
        if (!v92)
        {
          v85 = (qword_27E4B41F8 + 8 * v91);
          goto LABEL_30;
        }
      }
    }

    [v6 setObject:v90 forKeyedSubscript:@"IRCamFOVCoveragePercentBucket"];
  }

  [v5 pearlToLastJasperBankTranslation];
  if (v93 > -1.0)
  {
    v94 = MEMORY[0x277CCABB0];
    [v5 pearlToLastJasperBankTranslation];
    v95 = [v94 numberWithDouble:?];
    [v6 setObject:v95 forKeyedSubscript:@"PearlToLastJasperBankTranslation"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    [v5 pearlToLastJasperBankTranslation];
    v97 = v96;
    v98 = &qword_27E4B4390;
    v99 = *qword_27E4B4398;
    if (*qword_27E4B4398 >= v97 || (v98 = &qword_27E4B4388, *(qword_27E4B43A0 - 4) < v97))
    {
LABEL_45:
      v103 = *v98;
    }

    else
    {
      v100 = 0;
      v101 = (qword_27E4B43A0 - qword_27E4B4398) >> 2;
      if (v101 <= 1)
      {
        LODWORD(v101) = 1;
      }

      v102 = (v101 - 1);
      v103 = @"N/A";
      while (v102 != v100)
      {
        v104 = v100++;
        v92 = v99 < v97;
        v99 = *(qword_27E4B4398 + 4 + 4 * v104);
        if (v92 && v99 >= v97)
        {
          v98 = (qword_27E4B4358 + 8 * v104);
          goto LABEL_45;
        }
      }
    }

    [v6 setObject:v103 forKeyedSubscript:@"PearlToLastJasperBankTranslationBucket"];
  }

  [v5 pearlToLastJasperBankRotation];
  if (v106 > -1.0)
  {
    v107 = MEMORY[0x277CCABB0];
    [v5 pearlToLastJasperBankRotation];
    v108 = [v107 numberWithDouble:?];
    [v6 setObject:v108 forKeyedSubscript:@"PearlToLastJasperBankRotation"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    [v5 pearlToLastJasperBankRotation];
    v110 = v109;
    v111 = &qword_27E4B43E8;
    v112 = *qword_27E4B43F0;
    if (*qword_27E4B43F0 >= v110 || (v111 = &qword_27E4B43E0, *(qword_27E4B43F8 - 4) < v110))
    {
LABEL_60:
      v116 = *v111;
    }

    else
    {
      v113 = 0;
      v114 = (qword_27E4B43F8 - qword_27E4B43F0) >> 2;
      if (v114 <= 1)
      {
        LODWORD(v114) = 1;
      }

      v115 = (v114 - 1);
      v116 = @"N/A";
      while (v115 != v113)
      {
        v117 = v113++;
        v92 = v112 < v110;
        v112 = *(qword_27E4B43F0 + 4 + 4 * v117);
        if (v92 && v112 >= v110)
        {
          v111 = (qword_27E4B43B0 + 8 * v117);
          goto LABEL_60;
        }
      }
    }

    [v6 setObject:v116 forKeyedSubscript:@"PearlToLastJasperBankRotationBucket"];
  }

  if ([v5 numOfUniqueTOFSpots] != -1)
  {
    v119 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "numOfUniqueTOFSpots")}];
    [v6 setObject:v119 forKeyedSubscript:@"TOFUniqueSpotsNum"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    v120 = [v5 numOfUniqueTOFSpots];
    v121 = &qword_27E4B41D8;
    v122 = *qword_27E4B41E0;
    if (*qword_27E4B41E0 >= v120 || (v121 = &qword_27E4B41D0, *(qword_27E4B41E8 - 4) < v120))
    {
LABEL_75:
      v126 = *v121;
    }

    else
    {
      v123 = 0;
      v124 = (qword_27E4B41E8 - qword_27E4B41E0) >> 2;
      if (v124 <= 1)
      {
        LODWORD(v124) = 1;
      }

      v125 = (v124 - 1);
      v126 = @"N/A";
      while (v125 != v123)
      {
        v127 = v123++;
        v92 = v122 < v120;
        v122 = *(qword_27E4B41E0 + 4 + 4 * v127);
        if (v92 && v122 >= v120)
        {
          v121 = (BucketsFilters::Buckets(void)::inst[0] + 8 * v127);
          goto LABEL_75;
        }
      }
    }

    [v6 setObject:v126 forKeyedSubscript:@"TOFUniqueSpotsNumBucket"];
  }

  if ([v5 numOfAggregatedFrames])
  {
    v129 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "numOfAggregatedFrames")}];
    [v6 setObject:v129 forKeyedSubscript:@"NumOfAggregatedFrames"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    v130 = [v5 numOfAggregatedFrames];
    v131 = &qword_27E4B4288;
    v132 = *qword_27E4B4290;
    if (*qword_27E4B4290 >= v130 || (v131 = &qword_27E4B4280, *(qword_27E4B4298 - 4) < v130))
    {
LABEL_90:
      v136 = *v131;
    }

    else
    {
      v133 = 0;
      v134 = (qword_27E4B4298 - qword_27E4B4290) >> 2;
      if (v134 <= 1)
      {
        LODWORD(v134) = 1;
      }

      v135 = (v134 - 1);
      v136 = @"N/A";
      while (v135 != v133)
      {
        v137 = v133++;
        v92 = v132 < v130;
        v132 = *(qword_27E4B4290 + 4 + 4 * v137);
        if (v92 && v132 >= v130)
        {
          v131 = (qword_27E4B4250 + 8 * v137);
          goto LABEL_90;
        }
      }
    }

    [v6 setObject:v136 forKeyedSubscript:@"NumOfAggregatedFramesBucket"];

    v139 = MEMORY[0x277CCABB0];
    [v5 intervalBetweenIFAFrames];
    v140 = [v139 numberWithDouble:?];
    [v6 setObject:v140 forKeyedSubscript:@"IntervalBetweenIFAFrames"];

    v141 = MEMORY[0x277CCABB0];
    v142 = [v5 maxIRCamTemperature];
    [v142 floatValue];
    v144 = v143;
    v145 = [v5 minIRCamTemperature];
    [v145 floatValue];
    *&v147 = v144 - v146;
    v148 = [v141 numberWithFloat:v147];
    [v6 setObject:v148 forKeyedSubscript:@"TemperatureDeltaBetweenIFAFrames"];

    v149 = MEMORY[0x277CCABB0];
    [v5 pearlTemperature];
    v150 = [v149 numberWithFloat:?];
    [v6 setObject:v150 forKeyedSubscript:@"Temperature"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    [v5 pearlTemperature];
    v152 = &qword_27E4B4338;
    v153 = *qword_27E4B4340;
    if (*qword_27E4B4340 >= v151 || (v152 = &qword_27E4B4330, *(qword_27E4B4348 - 4) < v151))
    {
LABEL_103:
      v157 = *v152;
    }

    else
    {
      v154 = 0;
      v155 = (qword_27E4B4348 - qword_27E4B4340) >> 2;
      if (v155 <= 1)
      {
        LODWORD(v155) = 1;
      }

      v156 = (v155 - 1);
      v157 = @"N/A";
      while (v156 != v154)
      {
        v158 = v154++;
        v92 = v153 < v151;
        v153 = *(qword_27E4B4340 + 4 + 4 * v158);
        if (v92 && v153 >= v151)
        {
          v152 = (qword_27E4B4300 + 8 * v158);
          goto LABEL_103;
        }
      }
    }

    [v6 setObject:v157 forKeyedSubscript:@"TemperatureBucket"];
  }

  if ([v5 isAssignedGMCJValidation])
  {
    v160 = MEMORY[0x277CCABB0];
    [v5 reprojectionErrorBefore];
    v161 = [v160 numberWithDouble:?];
    [v6 setObject:v161 forKeyedSubscript:@"ReprojectionErrorBeforeGMCJ"];

    v162 = MEMORY[0x277CCABB0];
    [v5 reprojectionErrorAfter];
    v163 = [v162 numberWithDouble:?];
    [v6 setObject:v163 forKeyedSubscript:@"ReprojectionErrorAfterGMCJ"];

    v164 = MEMORY[0x277CCABB0];
    [v5 jasperMisalignmentBefore];
    v165 = [v164 numberWithDouble:?];
    [v6 setObject:v165 forKeyedSubscript:@"JasperMisalignmentBeforeGMCJ"];

    v166 = MEMORY[0x277CCABB0];
    [v5 jasperMisalignmentAfter];
    v167 = [v166 numberWithDouble:?];
    [v6 setObject:v167 forKeyedSubscript:@"JasperMisalignmentAfterGMCJ"];

    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }

    [v5 reprojectionErrorAfter];
    v169 = v168;
    v170 = &qword_27E4B42E0;
    v171 = *qword_27E4B42E8;
    if (*qword_27E4B42E8 >= v169 || (v170 = &qword_27E4B42D8, *(qword_27E4B42F0 - 4) < v169))
    {
LABEL_118:
      v175 = *v170;
    }

    else
    {
      v172 = 0;
      v173 = (qword_27E4B42F0 - qword_27E4B42E8) >> 2;
      if (v173 <= 1)
      {
        LODWORD(v173) = 1;
      }

      v174 = (v173 - 1);
      v175 = @"N/A";
      while (v174 != v172)
      {
        v176 = v172++;
        v92 = v171 < v169;
        v171 = *(qword_27E4B42E8 + 4 + 4 * v176);
        if (v92 && v171 >= v169)
        {
          v170 = (qword_27E4B42A8 + 8 * v176);
          goto LABEL_118;
        }
      }
    }

    [v6 setObject:v175 forKeyedSubscript:@"ReprojectionErrorAfterBucket"];
  }

  if ([v5 isAssignedGMCJBlock])
  {
    v178 = MEMORY[0x277CCABB0];
    [v5 gmcjScaleChangePercentFromT0];
    v179 = [v178 numberWithDouble:?];
    [v6 setObject:v179 forKeyedSubscript:@"IRCamScaleChangePercentFromT0_GMCJ"];

    v180 = MEMORY[0x277CCABB0];
    [v5 gmcjPPXChangeMicronFromT0];
    v181 = [v180 numberWithDouble:?];
    [v6 setObject:v181 forKeyedSubscript:@"IRCamPPXChangeMicronFromT0_GMCJ"];

    v182 = MEMORY[0x277CCABB0];
    [v5 gmcjPPYChangeMicronFromT0];
    v183 = [v182 numberWithDouble:?];
    [v6 setObject:v183 forKeyedSubscript:@"IRCamPPYChangeMicronFromT0_GMCJ"];

    v184 = MEMORY[0x277CCABB0];
    [v5 gmcjProjRotXChangeFromT0];
    v185 = [v184 numberWithFloat:?];
    [v6 setObject:v185 forKeyedSubscript:@"IRCamIRProjRotXChangeFromT0_GMCJ"];

    v186 = MEMORY[0x277CCABB0];
    [v5 gmcjProjRotYChangeFromT0];
    v187 = [v186 numberWithFloat:?];
    [v6 setObject:v187 forKeyedSubscript:@"IRCamIRProjRotYChangeFromT0_GMCJ"];

    v188 = MEMORY[0x277CCABB0];
    [v5 gmcjProjRotZChangeFromT0];
    v189 = [v188 numberWithFloat:?];
    [v6 setObject:v189 forKeyedSubscript:@"IRCamIRProjRotZChangeFromT0_GMCJ"];

    v190 = MEMORY[0x277CCABB0];
    [v5 gmcjScaleChangePercentFromPrev];
    v191 = [v190 numberWithDouble:?];
    [v6 setObject:v191 forKeyedSubscript:@"IRCamScaleChangePercentFromPrevCalib_GMCJ"];

    v192 = MEMORY[0x277CCABB0];
    [v5 gmcjPPXChangeMicronFromPrev];
    v193 = [v192 numberWithDouble:?];
    [v6 setObject:v193 forKeyedSubscript:@"IRCamPPXChangeMicronFromPrevCalib_GMCJ"];

    v194 = MEMORY[0x277CCABB0];
    [v5 gmcjPPYChangeMicronFromPrev];
    v195 = [v194 numberWithDouble:?];
    [v6 setObject:v195 forKeyedSubscript:@"IRCamPPYChangeMicronFromPrevCalib_GMCJ"];

    v196 = MEMORY[0x277CCABB0];
    [v5 gmcjProjRotXChangeFromPrev];
    v197 = [v196 numberWithFloat:?];
    [v6 setObject:v197 forKeyedSubscript:@"IRCamIRProjRotXChangeFromPrevCalib_GMCJ"];

    v198 = MEMORY[0x277CCABB0];
    [v5 gmcjProjRotYChangeFromPrev];
    v199 = [v198 numberWithFloat:?];
    [v6 setObject:v199 forKeyedSubscript:@"IRCamIRProjRotYChangeFromPrevCalib_GMCJ"];

    v200 = MEMORY[0x277CCABB0];
    [v5 gmcjProjRotZChangeFromPrev];
    v201 = [v200 numberWithFloat:?];
    [v6 setObject:v201 forKeyedSubscript:@"IRCamIRProjRotZChangeFromPrevCalib_GMCJ"];
  }

  if (v4)
  {
    v202 = @"com.apple.applecamerad.JasperPearlCalibrationFirstTimeEvent";
  }

  else
  {
    v202 = @"com.apple.applecamerad.JasperPearlCalibration";
  }

  v203 = v6;
  if (AnalyticsSendEventLazy())
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v205 = v202;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Jasper Pearl In-Field calibration pipeline Telemetry event %@ fired", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v205 = v202;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Jasper Pearl In-Field calibration pipeline Telemetry event %@ fired", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v205 = v202;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Jasper Pearl In-Field calibration pipeline Telemetry event %{public}@ failed to fire", buf, 0xCu);
  }
}

@end