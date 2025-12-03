@interface CLMapsXPCServiceManager
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (void)cancelRoadDataRequest;
- (void)clearMemoryAndExitHelperProcessCleanly;
- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9;
- (void)createConnection;
- (void)dealloc;
- (void)onTimerFire:(id)fire;
- (void)releaseMapHelperServiceOSTransaction;
- (void)stopConstructRouteFromLocation;
- (void)updateTimer;
@end

@implementation CLMapsXPCServiceManager

+ (id)sharedInstance
{
  v9 = *MEMORY[0x1E69E9840];
  if (!qword_1ED519168)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B934A5C;
    block[3] = &unk_1E753CC90;
    block[4] = self;
    if (qword_1ED519170 != -1)
    {
      dispatch_once(&qword_1ED519170, block);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,XPCManager allocate", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "+[CLMapsXPCServiceManager sharedInstance]", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  result = qword_1ED519168;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  sharedInstance = [self sharedInstance];

  return sharedInstance;
}

- (void)createConnection
{
  v15 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection)
  {

    self->_connection = 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.corelocation.maphelperservice"];
  self->_connection = v4;
  if (v4)
  {
    self->fInactivityTimer = 0;
    self->fTimerUpdateMachContTime = -1.0;
    -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0E9D0B0]);
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v9 forSelector:sel_fetchGEORoadDataAroundCoordinate_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_withReply_ argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v9 forSelector:sel_fetchGEOBuildingDataAroundCoordinate_inRadius_tileSetStyle_allowNetwork_preferCachedTiles_clearTiles_withReply_ argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)[(NSXPCConnection *)self->_connection remoteObjectInterface] setClasses:v9 forSelector:sel_constructRouteFromLocation_roadID_clRoadID_projection_toLocation_toRoadID_toCLRoadID_toProjection_maxRouteLength_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery_withReply_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)self->_connection resume];
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v10 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,createConnection", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager createConnection]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,dealloc", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v8 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager dealloc]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [(CLMapsXPCServiceManager *)self releaseMapHelperServiceOSTransaction];
  [(NSXPCConnection *)[(CLMapsXPCServiceManager *)self connection] invalidate];

  [(CLMapsXPCServiceManager *)self setConnection:0];
  v7.receiver = self;
  v7.super_class = CLMapsXPCServiceManager;
  [(CLMapsXPCServiceManager *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearMemoryAndExitHelperProcessCleanly
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519168)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3052000000;
    v13 = sub_19B936274;
    v14 = sub_19B936284;
    v15 = 0;
    connection = self->_connection;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B936290;
    v8[3] = &unk_1E753DC90;
    v8[4] = buf;
    v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
    if (!*(v11 + 5))
    {
      [v3 clearMemoryAndExitCleanly];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,clearMemoryAndExitHelperProcessCleanly,sharedInstance is nil", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v9 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager clearMemoryAndExitHelperProcessCleanly]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateTimer
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->fTimerUpdateMachContTime <= 0.0 || (v3 = mach_continuous_time(), vabdd_f64(sub_19B994BF4(v3), self->fTimerUpdateMachContTime) >= 60.0))
  {
    v4 = mach_continuous_time();
    self->fTimerUpdateMachContTime = sub_19B994BF4(v4);
    fInactivityTimer = self->fInactivityTimer;
    if (fInactivityTimer)
    {
      [(NSTimer *)fInactivityTimer invalidate];
      self->fInactivityTimer = 0;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      fTimerUpdateMachContTime = self->fTimerUpdateMachContTime;
      *buf = 134349056;
      v16 = fTimerUpdateMachContTime;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,Inactivity timer updated in XPC manager,updateTime,%{public}.2lf", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v9 = self->fTimerUpdateMachContTime;
      v13 = 134349056;
      v14 = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager updateTimer]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B936740;
    block[3] = &unk_1E753CC90;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)onTimerFire:(id)fire
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,onTimerFire", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager onTimerFire:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  [(CLMapsXPCServiceManager *)self releaseMapHelperServiceOSTransaction];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)releaseMapHelperServiceOSTransaction
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    fTimerUpdateMachContTime = self->fTimerUpdateMachContTime;
    LODWORD(buf) = 134349056;
    *(&buf + 4) = fTimerUpdateMachContTime;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,releaseMapHelperServiceOSTransaction,lastTimerUpdateTime,%{public}.2lf", &buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = self->fTimerUpdateMachContTime;
    v16 = 134349056;
    v17 = v6;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager releaseMapHelperServiceOSTransaction]", "CoreLocation: %s\n", v7);
    if (v7 != &buf)
    {
      free(v7);
    }
  }

  fInactivityTimer = self->fInactivityTimer;
  if (fInactivityTimer)
  {
    [(NSTimer *)fInactivityTimer invalidate];
    self->fInactivityTimer = 0;
    self->fTimerUpdateMachContTime = -1.0;
  }

  if (qword_1ED519168)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3052000000;
    v20 = sub_19B936274;
    v21 = sub_19B936284;
    v22 = 0;
    connection = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_19B936D48;
    v15[3] = &unk_1E753DC90;
    v15[4] = &buf;
    v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
    if (!*(*(&buf + 1) + 40))
    {
      [v10 releaseOSTransaction];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v11 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,clearMemoryAndExitHelperProcessCleanly,sharedInstance is nil", &buf, 2u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      LOWORD(v16) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager releaseMapHelperServiceOSTransaction]", "CoreLocation: %s\n", v13);
      if (v13 != &buf)
      {
        free(v13);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)cancelRoadDataRequest
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519168)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3052000000;
    v13 = sub_19B936274;
    v14 = sub_19B936284;
    v15 = 0;
    connection = self->_connection;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B93720C;
    v8[3] = &unk_1E753DC90;
    v8[4] = buf;
    v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
    if (!*(v11 + 5))
    {
      [v3 cancelRoadDataRequest];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,cancelRoadDataRequest,sharedInstance is nil", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v9 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager cancelRoadDataRequest]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9
{
  networkCopy = network;
  tilesCopy = tiles;
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v27 = location.longitude;
  v28 = location.latitude;
  [(CLMapsXPCServiceManager *)self updateTimer];
  connection = self->_connection;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_19B937634;
  v42[3] = &unk_1E753CF88;
  v42[4] = reply;
  v31 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v42];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v32 = mach_continuous_time();
  v41[3] = sub_19B994BF4(v32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_19B93788C;
  v39[3] = &unk_1E753DCB8;
  queryCopy = query;
  v39[4] = reply;
  v39[5] = v41;
  LOBYTE(v34) = query;
  LOWORD(v33) = __PAIR16__(clearTiles, cycling);
  [v31 constructRouteFromLocation:d roadID:iD clRoadID:roadID projection:lRoadID toLocation:networkCopy toRoadID:tilesCopy toCLRoadID:v28 toProjection:v27 maxRouteLength:projection allowNetwork:latitude preferCachedTiles:longitude isPedestrianOrCycling:toProjection clearTiles:length iOSTime:time familiarityData:v33 useMapsAPIForIntersectionQuery:data withReply:{v34, v39}];
  _Block_object_dispose(v41, 8);
}

- (void)stopConstructRouteFromLocation
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519168)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3052000000;
    v13 = sub_19B936274;
    v14 = sub_19B936284;
    v15 = 0;
    connection = self->_connection;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B937DA0;
    v8[3] = &unk_1E753DC90;
    v8[4] = buf;
    v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
    if (!*(v11 + 5))
    {
      [v3 stopConstructRouteFromLocation];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,stopConstructRouteFromLocation,sharedInstance is nil", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v9 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager stopConstructRouteFromLocation]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end