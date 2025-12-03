@interface ADDynamicContextEmitter
- (ADDynamicContextEmitter)initWithMotionManager:(id)manager soundAnalysisPredicate:(id)predicate;
- (BOOL)_isGenAIEnabled;
- (int64_t)_thermalState;
- (void)_emitForRequest:(id)request timestamp:(unint64_t)timestamp;
- (void)emitForRequest:(id)request;
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
  thermalState = [v2 thermalState];

  return thermalState;
}

- (void)_emitForRequest:(id)request timestamp:(unint64_t)timestamp
{
  requestCopy = request;
  v7 = sub_1000105F4(requestCopy);
  if (v7)
  {
    v8 = objc_alloc_init(ORCHSchemaORCHDeviceDynamicContext);
    motionActivity = [(ADMotionManager *)self->_motionManager motionActivity];
    if ([motionActivity isEqualToString:SAMotionActivityInVehicleStationaryValue])
    {
      v10 = 4;
    }

    else if ([motionActivity isEqualToString:SAMotionActivityStationaryValue])
    {
      v10 = 2;
    }

    else if ([motionActivity isEqualToString:SAMotionActivityWalkingValue] & 1) != 0 || (objc_msgSend(motionActivity, "isEqualToString:", SAMotionActivityRunningValue) & 1) != 0 || (objc_msgSend(motionActivity, "isEqualToString:", SAMotionActivityCyclingValue))
    {
      v10 = 1;
    }

    else if ([motionActivity isEqualToString:SAMotionActivityInVehicleMovingValue])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    [v8 setMotionActivity:v10];
    _thermalState = [(ADDynamicContextEmitter *)self _thermalState];
    if (_thermalState < 4)
    {
      v13 = (_thermalState + 1);
    }

    else
    {
      v13 = 0;
    }

    [v8 setThermalState:v13];
    _bobbleConfig = [(ADDynamicContextEmitter *)self _bobbleConfig];
    [v8 setHeadGesturesSupported:{objc_msgSend(_bobbleConfig, "isSupported")}];
    [v8 setHeadGesturesEnabled:{objc_msgSend(_bobbleConfig, "isEnabled")}];
    acceptGesture = [_bobbleConfig acceptGesture];
    if (acceptGesture == 2)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2 * (acceptGesture == 1);
    }

    rejectGesture = [_bobbleConfig rejectGesture];
    if (rejectGesture == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2 * (rejectGesture == 1);
    }

    [v8 setAcceptProceedGesture:v16];
    [v8 setDeclineDismissGesture:v18];
    _isGenAIEnabled = [(ADDynamicContextEmitter *)self _isGenAIEnabled];
    [v8 setIsChatGPTEnabled:_isGenAIEnabled];
    if (_isGenAIEnabled)
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
    _getSharedStream = [(ADDynamicContextEmitter *)self _getSharedStream];
    [_getSharedStream emitMessage:v21 timestamp:timestamp];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[ADDynamicContextEmitter _emitForRequest:timestamp:]";
      v26 = 2112;
      v27 = requestCopy;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed for request, not logging motion activity as a device dynamic context.", &v24, 0x16u);
    }
  }
}

- (void)emitForRequest:(id)request
{
  requestCopy = request;
  v5 = mach_absolute_time();
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C01CC;
  block[3] = &unk_10051E128;
  block[4] = self;
  v9 = requestCopy;
  v10 = v5;
  v7 = requestCopy;
  dispatch_async(v6, block);
}

- (ADDynamicContextEmitter)initWithMotionManager:(id)manager soundAnalysisPredicate:(id)predicate
{
  managerCopy = manager;
  predicateCopy = predicate;
  v12.receiver = self;
  v12.super_class = ADDynamicContextEmitter;
  v9 = [(ADDynamicContextEmitter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_motionManager, manager);
    objc_storeStrong(&v10->_soundAnalysisPredicate, predicate);
  }

  return v10;
}

@end