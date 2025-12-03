@interface CLLocationManagerRoutine
- (CLInertialDataManagerDelegate)inertialDelegate;
- (CLLocationManagerDelegate)delegate;
- (CLLocationManagerRoutine)init;
- (CLLocationManagerRoutine)initWithQueue:(id)queue;
- (void)dealloc;
- (void)fetchLocationAtDate:(id)date withHandler:(id)handler;
- (void)fetchLocationAtMachContinuousTime:(double)time withHandler:(id)handler;
- (void)fetchLocationsInLastSeconds:(unsigned int)seconds withHandler:(id)handler;
- (void)fetchRecentLocationsWithOptions:(id)options withHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setInertialDelegate:(id)delegate;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;
@end

@implementation CLLocationManagerRoutine

- (CLLocationManagerRoutine)init
{
  v3 = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"_CLLocationManagerRoutineProxy, %p", self), "UTF8String"], 0);
  v4 = [(CLLocationManagerRoutine *)self initWithQueue:v3];
  dispatch_release(v3);
  return v4;
}

- (CLLocationManagerRoutine)initWithQueue:(id)queue
{
  if (queue)
  {
    v6.receiver = self;
    v6.super_class = CLLocationManagerRoutine;
    v4 = [(CLLocationManagerRoutine *)&v6 init];
    if (v4)
    {
      v4->_locationManagerRoutineProxy = [[_CLLocationManagerRoutineProxy alloc] initWithQueue:queue locationManagerRoutine:v4];
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationManagerRoutine;
  [(CLLocationManagerRoutine *)&v3 dealloc];
}

- (void)startUpdatingLocation
{
  v4 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B893208;
  v5[3] = &unk_1E753CFB0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

- (void)stopUpdatingLocation
{
  v3 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B89331C;
  block[3] = &unk_1E753CC90;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)fetchLocationAtDate:(id)date withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B893578;
    block[3] = &unk_1E753CFD8;
    block[5] = date;
    block[6] = handler;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchLocationAtDate, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v13 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchLocationAtDate:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchLocationAtMachContinuousTime:(double)time withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B893918;
    block[3] = &unk_1E753D000;
    block[4] = self;
    block[5] = handler;
    *&block[6] = time;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchLocationAtMachContinuousTime, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v13 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchLocationAtMachContinuousTime:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchLocationsInLastSeconds:(unsigned int)seconds withHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B893CB8;
    block[3] = &unk_1E753D028;
    block[4] = self;
    block[5] = handler;
    secondsCopy = seconds;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchLocationsInLastSeconds, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v14 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchLocationsInLastSeconds:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchRecentLocationsWithOptions:(id)options withHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B894058;
    block[3] = &unk_1E753CFD8;
    block[5] = options;
    block[6] = handler;
    block[4] = self;
    dispatch_async(v7, block);
  }

  else
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v8 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#ADL #routine, fetchRecentLocationsWithOptions, NULL handler", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C0 != -1)
      {
        dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
      }

      v13 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerRoutine fetchRecentLocationsWithOptions:withHandler:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  v5 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B894268;
  v6[3] = &unk_1E753CF38;
  v6[4] = self;
  v6[5] = delegate;
  dispatch_async(v5, v6);
}

- (CLLocationManagerDelegate)delegate
{
  locationManagerRoutineProxy = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy];

  return [(_CLLocationManagerRoutineProxy *)locationManagerRoutineProxy delegate];
}

- (void)setInertialDelegate:(id)delegate
{
  v5 = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy][8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B894350;
  v6[3] = &unk_1E753CF38;
  v6[4] = self;
  v6[5] = delegate;
  dispatch_async(v5, v6);
}

- (CLInertialDataManagerDelegate)inertialDelegate
{
  locationManagerRoutineProxy = [(CLLocationManagerRoutine *)self locationManagerRoutineProxy];

  return [(_CLLocationManagerRoutineProxy *)locationManagerRoutineProxy inertialDelegate];
}

@end