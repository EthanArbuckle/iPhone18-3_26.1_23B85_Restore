@interface HSTSensingAlgs
- (BOOL)handleHSDecode:(void *)a3;
- (BOOL)handleHSEncode:(void *)a3;
- (HSTSensingAlgs)initWithConfig:(const HSTSensingAlgsConfig *)a3;
- (HSTSensingAlgsConfig)config;
- (id)_handleSAFrame:(id)a3;
- (void)_handleCoreAnalytics:(id)a3 payload:(id)a4;
- (void)_handleDriverEvent:(id)a3;
- (void)_handleEvents:(id)a3;
- (void)_handleGetPropertyEvent:(id)a3;
- (void)_handlePencilEvents:(id)a3;
- (void)_handleResetRequest:(unsigned __int8)a3;
- (void)_handleSetPropertyEvent:(id)a3;
- (void)_handleStream:(id)a3;
- (void)_handleTimestampSyncEvent:(id)a3;
- (void)handleConsume:(id)a3;
- (void)setConfig:(HSTSensingAlgsConfig *)a3;
@end

@implementation HSTSensingAlgs

- (HSTSensingAlgs)initWithConfig:(const HSTSensingAlgsConfig *)a3
{
  v39.receiver = self;
  v39.super_class = HSTSensingAlgs;
  v4 = [(HSStage *)&v39 init];
  v5 = v4;
  if (v4)
  {
    p_config = &v4->_config;
    *&v4->_config.maxPacketSize = *&a3->maxPacketSize;
    objc_storeStrong(&v4->_config.frameworkString, a3->frameworkString);
    v5->_config.device = a3->device;
    frameworkString = v5->_config.frameworkString;
    if (frameworkString)
    {
      v8 = frameworkString;
    }

    else
    {
      v8 = @"SensingAlgsService.framework";
    }

    v10 = [NSString stringWithFormat:@"%@%@", @"/System/Library/PrivateFrameworks/", v8];
    v11 = [[NSBundle alloc] initWithPath:v10];
    if ([v11 load])
    {
      v12 = [v11 principalClass];
      if (([(objc_class *)v12 conformsToProtocol:&OBJC_PROTOCOL___SASInterfaceProtocol]& 1) != 0)
      {
        v13 = MTLoggingPlugin();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v41 = v10;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "HSTSensingAlgs: Correctly loaded %{public}@", buf, 0xCu);
        }

        objc_initWeak(buf, v5);
        v14 = [v12 alloc];
        maxPacketSize = p_config->maxPacketSize;
        familyID = v5->_config.familyID;
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke;
        v37[3] = &unk_10A9D0;
        objc_copyWeak(&v38, buf);
        v17 = [v14 initWithStreamSize:maxPacketSize platformId:familyID streamCallback:v37];
        planInterface = v5->_planInterface;
        v5->_planInterface = v17;

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_2;
        v35[3] = &unk_10A9F8;
        objc_copyWeak(&v36, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setEventCallback:v35];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_3;
        v33[3] = &unk_10AA20;
        objc_copyWeak(&v34, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setResetRequestCallback:v33];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_4;
        v31[3] = &unk_10AA48;
        objc_copyWeak(&v32, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setCoreAnalyticsCallback:v31];
        v19 = [NSString stringWithUTF8String:"@(#)PROGRAM:HSTPipeline  PROJECT:MultitouchSoftware-9110.1\n"];
        v20 = [v19 componentsSeparatedByString:@"PROJECT:"];

        if ([v20 count] >= 2)
        {
          v21 = v5->_planInterface;
          v22 = [v20 objectAtIndexedSubscript:1];
          [(SASInterfaceProtocol *)v21 addVersion:v22];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_29;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_5;
        v29[3] = &unk_10A9F8;
        objc_copyWeak(&v30, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setPencilEventCallback:v29];
        v23 = MTDeviceEnableWorkIntervalNotification();
        if (v23 == -536870201)
        {
          v24 = MTLoggingPlugin();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            v25 = "Work interval notification unsupported";
            goto LABEL_25;
          }
        }

        else
        {
          if (v23)
          {
            v24 = MTLoggingPlugin();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [HSTSensingAlgs initWithConfig:];
            }

            goto LABEL_28;
          }

          v24 = MTLoggingPlugin();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            v25 = "Work interval notification enabled";
LABEL_25:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v25, v28, 2u);
          }
        }

LABEL_28:

        objc_destroyWeak(&v30);
LABEL_29:
        v9 = v5;

        objc_destroyWeak(&v32);
        objc_destroyWeak(&v34);
        objc_destroyWeak(&v36);
        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);
        goto LABEL_30;
      }

      v26 = MTLoggingPlugin();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [HSTSensingAlgs initWithConfig:];
      }
    }

    else
    {
      v26 = MTLoggingPlugin();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [HSTSensingAlgs initWithConfig:];
      }
    }

    v9 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v9 = 0;
LABEL_31:

  return v9;
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStream:v3];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvents:v3];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleResetRequest:a2];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCoreAnalytics:v6 payload:v5];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePencilEvents:v3];
}

- (void)_handleEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v15 = 0xAAAAAAAAAAAAAAAALL;
          v15 = *(*(&v11 + 1) + 8 * v9);
          std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v15);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    v10.receiver = self;
    v10.super_class = HSTSensingAlgs;
    [(HSStage *)&v10 handleConsume:v5];
    MTDeviceNotifyWorkInterval();
  }
}

- (void)_handlePencilEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v16 = 0xAAAAAAAAAAAAAAAALL;
          v16 = *(*(&v12 + 1) + 8 * v9);
          std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v16);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = objc_opt_new();
    objc_storeStrong(v10 + 2, v5);
    v11.receiver = self;
    v11.super_class = HSTSensingAlgs;
    [(HSStage *)&v11 handleConsume:v10];
    MTDeviceNotifyWorkInterval();
  }
}

- (void)_handleStream:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_filteredClients && [v5 length])
  {
    v7 = objc_opt_new();
    objc_storeStrong(v7 + 1, a3);
    v8.receiver = self;
    v8.super_class = HSTSensingAlgs;
    [(HSStage *)&v8 handleConsume:v7];
  }
}

- (void)_handleCoreAnalytics:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HSTAnalyticsEvent alloc] initWithName:v6 payload:v7];
  v9.receiver = self;
  v9.super_class = HSTSensingAlgs;
  [(HSStage *)&v9 handleConsume:v8];
}

- (void)_handleResetRequest:(unsigned __int8)a3
{
  __src = a3;
  memset(v16, 170, sizeof(v16));
  v15 = 90;
  v10 = v16;
  v11 = xmmword_D8C70;
  v12 = 0xAAAAAAAAAA00AA00;
  v13 = 0;
  inited = SABinaryWriter::initHostRequest(&v10, 1, 1uLL, &__src);
  v5 = MTLoggingPlugin();
  v6 = v5;
  if (inited)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "FW SA Reset Request", buf, 2u);
    }

    v7 = [HSTSetReportEvent alloc];
    v6 = [(HSTSetReportEvent *)v7 initWithBuffer:&v15 length:*(&v11 + 1) + 1];
    v8.receiver = self;
    v8.super_class = HSTSensingAlgs;
    [(HSStage *)&v8 handleConsume:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [HSTSensingAlgs _handleResetRequest:];
  }
}

- (id)_handleSAFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HSTSensingAlgs.mm" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  if (HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::SABinaryFrame>(v5[1]))
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [HSTSensingAlgs _handleSAFrame:];
    }

    if (([(SASInterfaceProtocol *)self->_planInterface handleInputStream:v5[1]]& 1) == 0)
    {
      v7 = MTLoggingPlugin();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [HSTSensingAlgs _handleSAFrame:];
      }
    }

    if (self->_filteredClients)
    {

      v5 = 0;
    }
  }

  v8 = v5;

  return v8;
}

- (void)_handleDriverEvent:(id)a3
{
  v5 = a3;
  if ([v5 notification] == 5)
  {
    v4 = 1;
  }

  else
  {
    if ([v5 notification] != 6)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  self->_filteredClients = v4;
LABEL_6:
}

- (void)_handleSetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4 + 16;
  v7 = v4[39];
  if ((v7 & 0x80000000) == 0)
  {
    if (v4[39] != 13)
    {
      if (v4[39] != 15)
      {
        goto LABEL_34;
      }

      if (*v6 != 0x617A69746E617551 || *(v4 + 23) != 0x4950446E6F697461)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

LABEL_17:
    v10 = *v6;
    v11 = *(v6 + 5);
    if (v10 != 0x7369447265766F48 || v11 != 0x64656C6261736944)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (*(v4 + 3) != 15 || (**v6 == 0x617A69746E617551 ? (v9 = *(*v6 + 7) == 0x4950446E6F697461) : (v9 = 0), !v9))
  {
    if (*(v4 + 3) != 13)
    {
      goto LABEL_34;
    }

    v6 = *v6;
    goto LABEL_17;
  }

LABEL_23:
  v13 = *(v4 + 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  quantizationDPI = self->_quantizationDPI;
  self->_quantizationDPI = v14;

  LOBYTE(v7) = v5[39];
LABEL_27:
  v16 = v5 + 16;
  if ((v7 & 0x80) != 0)
  {
    v16 = *v16;
  }

  v17 = [NSString stringWithUTF8String:v16];
  if (([(SASInterfaceProtocol *)self->_planInterface injectProperty:v17 value:*(v5 + 5)]& 1) == 0)
  {
    v18 = MTLoggingPlugin();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [HSTSensingAlgs _handleSetPropertyEvent:];
    }
  }

LABEL_34:
}

- (void)_handleGetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = v4 + 16;
  v6 = v4[39];
  if (v6 < 0)
  {
    if (*(v4 + 3) != 15)
    {
      goto LABEL_13;
    }

    v5 = *v5;
  }

  else if (v6 != 15)
  {
    goto LABEL_13;
  }

  v7 = *v5;
  v8 = *(v5 + 7);
  if (v7 == 0x617A69746E617551 && v8 == 0x4950446E6F697461)
  {
    quantizationDPI = self->_quantizationDPI;
    if (quantizationDPI)
    {
      v11 = v4;
      objc_storeStrong(v4 + 5, quantizationDPI);
      v4 = v11;
    }
  }

LABEL_13:
}

- (void)_handleTimestampSyncEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceTimestampOffsetMs];
  planInterface = self->_planInterface;
  v7 = [NSNumber numberWithLongLong:v5];
  LODWORD(planInterface) = [(SASInterfaceProtocol *)planInterface injectProperty:@"TimestampSync" value:v7];

  if (planInterface)
  {
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HSTSensingAlgs _handleTimestampSyncEvent:];
    }
  }

  else
  {
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HSTSensingAlgs _handleTimestampSyncEvent:];
    }
  }
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
    v6 = [(HSTSensingAlgs *)self _handleSAFrame:v4];

    v7 = v6;
  }

  else
  {
    v7 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(HSTSensingAlgs *)self _handleDriverEvent:v7];
    }

    else
    {
      v7 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTSensingAlgs *)self _handleResetRequest:0];
      }

      else
      {
        v7 = v7;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          [(HSTSensingAlgs *)self _handleSetPropertyEvent:v7];
        }

        else
        {
          v11 = HSUtil::DynamicCast<HSTGetPropertyEvent>(v7);

          if (v11)
          {
            [(HSTSensingAlgs *)self _handleGetPropertyEvent:v7];
          }

          else
          {
            v12 = HSUtil::DynamicCast<HSTTimestampSyncEvent>(v7);

            if (v12)
            {
              [(HSTSensingAlgs *)self _handleTimestampSyncEvent:v7];
            }
          }
        }
      }
    }
  }

  if (v7)
  {
    v13.receiver = self;
    v13.super_class = HSTSensingAlgs;
    [(HSStage *)&v13 handleConsume:v7];
  }
}

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v6 = *(a3 + 17);
    DWORD2(v6) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)80,(char)97,(char)99,(char)107,(char)101,(char)116,(char)83,(char)105,(char)122,(char)101>::Key, self->_config.maxPacketSize);
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)a3
{
  self->_config.maxPacketSize = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)80,(char)97,(char)99,(char)107,(char)101,(char)116,(char)83,(char)105,(char)122,(char)101>::Key);
  v4 = *a3;
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTSensingAlgs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTSensingAlgs handleHSDecode:];
    }
  }

  return v4 == 0;
}

- (HSTSensingAlgsConfig)config
{
  p_config = &self->_config;
  *&retstr->maxPacketSize = *&self->_config.maxPacketSize;
  result = self->_config.frameworkString;
  device = p_config->device;
  retstr->frameworkString = result;
  retstr->device = device;
  return result;
}

- (void)setConfig:(HSTSensingAlgsConfig *)a3
{
  p_config = &self->_config;
  *&self->_config.maxPacketSize = *&a3->maxPacketSize;
  objc_storeStrong(&self->_config.frameworkString, a3->frameworkString);
  p_config->device = a3->device;
  frameworkString = a3->frameworkString;
}

- (void)initWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResetRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSAFrame:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Error injecting property %{public}@=%{public}@ in SA", v2, 0x16u);
}

- (void)_handleTimestampSyncEvent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end