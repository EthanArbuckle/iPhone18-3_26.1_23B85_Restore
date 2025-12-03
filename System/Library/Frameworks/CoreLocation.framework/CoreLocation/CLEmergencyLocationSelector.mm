@interface CLEmergencyLocationSelector
- (CLEmergencyLocationSelector)initWithConfig:(id)config bundle:(id)bundle delegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)stopSession;
@end

@implementation CLEmergencyLocationSelector

- (CLEmergencyLocationSelector)initWithConfig:(id)config bundle:(id)bundle delegate:(id)delegate queue:(id)queue
{
  v21 = *MEMORY[0x1E69E9840];
  if (config)
  {
    if (bundle)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (bundle)
    {
LABEL_3:
      if (delegate)
      {
        goto LABEL_4;
      }

LABEL_22:
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      if (queue)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!delegate)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (queue)
  {
    goto LABEL_5;
  }

LABEL_23:
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_5:
  dispatch_assert_queue_V2(queue);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v12 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,initWithConfig:bundle:delegate:queue:,initiated", buf, 2u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LOWORD(v20) = 0;
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector initWithConfig:bundle:delegate:queue:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v18.receiver = self;
  v18.super_class = CLEmergencyLocationSelector;
  v15 = [(CLEmergencyLocationSelector *)&v18 init];
  if (v15)
  {
    [config printConfiguration];
    v15->_fCleeaAssertion = +[CLEmergencyEnablementAssertion newAssertionForBundle:withReason:](CLEmergencyEnablementAssertion, "newAssertionForBundle:withReason:", bundle, [MEMORY[0x1E696AEC0] stringWithFormat:@"Emergency Location Session for %@", +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", objc_msgSend(config, "feature"))]);
    v15->_fLocManager = [[CLLocationManager alloc] initWithEffectiveBundle:bundle delegate:v15 onQueue:queue];
    objc_storeWeak(&v15->_fDelegate, delegate);
    operator new();
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,dealloc,self:%{private}@,initiated", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v8 = 138477827;
    selfCopy2 = self;
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector dealloc]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [(CLEmergencyLocationSelector *)self stopSession];
  v7.receiver = self;
  v7.super_class = CLEmergencyLocationSelector;
  [(CLEmergencyLocationSelector *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopSession
{
  v150 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,stopSession,self:%{private}@,initiated", &buf, 0xCu);
  }

  selfCopy = self;
  v4 = sub_19B87DD40();
  selfCopy4 = self;
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v116) = 138477827;
    *(&v116 + 4) = self;
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector stopSession]", "CoreLocation: %s\n", v6);
    if (v6 != &buf)
    {
      free(v6);
    }

    selfCopy4 = self;
  }

  fLocManager = selfCopy4->_fLocManager;
  if (fLocManager)
  {
    [(CLLocationManager *)fLocManager stopUpdatingLocation];

    self->_fLocManager = 0;
    selfCopy4 = self;
  }

  fInstance = selfCopy4->_fInstance;
  if (fInstance)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134283521;
      *(&buf + 4) = fInstance;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorInternal,stopSession,this:%{private}p,initiated", &buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v116) = 134283521;
      *(&v116 + 4) = fInstance;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::stopSession()", "CoreLocation: %s\n", v11);
      if (v11 != &buf)
      {
        free(v11);
      }
    }

    sub_19BA44FC8((fInstance + 24), 2);
    if (*fInstance)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v12 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v114 = fInstance[208];
        firstLocationEarlyReturnEnabled = [*fInstance firstLocationEarlyReturnEnabled];
        v110 = fInstance[209];
        [*fInstance firstLocationTimeout];
        v14 = v13;
        v100 = *(fInstance + 53);
        v102 = *(fInstance + 54);
        v104 = *(fInstance + 55);
        v106 = *(fInstance + 56);
        v108 = *(fInstance + 57);
        firstUpdateEnabled = [*fInstance firstUpdateEnabled];
        v96 = fInstance[232];
        [*fInstance firstUpdateTimeout];
        v16 = v15;
        v18 = *(fInstance + 59);
        v17 = *(fInstance + 60);
        v90 = *(fInstance + 61);
        v92 = *(fInstance + 62);
        v94 = *(fInstance + 63);
        periodicUpdatesEnabled = [*fInstance periodicUpdatesEnabled];
        v20 = *(fInstance + 64);
        v21 = *(fInstance + 65);
        v22 = *(fInstance + 66);
        v23 = *(fInstance + 67);
        v24 = *(fInstance + 68);
        v25 = *(fInstance + 69);
        v86 = *(fInstance + 69);
        v88 = *(fInstance + 70);
        [*fInstance locationUpdateTimeout];
        v27 = v26;
        [*fInstance locationUpdateMinDelay];
        LODWORD(buf) = 67115776;
        DWORD1(buf) = v114;
        WORD4(buf) = 1024;
        *(&buf + 10) = firstLocationEarlyReturnEnabled;
        HIWORD(buf) = 1024;
        LODWORD(v134) = v110;
        WORD2(v134) = 2048;
        *(&v134 + 6) = v14;
        HIWORD(v134) = 1024;
        LODWORD(v135) = v100;
        WORD2(v135) = 1024;
        *(&v135 + 6) = v102;
        WORD5(v135) = 1024;
        HIDWORD(v135) = v104;
        LOWORD(v136) = 1024;
        *(&v136 + 2) = v106;
        HIWORD(v136) = 1024;
        LODWORD(v137) = v108;
        WORD2(v137) = 1024;
        *(&v137 + 6) = firstUpdateEnabled;
        WORD5(v137) = 1024;
        HIDWORD(v137) = v96;
        LOWORD(v138) = 2048;
        *(&v138 + 2) = v16;
        WORD5(v138) = 1024;
        HIDWORD(v138) = v18;
        LOWORD(v139) = 1024;
        *(&v139 + 2) = v17;
        HIWORD(v139) = 1024;
        LODWORD(v140) = v90;
        WORD2(v140) = 1024;
        *(&v140 + 6) = v92;
        WORD5(v140) = 1024;
        HIDWORD(v140) = v94;
        LOWORD(v141) = 1024;
        *(&v141 + 2) = periodicUpdatesEnabled;
        HIWORD(v141) = 1024;
        LODWORD(v142) = v20;
        WORD2(v142) = 1024;
        *(&v142 + 6) = v21;
        WORD5(v142) = 1024;
        HIDWORD(v142) = v22;
        LOWORD(v143) = 1024;
        *(&v143 + 2) = v23;
        HIWORD(v143) = 1024;
        LODWORD(v144) = v24;
        WORD2(v144) = 1024;
        *(&v144 + 6) = v86;
        WORD5(v144) = 1024;
        HIDWORD(v144) = v88;
        *v145 = 2048;
        *&v145[2] = v27;
        *&v145[10] = 2048;
        *&v145[12] = v28;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "#CLELS,#careport,firstLocationAvailable,%d,firstLocationEarlyReturnEnabled,%d,wasFirstLocationEarlyReturn,%d,firstLocationTimeout,%f,locationTypeOfFirstLocation,%d,,horizontalAccOfFirstLocation,%d,verticalAccOfFirstLocation,%d,integrityOfFirstLocation,%d,ageOfFirstLocation,%d,firstUpdateEnabled,%d,firstUpdateLocAvailable,%d,firstUpdateTimeout,%f,locationTypeInFirstUpdate,%d,horizontalAccOfLocInFirstUpdate,%d,verticalAccOfLocInFirstUpdate,%d,integrityOfLocInFirstUpdate,%d,ageOfLocInFirstUpdate,%d,periodicUpdatesEnabled,%d,periodicUpdatesCount,%d,validPeriodUpdatesCount,%d,horizontalAccOfLocInBestPeriodicUpdate,%d,verticalAccOfLocInBestPeriodicUpdate,%d,integrityOfLocInBestPeriodicUpdate,%d,ageOfLocInBestPeriodicUpdate,%d,locationTypeInBestPeriodicUpdate,%d,locationUpdateTimeout,%f,locationUpdateMinDelay,%f", &buf, 0xB4u);
      }

      v29 = sub_19B87DD40();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v113 = fInstance[208];
        firstLocationEarlyReturnEnabled2 = [*fInstance firstLocationEarlyReturnEnabled];
        v109 = fInstance[209];
        [*fInstance firstLocationTimeout];
        v31 = v30;
        v99 = *(fInstance + 53);
        v101 = *(fInstance + 54);
        v103 = *(fInstance + 55);
        v105 = *(fInstance + 56);
        v107 = *(fInstance + 57);
        firstUpdateEnabled2 = [*fInstance firstUpdateEnabled];
        v95 = fInstance[232];
        [*fInstance firstUpdateTimeout];
        v33 = v32;
        v34 = *(fInstance + 59);
        v35 = *(fInstance + 60);
        v37 = *(fInstance + 61);
        v36 = *(fInstance + 62);
        v91 = *(fInstance + 62);
        v93 = *(fInstance + 63);
        periodicUpdatesEnabled2 = [*fInstance periodicUpdatesEnabled];
        v39 = *(fInstance + 64);
        v40 = *(fInstance + 65);
        v41 = *(fInstance + 66);
        v42 = *(fInstance + 67);
        v43 = *(fInstance + 68);
        v44 = *(fInstance + 69);
        v87 = *(fInstance + 69);
        v89 = *(fInstance + 70);
        [*fInstance locationUpdateTimeout];
        v46 = v45;
        [*fInstance locationUpdateMinDelay];
        LODWORD(v116) = 67115776;
        DWORD1(v116) = v113;
        WORD4(v116) = 1024;
        *(&v116 + 10) = firstLocationEarlyReturnEnabled2;
        HIWORD(v116) = 1024;
        LODWORD(v117) = v109;
        WORD2(v117) = 2048;
        *(&v117 + 6) = v31;
        HIWORD(v117) = 1024;
        LODWORD(v118) = v99;
        WORD2(v118) = 1024;
        *(&v118 + 6) = v101;
        WORD5(v118) = 1024;
        HIDWORD(v118) = v103;
        LOWORD(v119) = 1024;
        *(&v119 + 2) = v105;
        HIWORD(v119) = 1024;
        LODWORD(v120) = v107;
        WORD2(v120) = 1024;
        *(&v120 + 6) = firstUpdateEnabled2;
        WORD5(v120) = 1024;
        HIDWORD(v120) = v95;
        LOWORD(v121) = 2048;
        *(&v121 + 2) = v33;
        WORD5(v121) = 1024;
        HIDWORD(v121) = v34;
        LOWORD(v122) = 1024;
        *(&v122 + 2) = v35;
        HIWORD(v122) = 1024;
        LODWORD(v123) = v37;
        WORD2(v123) = 1024;
        *(&v123 + 6) = v91;
        WORD5(v123) = 1024;
        HIDWORD(v123) = v93;
        LOWORD(v124) = 1024;
        *(&v124 + 2) = periodicUpdatesEnabled2;
        HIWORD(v124) = 1024;
        LODWORD(v125) = v39;
        WORD2(v125) = 1024;
        *(&v125 + 6) = v40;
        WORD5(v125) = 1024;
        HIDWORD(v125) = v41;
        LOWORD(v126) = 1024;
        *(&v126 + 2) = v42;
        HIWORD(v126) = 1024;
        LODWORD(v127) = v43;
        WORD2(v127) = 1024;
        *(&v127 + 6) = v87;
        WORD5(v127) = 1024;
        HIDWORD(v127) = v89;
        *v128 = 2048;
        *&v128[2] = v46;
        *&v128[10] = 2048;
        *&v128[12] = v47;
        v48 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::submitSipSessionStatsToCA()", "CoreLocation: %s\n", v48);
        if (v48 != &buf)
        {
          free(v48);
        }
      }

      *&v116 = @"firstLocationAvailable";
      *&buf = [MEMORY[0x1E696AD98] numberWithBool:fInstance[208]];
      *(&v116 + 1) = @"firstLocationEarlyReturnEnabled";
      *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*fInstance, "firstLocationEarlyReturnEnabled")}];
      *&v117 = @"wasFirstLocationEarlyReturn";
      *&v134 = [MEMORY[0x1E696AD98] numberWithBool:fInstance[209]];
      *(&v117 + 1) = @"firstLocationTimeout";
      v49 = MEMORY[0x1E696AD98];
      [*fInstance firstLocationTimeout];
      *(&v134 + 1) = [v49 numberWithDouble:?];
      *&v118 = @"locationTypeOfFirstLocation";
      *&v135 = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 53)];
      *(&v118 + 1) = @"horizontalAccOfFirstLocation";
      if ((*(fInstance + 54) & 0x80000000) != 0)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      *(&v135 + 1) = null;
      v119 = @"verticalAccOfFirstLocation";
      if ((*(fInstance + 55) & 0x80000000) != 0)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null2 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      v136 = null2;
      *&v120 = @"integrityOfFirstLocation";
      *&v137 = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 56)];
      *(&v120 + 1) = @"ageOfFirstLocation";
      if ((*(fInstance + 57) & 0x80000000) != 0)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null3 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      *(&v137 + 1) = null3;
      *&v121 = @"firstUpdateEnabled";
      *&v138 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*fInstance, "firstUpdateEnabled")}];
      *(&v121 + 1) = @"firstUpdateLocAvailable";
      *(&v138 + 1) = [MEMORY[0x1E696AD98] numberWithBool:fInstance[232]];
      v122 = @"firstUpdateLocTimeout";
      v56 = MEMORY[0x1E696AD98];
      [*fInstance firstUpdateTimeout];
      v139 = [v56 numberWithDouble:?];
      *&v123 = @"locationTypeInFirstUpdate";
      *&v140 = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 59)];
      *(&v123 + 1) = @"horizontalAccOfLocInFirstUpdate";
      if ((*(fInstance + 60) & 0x80000000) != 0)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null4 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      *(&v140 + 1) = null4;
      v124 = @"verticalAccOfLocInFirstUpdate";
      if ((*(fInstance + 61) & 0x80000000) != 0)
      {
        null5 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null5 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      v141 = null5;
      *&v125 = @"integrityOfLocInFirstUpdate";
      *&v142 = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 62)];
      *(&v125 + 1) = @"ageOfLocInFirstUpdate";
      if ((*(fInstance + 63) & 0x80000000) != 0)
      {
        null6 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null6 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      *(&v142 + 1) = null6;
      v126 = @"periodicUpdatesEnabled";
      v143 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*fInstance, "periodicUpdatesEnabled")}];
      *&v127 = @"periodicUpdatesCount";
      *&v144 = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 64)];
      *(&v127 + 1) = @"validPeriodUpdatesCount";
      *(&v144 + 1) = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 65)];
      *v128 = @"horizontalAccOfLocInBestPeriodicUpdate";
      if ((*(fInstance + 66) & 0x80000000) != 0)
      {
        null7 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null7 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      *v145 = null7;
      *&v128[8] = @"verticalAccOfLocInBestPeriodicUpdate";
      if ((*(fInstance + 67) & 0x80000000) != 0)
      {
        null8 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null8 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      *&v145[8] = null8;
      *&v128[16] = @"integrityOfLocInBestPeriodicUpdate";
      *&v145[16] = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 68)];
      v129 = @"ageOfLocInBestPeriodicUpdate";
      if ((*(fInstance + 69) & 0x80000000) != 0)
      {
        null9 = [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        null9 = [MEMORY[0x1E696AD98] numberWithInt:?];
      }

      v146 = null9;
      v130 = @"locationTypeInBestPeriodicUpdate";
      v147 = [MEMORY[0x1E696AD98] numberWithInt:*(fInstance + 70)];
      v131 = @"locationUpdateTimeout";
      v63 = MEMORY[0x1E696AD98];
      [*fInstance locationUpdateTimeout];
      v148 = [v63 numberWithDouble:?];
      v132 = @"locationUpdateMinDelay";
      v64 = MEMORY[0x1E696AD98];
      [*fInstance locationUpdateMinDelay];
      v149 = [v64 numberWithDouble:?];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v116 count:27];
      AnalyticsSendEventLazy();
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v51 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134283521;
        *(&buf + 4) = fInstance;
        _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,submitSipSessionStatsToCA,this:%{private}p,nil fConfig,early return", &buf, 0xCu);
      }

      v52 = sub_19B87DD40();
      if ((*(v52 + 160) & 0x80000000) == 0 || (*(v52 + 164) & 0x80000000) == 0 || (*(v52 + 168) & 0x80000000) == 0 || *(v52 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        LODWORD(v116) = 134283521;
        *(&v116 + 4) = fInstance;
        v53 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::submitSipSessionStatsToCA()", "CoreLocation: %s\n", v53);
        if (v53 != &buf)
        {
          free(v53);
        }
      }
    }

    *(fInstance + 104) = 0;
    *(fInstance + 212) = xmmword_19BA8D760;
    *(fInstance + 57) = -1;
    fInstance[232] = 0;
    *(fInstance + 236) = xmmword_19BA8D760;
    *(fInstance + 252) = xmmword_19BA8D770;
    *&v65 = 0xFFFFFFFFLL;
    *(&v65 + 1) = 0xFFFFFFFFLL;
    *(fInstance + 268) = v65;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v66 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134283521;
      *(&buf + 4) = fInstance;
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorInternal,stopSession,this:%{private}p,completed", &buf, 0xCu);
    }

    v67 = sub_19B87DD40();
    selfCopy4 = selfCopy;
    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v116) = 134283521;
      *(&v116 + 4) = fInstance;
      v68 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::stopSession()", "CoreLocation: %s\n", v68);
      if (v68 != &buf)
      {
        free(v68);
      }

      selfCopy4 = selfCopy;
    }

    v69 = selfCopy4->_fInstance;
    if (v69)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v70 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134283521;
        *(&buf + 4) = v69;
        _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorInternal,destructor,this:%{private}p,initiated", &buf, 0xCu);
      }

      v71 = sub_19B87DD40();
      if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        LODWORD(v116) = 134283521;
        *(&v116 + 4) = v69;
        v72 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "CLEmergencyLocationSelectorInternal::~CLEmergencyLocationSelectorInternal()", "CoreLocation: %s\n", v72);
        if (v72 != &buf)
        {
          free(v72);
        }
      }

      if (*v69)
      {

        *v69 = 0;
      }

      v73 = *(v69 + 1);
      if (v73)
      {
        dispatch_release(v73);
        *(v69 + 1) = 0;
      }

      v74 = *(v69 + 19);
      if (v74)
      {

        *(v69 + 19) = 0;
      }

      v75 = *(v69 + 20);
      if (v75)
      {

        *(v69 + 20) = 0;
      }

      v76 = *(v69 + 22);
      if (v76)
      {

        *(v69 + 22) = 0;
      }

      v77 = *(v69 + 23);
      if (v77)
      {

        *(v69 + 23) = 0;
      }

      v78 = *(v69 + 24);
      if (v78)
      {

        *(v69 + 24) = 0;
      }

      v79 = *(v69 + 25);
      if (v79)
      {

        *(v69 + 25) = 0;
      }

      v80 = *(v69 + 2);
      if (v80)
      {

        *(v69 + 2) = 0;
      }

      sub_19BA4BC2C(v69 + 24);
      MEMORY[0x19EAE98C0](v69, 0x10B2C40AA91F4E7);
    }

    selfCopy4->_fInstance = 0;
  }

  fCleeaAssertion = selfCopy4->_fCleeaAssertion;
  if (fCleeaAssertion)
  {
    [(CLAssertion *)fCleeaAssertion invalidate];

    selfCopy->_fCleeaAssertion = 0;
    selfCopy4 = selfCopy;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v82 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = selfCopy4;
    _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,stopSession,self:%{private}@,completed", &buf, 0xCu);
  }

  v83 = sub_19B87DD40();
  if (*(v83 + 160) > 1 || *(v83 + 164) > 1 || *(v83 + 168) > 1 || *(v83 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    LODWORD(v116) = 138477827;
    *(&v116 + 4) = selfCopy;
    v84 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector stopSession]", "CoreLocation: %s\n", v84);
    if (v84 != &buf)
    {
      free(v84);
    }
  }

  v85 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v103 = *MEMORY[0x1E69E9840];
  if (![(CLEmergencyLocationSelector *)self fInstance])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v47 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      selfCopy3 = self;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,locationManager:didUpdateLocations,self:%{private}@,nil fInstance,early return", buf, 0xCu);
    }

    v48 = sub_19B87DD40();
    if (*(v48 + 160) <= 1 && *(v48 + 164) <= 1 && *(v48 + 168) <= 1 && !*(v48 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    *v57 = 138477827;
    selfCopy4 = self;
    v49 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector locationManager:didUpdateLocations:]", "CoreLocation: %s\n");
    goto LABEL_52;
  }

  if (!locations || ![locations count])
  {
    goto LABEL_54;
  }

  lastObject = [locations lastObject];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    selfCopy3 = self;
    v100 = 2049;
    fInstance = [(CLEmergencyLocationSelector *)self fInstance];
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelector,locationManager:didUpdateLocations,self:%{private}@,fInstance:%{private}p", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    *v57 = 138478083;
    selfCopy4 = self;
    v59 = 2049;
    fInstance2 = [(CLEmergencyLocationSelector *)self fInstance];
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelector locationManager:didUpdateLocations:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  fInstance3 = [(CLEmergencyLocationSelector *)self fInstance];
  if (!*fInstance3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v50 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      selfCopy3 = fInstance3;
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,updateLocation,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v51 = sub_19B87DD40();
    if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    *v57 = 134283521;
    selfCopy4 = fInstance3;
    v49 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::updateLocation(CLLocation *)", "CoreLocation: %s\n");
LABEL_52:
    if (v49 == buf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (lastObject)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v11 = qword_1ED519090;
    v12 = 0x1E753C000;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*fInstance3 feature]);
      [lastObject coordinate];
      v15 = v14;
      [lastObject coordinate];
      v17 = v16;
      [lastObject horizontalAccuracy];
      v19 = v18;
      [lastObject altitude];
      v21 = v20;
      [lastObject ellipsoidalAltitude];
      v23 = v22;
      [lastObject verticalAccuracy];
      v25 = v24;
      timestamp = [lastObject timestamp];
      [lastObject clientLocation];
      v27 = v102;
      integrity = [lastObject integrity];
      *v57 = 138545667;
      selfCopy4 = v13;
      v12 = 0x1E753C000uLL;
      v59 = 2053;
      fInstance2 = v15;
      v61 = 2053;
      v62 = v17;
      v63 = 2050;
      v64 = v19;
      v65 = 2053;
      v66 = v21;
      v67 = 2053;
      v68 = v23;
      v69 = 2050;
      v70 = v25;
      v71 = 2114;
      v72 = timestamp;
      v73 = 1026;
      v74 = v27;
      v75 = 1026;
      v76 = integrity;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,updateLocation,lat,%{sensitive}.7f,lon,%{sensitive}.7f,hunc,%{public}f,alt,%{sensitive}f,ellipsoidalAlt,%{sensitive}f,vunc,%{public}f,timestamp,%{public}@,locationType,%{public}d,integrity,%{public}d", v57, 0x5Eu);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v30 = [*(v12 + 1456) featureString:{objc_msgSend(*fInstance3, "feature")}];
      [lastObject coordinate];
      v32 = v31;
      [lastObject coordinate];
      v34 = v33;
      [lastObject horizontalAccuracy];
      v36 = v35;
      [lastObject altitude];
      v38 = v37;
      [lastObject ellipsoidalAltitude];
      v40 = v39;
      [lastObject verticalAccuracy];
      v42 = v41;
      timestamp2 = [lastObject timestamp];
      [lastObject clientLocation];
      v44 = v77;
      integrity2 = [lastObject integrity];
      v78 = 138545667;
      v79 = v30;
      v80 = 2053;
      v81 = v32;
      v82 = 2053;
      v83 = v34;
      v84 = 2050;
      v85 = v36;
      v86 = 2053;
      v87 = v38;
      v88 = 2053;
      v89 = v40;
      v90 = 2050;
      v91 = v42;
      v92 = 2114;
      v93 = timestamp2;
      v94 = 1026;
      v95 = v44;
      v96 = 1026;
      v97 = integrity2;
      v46 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::updateLocation(CLLocation *)", "CoreLocation: %s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    fInstance3[19] = [lastObject copy];
    sub_19BA44FC8((fInstance3 + 3), 3);
    goto LABEL_54;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v53 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    v54 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*fInstance3 feature]);
    *buf = 138543362;
    selfCopy3 = v54;
    _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "#CLELS,%{public}@,updateLocation,nil Location object", buf, 0xCu);
  }

  v55 = sub_19B87DD40();
  if ((*(v55 + 160) & 0x80000000) == 0 || (*(v55 + 164) & 0x80000000) == 0 || (*(v55 + 168) & 0x80000000) == 0 || *(v55 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v56 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*fInstance3 feature]);
    *v57 = 138543362;
    selfCopy4 = v56;
    v49 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLEmergencyLocationSelectorInternal::updateLocation(CLLocation *)", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
LABEL_53:
      free(v49);
    }
  }

LABEL_54:
  v52 = *MEMORY[0x1E69E9840];
}

@end