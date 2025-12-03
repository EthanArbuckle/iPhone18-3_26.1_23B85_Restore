@interface CLSimulationManager
- (CLSimulationManager)init;
- (CLSimulationXPCServerInterface)daemonProxy;
- (id)availableScenarios;
- (id)scenariosPath;
- (void)appendSimulatedLocation:(id)location;
- (void)clearSimulatedCells;
- (void)clearSimulatedLocations;
- (void)flush;
- (void)getFencesForBundleID:(id)d withHandler:(id)handler;
- (void)loadScenarioFromURL:(id)l;
- (void)selectScenario:(id)scenario;
- (void)setLocationDeliveryBehavior:(unsigned __int8)behavior;
- (void)setLocationDistance:(double)distance;
- (void)setLocationInterval:(double)interval;
- (void)setLocationRepeatBehavior:(unsigned __int8)behavior;
- (void)setLocationSpeed:(double)speed;
- (void)setSimulatedCell:(id)cell;
- (void)setSimulatedCellRegistrationStatus:(BOOL)status;
- (void)setSimulatedWifiPower:(BOOL)power;
- (void)setWifiScanResults:(id)results;
- (void)simulateBeaconWithProximityUUID:(id)d major:(int64_t)major minor:(int64_t)minor eventType:(unsigned __int8)type;
- (void)simulateFenceWithBundleID:(id)d andFenceID:(id)iD eventType:(unsigned __int8)type atLocation:(id)location;
- (void)simulateSignificantLocationChange:(id)change;
- (void)simulateVisit:(id)visit;
- (void)startCellSimulation;
- (void)startLocationSimulation;
- (void)startWifiSimulation;
- (void)stopCellSimulation;
- (void)stopLocationSimulation;
- (void)stopWifiSimulation;
@end

@implementation CLSimulationManager

- (CLSimulationManager)init
{
  v8.receiver = self;
  v8.super_class = CLSimulationManager;
  result = [(CLSimulationManager *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_locationDistance = _Q0;
    result->_locationSpeed = -1.0;
    *&result->_locationRepeatBehavior = 0;
  }

  return result;
}

- (id)scenariosPath
{
  v2 = MEMORY[0x1E696AEC0];
  sub_19B953A04(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [objc_msgSend(v2 stringWithUTF8String:{p_p), "stringByAppendingPathComponent:", @"SimulationScenarios"}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (id)availableScenarios
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v2)
  {
    v3 = v2;
    array = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [array addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "stringByDeletingPathExtension")}];
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    NSLog(&cfstr_CouldnTGetList.isa);
    array = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return array;
}

- (void)selectScenario:(id)scenario
{
  v4 = [-[CLSimulationManager scenariosPath](self "scenariosPath")];
  [MEMORY[0x1E695DFF8] fileURLWithPath:v4];

  MEMORY[0x1EEE66B58](self, sel_loadScenarioFromURL_);
}

- (void)loadScenarioFromURL:(id)l
{
  if ([l isFileURL])
  {
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      if ([objc_msgSend(l "pathExtension")])
      {
        daemonProxy = [(CLSimulationManager *)self daemonProxy];

        MEMORY[0x1EEE66B58](daemonProxy, sel_setSimulationScenario_);
      }

      else
      {
        NSLog(&cfstr_SelectedLocati_1.isa);
      }
    }

    else
    {
      NSLog(&cfstr_SelectedLocati_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_SelectedLocati.isa);
  }
}

- (void)setLocationDeliveryBehavior:(unsigned __int8)behavior
{
  self->_locationDeliveryBehavior = behavior;
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_setLocationDeliveryBehavior_);
}

- (void)setLocationDistance:(double)distance
{
  self->_locationDistance = distance;
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_setIntermediateLocationDistance_);
}

- (void)setLocationInterval:(double)interval
{
  self->_locationInterval = interval;
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_setLocationInterval_);
}

- (void)setLocationSpeed:(double)speed
{
  self->_locationSpeed = speed;
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_setLocationTravellingSpeed_);
}

- (void)setLocationRepeatBehavior:(unsigned __int8)behavior
{
  self->_locationRepeatBehavior = behavior;
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_setLocationRepeatBehavior_);
}

- (void)clearSimulatedLocations
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_clearSimulatedLocations);
}

- (void)appendSimulatedLocation:(id)location
{
  if (location)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      memset(v17, 0, 28);
      v15 = 0u;
      v13 = 0u;
      memset(v14, 0, sizeof(v14));
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      [location clientLocation];
      LODWORD(v15) = 1;
      if (*(v14 + 12) <= 0.0)
      {
        *(v14 + 12) = CFAbsoluteTimeGetCurrent();
      }

      if (*(&v14[1] + 1) == 0.0)
      {
        *(&v14[1] + 1) = 0xBFF0000000000000;
      }

      if (*(&v11 + 4) == 0.0)
      {
        *(&v11 + 4) = 0x4014000000000000;
      }

      v5 = objc_alloc(MEMORY[0x1E6985C40]);
      v8[6] = v15;
      v8[7] = v16;
      v9[0] = v17[0];
      *(v9 + 12) = *(v17 + 12);
      v8[2] = v12;
      v8[3] = v13;
      v8[4] = v14[0];
      v8[5] = v14[1];
      v8[0] = v10;
      v8[1] = v11;
      v6 = [v5 initWithClientLocation:v8];
      daemonProxy = [(CLSimulationManager *)self daemonProxy];
      -[CLSimulationXPCServerInterface appendSimulatedLocations:](daemonProxy, "appendSimulatedLocations:", [MEMORY[0x1E695DEC8] arrayWithObject:v6]);
    }

    else
    {
      NSLog(&cfstr_ClsimulationOb.isa);
    }
  }
}

- (void)startLocationSimulation
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_startLocationSimulation);
}

- (void)stopLocationSimulation
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_stopLocationSimulation);
}

- (void)simulateVisit:(id)visit
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_simulateVisit_);
}

- (void)simulateSignificantLocationChange:(id)change
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_simulateSignificantLocationChange_);
}

- (void)getFencesForBundleID:(id)d withHandler:(id)handler
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_getFencesForBundleID_withReply_);
}

- (void)simulateFenceWithBundleID:(id)d andFenceID:(id)iD eventType:(unsigned __int8)type atLocation:(id)location
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_simulateFenceWithBundleID_andFenceID_eventType_atLocation_);
}

- (void)simulateBeaconWithProximityUUID:(id)d major:(int64_t)major minor:(int64_t)minor eventType:(unsigned __int8)type
{
  daemonProxy = [(CLSimulationManager *)self daemonProxy];

  MEMORY[0x1EEE66B58](daemonProxy, sel_simulateBeaconWithProximityUUID_major_minor_eventType_);
}

- (void)clearSimulatedCells
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager clearSimulatedCells]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSimulatedCell:(id)cell
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setSimulatedCell:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startCellSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager startCellSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopCellSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager stopCellSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSimulatedCellRegistrationStatus:(BOOL)status
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setSimulatedCellRegistrationStatus:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setWifiScanResults:(id)results
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setWifiScanResults:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startWifiSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager startWifiSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopWifiSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager stopWifiSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSimulatedWifiPower:(BOOL)power
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setSimulatedWifiPower:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)flush
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager flush]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (CLSimulationXPCServerInterface)daemonProxy
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v3 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v14 = 2082;
    *&v14[2] = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:getDaemonProxy called}", buf, 0x12u);
  }

  if (![(CLSimulationManager *)self connection])
  {
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v4 = qword_1EAFE46F0;
    if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v14 = 2082;
      *&v14[2] = "";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:no existing connection, trying to get one}", buf, 0x12u);
    }

    -[CLSimulationManager setConnection:](self, "setConnection:", [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.simulation" options:4096]);
    connection = [(CLSimulationManager *)self connection];
    -[NSXPCConnection setRemoteObjectInterface:](connection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAC988]);
    [(NSXPCConnection *)[(CLSimulationManager *)self connection] setInterruptionHandler:&unk_1F0E6D9C8];
    *buf = 0;
    *v14 = buf;
    *&v14[8] = 0x3052000000;
    *&v14[16] = sub_19B98C5C4;
    *&v14[24] = sub_19B98C5D4;
    selfCopy = self;
    connection2 = [(CLSimulationManager *)self connection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B98C5E0;
    v12[3] = &unk_1E753CDF8;
    v12[4] = buf;
    [(NSXPCConnection *)connection2 setInvalidationHandler:v12];
    [(NSXPCConnection *)[(CLSimulationManager *)self connection] resume];
    _Block_object_dispose(buf, 8);
  }

  v7 = [(NSXPCConnection *)[(CLSimulationManager *)self connection] remoteObjectProxyWithErrorHandler:&unk_1F0E6D9E8];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v8 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    connection3 = [(CLSimulationManager *)self connection];
    *buf = 68289538;
    *&buf[4] = 0;
    *v14 = 2082;
    *&v14[2] = "";
    *&v14[10] = 2114;
    *&v14[12] = v7;
    *&v14[20] = 2114;
    *&v14[22] = connection3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Do we have a proxy?, proxy:%{public, location:escape_only}@, connection:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

@end