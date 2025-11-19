@interface CLSubmersionStateMachine
- (CLSubmersionStateMachine)initWithType:(int64_t)a3;
- (int64_t)stateFromDepth:(id)a3 forceSubmersion:(BOOL)a4;
- (void)initializeThresholds;
@end

@implementation CLSubmersionStateMachine

- (CLSubmersionStateMachine)initWithType:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = CLSubmersionStateMachine;
  v4 = [(CLSubmersionStateMachine *)&v9 init];
  v7 = v4;
  if (v4)
  {
    v4->_type = a3;
    objc_msgSend_initializeThresholds(v4, v5, v6);
  }

  return v7;
}

- (void)initializeThresholds
{
  v21[204] = *MEMORY[0x1E69E9840];
  v3 = 6.0;
  if (self->_type != 1)
  {
    goto LABEL_16;
  }

  self->_maxDepth = 40.0;
  v4 = MGGetSInt32Answer();
  if (qword_1EAFE2850 != -1)
  {
    dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
  }

  v5 = qword_1EAFE2870;
  if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Max depth from gestalt, %d", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
    }

    LODWORD(v16) = 67109120;
    HIDWORD(v16) = v4;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLSubmersionStateMachine initializeThresholds]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (v4 >= 1)
  {
    v3 = v4;
LABEL_16:
    self->_maxDepth = v3;
  }

  if (qword_1EAFE2850 != -1)
  {
    dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
  }

  v8 = qword_1EAFE2870;
  if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEFAULT))
  {
    type = self->_type;
    maxDepth = self->_maxDepth;
    *buf = 67109376;
    v20 = type;
    LOWORD(v21[0]) = 2048;
    *(v21 + 2) = maxDepth;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "initializing submersion thresholds,type,%d,maxdepth,%f", buf, 0x12u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
    }

    v12 = self->_type;
    v13 = self->_maxDepth;
    LODWORD(v16) = 67109376;
    HIDWORD(v16) = v12;
    v17 = 2048;
    v18 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CLSubmersionStateMachine initializeThresholds]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  sub_19B61DA04(buf, "DeepDepthMeters", &qword_19B7BB830, 0);
  *&self->_deepThreshold = v21[0];
  v16 = self->_maxDepth * 0.875;
  sub_19B61DA04(buf, "NearDepthLimitMeters", &v16, 0);
  *&self->_nearDepthLimitThreshold = v21[0];
  sub_19B61DA04(buf, "PastMaxDepthMeters", &self->_maxDepth, 0);
  *&self->_pastMaxDepthThreshold = v21[0];
  v16 = self->_maxDepth * 1.1;
  sub_19B61DA04(buf, "SensorErrorDepthMeters", &v16, 0);
  *&self->_sensorErrorThreshold = v21[0];
  v15 = *MEMORY[0x1E69E9840];
}

- (int64_t)stateFromDepth:(id)a3 forceSubmersion:(BOOL)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_state(a3, a2, a3) > 199 || a4)
  {
    objc_msgSend_depth(a3, v7, v8);
    if (v27 <= self->_sensorErrorThreshold)
    {
      objc_msgSend_depth(a3, v25, v26);
      if (v30 <= self->_pastMaxDepthThreshold)
      {
        objc_msgSend_depth(a3, v28, v29);
        if (v33 <= self->_nearDepthLimitThreshold)
        {
          objc_msgSend_depth(a3, v31, v32);
          if (v34 <= self->_deepThreshold)
          {
            result = 200;
          }

          else
          {
            result = 300;
          }
        }

        else
        {
          result = 400;
        }
      }

      else
      {
        result = 500;
      }
    }

    else
    {
      result = 600;
    }
  }

  else
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
    }

    v9 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_msgSend_state(a3, v10, v11);
      objc_msgSend_depth(a3, v13, v14);
      *buf = 134218240;
      v37 = v12;
      v38 = 2048;
      v39 = v15;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, "not updating client state because not submerged,state,%ld,depth,%f", buf, 0x16u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E29760);
      }

      objc_msgSend_state(a3, v19, v20);
      objc_msgSend_depth(a3, v21, v22);
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLSubmersionStateMachine stateFromDepth:forceSubmersion:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    result = objc_msgSend_state(a3, v17, v18);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

@end