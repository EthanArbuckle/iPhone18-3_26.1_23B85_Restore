@interface BKSTouchStream
- (BKSTouchStream)initWithContextID:(unsigned int)a3 displayUUID:(id)a4 identifier:(unsigned __int8)a5 policy:(id)a6;
- (void)invalidate;
- (void)setEventDispatchMode:(unsigned __int8)a3 ambiguityRecommendation:(unsigned __int8)a4 lastTouchTimestamp:(double)a5;
@end

@implementation BKSTouchStream

- (void)invalidate
{
  v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v4 = [(BKSTouchStream *)self reference];

  _BKSHIDTouchStreamInvalidate(v3, v4);
}

- (void)setEventDispatchMode:(unsigned __int8)a3 ambiguityRecommendation:(unsigned __int8)a4 lastTouchTimestamp:(double)a5
{
  v9 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v10 = [(BKSTouchStream *)self reference];

  _BKSHIDTouchStreamSetEventDispatchMode(v9, v10, a3, a4, a5);
}

- (BKSTouchStream)initWithContextID:(unsigned int)a3 displayUUID:(id)a4 identifier:(unsigned __int8)a5 policy:(id)a6
{
  v7 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = BKSTouchStream;
  v12 = [(BKSTouchStream *)&v19 init];
  if (!v12)
  {
    goto LABEL_6;
  }

  v54 = 0u;
  v55 = 0u;
  if (!v10)
  {
    v10 = &stru_1EF552F68;
  }

  v52 = 0uLL;
  v53 = 0uLL;
  v50 = 0uLL;
  v51 = 0uLL;
  v48 = 0uLL;
  v49 = 0uLL;
  v46 = 0uLL;
  v47 = 0uLL;
  v44 = 0uLL;
  v45 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  *buffer = 0uLL;
  v25 = 0uLL;
  if (CFStringGetCString(v10, buffer, 1024, 0x8000100u))
  {
    v13 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    v14 = _BKSHIDTouchStreamCreate(v13, a3, buffer, v7, [v11 shouldSendAmbiguityRecommendations], &v12->_reference);
    if (!v14)
    {
LABEL_6:
      v15 = v12;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 10;
  }

  v16 = BKLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[BKSTouchStream initWithContextID:displayUUID:identifier:policy:]";
    v22 = 1024;
    v23 = v14;
    _os_log_error_impl(&dword_186345000, v16, OS_LOG_TYPE_ERROR, "%s failed to create touch stream:%d", buf, 0x12u);
  }

  v15 = 0;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

@end