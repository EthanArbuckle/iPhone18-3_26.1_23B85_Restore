@interface CLTripSegmentProcessorManager
- (CLTripSegmentProcessorManager)init;
- (id).cxx_construct;
- (id)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler;
- (id)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)errorObject:(int64_t)object description:(id)description;
- (id)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler;
- (id)getWaypointsSubsetFromSnapPointOnRoute:(id)route modeOfTransport:(int64_t)transport snapLocation:(id)location snapRoad:(id)road waypoints:(id)waypoints routeID:(id)d withOptions:(id)options outputHandler:(id)self0;
- (id)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)matchLocations:(id)locations toRoute:(id)route withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler;
- (id)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler;
- (id)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler;
- (void)cancelMapHelperRoadDataRequest;
- (void)clearMapHelperMemoryAndExitCleanly;
- (void)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0;
- (void)dealloc;
- (void)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)killProcessingWithID:(id)d;
- (void)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0;
- (void)outputRouteLearningDebuggingDataInCLTSPFile:(id)file;
- (void)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler completionHandler:(id)completionHandler;
- (void)simulateSparseTrajectoryAndSubmitCoreAnalytics:(id)analytics;
@end

@implementation CLTripSegmentProcessorManager

- (CLTripSegmentProcessorManager)init
{
  v4.receiver = self;
  v4.super_class = CLTripSegmentProcessorManager;
  v2 = [(CLTripSegmentProcessorManager *)&v4 init];
  if (v2)
  {
    v2->fQueue = dispatch_queue_create("com.apple.CoreLocation.TripSegmentProcessor", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->fQueue);
  v3.receiver = self;
  v3.super_class = CLTripSegmentProcessorManager;
  [(CLTripSegmentProcessorManager *)&v3 dealloc];
}

- (id)errorObject:(int64_t)object description:(id)description
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", description, *MEMORY[0x1E696A578]];
  result = [v6 initWithDomain:@"com.apple.locationd.TripSegmentProcessor" code:object userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  if (data)
  {
    if ([data modeOfTransport])
    {
      if ([objc_msgSend(data "tripLocations")] > 1)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v19 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240450;
          *&buf[4] = [objc_msgSend(data "tripLocations")];
          v29 = 2114;
          tripSegmentID = [data tripSegmentID];
          _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLTSP,processTripSegmentData called with locations count,%{public}d,tripSegmentID,%{public}@", buf, 0x12u);
        }

        v20 = sub_19B87DD40();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
          }

          [objc_msgSend(data "tripLocations")];
          [data tripSegmentID];
          v21 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        if (sub_19BA51D50(&self->cltsp, data, options, handler))
        {
          result = 0;
        }

        else
        {
          if (qword_1EAFE5B00 != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          v22 = qword_1EAFE5B10;
          sub_19B8759E8(buf, [objc_msgSend(objc_msgSend(data "tripSegmentID")]);
          v23 = sub_19B95D0F0(v22, buf);
          if (v31 < 0)
          {
            operator delete(*buf);
          }

          sub_19BA566AC(&self->cltsp, data, v23);
          if (qword_1EAFE5B00 != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          sub_19B9545AC(qword_1EAFE5B10, [data tripSegmentID]);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
          }

          v24 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            *&buf[4] = v23;
            _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLTSP,trip segment processing failed,%{public}d", buf, 8u);
          }

          v25 = sub_19B87DD40();
          if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
            }

            v26 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v26);
            if (v26 != buf)
            {
              free(v26);
            }
          }

          result = [(CLTripSegmentProcessorManager *)self errorObject:v23 description:@"CLTSP, trip segment processing failed"];
        }
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v9 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = [objc_msgSend(data "tripLocations")];
          _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,location count less than two,count,%{public}d", buf, 8u);
        }

        v10 = sub_19B87DD40();
        if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
          }

          [objc_msgSend(data "tripLocations")];
          v11 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v11);
          if (v11 != buf)
          {
            free(v11);
          }
        }

        result = [(CLTripSegmentProcessorManager *)self errorObject:1 description:@"CLTSP, location object has less than two entries"];
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v16 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLTSP,unknown mode of transport", buf, 2u);
      }

      v17 = sub_19B87DD40();
      if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v18 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      result = [(CLTripSegmentProcessorManager *)self errorObject:1 description:@"CLTSP, invalid mode of transport"];
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v13 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "CLTSP,trip segment data is nil", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    result = [(CLTripSegmentProcessorManager *)self errorObject:1 description:@"CLTSP, trip segment data is nil"];
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)processTripSegmentData:(id)data withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3052000000;
  v13[3] = sub_19B954784;
  v13[4] = sub_19B954794;
  v13[5] = data;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = sub_19B954784;
  v12[4] = sub_19B954794;
  v12[5] = options;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9547A0;
  block[3] = &unk_1E753DD18;
  block[7] = v13;
  block[8] = v12;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
}

- (void)outputRouteLearningDebuggingDataInCLTSPFile:(id)file
{
  v11 = *MEMORY[0x1E69E9840];
  if (file && [file count])
  {
    v5 = *MEMORY[0x1E69E9840];

    sub_19BA60970(&self->cltsp, 1, 8, file);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLTSP,tspManager,outputTripMatchingDebuggingDataInCLTSPFile - invalid data", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager outputRouteLearningDebuggingDataInCLTSPFile:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (id)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v35[203] + 4) = *MEMORY[0x1E69E9840];
  if (!data || ![data count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v20 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v35[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v23 = @"CLTSP,route road data is nil or empty";
    goto LABEL_42;
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v24 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v35[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v23 = @"CLTSP,input modeOfTransport not supported";
LABEL_42:
    selfCopy2 = self;
    v28 = 1;
LABEL_43:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v28 description:v23];
    goto LABEL_44;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v16 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v35[0]) = [data count];
    WORD2(v35[0]) = 2082;
    *(v35 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteUsingRoadData called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v17 = sub_19B87DD40();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [data count];
    [objc_msgSend(d "UUIDString")];
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if ((sub_19BA61BD0(&self->cltsp, d, data, road, endRoad, 1, options) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v30 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v35[0] = v31;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteUsingRoadData failed,tripID,%{public}s", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v23 = @"CLTSP,constructRouteUsingRoadData";
    selfCopy2 = self;
    v28 = 7;
    goto LABEL_43;
  }

  result = 0;
LABEL_44:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)constructRouteWithID:(id)d withOptions:(id)options usingRoadData:(id)data startRoad:(id)road endRoad:(id)endRoad modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = sub_19B954784;
  v22[4] = sub_19B954794;
  v22[5] = d;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3052000000;
  v21[3] = sub_19B954784;
  v21[4] = sub_19B954794;
  v21[5] = options;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = data;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = road;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = endRoad;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9555FC;
  block[3] = &unk_1E753DD40;
  block[8] = v21;
  block[9] = v20;
  block[10] = v19;
  block[11] = v18;
  block[12] = transport;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  block[7] = v22;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
}

- (id)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler
{
  *(&v33[203] + 4) = *MEMORY[0x1E69E9840];
  if (!data || ![data count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v21 = @"CLTSP,route road data is nil or empty";
    goto LABEL_42;
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    v21 = @"CLTSP,input modeOfTransport not supported";
LABEL_42:
    selfCopy2 = self;
    v26 = 1;
LABEL_43:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v26 description:v21];
    goto LABEL_44;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v14 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v33[0]) = [data count];
    WORD2(v33[0]) = 2082;
    *(v33 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "CLTSP,simulateLocationOnRouteID called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v15 = sub_19B87DD40();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [data count];
    [objc_msgSend(d "UUIDString")];
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if ((sub_19BA5F0E0(&self->cltsp, d, data, 1, options, speed) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v28 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v29 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v33[0] = v29;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLTSP,simulateLocationOnRouteID failed,tripID,%{public}s", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:]", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v21 = @"CLTSP,simulateLocationOnRouteID";
    selfCopy2 = self;
    v26 = 8;
    goto LABEL_43;
  }

  result = 0;
LABEL_44:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)simulateLocationOnRouteID:(id)d withOptions:(id)options usingRoadData:(id)data modeOfTransport:(int64_t)transport constantSpeed:(double)speed outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = d;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = options;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = data;
  fQueue = self->fQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B95621C;
  v17[3] = &unk_1E753DD68;
  v17[8] = v19;
  v17[9] = v18;
  v17[10] = transport;
  *&v17[11] = speed;
  v17[4] = self;
  v17[5] = handler;
  v17[6] = completionHandler;
  v17[7] = v20;
  dispatch_async(fQueue, v17);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

- (id)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v38[203] + 4) = *MEMORY[0x1E69E9840];
  if (!route || ![route count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v20 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v38[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v23 = @"CLTSP,route road data is nil or empty";
    goto LABEL_56;
  }

  if (!locations || ![locations count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v24 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v38[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLTSP,location data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v23 = @"CLTSP,location data is nil or empty";
    goto LABEL_56;
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v38[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    v23 = @"CLTSP,input modeOfTransport not supported";
LABEL_56:
    selfCopy2 = self;
    v31 = 1;
LABEL_57:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v31 description:v23];
    goto LABEL_58;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v16 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v38[0]) = [route count];
    WORD2(v38[0]) = 2082;
    *(v38 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v17 = sub_19B87DD40();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [route count];
    [objc_msgSend(d "UUIDString")];
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if ((sub_19BA66898(&self->cltsp, d, route, waypoints, 1, locations, options) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v33 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v34 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v38[0] = v34;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", buf, 0xCu);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v36 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    v23 = @"CLTSP,matchLocationsToRoute failed to snap";
    selfCopy2 = self;
    v31 = 2;
    goto LABEL_57;
  }

  result = 0;
LABEL_58:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)matchLocations:(id)locations toRoute:(id)route withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v36[203] + 4) = *MEMORY[0x1E69E9840];
  if (!route || ![route count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v36[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v21 = @"CLTSP,route road data is nil or empty";
    goto LABEL_56;
  }

  if (!locations || ![locations count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v36[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLTSP,location data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    v21 = @"CLTSP,location data is nil or empty";
    goto LABEL_56;
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v25 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v36[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v27 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    v21 = @"CLTSP,input modeOfTransport not supported";
LABEL_56:
    selfCopy2 = self;
    v29 = 1;
LABEL_57:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v29 description:v21];
    goto LABEL_58;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v14 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v36[0]) = [route count];
    WORD2(v36[0]) = 2082;
    *(v36 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v15 = sub_19B87DD40();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [route count];
    [objc_msgSend(d "UUIDString")];
    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if ((sub_19BA686C4(&self->cltsp, d, route, 1, locations, options) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v31 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v36[0] = v32;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", buf, 0xCu);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v34 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager matchLocations:toRoute:withOptions:andRouteID:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    v21 = @"CLTSP,matchLocationsToRoute failed to snap";
    selfCopy2 = self;
    v29 = 2;
    goto LABEL_57;
  }

  result = 0;
LABEL_58:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getWaypointsSubsetFromSnapPointOnRoute:(id)route modeOfTransport:(int64_t)transport snapLocation:(id)location snapRoad:(id)road waypoints:(id)waypoints routeID:(id)d withOptions:(id)options outputHandler:(id)self0
{
  *(&v40[203] + 4) = *MEMORY[0x1E69E9840];
  if (!route || ![route count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v40[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLTSP,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    v25 = @"CLTSP,route road data is nil or empty";
    goto LABEL_57;
  }

  if (!location || !road)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v26 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v40[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLTSP,location data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v28 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v25 = @"CLTSP,snap data is nil";
    goto LABEL_57;
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v29 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v40[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v25 = @"CLTSP,input modeOfTransport not supported";
LABEL_57:
    selfCopy2 = self;
    v33 = 1;
LABEL_58:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v33 description:v25];
    goto LABEL_59;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v17 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v40[0]) = [route count];
    WORD2(v40[0]) = 2082;
    *(v40 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocationsToRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  handlerCopy2 = handler;
  v19 = sub_19B87DD40();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [route count];
    [objc_msgSend(d "UUIDString")];
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }

    handlerCopy2 = handler;
  }

  if ((sub_19BA6984C(&self->cltsp, d, 1, location, road, route, waypoints, options, handlerCopy2) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v35 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v36 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v40[0] = v36;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLTSP,matchLocationsToRoute failed,routeID,%{public}s", buf, 0xCu);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v38 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getWaypointsSubsetFromSnapPointOnRoute:modeOfTransport:snapLocation:snapRoad:waypoints:routeID:withOptions:outputHandler:]", "CoreLocation: %s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v25 = @"CLTSP,getWaypointsSubsetFromSnapPointOnRoute failed to snap";
    selfCopy2 = self;
    v33 = 2;
    goto LABEL_58;
  }

  result = 0;
LABEL_59:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)matchLocations:(id)locations toRoute:(id)route waypoints:(id)waypoints withOptions:(id)options andRouteID:(id)d modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)self0
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = sub_19B954784;
  v22[4] = sub_19B954794;
  v22[5] = d;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3052000000;
  v21[3] = sub_19B954784;
  v21[4] = sub_19B954794;
  v21[5] = locations;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = options;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = route;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = waypoints;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9581CC;
  block[3] = &unk_1E753DD40;
  block[8] = v19;
  block[9] = v18;
  block[10] = v20;
  block[11] = v22;
  block[12] = transport;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  block[7] = v21;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
}

- (id)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v42[203] + 4) = *MEMORY[0x1E69E9840];
  if ((*&distance <= -1 || ((*&distance & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&distance - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v42 = distance;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,distance invalid,%{public}.2lf", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v17 = @"CLTSP,propagateLocation,distance invalid";
    goto LABEL_33;
  }

  if (!(location | route))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v42 = distance;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,both locations and route are nil, one must be provided,%{public}.2lf", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = @"CLTSP,propagateLocation,both locations and route are nil, one must be provided";
LABEL_33:
    selfCopy2 = self;
    v22 = 1;
    goto LABEL_34;
  }

  if (![location count] && !objc_msgSend(route, "count"))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v38 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v42 = distance;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,both locations and route are empty, one must be provided,%{public}.2lf", buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    v17 = @"CLTSP,propagateLocation,both locations and route are empty, one must be provided";
    goto LABEL_33;
  }

  v27 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v31 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v42[0] = [objc_msgSend(v27 "UUIDString")];
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation,input modeOfTransport not supported,tripID,%{public}s", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(v27 "UUIDString")];
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v17 = @"CLTSP,input modeOfTransport not supported";
    goto LABEL_33;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v28 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v42[0]) = [location count];
    WORD2(v42[0]) = 2082;
    *(v42 + 6) = [objc_msgSend(v27 "UUIDString")];
    _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "CLTSP,propagateLocation called with locations,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v29 = sub_19B87DD40();
  if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [location count];
    [objc_msgSend(v27 "UUIDString")];
    v30 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  if (sub_19BA6AA10(&self->cltsp, v27, 1, location, route, options, distance))
  {
    result = 0;
    goto LABEL_35;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v34 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_msgSend(v27 "UUIDString")];
    *buf = 136446210;
    v42[0] = v35;
    _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLTSP,propagateLocation failed,routeID,%{public}s", buf, 0xCu);
  }

  v36 = sub_19B87DD40();
  if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [objc_msgSend(v27 "UUIDString")];
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  v17 = @"CLTSP,propagateLocation failed to snap";
  selfCopy2 = self;
  v22 = 2;
LABEL_34:
  result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v22 description:v17];
LABEL_35:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)propagateLocation:(id)location route:(id)route distance:(double)distance withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = sub_19B954784;
  v20[4] = sub_19B954794;
  v20[5] = location;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_19B954784;
  v19[4] = sub_19B954794;
  v19[5] = route;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = options;
  fQueue = self->fQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B959110;
  v17[3] = &unk_1E753DD68;
  *&v17[10] = distance;
  v17[8] = v19;
  v17[9] = v18;
  v17[11] = transport;
  v17[4] = self;
  v17[5] = handler;
  v17[6] = completionHandler;
  v17[7] = v20;
  dispatch_async(fQueue, v17);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

- (id)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler
{
  *(&v25[203] + 4) = *MEMORY[0x1E69E9840];
  if (route && [route count])
  {
    if (transport == 1)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v12 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240450;
        LODWORD(v25[0]) = [route count];
        WORD2(v25[0]) = 2082;
        *(v25 + 6) = [objc_msgSend(d "UUIDString")];
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "CLTSP,generateWaypointsOnTheRoute called with roads,%{public}d,tripID,%{public}s", buf, 0x12u);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        [route count];
        [objc_msgSend(d "UUIDString")];
        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      sub_19BA6C9AC(&self->cltsp, d, route, 1, options);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v19 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLTSP,generateWaypointsOnTheRoute,unsupported mode of transport,tripID,%{public}s", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v18 = @"CLTSP,input modeOfTransport not supported";
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v15 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLTSP,generateWaypointsOnTheRoute,route road data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v17 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = @"CLTSP,route road data is nil or empty";
  }

  result = [(CLTripSegmentProcessorManager *)self errorObject:1 description:v18];
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)generateWaypointsOnTheRoute:(id)route forRouteID:(id)d withOptions:(id)options modeOfTransport:(int64_t)transport outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = d;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = sub_19B954784;
  v17[4] = sub_19B954794;
  v17[5] = route;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_19B954784;
  v16[4] = sub_19B954794;
  v16[5] = options;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B959CC0;
  block[3] = &unk_1E753DD90;
  block[8] = v18;
  block[9] = v16;
  block[10] = transport;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  block[7] = v17;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

- (id)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler
{
  *(&v26[203] + 4) = *MEMORY[0x1E69E9840];
  if (!waypoints || ![waypoints count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v14 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteFromWaypoints,waypoints data is nil or empty,tripID,%{public}s", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = @"CLTSP,waypoints data is nil or empty";
    selfCopy2 = self;
    v19 = 1;
    goto LABEL_41;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v10 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v26[0]) = [waypoints count];
    WORD2(v26[0]) = 2082;
    *(v26 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteFromWaypoints called with waypoints,%{public}d,tripID,%{public}s", buf, 0x12u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [waypoints count];
    [objc_msgSend(d "UUIDString")];
    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if ((sub_19BA6E0B0(&self->cltsp, d, waypoints, options) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v20 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v26[0] = v21;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLTSP,constructRouteFromWaypoints failed,routeID,%{public}s", buf, 0xCu);
    }

    v22 = sub_19B87DD40();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v17 = @"CLTSP,constructRouteFromWaypoints failed";
    selfCopy2 = self;
    v19 = 2;
LABEL_41:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v19 description:v17];
    goto LABEL_42;
  }

  result = 0;
LABEL_42:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)constructRouteFromWaypoints:(id)waypoints forRouteID:(id)d withOptions:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_19B954784;
  v16[4] = sub_19B954794;
  v16[5] = d;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = sub_19B954784;
  v15[4] = sub_19B954794;
  v15[5] = waypoints;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3052000000;
  v14[3] = sub_19B954784;
  v14[4] = sub_19B954794;
  v14[5] = options;
  fQueue = self->fQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B95A6AC;
  v13[3] = &unk_1E753DDB8;
  v13[8] = v16;
  v13[9] = v14;
  v13[4] = self;
  v13[5] = handler;
  v13[6] = completionHandler;
  v13[7] = v15;
  dispatch_async(fQueue, v13);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
}

- (void)clearMapHelperMemoryAndExitCleanly
{
  v7 = *MEMORY[0x1E69E9840];
  [+[CLMapsXPCServiceManager sharedInstance](CLMapsXPCServiceManager clearMemoryAndExitHelperProcessCleanly];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v2 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,tspManager,clearMemoryAndExitHelperProcessCleanly", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager clearMapHelperMemoryAndExitCleanly]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancelMapHelperRoadDataRequest
{
  v7 = *MEMORY[0x1E69E9840];
  [+[CLMapsXPCServiceManager sharedInstance](CLMapsXPCServiceManager cancelRoadDataRequest];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v2 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,tspManager,cancelRoadDataRequest", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager cancelMapHelperRoadDataRequest]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler
{
  *(&v34[203] + 4) = *MEMORY[0x1E69E9840];
  if (!candidates)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v16 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates,locations are nil", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v19 = @"CLTSP,locations are nil";
    goto LABEL_54;
  }

  if (![candidates count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v20 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates,location count received is 0", buf, 2u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v19 = @"CLTSP,location count received is 0";
    goto LABEL_54;
  }

  if (transport != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v23 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34[0] = [objc_msgSend(d "UUIDString")];
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates,input modeOfTransport not supported,tripID,%{public}s", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    v19 = @"CLTSP,input modeOfTransport not supported";
LABEL_54:
    selfCopy2 = self;
    v27 = 1;
LABEL_55:
    result = [(CLTripSegmentProcessorManager *)selfCopy2 errorObject:v27 description:v19];
    goto LABEL_56;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v12 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    LODWORD(v34[0]) = [candidates count];
    WORD2(v34[0]) = 2082;
    *(v34 + 6) = [objc_msgSend(d "UUIDString")];
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "CLTSP,getMatchedLocationCandidates called with locations,%{public}d,dataID,%{public}s", buf, 0x12u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [candidates count];
    [objc_msgSend(d "UUIDString")];
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if ((sub_19BA6D394(&self->cltsp, d, 1, candidates, options) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v29 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_msgSend(d "UUIDString")];
      *buf = 136446210;
      v34[0] = v30;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,getMatchedLocationCandidates failed,dataID,%{public}s", buf, 0xCu);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      [objc_msgSend(d "UUIDString")];
      v32 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:]", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    v19 = @"CLTSP,getMatchedLocationCandidates failed to snap";
    selfCopy2 = self;
    v27 = 2;
    goto LABEL_55;
  }

  result = 0;
LABEL_56:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getMatchedLocationCandidates:(id)candidates dataID:(id)d modeOfTransport:(int64_t)transport options:(id)options outputHandler:(id)handler completionHandler:(id)completionHandler
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_19B954784;
  v18[4] = sub_19B954794;
  v18[5] = d;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = sub_19B954784;
  v17[4] = sub_19B954794;
  v17[5] = candidates;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_19B954784;
  v16[4] = sub_19B954794;
  v16[5] = options;
  fQueue = self->fQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B95B6B4;
  block[3] = &unk_1E753DD90;
  block[9] = v16;
  block[10] = transport;
  block[7] = v17;
  block[8] = v18;
  block[4] = self;
  block[5] = handler;
  block[6] = completionHandler;
  dispatch_async(fQueue, block);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

- (void)killProcessingWithID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = [d UUIDString];
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "CLTSP,killProcessingWithID,ID,%{public}@", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    [d UUIDString];
    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager killProcessingWithID:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  v7 = qword_1EAFE5B10;
  sub_19B8759E8(buf, [objc_msgSend(d "UUIDString")]);
  std::mutex::lock(v7);
  sub_19B95D910(v7, buf, 1);
  std::mutex::unlock(v7);
  if (v10 < 0)
  {
    operator delete(*buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)simulateSparseTrajectoryAndSubmitCoreAnalytics:(id)analytics
{
  v123 = *MEMORY[0x1E69E9840];
  v96 = 0;
  v97 = &v96;
  v98 = 0x3812000000;
  v99 = sub_19B95CCC0;
  v100 = nullsub_22;
  v101 = "";
  v102 = -1.0;
  v4 = mach_continuous_time();
  v102 = sub_19B994BF4(v4);
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = sub_19B95CCD0;
  v91[3] = &unk_1E753DDE0;
  v91[4] = analytics;
  v91[5] = &v92;
  v91[6] = &v96;
  tripLocations = [analytics tripLocations];
  if ([tripLocations count] < 2)
  {
LABEL_52:
    v16 = [tripLocations mutableCopy];
    goto LABEL_53;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v6 = 0;
  v7 = [tripLocations countByEnumeratingWithState:&v103 objects:v122 count:16];
  if (v7)
  {
    v8 = *v104;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v104 != v8)
        {
          objc_enumerationMutation(tripLocations);
        }

        v6 += [*(*(&v103 + 1) + 8 * i) isGPSLocationType];
      }

      v7 = [tripLocations countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v7);
  }

  [objc_msgSend(objc_msgSend(tripLocations "lastObject")];
  v11 = v10;
  if (v6 < 2 || (v12 = (v10 * 0.6), v6 <= v12))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v114 = *&v11;
      v115 = 1026;
      *v116 = v6;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_INFO, "CLTSP,hasSubstantialGPSData,0,duration,%{public}.1lf,numberOfGPSLocations,%{public}d", buf, 0x12u);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v107 = 134349312;
      v108 = v11;
      v109 = 1026;
      v110 = v6;
      LODWORD(v88) = 18;
      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::hasSubstantialGPSData(NSArray<CLTripSegmentLocation *> * _Nonnull, double)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    goto LABEL_52;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
  }

  v13 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349568;
    v114 = *&v11;
    v115 = 1026;
    *v116 = v6;
    *&v116[4] = 1026;
    *&v116[6] = v12;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_INFO, "CLTSP,hasSubstantialGPSData,1,duration,%{public}.1lf,numberOfGPSLocations,%{public}d,threshold,%{public}d", buf, 0x18u);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v107 = 134349568;
    v108 = v11;
    v109 = 1026;
    v110 = v6;
    v111 = 1026;
    v112 = v12;
    LODWORD(v88) = 24;
    v15 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::hasSubstantialGPSData(NSArray<CLTripSegmentLocation *> * _Nonnull, double)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:tripLocations];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v122, 0, 64);
  v18 = [tripLocations countByEnumeratingWithState:v122 objects:buf count:16];
  analyticsCopy = analytics;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = **&v122[1];
    v22 = -1.0;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (**&v122[1] != v21)
        {
          objc_enumerationMutation(tripLocations);
        }

        v24 = *(*(&v122[0] + 1) + 8 * j);
        if ([v24 isGPSLocationType])
        {
          [objc_msgSend(v24 "timestamp")];
          v26 = v25;
          if (vabdd_f64(v25, v22) < 3.0)
          {
            ++v19;
          }

          else
          {
            v19 = 1;
          }

          if (v19 >= 11)
          {
            [v17 addObject:v24];
            if (v20 <= 119)
            {
              ++v20;
            }

            else
            {
              v19 = 0;
              v20 = 0;
            }
          }

          v22 = v26;
        }
      }

      v18 = [tripLocations countByEnumeratingWithState:v122 objects:buf count:16];
    }

    while (v18);
  }

  [v16 removeObjectsInArray:v17];
  analytics = analyticsCopy;
LABEL_53:
  v30 = [v16 count];
  *(v93 + 6) = v30;
  v31 = [objc_msgSend(analytics "tripLocations")];
  if (v31 == [v16 count])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v32 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [objc_msgSend(objc_msgSend(analytics "tripSegmentID")];
      modeOfTransport = [analytics modeOfTransport];
      v35 = [objc_msgSend(analytics "tripLocations")];
      *buf = 136446722;
      v114 = v33;
      v115 = 1026;
      *v116 = modeOfTransport;
      *&v116[4] = 1026;
      *&v116[6] = v35;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,data not created,ID,%{public}s,modeOfTransport,%{public}d,locations,%{public}d", buf, 0x18u);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v37 = [objc_msgSend(objc_msgSend(analytics "tripSegmentID")];
      modeOfTransport2 = [analytics modeOfTransport];
      v39 = [objc_msgSend(analytics "tripLocations")];
      LODWORD(v122[0]) = 136446722;
      *(v122 + 4) = v37;
      WORD6(v122[0]) = 1026;
      *(v122 + 14) = modeOfTransport2;
      WORD1(v122[1]) = 1026;
      DWORD1(v122[1]) = v39;
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    if ([analytics isFinalPart])
    {
      v41 = sub_19BA3C324();
      sub_19BA3D1E8(v41);
    }
  }

  else
  {
    if (*(sub_19BA3C324() + 608) < 1)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      analyticsCopy3 = analytics;
    }

    else
    {
      analyticsCopy3 = analytics;
      v43 = MEMORY[0x1E696AEC0];
      v44 = sub_19BA3C324();
      v45 = (v44 + 40);
      if (*(v44 + 63) < 0)
      {
        v45 = *v45;
      }

      v46 = [v43 stringWithFormat:@"%s", v45, v88];
      uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v46];
    }

    v48 = -[CLTripSegmentInputData initWithTripSegmentID:isFinalPart:modeOfTransport:tripLocations:startTripLocation:stopTripLocation:inertialData:]([CLTripSegmentInputData alloc], "initWithTripSegmentID:isFinalPart:modeOfTransport:tripLocations:startTripLocation:stopTripLocation:inertialData:", uUID, [analyticsCopy3 isFinalPart], objc_msgSend(analyticsCopy3, "modeOfTransport"), v16, objc_msgSend(analyticsCopy3, "startTripLocation"), objc_msgSend(analyticsCopy3, "stopTripLocation"), objc_msgSend(analyticsCopy3, "inertialData"));
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v49 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [objc_msgSend(objc_msgSend(analyticsCopy3 "tripSegmentID")];
      uTF8String = [(NSString *)[(NSUUID *)[(CLTripSegmentInputData *)v48 tripSegmentID] UUIDString] UTF8String];
      modeOfTransport3 = [analyticsCopy3 modeOfTransport];
      v53 = [objc_msgSend(analyticsCopy3 "tripLocations")];
      v54 = [v16 count];
      *buf = 136447234;
      v114 = v50;
      v115 = 2082;
      *v116 = uTF8String;
      *&v116[8] = 1026;
      v117 = modeOfTransport3;
      v118 = 1026;
      v119 = v53;
      v120 = 1026;
      v121 = v54;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,data created,origID,%{public}s,newID,%{public}s,modeOfTransport,%{public}d,origLocations,%{public}d,sparseLocations,%{public}d", buf, 0x28u);
    }

    v55 = sub_19B87DD40();
    v56 = analyticsCopy3;
    if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v57 = analyticsCopy3;
      v58 = [objc_msgSend(objc_msgSend(analyticsCopy3 "tripSegmentID")];
      uTF8String2 = [(NSString *)[(NSUUID *)[(CLTripSegmentInputData *)v48 tripSegmentID] UUIDString] UTF8String];
      modeOfTransport4 = [v57 modeOfTransport];
      v61 = [objc_msgSend(v57 "tripLocations")];
      v62 = [v16 count];
      LODWORD(v122[0]) = 136447234;
      *(v122 + 4) = v58;
      WORD6(v122[0]) = 2082;
      *(v122 + 14) = uTF8String2;
      WORD3(v122[1]) = 1026;
      DWORD2(v122[1]) = modeOfTransport4;
      WORD6(v122[1]) = 1026;
      *(&v122[1] + 14) = v61;
      WORD1(v122[2]) = 1026;
      DWORD1(v122[2]) = v62;
      v63 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v63);
      v56 = v57;
      if (v63 != buf)
      {
        free(v63);
      }
    }

    v64 = objc_alloc_init(CLTripSegmentProcessorOptions);
    [(CLTripSegmentProcessorOptions *)v64 setSimulatedSparseProcessing:1];
    if ([(CLTripSegmentProcessorManager *)self processTripSegmentData:v48 withOptions:v64 outputHandler:v91])
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v65 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v66 = [objc_msgSend(objc_msgSend(v56 "tripSegmentID")];
        v67 = v97;
        v68 = 0.0;
        if (v97[6] >= 0.0)
        {
          v69 = mach_continuous_time();
          v68 = vabdd_f64(sub_19B994BF4(v69), v67[6]) * 1000.0;
        }

        *buf = 136446466;
        v114 = v66;
        v115 = 2050;
        *v116 = v68;
        _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,failedtripID,%{public}s,processingTime,%{public}.2lf", buf, 0x16u);
      }

      v70 = sub_19B87DD40();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
        }

        v71 = [objc_msgSend(objc_msgSend(v56 "tripSegmentID")];
        v72 = v97;
        v73 = 0.0;
        if (v97[6] >= 0.0)
        {
          v74 = mach_continuous_time();
          v73 = vabdd_f64(sub_19B994BF4(v74), v72[6]) * 1000.0;
        }

        LODWORD(v122[0]) = 136446466;
        *(v122 + 4) = v71;
        WORD6(v122[0]) = 2050;
        *(v122 + 14) = v73;
        v75 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v75);
        if (v75 != buf)
        {
          free(v75);
        }
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v76 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v77 = [objc_msgSend(objc_msgSend(v56 "tripSegmentID")];
      v78 = v97;
      v79 = 0.0;
      if (v97[6] >= 0.0)
      {
        v80 = mach_continuous_time();
        v79 = vabdd_f64(sub_19B994BF4(v80), v78[6]) * 1000.0;
      }

      *buf = 136446466;
      v114 = v77;
      v115 = 2050;
      *v116 = v79;
      _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,success,tripID,%{public}s,processingTime,%{public}.2lf", buf, 0x16u);
    }

    v81 = sub_19B87DD40();
    if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v82 = [objc_msgSend(objc_msgSend(v56 "tripSegmentID")];
      v83 = v97;
      v84 = 0.0;
      if (v97[6] >= 0.0)
      {
        v85 = mach_continuous_time();
        v84 = vabdd_f64(sub_19B994BF4(v85), v83[6]) * 1000.0;
      }

      LODWORD(v122[0]) = 136446466;
      *(v122 + 4) = v82;
      WORD6(v122[0]) = 2050;
      *(v122 + 14) = v84;
      v86 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]", "CoreLocation: %s\n", v86);
      if (v86 != buf)
      {
        free(v86);
      }
    }
  }

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  v87 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 1) = xmmword_19BA89490;
  *(self + 6) = 0x3FF0000000000000;
  *(self + 28) = 1;
  *(self + 8) = @"/var/mobile/Library/Caches/com.apple.routined/tripSegments/";
  return self;
}

@end