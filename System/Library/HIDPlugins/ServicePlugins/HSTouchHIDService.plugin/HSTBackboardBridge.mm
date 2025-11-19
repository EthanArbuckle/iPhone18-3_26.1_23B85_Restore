@interface HSTBackboardBridge
- (BOOL)handleHSDecode:(void *)a3;
- (BOOL)handleHSEncode:(void *)a3;
- (HSTBackboardBridge)initWithQueue:(id)a3;
- (id).cxx_construct;
- (void)_clear;
- (void)_handleGetPropertyEvent:(id)a3;
- (void)_handleMotionState:(unsigned __int8)a3 confidence:(unsigned __int8)a4;
- (void)_handlePowerSourceState;
- (void)_handleProxClearedAfterOccludedWake;
- (void)_handleScreenOrientation:(unsigned __int8)a3;
- (void)_handleSetPropertyEvent:(id)a3;
- (void)_handleStockholmState:(unsigned __int8)a3;
- (void)_handleStuckTouchDetectorState:(id)a3;
- (void)_handleTouchHand:(unsigned __int8)a3;
- (void)_handleTouchMode:(unsigned __int16)a3;
- (void)_handleWristState:(unsigned __int8)a3;
- (void)dealloc;
- (void)handleConsume:(id)a3;
- (void)sendUSBEvent:(unsigned __int8)a3;
- (void)sendWirelessEvent:(unsigned __int8)a3;
@end

@implementation HSTBackboardBridge

- (void)_handlePowerSourceState
{
  existing = -1431655766;
  v2 = IOServiceMatching("IOPMPowerSource");
  if (!IOServiceGetMatchingServices(0, v2, &existing))
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = IOIteratorNext(existing);
      v6 = v5;
      if (!v5)
      {
        break;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v5, @"AppleRawAdapterDetails", kCFAllocatorDefault, 0);
      IOObjectRelease(v6);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = CFProperty;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v8)
      {
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            if (v3 == 1 && v4 == 1)
            {
              v4 = 1;
              v3 = 1;
              goto LABEL_27;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 objectForKeyedSubscript:@"IsWireless"];
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue])
              {
                v3 = 1;
              }

              else
              {
                v13 = [v11 objectForKeyedSubscript:@"FamilyCode"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 intValue] == -536854518 || objc_msgSend(v13, "intValue") == -536854519 || objc_msgSend(v13, "intValue") == -536854528 || objc_msgSend(v13, "intValue") == -536854525))
                {
                  v4 = 1;
                }
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      if (v3)
      {
        if (v4)
        {
          break;
        }
      }
    }

    IOObjectRelease(existing);
    [(HSTBackboardBridge *)self sendWirelessEvent:v3];
    [(HSTBackboardBridge *)self sendUSBEvent:v4];
  }
}

- (HSTBackboardBridge)initWithQueue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HSTBackboardBridge.mm" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v20.receiver = self;
  v20.super_class = HSTBackboardBridge;
  v6 = [(HSStage *)&v20 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    out_token = -1;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __36__HSTBackboardBridge_initWithQueue___block_invoke;
    handler[3] = &unk_10A9A8;
    objc_copyWeak(&v17, &location);
    if (notify_register_dispatch("com.apple.stockholm.field.on", &out_token, v5, handler))
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTBackboardBridge initWithQueue:];
      }

      v7 = 0;
    }

    else
    {
      std::vector<int>::push_back[abi:ne200100](&v6->_notifyTokens.__begin_, &out_token);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __36__HSTBackboardBridge_initWithQueue___block_invoke_38;
      v14[3] = &unk_10A9A8;
      objc_copyWeak(&v15, &location);
      notify_register_dispatch("com.apple.stockholm.field.off", &out_token, v5, v14);
      std::vector<int>::push_back[abi:ne200100](&v6->_notifyTokens.__begin_, &out_token);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __36__HSTBackboardBridge_initWithQueue___block_invoke_40;
      v12[3] = &unk_10A9A8;
      objc_copyWeak(&v13, &location);
      notify_register_dispatch("com.apple.stockholm.field.suspended", &out_token, v5, v12);
      std::vector<int>::push_back[abi:ne200100](&v6->_notifyTokens.__begin_, &out_token);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __36__HSTBackboardBridge_initWithQueue___block_invoke_42;
      v10[3] = &unk_10A9A8;
      objc_copyWeak(&v11, &location);
      notify_register_dispatch("com.apple.system.powersources", &out_token, v5, v10);
      std::vector<int>::push_back[abi:ne200100](&v6->_notifyTokens.__begin_, &out_token);
      objc_destroyWeak(&v11);
      v7 = v6;
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __36__HSTBackboardBridge_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStockholmState:1];
}

void __36__HSTBackboardBridge_initWithQueue___block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStockholmState:2];
}

void __36__HSTBackboardBridge_initWithQueue___block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStockholmState:0];
}

void __36__HSTBackboardBridge_initWithQueue___block_invoke_42(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePowerSourceState];
}

- (void)dealloc
{
  p_notifyTokens = &self->_notifyTokens;
  begin = self->_notifyTokens.__begin_;
  end = self->_notifyTokens.__end_;
  if (begin != end)
  {
    do
    {
      notify_cancel(*begin++);
    }

    while (begin != end);
    begin = p_notifyTokens->__begin_;
  }

  p_notifyTokens->__end_ = begin;
  v6.receiver = self;
  v6.super_class = HSTBackboardBridge;
  [(HSStage *)&v6 dealloc];
}

- (void)_handleTouchMode:(unsigned __int16)a3
{
  p_state = &self->_state;
  if (self->_state.touchMode.__engaged_)
  {
    val = p_state->touchMode.var0.__val_;
    if (val == a3)
    {
      return;
    }

    if (a3 & 5) == 0 && (val)
    {
      v11 = 0;
      v7 = [[HSTVendorEvent alloc] initWithType:9 buffer:&v11 length:1];
      v10.receiver = self;
      v10.super_class = HSTBackboardBridge;
      [(HSStage *)&v10 handleConsume:v7];
    }
  }

  p_state->touchMode.var0.__val_ = a3;
  p_state->touchMode.__engaged_ = 1;
  v8 = objc_opt_new();
  v8[2] = p_state->touchMode.var0.__val_;
  v9.receiver = self;
  v9.super_class = HSTBackboardBridge;
  [(HSStage *)&v9 handleConsume:v8];
}

- (void)_handleScreenOrientation:(unsigned __int8)a3
{
  p_state = &self->_state;
  if (!self->_state.screenOrientation.__engaged_ || self->_state.screenOrientation.var0.__val_ != a3)
  {
    self->_state.screenOrientation = (a3 | 0x100);
    v5 = objc_opt_new();
    v5[2] = p_state->screenOrientation.var0.__val_;
    v6.receiver = self;
    v6.super_class = HSTBackboardBridge;
    [(HSStage *)&v6 handleConsume:v5];
  }
}

- (void)_handleMotionState:(unsigned __int8)a3 confidence:(unsigned __int8)a4
{
  if ((a4 - 3) >= 0xFFFFFFFE)
  {
    p_state = &self->_state;
    if (!self->_state.motionState.__engaged_ || self->_state.motionState.var0.__val_ != a3)
    {
      self->_state.motionState = (a3 | 0x100);
      v6 = objc_opt_new();
      v6[2] = p_state->motionState.var0.__val_;
      v7.receiver = self;
      v7.super_class = HSTBackboardBridge;
      [(HSStage *)&v7 handleConsume:v6];
    }
  }
}

- (void)_handleTouchHand:(unsigned __int8)a3
{
  p_state = &self->_state;
  if (!self->_state.touchHand.__engaged_ || self->_state.touchHand.var0.__val_ != a3)
  {
    self->_state.touchHand = (a3 | 0x100);
    v5 = objc_opt_new();
    v5[2] = p_state->touchHand.var0.__val_;
    v6.receiver = self;
    v6.super_class = HSTBackboardBridge;
    [(HSStage *)&v6 handleConsume:v5];
  }
}

- (void)_handleWristState:(unsigned __int8)a3
{
  p_state = &self->_state;
  if (!self->_state.wristState.__engaged_ || self->_state.wristState.var0.__val_ != a3)
  {
    self->_state.wristState = (a3 | 0x100);
    v5 = objc_opt_new();
    v5[2] = p_state->wristState.var0.__val_;
    v6.receiver = self;
    v6.super_class = HSTBackboardBridge;
    [(HSStage *)&v6 handleConsume:v5];
  }
}

- (void)_handleStockholmState:(unsigned __int8)a3
{
  p_state = &self->_state;
  if (!self->_state.stockholmState.__engaged_ || self->_state.stockholmState.var0.__val_ != a3)
  {
    self->_state.stockholmState = (a3 | 0x100);
    v5 = objc_opt_new();
    v5[2] = p_state->stockholmState.var0.__val_;
    v6.receiver = self;
    v6.super_class = HSTBackboardBridge;
    [(HSStage *)&v6 handleConsume:v5];
  }
}

- (void)sendWirelessEvent:(unsigned __int8)a3
{
  p_state = &self->_state;
  if (!self->_state.wirelessChargingState.__engaged_ || self->_state.wirelessChargingState.var0.__val_ != a3)
  {
    self->_state.wirelessChargingState = (a3 | 0x100);
    v5 = objc_opt_new();
    v5[2] = p_state->wirelessChargingState.var0.__val_;
    v6.receiver = self;
    v6.super_class = HSTBackboardBridge;
    [(HSStage *)&v6 handleConsume:v5];
  }
}

- (void)sendUSBEvent:(unsigned __int8)a3
{
  p_state = &self->_state;
  if (!self->_state.usbChargingState.__engaged_ || self->_state.usbChargingState.var0.__val_ != a3)
  {
    self->_state.usbChargingState = (a3 | 0x100);
    v5 = objc_opt_new();
    v5[2] = p_state->usbChargingState.var0.__val_;
    v6.receiver = self;
    v6.super_class = HSTBackboardBridge;
    [(HSStage *)&v6 handleConsume:v5];
  }
}

- (void)_handleStuckTouchDetectorState:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"StuckTouchDetectorDisabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 BOOLValue];
  if (!self->_state.stuckTouchDetectorState.__engaged_ || self->_state.stuckTouchDetectorState.var0.__val_ != v7)
  {
    self->_state.stuckTouchDetectorState = (v7 | 0x100);
    v8 = objc_opt_new();
    v8[2] = v7;
    v9.receiver = self;
    v9.super_class = HSTBackboardBridge;
    [(HSStage *)&v9 handleConsume:v8];
  }
}

- (void)_handleProxClearedAfterOccludedWake
{
  v3 = objc_opt_new();
  v4.receiver = self;
  v4.super_class = HSTBackboardBridge;
  [(HSStage *)&v4 handleConsume:v3];
}

- (void)_handleSetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 5);
  objc_opt_class();
  v8 = (v4 + 16);
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[39];
  if (v4[39] < 0)
  {
    if (*(v4 + 3) != 22)
    {
LABEL_19:
      v98.receiver = self;
      v98.super_class = HSTBackboardBridge;
      [(HSStage *)&v98 handleConsume:v4];
      v10 = v4[39];
      goto LABEL_20;
    }

    v11 = *v8;
  }

  else
  {
    v11 = (v4 + 16);
    if (v10 != 22)
    {
      goto LABEL_19;
    }
  }

  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 14);
  if (v12 != 0x63416E6F69746F4DLL || v13 != 0x6944797469766974 || v14 != 0x6863746170736944)
  {
    goto LABEL_19;
  }

LABEL_20:
  if ((v10 & 0x80) != 0)
  {
    if (*(v4 + 3) == 18)
    {
      v19 = **v8 == 0x7465446863756F54 && (*v8)[1] == 0x6F4D6E6F69746365;
      if (v19 && *(*v8 + 8) == 25956)
      {
        goto LABEL_100;
      }
    }

    if (*(v4 + 3) == 18)
    {
      v21 = **v8 == 0x7465447475706E49 && (*v8)[1] == 0x6F4D6E6F69746365;
      if (v21 && *(*v8 + 8) == 25956)
      {
LABEL_132:
        if (v6)
        {
          v37 = [v6 unsignedLongLongValue] + 3;
          if (v37 < 0xAu)
          {
            v38 = &unk_D85EA;
            goto LABEL_135;
          }

          goto LABEL_139;
        }

        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [HSTBackboardBridge _handleSetPropertyEvent:];
        }

        goto LABEL_239;
      }
    }

    if (*(v4 + 3) == 21)
    {
      v23 = **v8 == 0x7461745374736F48 && (*v8)[1] == 0x63696669746F4E65;
      if (v23 && *(*v8 + 13) == 0x6E6F697461636966)
      {
LABEL_129:
        if (v9)
        {
          v97 = v9;
          v43 = [v97 objectForKeyedSubscript:@"ScreenOn"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }

          v48 = [v44 BOOLValue];
          v49 = [v97 objectForKeyedSubscript:@"PocketTouchesExpected"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          v96 = [v50 BOOLValue];
          v51 = [v97 objectForKeyedSubscript:@"FaceTouchesExpected"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          v95 = [v52 BOOLValue];
          v53 = [v97 objectForKeyedSubscript:@"CoverGestureEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          v94 = [v54 BOOLValue];
          v55 = [v97 objectForKeyedSubscript:@"WakeOnTapEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v55;
          }

          else
          {
            v56 = 0;
          }

          v93 = [v56 BOOLValue];
          v57 = [v97 objectForKeyedSubscript:@"WakeOnSwipeEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = v57;
          }

          else
          {
            v58 = 0;
          }

          v92 = [v58 BOOLValue];
          v59 = [v97 objectForKeyedSubscript:@"WakeOnLongPressEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          v91 = [v60 BOOLValue];
          v61 = [v97 objectForKeyedSubscript:@"WakeOnTwoFingerLongPressEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v62 = v61;
          }

          else
          {
            v62 = 0;
          }

          v90 = [v62 BOOLValue];
          v63 = [v97 objectForKeyedSubscript:@"WakeOnTapThroughEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v64 = v63;
          }

          else
          {
            v64 = 0;
          }

          v89 = [v64 BOOLValue];
          v65 = [v97 objectForKeyedSubscript:@"WakeOnSwipeThroughEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v66 = v65;
          }

          else
          {
            v66 = 0;
          }

          v88 = [v66 BOOLValue];
          v67 = [v97 objectForKeyedSubscript:@"WakeOnLongPressThroughEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v68 = v67;
          }

          else
          {
            v68 = 0;
          }

          v87 = [v68 BOOLValue];
          v69 = [v97 objectForKeyedSubscript:@"ChangeSourceKeyboardUsagePair"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v86 = [v70 unsignedIntValue];
          v71 = [v97 objectForKeyedSubscript:@"DisplayState"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v71;
          }

          else
          {
            v72 = 0;
          }

          v85 = [v72 unsignedIntValue];
          v73 = [v97 objectForKeyedSubscript:@"DisplayState"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v73;
          }

          else
          {
            v74 = 0;
          }

          v75 = [v74 unsignedIntValue];
          v76 = [v97 objectForKeyedSubscript:@"SecureIndicatorEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = v76;
          }

          else
          {
            v77 = 0;
          }

          v78 = [v77 BOOLValue];
          v79 = v75 == 3;
          v80 = v48 | 2;
          if (!v96)
          {
            v80 = v48;
          }

          if (v95)
          {
            v80 |= 4u;
          }

          if (v94)
          {
            v80 |= 8u;
          }

          if (v93)
          {
            v80 |= 0x10u;
          }

          if (v92)
          {
            v80 |= 0x20u;
          }

          if (v91)
          {
            v80 |= 0x40u;
          }

          if (v90)
          {
            v80 |= 0x800u;
          }

          if (v89)
          {
            v80 |= 0x80u;
          }

          if (v88)
          {
            v80 |= 0x100u;
          }

          if (v87)
          {
            v80 |= 0x200u;
          }

          if (v86 == 786480)
          {
            v81 = v80 | 0x400;
          }

          else
          {
            v81 = v80;
          }

          if ((v78 | v79))
          {
            v82 = v81 | (v85 == 2) | 0x1000;
          }

          else
          {
            v82 = v81 | (v85 == 2);
          }

          [(HSTBackboardBridge *)self _handleTouchMode:v82];
          [(HSTBackboardBridge *)self _handleStuckTouchDetectorState:v97];
        }

        else
        {
          memset(__b, 170, sizeof(__b));
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [HSTBackboardBridge _handleSetPropertyEvent:];
          }
        }

        goto LABEL_239;
      }
    }

    if (*(v4 + 3) == 19)
    {
      v25 = **v8 == 0x7363696870617247 && (*v8)[1] == 0x7461746E6569724FLL;
      if (v25 && *(*v8 + 11) == 0x6E6F697461746E65)
      {
        goto LABEL_111;
      }
    }

    if (*(v4 + 3) == 22)
    {
      v27 = **v8 == 0x63416E6F69746F4DLL && (*v8)[1] == 0x6944797469766974;
      if (v27 && *(*v8 + 14) == 0x6863746170736944)
      {
LABEL_136:
        if (v9)
        {
          v46 = v9;
          if (getBool(v46, @"stationary"))
          {
            v47 = 1;
          }

          else if (getBool(v46, @"walking"))
          {
            v47 = 2;
          }

          else if (getBool(v46, @"running"))
          {
            v47 = 3;
          }

          else if (getBool(v46, @"automotive"))
          {
            v47 = 4;
          }

          else
          {
            v47 = 0;
          }

          v83 = [(NSDictionary *)v46 objectForKeyedSubscript:@"confidence"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = v83;
          }

          else
          {
            v84 = 0;
          }

          if (v84)
          {
            -[HSTBackboardBridge _handleMotionState:confidence:](self, "_handleMotionState:confidence:", v47, [v84 intValue]);
          }

          else
          {
            memset(__b, 170, sizeof(__b));
            basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [HSTBackboardBridge _handleSetPropertyEvent:];
            }
          }
        }

        else
        {
          memset(__b, 170, sizeof(__b));
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [HSTBackboardBridge _handleSetPropertyEvent:];
          }
        }

        goto LABEL_239;
      }
    }

    if (*(v4 + 3) != 9)
    {
      goto LABEL_120;
    }

    v29 = *v8;
LABEL_93:
    v34 = *v29;
    v35 = v29[8];
    if (v34 != 0x6E61486863756F54 || v35 != 100)
    {
      goto LABEL_120;
    }

    if (v6)
    {
      -[HSTBackboardBridge _handleTouchHand:](self, "_handleTouchHand:", [v6 intValue]);
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTBackboardBridge _handleSetPropertyEvent:];
      }
    }

    goto LABEL_239;
  }

  if (v10 > 18)
  {
    if (v10 != 19)
    {
      if (v10 != 21)
      {
        if (v10 != 22)
        {
          goto LABEL_120;
        }

        v17 = *v8 == 0x63416E6F69746F4DLL && *(v4 + 3) == 0x6944797469766974;
        if (!v17 || *(v4 + 30) != 0x6863746170736944)
        {
          goto LABEL_120;
        }

        goto LABEL_136;
      }

      if (*v8 != 0x7461745374736F48 || *(v4 + 3) != 0x63696669746F4E65 || *(v4 + 29) != 0x6E6F697461636966)
      {
LABEL_120:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, "WristState"))
        {
          if (v6)
          {
            -[HSTBackboardBridge _handleWristState:](self, "_handleWristState:", [v6 intValue]);
          }

          else
          {
            memset(__b, 170, sizeof(__b));
            basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [HSTBackboardBridge _handleSetPropertyEvent:];
            }
          }
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, "ProxClearedAfterOccludedWake"))
        {
          if (v6)
          {
            if ([v6 BOOLValue])
            {
              [(HSTBackboardBridge *)self _handleProxClearedAfterOccludedWake];
            }
          }

          else
          {
            memset(__b, 170, sizeof(__b));
            basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [HSTBackboardBridge _handleSetPropertyEvent:];
            }
          }
        }

        goto LABEL_239;
      }

      goto LABEL_129;
    }

    if (*v8 != 0x7363696870617247 || *(v4 + 3) != 0x7461746E6569724FLL || *(v4 + 27) != 0x6E6F697461746E65)
    {
      goto LABEL_120;
    }

LABEL_111:
    if (v6)
    {
      -[HSTBackboardBridge _handleScreenOrientation:](self, "_handleScreenOrientation:", [v6 unsignedCharValue]);
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTBackboardBridge _handleSetPropertyEvent:];
      }
    }

    goto LABEL_239;
  }

  v29 = v4 + 16;
  if (v10 == 9)
  {
    goto LABEL_93;
  }

  if (v10 != 18)
  {
    goto LABEL_120;
  }

  if (*v8 != 0x7465446863756F54 || *(v4 + 3) != 0x6F4D6E6F69746365 || *(v4 + 16) != 25956)
  {
    if (*v8 != 0x7465447475706E49 || *(v4 + 3) != 0x6F4D6E6F69746365 || *(v4 + 16) != 25956)
    {
      goto LABEL_120;
    }

    goto LABEL_132;
  }

LABEL_100:
  if (v6)
  {
    v37 = [v6 unsignedLongLongValue] + 3;
    if (v37 < 6u)
    {
      v38 = &unk_D85DE;
LABEL_135:
      v45 = v38[v37];
LABEL_140:
      [(HSTBackboardBridge *)self _handleTouchMode:v45];
      goto LABEL_239;
    }

LABEL_139:
    v45 = 1;
    goto LABEL_140;
  }

  memset(__b, 170, sizeof(__b));
  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [HSTBackboardBridge _handleSetPropertyEvent:];
  }

LABEL_239:
}

- (void)_handleGetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = (v4 + 2);
  v7 = *(v4 + 39);
  if (v7 < 0)
  {
    if (v4[3] != 10)
    {
LABEL_14:
      v17.receiver = self;
      v17.super_class = HSTBackboardBridge;
      [(HSStage *)&v17 handleConsume:v5];
      goto LABEL_15;
    }

    v6 = *v6;
  }

  else if (v7 != 10)
  {
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(v6 + 4);
  if (v8 != 0x6174537265746157 || v9 != 25972)
  {
    goto LABEL_14;
  }

  v11 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = HSTBackboardBridge;
  [(HSStage *)&v18 handleConsume:v11];
  if (*(v11 + 16) != 1)
  {

    goto LABEL_14;
  }

  v19[0] = @"water";
  v12 = [NSNumber numberWithBool:*(v11 + 17)];
  v19[1] = @"confidence";
  v20[0] = v12;
  LODWORD(v13) = *(v11 + 20);
  v14 = [NSNumber numberWithFloat:v13];
  v20[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v16 = v5[5];
  v5[5] = v15;

LABEL_15:
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTBackboardBridge *)self _handleSetPropertyEvent:v4];
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTBackboardBridge *)self _handleGetPropertyEvent:v6];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = HSTBackboardBridge;
      [(HSStage *)&v8 handleConsume:v6];
    }
  }
}

- (void)_clear
{
  *&self->_state.touchMode.var0.__null_state_ = 0;
  *&self->_state.touchHand.var0.__null_state_ = 0;
  *&self->_state.usbChargingState.var0.__null_state_ = 0;
}

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v7 = *(a3 + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  p_state = &self->_state;
  if (p_state->touchMode.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key, p_state->touchMode.var0.__val_);
  }

  if (p_state->screenOrientation.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key, p_state->screenOrientation.var0.__val_);
  }

  if (p_state->motionState.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)111,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->motionState.var0.__val_);
  }

  if (p_state->touchHand.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100>::Key, p_state->touchHand.var0.__val_);
  }

  if (p_state->wristState.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->wristState.var0.__val_);
  }

  if (p_state->stockholmState.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->stockholmState.var0.__val_);
  }

  if (p_state->wirelessChargingState.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->wirelessChargingState.var0.__val_);
  }

  if (p_state->stuckTouchDetectorState.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->stuckTouchDetectorState.var0.__val_);
  }

  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)a3
{
  [(HSTBackboardBridge *)self _clear];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v5;
  v16 = v5;
  v13 = v5;
  v14 = v5;
  v12 = v5;
  HSUtil::Decoder::decodeMap(a3, &v12);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTBackboardBridge handleHSDecode:];
    }
  }

  else
  {
    while (1)
    {
      v9 = HSUtil::Decoder::decodeKey(&v12);
      if (v12)
      {
        break;
      }

      if (v9 == HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key)
      {
        self->_state.touchMode.var0.__val_ = HSUtil::Decoder::decodeUInt(&v12);
        self->_state.touchMode.__engaged_ = 1;
      }

      else if (v9 == HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key)
      {
        self->_state.screenOrientation = (HSUtil::Decoder::decodeUInt(&v12) | 0x100);
      }

      else if (v9 == HSUtil::CoderKey::Literal<(char)109,(char)111,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
      {
        self->_state.motionState = (HSUtil::Decoder::decodeUInt(&v12) | 0x100);
      }

      else if (v9 == HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100>::Key)
      {
        self->_state.touchHand = (HSUtil::Decoder::decodeUInt(&v12) | 0x100);
      }

      else
      {
        if (v9 == HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
        {
          v10 = HSUtil::Decoder::decodeUInt(&v12) | 0x100;
          v11 = &self->super._state.lock.__m_.__sig + 2;
        }

        else if (v9 == HSUtil::CoderKey::Literal<(char)115,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
        {
          v10 = HSUtil::Decoder::decodeUInt(&v12) | 0x100;
          v11 = &self->super._state.lock.__m_.__sig + 4;
        }

        else if (v9 == HSUtil::CoderKey::Literal<(char)119,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
        {
          v10 = HSUtil::Decoder::decodeUInt(&v12) | 0x100;
          v11 = &self->super._state.lock.__m_.__sig + 6;
        }

        else
        {
          if (v9 != HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)116,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
          {
            goto LABEL_4;
          }

          v10 = HSUtil::Decoder::decodeUInt(&v12) | 0x100;
          v11 = &self->super._state.lock.__m_.__opaque[2];
        }

        *(v11 + 60) = v10;
      }

      if (v12)
      {
        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [HSTBackboardBridge handleHSDecode:];
        }

        goto LABEL_4;
      }
    }

    if (v12 == 3)
    {
      v6 = 1;
      goto LABEL_5;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTBackboardBridge.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTBackboardBridge handleHSDecode:];
    }
  }

LABEL_4:
  v6 = 0;
LABEL_5:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v7 = v13;
  *&v13 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 120) = 0;
  *(self + 122) = 0;
  *(self + 132) = 0;
  *(self + 124) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  return self;
}

- (void)initWithQueue:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end