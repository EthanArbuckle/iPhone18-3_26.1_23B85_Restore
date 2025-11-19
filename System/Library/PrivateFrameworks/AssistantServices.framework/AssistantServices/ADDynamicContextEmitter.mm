@interface ADDynamicContextEmitter
- (ADDynamicContextEmitter)initWithMotionManager:(id)a3 soundAnalysisPredicate:(id)a4;
- (BOOL)_isGenAIEnabled;
- (int64_t)_thermalState;
- (void)_emitForRequest:(id)a3 timestamp:(unint64_t)a4;
- (void)emitForRequest:(id)a3;
@end

@implementation ADDynamicContextEmitter

- (BOOL)_isGenAIEnabled
{
  if (AFMontaraRestricted())
  {
    return 0;
  }

  return +[GATSettings isEnabled];
}

- (int64_t)_thermalState
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 thermalState];

  return v3;
}

- (void)_emitForRequest:(id)a3 timestamp:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_1000105F4(v6);
  if (v7)
  {
    v8 = objc_alloc_init(ORCHSchemaORCHDeviceDynamicContext);
    v9 = [(ADMotionManager *)self->_motionManager motionActivity];
    if ([v9 isEqualToString:SAMotionActivityInVehicleStationaryValue])
    {
      v10 = 4;
    }

    else if ([v9 isEqualToString:SAMotionActivityStationaryValue])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:SAMotionActivityWalkingValue] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", SAMotionActivityRunningValue) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", SAMotionActivityCyclingValue))
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:SAMotionActivityInVehicleMovingValue])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    [v8 setMotionActivity:v10];
    v12 = [(ADDynamicContextEmitter *)self _thermalState];
    if (v12 < 4)
    {
      v13 = (v12 + 1);
    }

    else
    {
      v13 = 0;
    }

    [v8 setThermalState:v13];
    v14 = [(ADDynamicContextEmitter *)self _bobbleConfig];
    [v8 setHeadGesturesSupported:{objc_msgSend(v14, "isSupported")}];
    [v8 setHeadGesturesEnabled:{objc_msgSend(v14, "isEnabled")}];
    v15 = [v14 acceptGesture];
    if (v15 == 2)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2 * (v15 == 1);
    }

    v17 = [v14 rejectGesture];
    if (v17 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2 * (v17 == 1);
    }

    [v8 setAcceptProceedGesture:v16];
    [v8 setDeclineDismissGesture:v18];
    v19 = [(ADDynamicContextEmitter *)self _isGenAIEnabled];
    [v8 setIsChatGPTEnabled:v19];
    if (v19)
    {
      v20 = [(ADDynamicContextEmitter *)self _orchGenAIAgentForGATAgent:[(ADDynamicContextEmitter *)self _getGATAgent]];
    }

    else
    {
      v20 = 1;
    }

    [v8 addGenAIAgentsEnabled:v20];
    v21 = objc_alloc_init(ORCHSchemaORCHClientEvent);
    [v21 setOrchDeviceDynamicContext:v8];
    v22 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
    [v22 setRequestId:v7];
    [v21 setEventMetadata:v22];
    v23 = [(ADDynamicContextEmitter *)self _getSharedStream];
    [v23 emitMessage:v21 timestamp:a4];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[ADDynamicContextEmitter _emitForRequest:timestamp:]";
      v26 = 2112;
      v27 = v6;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed for request, not logging motion activity as a device dynamic context.", &v24, 0x16u);
    }
  }
}

- (void)emitForRequest:(id)a3
{
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C01CC;
  block[3] = &unk_10051E128;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_async(v6, block);
}

- (ADDynamicContextEmitter)initWithMotionManager:(id)a3 soundAnalysisPredicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ADDynamicContextEmitter;
  v9 = [(ADDynamicContextEmitter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_motionManager, a3);
    objc_storeStrong(&v10->_soundAnalysisPredicate, a4);
  }

  return v10;
}

@end