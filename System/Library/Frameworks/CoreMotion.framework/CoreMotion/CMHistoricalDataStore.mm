@interface CMHistoricalDataStore
- (BOOL)_setConfiguration:(id)a3;
- (BOOL)queryConfigurationFromDaemon;
- (BOOL)tokenSanityChecks;
- (CMHistoricalDataStore)init;
- (const)tableNameFromToken;
- (id)parseCardioTypeFromSql:(sqlite3_stmt *)a3 datatype:(unint64_t)a4;
- (id)parseMobilityTypeFromSql:(sqlite3_stmt *)a3 dataype:(unint64_t)a4;
- (id)tableNameForCardioType:(unint64_t)a3;
- (id)tableNameForCurrentType:(unint64_t)a3;
- (id)tableNameForMobilityType:(unint64_t)a3;
- (id)tableNames;
- (int)isDbOpenAndValid;
- (int)populateArray:(id)a3 fromSql:(sqlite3_stmt *)a4 query:(id)a5;
- (unint64_t)getRecordIdForTable:(const char *)a3 ascending:(BOOL)a4;
- (void)_cacheTableNamesForToken:(id)a3;
- (void)cacheAllRecordIds;
- (void)closeDBConnection;
- (void)dealloc;
- (void)fetchCardioSamplesFrom:(double)a3 to:(double)a4 queryToken:(id)a5 withHandler:(id)a6;
- (void)fetchMobilitySamplesFrom:(double)a3 to:(double)a4 queryToken:(id)a5 withHandler:(id)a6;
- (void)initializeWithToken:(id)a3 type:(unint64_t)a4 start:(double)a5 end:(double)a6;
- (void)markCursorDone;
- (void)nextHistoricalFetchWithCount:(unint64_t)a3 withHandler:(id)a4;
- (void)resetToken;
@end

@implementation CMHistoricalDataStore

- (CMHistoricalDataStore)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CMHistoricalDataStore;
  v2 = [(CMHistoricalDataStore *)&v5 init];
  if (v2)
  {
    v2->fConfiguration = 0;
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.HistoricalDatastore", 0);
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  objc_msgSend_resetToken(self, a2, v2);
  objc_msgSend_closeDBConnection(self, v4, v5);
  dispatch_release(self->fInternalQueue);
  sub_19B42C54C(&self->fLocationdConnection, 0);

  v6.receiver = self;
  v6.super_class = CMHistoricalDataStore;
  [(CMHistoricalDataStore *)&v6 dealloc];
}

- (BOOL)queryConfigurationFromDaemon
{
  v4 = *MEMORY[0x1E69E9840];
  if (!self->fConfiguration)
  {
    sub_19B5B64E0();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)fetchCardioSamplesFrom:(double)a3 to:(double)a4 queryToken:(id)a5 withHandler:(id)a6
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v65 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v65, v66, a2, self, @"CMHistoricalDataStore.mm", 140, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v11 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v83 = a3;
    v84 = 2048;
    v85 = a4;
    v86 = 2112;
    v87 = *&a5;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Fetching cardio samples from: %f to: %f. Received token: %@", buf, 0x20u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v76 = 134218498;
    v77 = a3;
    v78 = 2048;
    v79 = a4;
    v80 = 2112;
    v81 = *&a5;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_alloc_init(CMHistoricalCardioSamples);
  v15 = objc_autoreleasePoolPush();
  if ((objc_msgSend_queryConfigurationFromDaemon(self, v16, v17) & 1) == 0)
  {
    v74 = *MEMORY[0x1E696A578];
    v75 = @"Failed to get datastore configuration";
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v75, &v74, 1);
    v43 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v45, 103, v44);
LABEL_46:
    (*(a6 + 2))(a6, v14, 0, 1, v43);
    goto LABEL_47;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v22 = Current;
  if (a4 <= a3 || Current < a3)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v46 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v83 = a3;
      v84 = 2048;
      v85 = a4;
      v86 = 2048;
      v87 = v22;
      _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid timestamps start:%f,end:%f,now:%f", buf, 0x20u);
    }

    v47 = sub_19B420058();
    if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v76 = 134218496;
      v77 = a3;
      v78 = 2048;
      v79 = a4;
      v80 = 2048;
      v81 = v22;
      v49 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    v72 = *MEMORY[0x1E696A578];
    v73 = @"Invalid timestamps.";
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, &v73, &v72, 1);
LABEL_45:
    v43 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v51, 107, v50);
    goto LABEL_46;
  }

  isDbOpenAndValid = objc_msgSend_isDbOpenAndValid(self, v19, v20);
  if (!isDbOpenAndValid)
  {
    objc_msgSend_initializeWithToken_type_start_end_(self, v24, a5, 0, a3, a4);
    if (objc_msgSend_tokenSanityChecks(self, v53, v54))
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = sub_19B5B1064;
      v67[3] = &unk_1E75329B0;
      v67[5] = self;
      v67[6] = a6;
      v67[4] = v14;
      objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v55, 0, v67);
      goto LABEL_47;
    }

    v68 = *MEMORY[0x1E696A578];
    v69 = @"Invalid token.";
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v55, &v69, &v68, 1);
    goto LABEL_45;
  }

  v26 = isDbOpenAndValid;
  v27 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v24, v25);
  v30 = objc_msgSend_coldDBPath(self, v28, v29);
  if (objc_msgSend_fileExistsAtPath_(v27, v31, v30))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v32 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *&v35 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v33, v34));
      *buf = 138478083;
      v83 = *&v35;
      v84 = 1026;
      LODWORD(v85) = v26;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", buf, 0x12u);
    }

    v36 = sub_19B420058();
    if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v76 = 138478083;
      v77 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v38, v39));
      v78 = 1026;
      LODWORD(v79) = v26;
      v40 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    v70 = *MEMORY[0x1E696A578];
    v71 = @"Unable to access datastore. Is the device locked?";
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, &v71, &v70, 1);
    v43 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v42, 109, v41);
    goto LABEL_46;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v56 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    *&v59 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v57, v58));
    *buf = 138478083;
    v83 = *&v59;
    v84 = 1026;
    LODWORD(v85) = v26;
    _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_ERROR, "[HistoricalFetch] No file found at path %{private}@; return code %{public}d", buf, 0x12u);
  }

  v60 = sub_19B420058();
  if ((*(v60 + 160) & 0x80000000) == 0 || (*(v60 + 164) & 0x80000000) == 0 || (*(v60 + 168) & 0x80000000) == 0 || *(v60 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v76 = 138478083;
    v77 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v61, v62));
    v78 = 1026;
    LODWORD(v79) = v26;
    v63 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v63);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  (*(a6 + 2))(a6, v14, 0, 1, 0);
LABEL_47:
  objc_autoreleasePoolPop(v15);
  v52 = *MEMORY[0x1E69E9840];
}

- (void)fetchMobilitySamplesFrom:(double)a3 to:(double)a4 queryToken:(id)a5 withHandler:(id)a6
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v51 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, a2, self, @"CMHistoricalDataStore.mm", 249, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v11 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v69 = a3;
    v70 = 2048;
    v71 = a4;
    v72 = 2112;
    v73 = *&a5;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Fetching mobility samples from: %f to: %f. Received token: %@", buf, 0x20u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v62 = 134218498;
    v63 = a3;
    v64 = 2048;
    v65 = a4;
    v66 = 2112;
    v67 = *&a5;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_alloc_init(CMHistoricalMobilitySamples);
  v15 = objc_autoreleasePoolPush();
  if (objc_msgSend_queryConfigurationFromDaemon(self, v16, v17))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = Current;
    if (a4 <= a3 || Current < a3)
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v40 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v69 = a3;
        v70 = 2048;
        v71 = a4;
        v72 = 2048;
        v73 = v22;
        _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid timestamps start:%f,end:%f,now:%f", buf, 0x20u);
      }

      v41 = sub_19B420058();
      if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v62 = 134218496;
        v63 = a3;
        v64 = 2048;
        v65 = a4;
        v66 = 2048;
        v67 = v22;
        v43 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      v58 = *MEMORY[0x1E696A578];
      v59 = @"Invalid timestamps.";
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, &v59, &v58, 1);
    }

    else
    {
      isDbOpenAndValid = objc_msgSend_isDbOpenAndValid(self, v19, v20);
      if (isDbOpenAndValid)
      {
        v25 = isDbOpenAndValid;
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v26 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
        {
          *&v29 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v27, v28));
          *buf = 138478083;
          v69 = *&v29;
          v70 = 1026;
          LODWORD(v71) = v25;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", buf, 0x12u);
        }

        v30 = sub_19B420058();
        if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          v62 = 138478083;
          v63 = COERCE_DOUBLE(objc_msgSend_coldDBPath(self, v32, v33));
          v64 = 1026;
          LODWORD(v65) = v25;
          v34 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]", "CoreLocation: %s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }

        v56 = *MEMORY[0x1E696A578];
        v57 = @"Unable to access datastore. Is the device locked?";
        v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v31, &v57, &v56, 1);
        v37 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v36, 109, v35);
        goto LABEL_45;
      }

      objc_msgSend_initializeWithToken_type_start_end_(self, v24, a5, 1, a3, a4);
      if (objc_msgSend_tokenSanityChecks(self, v47, v48))
      {
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = sub_19B5B1E78;
        v53[3] = &unk_1E75329B0;
        v53[5] = self;
        v53[6] = a6;
        v53[4] = v14;
        objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v49, 0, v53);
        goto LABEL_46;
      }

      v54 = *MEMORY[0x1E696A578];
      v55 = @"Invalid token.";
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v49, &v55, &v54, 1);
    }

    v37 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v45, 107, v44);
  }

  else
  {
    v60 = *MEMORY[0x1E696A578];
    v61 = @"Failed to get datastore configuration";
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v61, &v60, 1);
    v37 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v39, 103, v38);
  }

LABEL_45:
  (*(a6 + 2))(a6, v14, 0, 1, v37);
LABEL_46:
  objc_autoreleasePoolPop(v15);
  v46 = *MEMORY[0x1E69E9840];
}

- (void)nextHistoricalFetchWithCount:(unint64_t)a3 withHandler:(id)a4
{
  v171 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v7 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEBUG))
  {
    if (objc_msgSend_fetchType(self->fToken, v8, v9))
    {
      v10 = "Mobility";
    }

    else
    {
      v10 = "Cardio";
    }

    *buf = 136315394;
    *v170 = v10;
    *&v170[8] = 2048;
    *&v170[10] = a3;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[HistoricalFetch] Next %s fetch with count: %lu", buf, 0x16u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    if (objc_msgSend_fetchType(self->fToken, v14, v15))
    {
      v16 = "Mobility";
    }

    else
    {
      v16 = "Cardio";
    }

    v161 = 136315394;
    *v162 = v16;
    *&v162[8] = 2048;
    *&v162[10] = a3;
    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  isDbOpenAndValid = objc_msgSend_isDbOpenAndValid(self, v12, v13);
  if (isDbOpenAndValid)
  {
    v21 = isDbOpenAndValid;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v22 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_msgSend_coldDBPath(self, v23, v24);
      *buf = 138478083;
      *v170 = v25;
      *&v170[8] = 1026;
      *&v170[10] = v21;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unable to open file at path %{private}@; return code %{public}d", buf, 0x12u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v161 = 138478083;
      *v162 = objc_msgSend_coldDBPath(self, v28, v29);
      *&v162[8] = 1026;
      *&v162[10] = v21;
      v30 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    v167 = *MEMORY[0x1E696A578];
    v168 = @"Unable to access datastore. Is the device locked?";
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, &v168, &v167, 1);
    v33 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v32, 109, v31);
LABEL_55:
    v87 = v33;
    v88 = *(a4 + 2);
    v89 = a4;
    v90 = 0;
LABEL_56:
    v91 = 0;
    v92 = 1;
LABEL_57:
    v88(v89, v90, v91, v92, v87);
    goto LABEL_58;
  }

  if (!self->fToken || !self->fDb)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v81 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v81, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid DB or token", buf, 2u);
    }

    v82 = sub_19B420058();
    if ((*(v82 + 160) & 0x80000000) == 0 || (*(v82 + 164) & 0x80000000) == 0 || (*(v82 + 168) & 0x80000000) == 0 || *(v82 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      LOWORD(v161) = 0;
      v84 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v84);
      if (v84 != buf)
      {
        free(v84);
      }
    }

    v165 = *MEMORY[0x1E696A578];
    v166 = @"Unexpected invalidation.";
    v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v83, &v166, &v165, 1);
    v33 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v86, 107, v85);
    goto LABEL_55;
  }

  v34 = objc_msgSend_tableNames(self, v19, v20);
  if (objc_msgSend_count(v34, v35, v36) <= a3)
  {
    v88 = *(a4 + 2);
    v89 = a4;
    v90 = 0;
    v91 = 0;
    v92 = 1;
    goto LABEL_60;
  }

  v39 = objc_msgSend_tables(self->fToken, v37, v38);
  if (!objc_msgSend_count(v39, v40, v41))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v94 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: No tables in token", buf, 2u);
    }

    v95 = sub_19B420058();
    if ((*(v95 + 160) & 0x80000000) == 0 || (*(v95 + 164) & 0x80000000) == 0 || (*(v95 + 168) & 0x80000000) == 0 || *(v95 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      LOWORD(v161) = 0;
      v97 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v97);
      if (v97 != buf)
      {
        free(v97);
      }
    }

    v163 = *MEMORY[0x1E696A578];
    v164 = @"Empty token.";
    v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v96, &v164, &v163, 1);
    v33 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v99, 112, v98);
    goto LABEL_55;
  }

  v44 = objc_msgSend_tables(self->fToken, v42, v43);
  Object = objc_msgSend_firstObject(v44, v45, v46);
  v50 = objc_msgSend_tableNameFromToken(self, v48, v49);
  if (!*v50)
  {
    objc_msgSend_markCursorDone(self, v51, v52);
    v154[0] = MEMORY[0x1E69E9820];
    v154[1] = 3221225472;
    v154[2] = sub_19B5B3290;
    v154[3] = &unk_1E75329D8;
    v154[4] = a4;
    objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v100, a3 + 1, v154);
    goto LABEL_58;
  }

  v53 = v50;
  if (!objc_msgSend_cachedLastRecordId(Object, v51, v52) || !objc_msgSend_recordId(Object, v54, v55))
  {
    FirstRecordIdForTable = objc_msgSend_getFirstRecordIdForTable_(self, v54, v53);
    objc_msgSend_setRecordId_(Object, v57, FirstRecordIdForTable);
  }

  LastRecordIdForTable = objc_msgSend_getLastRecordIdForTable_(self, v54, v53);
  objc_msgSend_setCachedLastRecordId_(Object, v59, LastRecordIdForTable);
  v62 = objc_msgSend_recordId(Object, v60, v61);
  if (v62 >= objc_msgSend_cachedLastRecordId(Object, v63, v64))
  {
    objc_msgSend_markCursorDone(self, v65, v66);
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = sub_19B5B32A0;
    v153[3] = &unk_1E75329D8;
    v153[4] = a4;
    objc_msgSend_nextHistoricalFetchWithCount_withHandler_(self, v101, a3 + 1, v153);
    goto LABEL_58;
  }

  v67 = v53;
  ppStmt = 0;
  PageSize = objc_msgSend_getPageSize(self, v65, v66);
  v151 = MEMORY[0x1E696AEC0];
  v71 = objc_msgSend_recordId(Object, v69, v70);
  v74 = objc_msgSend_recordId(Object, v72, v73) + PageSize;
  if (v74 >= objc_msgSend_cachedLastRecordId(Object, v75, v76))
  {
    RecordId = objc_msgSend_cachedLastRecordId(Object, v77, v78);
  }

  else
  {
    RecordId = objc_msgSend_recordId(Object, v77, v78) + PageSize;
  }

  v102 = v67;
  v103 = objc_msgSend_stringWithFormat_(v151, v80, @"SELECT * FROM %s WHERE id > %lu AND id <= %lu ORDER BY id ASC", v67, v71, RecordId);
  fDb = self->fDb;
  v107 = objc_msgSend_UTF8String(v103, v105, v106);
  v108 = sqlite3_prepare_v2(fDb, v107, -1, &ppStmt, 0);
  if (v108)
  {
    v109 = v108;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v110 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109635;
      *v170 = v109;
      *&v170[4] = 2113;
      *&v170[6] = v103;
      *&v170[14] = 2082;
      *&v170[16] = v102;
      _os_log_impl(&dword_19B41C000, v110, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error %d preparing SQLite statement: %{private}@, table: %{public}s", buf, 0x1Cu);
    }

    v111 = sub_19B420058();
    if ((*(v111 + 160) & 0x80000000) == 0 || (*(v111 + 164) & 0x80000000) == 0 || (*(v111 + 168) & 0x80000000) == 0 || *(v111 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v161 = 67109635;
      *v162 = v109;
      *&v162[4] = 2113;
      *&v162[6] = v103;
      *&v162[14] = 2082;
      *&v162[16] = v102;
      v113 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v113);
      if (v113 != buf)
      {
        free(v113);
      }
    }

    v159 = *MEMORY[0x1E696A578];
    v160 = @"Unknown database error.";
    v114 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v112, &v160, &v159, 1);
    v33 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v115, 103, v114);
    goto LABEL_55;
  }

  v116 = objc_opt_new();
  v118 = objc_msgSend_populateArray_fromSql_query_(self, v117, v116, ppStmt, v103);
  if (v118 == 101)
  {
    v119 = sqlite3_finalize(ppStmt);
    if (v119)
    {
      v122 = v119;
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v123 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240450;
        *v170 = v122;
        *&v170[4] = 2082;
        *&v170[6] = v102;
        _os_log_impl(&dword_19B41C000, v123, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error finalizing SQLite statement: %{public}d, table: %{public}s", buf, 0x12u);
      }

      v124 = sub_19B420058();
      if ((*(v124 + 160) & 0x80000000) == 0 || (*(v124 + 164) & 0x80000000) == 0 || (*(v124 + 168) & 0x80000000) == 0 || *(v124 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v161 = 67240450;
        *v162 = v122;
        *&v162[4] = 2082;
        *&v162[6] = v102;
        v126 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v126);
        if (v126 != buf)
        {
          free(v126);
        }
      }

      v155 = *MEMORY[0x1E696A578];
      v156 = @"Unknown database error.";
      v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v125, &v156, &v155, 1);
      v87 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v128, 103, v127);
      v88 = *(a4 + 2);
      v89 = a4;
      v90 = v116;
      goto LABEL_56;
    }

    v139 = objc_msgSend_tables(self->fToken, v120, v121);
    objc_msgSend_setObject_atIndexedSubscript_(v139, v140, Object, 0);
    v143 = objc_msgSend_datatype(Object, v141, v142);
    v146 = objc_msgSend_recordId(Object, v144, v145);
    if (v146 >= objc_msgSend_cachedLastRecordId(Object, v147, v148))
    {
      objc_msgSend_markCursorDone(self, v149, v150);
    }

    v88 = *(a4 + 2);
    v89 = a4;
    v90 = v116;
    v91 = v143;
    v92 = 0;
LABEL_60:
    v87 = 0;
    goto LABEL_57;
  }

  v129 = v118;
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v130 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240450;
    *v170 = v129;
    *&v170[4] = 2082;
    *&v170[6] = v102;
    _os_log_impl(&dword_19B41C000, v130, OS_LOG_TYPE_ERROR, "[HistoricalFetch] SQLite error: %{public}d, table: %{public}s", buf, 0x12u);
  }

  v131 = sub_19B420058();
  if ((*(v131 + 160) & 0x80000000) == 0 || (*(v131 + 164) & 0x80000000) == 0 || (*(v131 + 168) & 0x80000000) == 0 || *(v131 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v161 = 67240450;
    *v162 = v129;
    *&v162[4] = 2082;
    *&v162[6] = v102;
    v133 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore nextHistoricalFetchWithCount:withHandler:]", "CoreLocation: %s\n", v133);
    if (v133 != buf)
    {
      free(v133);
    }
  }

  v157 = *MEMORY[0x1E696A578];
  v158 = @"Unknown database error.";
  v134 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v132, &v158, &v157, 1);
  v136 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v135, 103, v134);
  objc_msgSend_removeAllObjects(v116, v137, v138);
  (*(a4 + 2))(a4, v116, 0, 1, v136);
LABEL_58:
  v93 = *MEMORY[0x1E69E9840];
}

- (int)populateArray:(id)a3 fromSql:(sqlite3_stmt *)a4 query:(id)a5
{
  v97 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_tables(self->fToken, a2, a3);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
  v14 = objc_msgSend_recordId(v11, v12, v13);
  Current = CFAbsoluteTimeGetCurrent();
  v18 = objc_msgSend_tables(self->fToken, v16, v17);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, 0);
  v23 = sqlite3_step(a4);
  if (v23 != 100)
  {
    goto LABEL_11;
  }

  do
  {
    v24 = sqlite3_column_int(a4, 0);
    Type = objc_msgSend_fetchType(self->fToken, v25, v26);
    if (Type == 1)
    {
      v34 = objc_msgSend_datatype(v20, v28, v29);
      v32 = objc_msgSend_parseMobilityTypeFromSql_dataype_(self, v35, a4, v34);
      goto LABEL_6;
    }

    if (!Type)
    {
      v30 = objc_msgSend_datatype(v20, v28, v29);
      v32 = objc_msgSend_parseCardioTypeFromSql_datatype_(self, v31, a4, v30);
LABEL_6:
      objc_msgSend_addObject_(a3, v33, v32);
      goto LABEL_8;
    }

    objc_msgSend_addObject_(a3, v28, 0);
LABEL_8:
    v36 = sqlite3_step(a4);
  }

  while (v36 == 100);
  v23 = v36;
  if (v24)
  {
    objc_msgSend_setRecordId_(v20, v21, v24);
    goto LABEL_12;
  }

LABEL_11:
  v37 = objc_msgSend_recordId(v20, v21, v22);
  objc_msgSend_setRecordId_(v20, v38, v37);
LABEL_12:
  if (v23 == 101)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v39 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_INFO, "[HistoricalFetch] Constructed results.", buf, 2u);
    }

    v40 = sub_19B420058();
    if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v41 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore populateArray:fromSql:query:]", "CoreLocation: %s\n", v41);
    if (v41 == buf)
    {
      goto LABEL_36;
    }

LABEL_35:
    free(v41);
    goto LABEL_36;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v42 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    v45 = objc_msgSend_datatype(v20, v43, v44);
    *buf = 67240450;
    v74 = v23;
    v75 = 2114;
    v76 = objc_msgSend_tableNameForCurrentType_(self, v46, v45);
    _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error constructing results. SQL return code: %{public}d, table:%{public}@", buf, 0x12u);
  }

  v47 = sub_19B420058();
  if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v50 = objc_msgSend_datatype(v20, v48, v49);
    objc_msgSend_tableNameForCurrentType_(self, v51, v50);
    v41 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore populateArray:fromSql:query:]", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  v52 = CFAbsoluteTimeGetCurrent();
  v55 = objc_msgSend_tables(self->fToken, v53, v54);
  v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, 0);
  v60 = objc_msgSend_recordId(v57, v58, v59);
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v61 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_fetchType(self->fToken, v62, v63))
    {
      v66 = "Mobility";
    }

    else
    {
      v66 = "Cardio";
    }

    v67 = objc_msgSend_count(a3, v64, v65);
    v70 = objc_msgSend_tableNameFromToken(self, v68, v69);
    *buf = 68291586;
    v74 = 0;
    v75 = 2082;
    v76 = "";
    v77 = 2082;
    v78 = v66;
    v79 = 2050;
    v80 = v52 - Current;
    v81 = 1026;
    v82 = v67;
    v83 = 2050;
    v84 = Current;
    v85 = 2050;
    v86 = v52;
    v87 = 1026;
    v88 = v23;
    v89 = 2082;
    v90 = v70;
    v91 = 2050;
    v92 = v14;
    v93 = 2050;
    v94 = v60;
    v95 = 2114;
    v96 = a5;
    _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:[HistoricalFetch] Query complete, type:%{public, location:escape_only}s, duration:%{public}f, numSamples:%{public}u, start:%{public}f, end:%{public}f, returnCode:%{public}d, table:%{public, location:escape_only}s, recordId (pre-query):%{public}lu, recordId (post-query):%{public}lu, query:%{public, location:escape_only}@}", buf, 0x6Eu);
  }

  v71 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)parseCardioTypeFromSql:(sqlite3_stmt *)a3 datatype:(unint64_t)a4
{
  result = 0;
  v32 = *MEMORY[0x1E69E9840];
  if (a4 > 3)
  {
    if (a4 > 5)
    {
      if (a4 == 6)
      {
        objc_msgSend_inputFromPreparedStatement_(CMCardioFitnessInputsSessionMetrics, a2, a3);
        v5 = [CMCardioFitnessInputsSessionMetrics alloc];
        v10 = v22;
        v11 = v23;
        v12 = v24;
        v8 = v20;
        v9 = v21;
        goto LABEL_20;
      }

      if (a4 == 7)
      {
        objc_msgSend_inputFromPreparedStatement_(CMCardioFitnessSummary, a2, a3);
        v5 = [CMCardioFitnessSummary alloc];
        v16 = v28;
        v17 = v29;
        v18 = v30;
        v19 = v31;
        v12 = v24;
        v13 = v25;
        v14 = v26;
        v15 = v27;
        v8 = v20;
        v9 = v21;
        v10 = v22;
        v11 = v23;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (a4 == 4)
    {
      objc_msgSend_inputFromPreparedStatement_(CMVO2MaxInputs, a2, a3);
      v5 = [CMVO2MaxInputs alloc];
      v12 = v24;
      v13 = v25;
      v14 = v26;
      v8 = v20;
      v9 = v21;
      v10 = v22;
      v11 = v23;
      goto LABEL_20;
    }

    objc_msgSend_inputFromPreparedStatement_(CMCardioFitnessResults, a2, a3);
    v5 = [CMCardioFitnessResults alloc];
    v14 = v26;
    v15 = v27;
    v16 = v28;
    *&v17 = v29;
LABEL_11:
    v10 = v22;
    v11 = v23;
    v12 = v24;
    v13 = v25;
    goto LABEL_12;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      objc_msgSend_inputFromPreparedStatement_(CMWorkoutPhysicalEffort, a2, a3);
      v5 = [CMWorkoutPhysicalEffort alloc];
      v8 = v20;
      v9 = v21;
      v10 = v22;
      *&v11 = v23;
      goto LABEL_20;
    }

    objc_msgSend_inputFromPreparedStatement_(CMRecoverySession, a2, a3);
    v5 = [CMRecoverySession alloc];
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    goto LABEL_11;
  }

  if (!a4)
  {
    objc_msgSend_inputFromPreparedStatement_(CMPedestrianGrade, a2, a3);
    v5 = [CMPedestrianGrade alloc];
    v8 = v20;
    *&v9 = v21;
    goto LABEL_20;
  }

  if (a4 == 1)
  {
    objc_msgSend_inputFromPreparedStatement_(CMRecoveryHeartRate, a2, a3);
    v5 = [CMRecoveryHeartRate alloc];
LABEL_12:
    v8 = v20;
    v9 = v21;
LABEL_20:
    result = objc_msgSend_initWithSample_(v5, v6, &v8);
  }

LABEL_21:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)parseMobilityTypeFromSql:(sqlite3_stmt *)a3 dataype:(unint64_t)a4
{
  result = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      objc_msgSend_inputFromPreparedStatement_(CMPredictedDistanceBout, a2, a3);
      v9 = [CMPredictedDistanceBout alloc];
      v23 = v37;
      v24 = v38;
      v25 = v39;
      *&v26 = v40;
      v19 = v33;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v8 = objc_msgSend_initWithSample_(v9, v10, &v19);
    }

    else
    {
      objc_msgSend_inputFromPreparedStatement_(CMWalkingBoutMobilityMetrics, a2, a3);
      v17 = [CMWalkingBoutMobilityMetrics alloc];
      v29 = v43;
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v19 = v33;
      v20 = v34;
      v8 = objc_msgSend_initWithSample_(v17, v18, &v19);
    }
  }

  else
  {
    switch(a4)
    {
      case 2uLL:
        objc_msgSend_inputFromPreparedStatement_(CMSmoothGaitMetrics, a2, a3);
        v11 = [CMSmoothGaitMetrics alloc];
        v19 = v33;
        v20 = v34;
        v21 = v35;
        v8 = objc_msgSend_initWithSample_(v11, v12, &v19);
        break;
      case 3uLL:
        v13 = sqlite3_column_int(a3, 0);
        objc_msgSend_inputFromPreparedStatement_(CMPredictedDistanceBoutMobilityCalibration, v14, a3);
        v15 = [CMPredictedDistanceBoutMobilityCalibration alloc];
        v19 = v33;
        v20 = v34;
        v21 = v35;
        v8 = objc_msgSend_initWithSample_recordId_(v15, v16, &v19, v13);
        break;
      case 4uLL:
        *&v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        objc_msgSend_inputFromPreparedStatement_(CMStrideCalibrationEntry, a2, a3);
        v6 = [CMStrideCalibrationEntry alloc];
        v23 = v37;
        v24 = v38;
        v25 = v39;
        *&v26 = v40;
        v19 = v33;
        v20 = v34;
        v21 = v35;
        v22 = v36;
        v8 = objc_msgSend_initWithCLStrideCalEntry_(v6, v7, &v19);
        break;
      default:
        return result;
    }
  }

  return v8;
}

- (int)isDbOpenAndValid
{
  v25 = *MEMORY[0x1E69E9840];
  p_fDb = &self->fDb;
  if (self->fDb)
  {
    v4 = 0;
  }

  else
  {
    objc_msgSend_closeDBConnection(self, a2, v2);
    v8 = objc_msgSend_coldDBPath(self, v6, v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    v4 = sqlite3_open_v2(v11, p_fDb, 131073, 0);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v12 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v22 = objc_msgSend_coldDBPath(self, v13, v14);
      v23 = 1024;
      v24 = v4;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Opened DB at %{private}@ with rc %d", buf, 0x12u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      objc_msgSend_coldDBPath(self, v16, v17);
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore isDbOpenAndValid]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)tokenSanityChecks
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_version(self->fToken, a2, v2) != 2)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v17 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_msgSend_version(self->fToken, v18, v19);
      *buf = 134217984;
      v44 = v20;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: unexpected token version %lu", buf, 0xCu);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    objc_msgSend_version(self->fToken, v22, v23);
    goto LABEL_25;
  }

  objc_msgSend_startTime(self->fToken, v4, v5);
  v7 = v6;
  objc_msgSend_endTime(self->fToken, v8, v9);
  if (v7 >= v12)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v24 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_startTime(self->fToken, v25, v26);
      v28 = v27;
      objc_msgSend_endTime(self->fToken, v29, v30);
      *buf = 134349312;
      v44 = v28;
      v45 = 2050;
      v46 = v31;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: invalid token timestamps, start:%{public}f end:%{public}f", buf, 0x16u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    objc_msgSend_startTime(self->fToken, v33, v34);
    objc_msgSend_endTime(self->fToken, v35, v36);
LABEL_25:
    v37 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore tokenSanityChecks]", "CoreLocation: %s\n", v37);
    if (v37 == buf)
    {
LABEL_27:
      result = 0;
      goto LABEL_28;
    }

LABEL_26:
    free(v37);
    goto LABEL_27;
  }

  v13 = objc_msgSend_tables(self->fToken, v10, v11);
  if (!objc_msgSend_count(v13, v14, v15))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v39 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      fToken = self->fToken;
      *buf = 138412290;
      v44 = fToken;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: no mobility tables found in token: %@", buf, 0xCu);
    }

    v41 = sub_19B420058();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v42 = self->fToken;
    v37 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore tokenSanityChecks]", "CoreLocation: %s\n", v37);
    if (v37 == buf)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  result = 1;
LABEL_28:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initializeWithToken:(id)a3 type:(unint64_t)a4 start:(double)a5 end:(double)a6
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v31 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v58 = *&a4;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Generating new token for type=%lu", buf, 0xCu);
    }

    v32 = sub_19B420058();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v35 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore initializeWithToken:type:start:end:]", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    if (a4)
    {
      if (a4 != 1)
      {
        fToken = self->fToken;
        goto LABEL_44;
      }

      v36 = objc_msgSend_mobilityToken(CMMobilityToken, v33, v34);
    }

    else
    {
      v36 = objc_msgSend_cardioToken(CMCardioToken, v33, v34);
    }

    fToken = v36;
    self->fToken = fToken;
LABEL_44:
    objc_msgSend_setStartTime_(fToken, v33, v34, a5);
    objc_msgSend_setEndTime_(self->fToken, v52, v53, a6);
    objc_msgSend_cacheAllRecordIds(self, v54, v55);
LABEL_45:
    v56 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = self->fToken;
  if (v10)
  {
    objc_msgSend_startTime(v10, a2, a3, a4);
    objc_msgSend_setStartTime_(a3, v11, v12);
    objc_msgSend_endTime(self->fToken, v13, v14);
    objc_msgSend_setEndTime_(a3, v15, v16);

    self->fToken = 0;
  }

  v17 = a3;
  self->fToken = v17;
  v20 = fabs(a6) == INFINITY;
  if (fabs(a5) == INFINITY && v20)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v37 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_startTime(self->fToken, v38, v39);
      v41 = v40;
      objc_msgSend_endTime(self->fToken, v42, v43);
      *buf = 134218752;
      v58 = a5;
      v59 = 2048;
      v60 = a6;
      v61 = 2048;
      v62 = v41;
      v63 = 2048;
      v64 = v44;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_INFO, "[HistoricalFetch] #Warning: ignoring [%f,%f], persisting previous parameters (start=%f, end=%f)", buf, 0x2Au);
    }

    v45 = sub_19B420058();
    if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      objc_msgSend_startTime(self->fToken, v46, v47);
      objc_msgSend_endTime(self->fToken, v48, v49);
      v50 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore initializeWithToken:type:start:end:]", "CoreLocation: %s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    goto LABEL_45;
  }

  objc_msgSend_startTime(v17, v18, v19);
  if (v24 > a5)
  {
    objc_msgSend_startTime(self->fToken, v22, v23);
    a5 = v25;
  }

  objc_msgSend_setStartTime_(self->fToken, v22, v23, a5);
  v28 = self->fToken;
  v29 = *MEMORY[0x1E69E9840];

  objc_msgSend_setEndTime_(v28, v26, v27, a6);
}

- (unint64_t)getRecordIdForTable:(const char *)a3 ascending:(BOOL)a4
{
  v63 = *MEMORY[0x1E69E9840];
  if (!self->fDb)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v29 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error: DB invalid", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_41;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    LOWORD(v55) = 0;
    goto LABEL_39;
  }

  v4 = a4;
  ppStmt = 0;
  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_startTime(self->fToken, v8, v9);
  v12 = Current + -63072000.0;
  if (v13 > Current + -63072000.0)
  {
    objc_msgSend_startTime(self->fToken, v10, v11);
    v12 = v14;
  }

  objc_msgSend_endTime(self->fToken, v10, v11);
  if (v17 < Current)
  {
    objc_msgSend_endTime(self->fToken, v15, v16);
    Current = v18;
  }

  if (v4)
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"SELECT id FROM %s WHERE startTime >= %f AND startTime <= %f ORDER BY id %s LIMIT 1", a3, *&v12, *&Current, "ASC");
  }

  else
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"SELECT id FROM %s WHERE startTime >= %f AND startTime <= %f ORDER BY id %s LIMIT 1", a3, *&v12, *&Current, "DESC");
  }

  v22 = v19;
  fDb = self->fDb;
  v24 = objc_msgSend_UTF8String(v19, v20, v21);
  v25 = sqlite3_prepare_v2(fDb, v24, -1, &ppStmt, 0);
  if (v25)
  {
    v26 = v25;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v27 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v60 = a3;
      v61 = 1024;
      *v62 = v26;
      *&v62[4] = 2112;
      *&v62[6] = v22;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error on table %{private}s prepare statement (code=%d): %@", buf, 0x1Cu);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_41;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 == -1)
    {
      goto LABEL_38;
    }

LABEL_110:
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
LABEL_38:
    v55 = 136381187;
    v56 = a3;
    v57 = 1024;
    *v58 = v26;
    *&v58[4] = 2112;
    *&v58[6] = v22;
LABEL_39:
    v34 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }

LABEL_41:
    v35 = 0;
    goto LABEL_42;
  }

  v31 = sqlite3_step(ppStmt);
  if ((v31 - 102) <= 0xFFFFFFFD)
  {
    v26 = v31;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v32 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v60 = a3;
      v61 = 1024;
      *v62 = v26;
      *&v62[4] = 2112;
      *&v62[6] = v22;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error on table %{private}s step statement (code=%d): %@", buf, 0x1Cu);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_41;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_110;
  }

  v38 = sqlite3_column_int(ppStmt, 0);
  if (v38 < 1)
  {
    if (v38)
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v39 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v60 = a3;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[HistoricalFetch] %s: Invalid rowId", buf, 0xCu);
      }

      v40 = sub_19B420058();
      if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
      {
        goto LABEL_73;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v55 = 136315138;
      v56 = a3;
      v41 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n");
    }

    else
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v42 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v60 = a3;
        _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "[HistoricalFetch] %s: No records found", buf, 0xCu);
      }

      v43 = sub_19B420058();
      if (*(v43 + 160) <= 1 && *(v43 + 164) <= 1 && *(v43 + 168) <= 1 && !*(v43 + 152))
      {
        goto LABEL_73;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v55 = 136315138;
      v56 = a3;
      v41 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n");
    }

    if (v41 != buf)
    {
      free(v41);
    }

LABEL_73:
    v35 = 0;
    goto LABEL_74;
  }

  v35 = (v38 - v4);
LABEL_74:
  v44 = sqlite3_finalize(ppStmt);
  if (v44)
  {
    v45 = v44;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v46 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v60 = a3;
      v61 = 1024;
      *v62 = v45;
      _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error on table %{private}s finalize (code=%d)", buf, 0x12u);
    }

    v47 = sub_19B420058();
    if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v55 = 136380931;
      v56 = a3;
      v57 = 1024;
      *v58 = v45;
      v48 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v48);
      if (v48 != buf)
      {
        free(v48);
      }
    }
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v49 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEBUG))
  {
    if (v4)
    {
      v50 = "first";
    }

    else
    {
      v50 = "last";
    }

    *buf = 136315651;
    v60 = v50;
    v61 = 2048;
    *v62 = v35;
    *&v62[8] = 2081;
    *&v62[10] = a3;
    _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "[HistoricalFetch] Caching %s record id %lu for table %{private}s", buf, 0x20u);
  }

  v51 = sub_19B420058();
  if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    if (v4)
    {
      v52 = "first";
    }

    else
    {
      v52 = "last";
    }

    v55 = 136315651;
    v56 = v52;
    v57 = 2048;
    *v58 = v35;
    *&v58[8] = 2081;
    *&v58[10] = a3;
    v53 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore getRecordIdForTable:ascending:]", "CoreLocation: %s\n", v53);
    if (v53 != buf)
    {
      free(v53);
    }
  }

LABEL_42:
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (void)markCursorDone
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tables(self->fToken, a2, v2);
  Object = objc_msgSend_firstObject(v4, v5, v6);
  objc_msgSend_addObject_(v4, v8, Object);
  objc_msgSend_removeObjectAtIndex_(v4, v9, 0);
  v12 = objc_msgSend_tableNameFromToken(self, v10, v11);
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v13 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380675;
    v18 = v12;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Bumped token, next table:%{private}s", buf, 0xCu);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore markCursorDone]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cacheAllRecordIds
{
  v49 = *MEMORY[0x1E69E9840];
  objc_msgSend_startTime(self->fToken, a2, v2);
  v5 = v4;
  objc_msgSend_endTime(self->fToken, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_tables(self->fToken, v10, v11);
  if (objc_msgSend_count(v12, v13, v14))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_tables(self->fToken, v15, v16);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v17);
      v23 = objc_msgSend_datatype(v20, v21, v22);
      v25 = objc_msgSend_tableNameForCurrentType_(self, v24, v23);
      objc_msgSend_setTableName_(v20, v26, v25);
      v29 = objc_msgSend_tableName(v20, v27, v28);
      v32 = objc_msgSend_UTF8String(v29, v30, v31);
      LastRecordIdForTable = objc_msgSend_getLastRecordIdForTable_(self, v33, v32);
      objc_msgSend_setCachedLastRecordId_(v20, v35, LastRecordIdForTable);
      ++v17;
      v38 = objc_msgSend_tables(self->fToken, v36, v37);
    }

    while (objc_msgSend_count(v38, v39, v40) > v17);
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v41 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v46 = v5;
    v47 = 2048;
    v48 = v9;
    _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_INFO, "[HistoricalFetch] Cached all record ids from %f to %f", buf, 0x16u);
  }

  v42 = sub_19B420058();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v43 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore cacheAllRecordIds]", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (const)tableNameFromToken
{
  Type = objc_msgSend_fetchType(self->fToken, a2, v2);
  v7 = objc_msgSend_tables(self->fToken, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  v13 = objc_msgSend_datatype(v9, v10, v11);
  if (Type)
  {
    v14 = objc_msgSend_tableNameForMobilityType_(self, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_tableNameForCardioType_(self, v12, v13);
  }

  return objc_msgSend_UTF8String(v14, v15, v16);
}

- (void)resetToken
{
  fToken = self->fToken;
  if (fToken)
  {
  }

  self->fToken = 0;
}

- (void)closeDBConnection
{
  v12 = *MEMORY[0x1E69E9840];
  fDb = self->fDb;
  if (fDb)
  {
    v4 = sqlite3_close_v2(fDb);
    if (v4)
    {
      v5 = v4;
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v6 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Error closing DB connection, return code: %d", buf, 8u);
      }

      v7 = sub_19B420058();
      if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v8 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore closeDBConnection]", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }
  }

  self->fDb = 0;
  v9 = *MEMORY[0x1E69E9840];
}

- (id)tableNames
{
  result = objc_msgSend_fetchType(self->fToken, a2, v2);
  if (result == 1)
  {

    return objc_msgSend_mobilityTableNames(self, v5, v6);
  }

  else if (!result)
  {

    return objc_msgSend_cardioTableNames(self, v5, v6);
  }

  return result;
}

- (id)tableNameForMobilityType:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_msgSend_mobilityTableNames(self, a2, a3);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, v3);
}

- (id)tableNameForCardioType:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_msgSend_cardioTableNames(self, a2, a3);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, v3);
}

- (id)tableNameForCurrentType:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_msgSend_tableNames(self, a2, a3);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, v3);
}

- (BOOL)_setConfiguration:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v28 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "Failed to get reply dictionary", buf, 2u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) != 0 && (*(v29 + 164) & 0x80000000) != 0 && (*(v29 + 168) & 0x80000000) != 0 && !*(v29 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_74;
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(a3, v5, @"CMColdStorageDatabasePath");
  v8 = objc_msgSend_objectForKeyedSubscript_(a3, v7, @"CMColdStorageMobilityTableNames");
  v10 = objc_msgSend_objectForKeyedSubscript_(a3, v9, @"CMColdStorageCardioTableNames");
  if (!v6 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v30 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *v46 = a3;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "Malformed datastore configuration: %@. Ignoring and trying again.", buf, 0xCu);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 == -1)
    {
      goto LABEL_37;
    }

LABEL_74:
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    goto LABEL_37;
  }

  if (objc_msgSend_count(v11, v12, v13) < 8 || objc_msgSend_count(v8, v14, v15) <= 4)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v18 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240960;
      *v46 = objc_msgSend_count(v11, v19, v20);
      *&v46[4] = 1026;
      *&v46[6] = 8;
      v47 = 1026;
      v48 = objc_msgSend_count(v8, v21, v22);
      v49 = 1026;
      v50 = 5;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Invalid datastore configuration: Less than the expected number of tables. Cardio:%{public}d/%{public}d, Mobility=%{public}d/%{public}d", buf, 0x1Au);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    objc_msgSend_count(v11, v24, v25);
    objc_msgSend_count(v8, v26, v27);
LABEL_37:
    v32 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore _setConfiguration:]", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }

LABEL_39:
    result = 0;
    goto LABEL_40;
  }

  if (objc_msgSend_count(v11, v16, v17) > 8 || objc_msgSend_count(v8, v35, v36) >= 6)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v37 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "#Warning: More tables available in configuration than are being collected.", buf, 2u);
    }

    v38 = sub_19B420058();
    if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore _setConfiguration:]", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

  self->fConfiguration = a3;
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v40 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    fConfiguration = self->fConfiguration;
    *buf = 138412290;
    *v46 = fConfiguration;
    _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEFAULT, "Received datastore configuration: %@", buf, 0xCu);
  }

  v42 = sub_19B420058();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v44 = self->fConfiguration;
    v43 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore _setConfiguration:]", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  result = 1;
LABEL_40:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_cacheTableNamesForToken:(id)a3
{
  v5 = objc_msgSend_tables(a3, a2, a3);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_tables(a3, v8, v9);
      v13 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v10);
      Type = objc_msgSend_fetchType(a3, v14, v15);
      if (Type == 1)
      {
        break;
      }

      if (!Type)
      {
        v19 = objc_msgSend_datatype(v13, v17, v18);
        v21 = objc_msgSend_tableNameForCardioType_(self, v20, v19);
LABEL_7:
        objc_msgSend_setTableName_(v13, v22, v21);
      }

      ++v10;
      v25 = objc_msgSend_tables(a3, v17, v18);
      if (objc_msgSend_count(v25, v26, v27) <= v10)
      {
        return;
      }
    }

    v23 = objc_msgSend_datatype(v13, v17, v18);
    v21 = objc_msgSend_tableNameForMobilityType_(self, v24, v23);
    goto LABEL_7;
  }
}

@end