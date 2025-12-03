@interface Xbox360GamepadHIDServicePlugin
- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client;
- (id)defaultHapticMotors;
- (id)propertyForKey:(id)key client:(id)client;
- (void)activate;
- (void)cancel;
- (void)dispatchHapticEvent;
- (void)handleControlSurfaceInputPayload:(int64_t)payload withData:(id)data timestamp:(unint64_t)timestamp;
- (void)setLEDMode:(unsigned __int8)mode;
- (void)setupRawReportHandling;
@end

@implementation Xbox360GamepadHIDServicePlugin

- (void)activate
{
  v3 = _os_activity_create(&dword_0, "Activate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4.receiver = self;
  v4.super_class = Xbox360GamepadHIDServicePlugin;
  [(GCGamepadHIDServicePlugin *)&v4 activate];
  [(Xbox360GamepadHIDServicePlugin *)self setLEDMode:6];
  os_activity_scope_leave(&state);
}

- (void)cancel
{
  v3 = _os_activity_create(&dword_0, "Cancel", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4.receiver = self;
  v4.super_class = Xbox360GamepadHIDServicePlugin;
  [(GCGamepadHIDServicePlugin *)&v4 cancel];
  os_activity_scope_leave(&state);
}

- (id)propertyForKey:(id)key client:(id)client
{
  keyCopy = key;
  clientCopy = client;
  if ([keyCopy isEqualToString:@"LEDMode"])
  {
    v8 = [NSNumber numberWithUnsignedChar:self->_ledMode];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = Xbox360GamepadHIDServicePlugin;
    v8 = [(GCGamepadHIDServicePlugin *)&v11 propertyForKey:keyCopy client:clientCopy];
  }

  v9 = v8;

  return v9;
}

- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client
{
  propertyCopy = property;
  keyCopy = key;
  clientCopy = client;
  if ([keyCopy isEqualToString:@"LEDMode"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[Xbox360GamepadHIDServicePlugin setLEDMode:](self, "setLEDMode:", [propertyCopy unsignedIntValue]);
    }

    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = Xbox360GamepadHIDServicePlugin;
    v11 = [(GCGamepadHIDServicePlugin *)&v13 setProperty:propertyCopy forKey:keyCopy client:clientCopy];
  }

  return v11;
}

- (void)setLEDMode:(unsigned __int8)mode
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "Set LED Mode", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_ledMode = mode;
  objc_sync_exit(selfCopy);

  dispatchQueue = [(GCGamepadHIDServicePlugin *)selfCopy dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7830;
  v8[3] = &unk_106D8;
  modeCopy = mode;
  v8[4] = selfCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)setupRawReportHandling
{
  objc_initWeak(&location, self);
  device = [(GCGamepadHIDServicePlugin *)self device];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_79EC;
  v4[3] = &unk_10588;
  objc_copyWeak(&v5, &location);
  [device setInputReportHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleControlSurfaceInputPayload:(int64_t)payload withData:(id)data timestamp:(unint64_t)timestamp
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v12 = [dataCopy2 length];

  if (v12 <= 0x13)
  {
    sub_8BC4(payload, v12);
  }

  else
  {
    v13 = bytes[1];
    v41 = ((v13 >> 3) & 1);
    v42 = (v13 & 1);
    v14 = ((v13 >> 13) & 1);
    v39 = v14;
    v40 = ((v13 >> 12) & 1);
    v15 = ((v13 >> 14) & 1);
    v16 = (v13 >> 15);
    LOBYTE(v14) = *(bytes + 4);
    *&v17 = LODWORD(v14);
    v18 = *&v17 / 255.0;
    LOBYTE(v17) = *(bytes + 5);
    v19 = v17 / 255.0;
    v20 = ((v13 >> 6) & 1);
    v21 = ((v13 >> 7) & 1);
    v22 = vdup_n_s32(v13);
    v23 = vcvt_f32_u32((*&vshl_u32((*&v22 & 0xFFFF00FFFFFF00FFLL), 0xFFFFFFFEFFFFFFFFLL) & 0xFFFFFF01FFFFFF01));
    __asm { FMOV            V1.2S, #1.0 }

    v29 = vbic_s8(_D1, vceqz_s32(vand_s8(v22, 0x20000000100)));
    v30 = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*(bytes + 3))), vdupq_n_s32(0x46FFFE00u));
    v31 = vrev64q_s32(v30);
    v32 = vzip1q_s32(v31, v31);
    v33 = vzip2q_s32(v31, v31);
    v34 = vmovn_s16(vuzp1q_s16(vcgtzq_f32(v32), vcgtzq_f32(v33)));
    *v32.f32 = vmovn_s16(vuzp1q_s16(vcltzq_f32(v32), vcltzq_f32(v33)));
    v35 = vextq_s8(v30, vnegq_f32(vdupq_laneq_s64(v31, 1)), 8uLL);
    v30.i64[1] = vnegq_f32(v31).u64[0];
    v31.i16[0] = v34.u8[0];
    v31.i16[1] = v32.u8[1];
    v31.i16[2] = v32.u8[2];
    v31.i16[3] = v34.u8[3];
    v36 = vandq_s8(vextq_s8(v30, v30, 4uLL), vcltzq_s32(vshlq_n_s32(vmovl_u16(*v31.f32), 0x1FuLL)));
    v30.i16[0] = v34.u8[4];
    v30.i16[1] = v32.u8[5];
    v30.i16[2] = v32.u8[6];
    v30.i16[3] = v34.u8[7];
    v37 = vandq_s8(vextq_s8(v35, v35, 4uLL), vcltzq_s32(vshlq_n_s32(vmovl_u16(*v30.i8), 0x1FuLL)));
    v38 = v36;
    [(GCGamepadHIDServicePlugin *)self dispatchHomeButtonEventWithValue:(v13 >> 10) & 1 timestamp:timestamp];
    [(GCGamepadHIDServicePlugin *)self dispatchMenuButtonEventWithValue:(bytes[1] >> 4) & 1 timestamp:timestamp];
    [(GCGamepadHIDServicePlugin *)self dispatchOptionsButtonEventWithValue:(bytes[1] >> 5) & 1 timestamp:timestamp];
    v43 = 0;
    v44 = v42;
    v45 = v23;
    v46 = v41;
    v47 = v40;
    v48 = v39;
    v49 = v15;
    v50 = v16;
    v51 = v29;
    v53 = v37;
    v52 = v38;
    v54 = v18;
    v55 = v19;
    v56 = v20;
    v57 = v21;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    [(GCGamepadHIDServicePlugin *)self dispatchGameControllerExtendedEventWithState:&v43 timestamp:timestamp];
  }
}

- (void)dispatchHapticEvent
{
  v11 = 2048;
  hapticMotors = [(GCGamepadHIDServicePlugin *)self hapticMotors];
  v4 = [hapticMotors objectAtIndex:0];
  [v4 frequency];
  *(&v11 + 3) = (v5 * 255.0);

  hapticMotors2 = [(GCGamepadHIDServicePlugin *)self hapticMotors];
  v7 = [hapticMotors2 objectAtIndex:1];
  [v7 frequency];
  WORD2(v11) = (v8 * 255.0);

  device = [(GCGamepadHIDServicePlugin *)self device];
  v10 = 0;
  [device setReport:&v11 reportLength:8 withIdentifier:0 forType:1 error:&v10];
}

- (id)defaultHapticMotors
{
  v2 = [[GCHapticMotor alloc] initWithIndex:0 name:@"Left"];
  v6[0] = v2;
  v3 = [[GCHapticMotor alloc] initWithIndex:1 name:@"Right"];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

@end