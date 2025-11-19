@interface CLLocationSmoother
- (CLLocationManagerDelegateInternal)delegate;
- (_CLLocationSmootherProxy)locationManagerSmootherProxy;
- (void)configureWithWorkoutActivityType:(unint64_t)a3 shouldReconstructEntireRoute:(BOOL)a4 timeIntervalsThatNeedPopulating:(id)a5;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)smoothLocations:(id)a3;
- (void)smoothLocations:(id)a3 batchType:(unint64_t)a4 handler:(id)a5;
@end

@implementation CLLocationSmoother

- (void)configureWithWorkoutActivityType:(unint64_t)a3 shouldReconstructEntireRoute:(BOOL)a4 timeIntervalsThatNeedPopulating:(id)a5
{
  v5 = a5;
  v6 = self;
  v67 = *MEMORY[0x1E69E9840];
  self->fWorkoutActivityType = a3;
  self->fShouldReconstructEntireRoute = a4;
  if (a5 && [a5 count])
  {
    v51 = v6;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v53;
      do
      {
        v11 = 0;
        do
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v52 + 1) + 8 * v11);
          if (qword_1EAFE4798 != -1)
          {
            dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
          }

          v13 = qword_1EAFE47A0;
          if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
          {
            [objc_msgSend(v12 "startDate")];
            v15 = v14;
            [objc_msgSend(v12 "endDate")];
            v17 = v16;
            [objc_msgSend(v12 "endDate")];
            v19 = v18;
            [objc_msgSend(v12 "startDate")];
            *buf = 134349824;
            *v62 = v9;
            *&v62[8] = 2050;
            *v63 = v15;
            *&v63[8] = 2050;
            *&v63[10] = v17;
            v64 = 2050;
            v65 = v19 - v20;
            _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "CLRS,timeIntervalsThatNeedPopulating,index,%{public}zu,start,%{public}.lf,stop,%{public}.1lf,diff,%{public}.1lf", buf, 0x2Au);
          }

          v21 = sub_19B87DD40();
          if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4798 != -1)
            {
              dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
            }

            [objc_msgSend(v12 "startDate")];
            v23 = v22;
            [objc_msgSend(v12 "endDate")];
            v25 = v24;
            [objc_msgSend(v12 "endDate")];
            v27 = v26;
            [objc_msgSend(v12 "startDate")];
            v56 = 134349824;
            *v57 = v9;
            *&v57[8] = 2050;
            *v58 = v23;
            *&v58[8] = 2050;
            *&v58[10] = v25;
            v59 = 2050;
            v60 = v27 - v28;
            v29 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v29);
            if (v29 != buf)
            {
              free(v29);
            }
          }

          ++v9;
          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v8);
    }

    v30 = [CLLocationManager authorizationStatusForBundlePath:@"/System/Library/LocationBundles/AppleWatchWorkout.bundle"];
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
    }

    v31 = v30 - 3;
    v32 = qword_1EAFE47A0;
    v6 = v51;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *v62 = v31 < 2;
      *&v62[4] = 1026;
      *&v62[6] = v30;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEFAULT, "CLRS,workoutAppIsAuthorizedForLocations,%{public}d,workoutAppAuthorizationStatus,%{public}d", buf, 0xEu);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
      }

      v56 = 67240448;
      *v57 = v31 < 2;
      *&v57[4] = 1026;
      *&v57[6] = v30;
      v34 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    if (v31 >= 2)
    {
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
      }

      v35 = qword_1EAFE47A0;
      if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *v62 = v30;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLRS,workout app is not authorized for locations,clearing time intervals that need populated,status,%{public}d", buf, 8u);
      }

      v36 = sub_19B87DD40();
      if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
        }

        v56 = 67240192;
        *v57 = v30;
        v37 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      v5 = 0;
    }
  }

  v6->fTimeIntervalsThatNeedPopulating = v5;
  if (qword_1EAFE4798 != -1)
  {
    dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
  }

  v38 = qword_1EAFE47A0;
  if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
  {
    fShouldReconstructEntireRoute = v6->fShouldReconstructEntireRoute;
    fTimeIntervalsThatNeedPopulating = v6->fTimeIntervalsThatNeedPopulating;
    fWorkoutActivityType = v6->fWorkoutActivityType;
    if (fTimeIntervalsThatNeedPopulating)
    {
      fTimeIntervalsThatNeedPopulating = [(NSArray *)fTimeIntervalsThatNeedPopulating count];
    }

    *buf = 134349568;
    *v62 = fWorkoutActivityType;
    *&v62[8] = 1026;
    *v63 = fShouldReconstructEntireRoute;
    *&v63[4] = 2050;
    *&v63[6] = fTimeIntervalsThatNeedPopulating;
    _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEFAULT, "CLRS,configureWithWorkoutActivityType,HKWorkoutActivityType,%{public}lu,shouldReconstructEntireRoute,%{public}d,timeIntervalsThatNeedPopulating,%{public}lu", buf, 0x1Cu);
  }

  v42 = sub_19B87DD40();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6B880);
    }

    v43 = v6->fShouldReconstructEntireRoute;
    v44 = v6->fTimeIntervalsThatNeedPopulating;
    v45 = v6->fWorkoutActivityType;
    if (v44)
    {
      v44 = [(NSArray *)v44 count];
    }

    v56 = 134349568;
    *v57 = v45;
    *&v57[8] = 1026;
    *v58 = v43;
    *&v58[4] = 2050;
    *&v58[6] = v44;
    v46 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationSmoother configureWithWorkoutActivityType:shouldReconstructEntireRoute:timeIntervalsThatNeedPopulating:]", "CoreLocation: %s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  v47 = [(NSXPCConnection *)[(_CLLocationSmootherProxy *)[(CLLocationSmoother *)v6 locationManagerSmootherProxy] connection] remoteObjectProxy];
  v48 = v6->fWorkoutActivityType;
  if (v48 > 59)
  {
    if (v48 > 69)
    {
      if ((v48 - 70) < 2)
      {
        v49 = 90603;
        goto LABEL_87;
      }
    }

    else
    {
      switch(v48)
      {
        case '<':
          v49 = 19090;
          goto LABEL_87;
        case '=':
          v49 = 19150;
          goto LABEL_87;
        case 'C':
          v49 = 519150;
          goto LABEL_87;
      }
    }

LABEL_86:
    v49 = 62;
    goto LABEL_87;
  }

  v49 = 4;
  if (v48 > 36)
  {
    switch(v48)
    {
      case '%':
        v49 = 8;
        break;
      case '.':
        v49 = 18240;
        break;
      case '4':
        break;
      default:
        goto LABEL_86;
    }
  }

  else
  {
    switch(v48)
    {
      case 13:
        v49 = 6;
        break;
      case 21:
        v49 = 15255;
        break;
      case 24:
        break;
      default:
        goto LABEL_86;
    }
  }

LABEL_87:
  [v47 configureWithWorkoutActivity:v49 shouldReconstructEntireRoute:v6->fShouldReconstructEntireRoute timeIntervalsThatNeedPopulating:v6->fTimeIntervalsThatNeedPopulating];
  v50 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  self->fWorkoutActivityType = 3000;
  self->fShouldReconstructEntireRoute = 0;

  self->fTimeIntervalsThatNeedPopulating = 0;
  v3.receiver = self;
  v3.super_class = CLLocationSmoother;
  [(CLLocationSmoother *)&v3 dealloc];
}

- (_CLLocationSmootherProxy)locationManagerSmootherProxy
{
  result = self->_locationManagerSmootherProxy;
  if (!result)
  {
    result = [[_CLLocationSmootherProxy alloc] initWithCLLocationSmoother:self];
    self->_locationManagerSmootherProxy = result;
  }

  return result;
}

- (void)smoothLocations:(id)a3
{
  v5 = [(CLLocationSmoother *)self locationManagerSmootherProxy][8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B8DABE4;
  v6[3] = &unk_1E753CF38;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)smoothLocations:(id)a3 batchType:(unint64_t)a4 handler:(id)a5
{
  if (sub_19B93C23C())
  {
    v7 = [(NSXPCConnection *)[(_CLLocationSmootherProxy *)[(CLLocationSmoother *)self locationManagerSmootherProxy] connection] remoteObjectProxy];

    MEMORY[0x1EEE66B58](v7, sel_smoothLocations_batchType_handler_);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B8DAD48;
    block[3] = &unk_1E753CCE0;
    block[4] = a5;
    dispatch_async(global_queue, block);
  }
}

- (void)setDelegate:(id)a3
{
  v5 = [(CLLocationSmoother *)self locationManagerSmootherProxy][8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B8DAE9C;
  v6[3] = &unk_1E753CF38;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (CLLocationManagerDelegateInternal)delegate
{
  v2 = [(CLLocationSmoother *)self locationManagerSmootherProxy];

  return [(_CLLocationSmootherProxy *)v2 delegate];
}

@end