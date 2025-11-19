@interface FigNetworkWirelessReportingInterface
+ (id)globalInterface;
- (FigNetworkWirelessReportingInterface)init;
@end

@implementation FigNetworkWirelessReportingInterface

- (FigNetworkWirelessReportingInterface)init
{
  v43 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = FigNetworkWirelessReportingInterface;
  v2 = [(FigNetworkWirelessReportingInterface *)&v34 init];
  if (!v2)
  {
    [FigNetworkWirelessReportingInterface init];
    v4 = 0;
LABEL_30:
    v21 = 0;
    goto LABEL_21;
  }

  v33 = 0;
  v3 = [[FigCoreWiFi alloc] initWithError:&v33];
  v4 = v33;
  wifiManager = v2->_wifiManager;
  v2->_wifiManager = v3;

  if (!v2->_wifiManager)
  {
    v32 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
LABEL_29:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_30;
  }

  if (CelestialIsAudioAccessory())
  {
LABEL_6:
    v9 = v4;
    v29 = v4;
    v10 = [[FigWTEPredictionProvider alloc] initWithError:&v29];
    v4 = v29;

    wtePredictionProvider = v2->_wtePredictionProvider;
    v2->_wtePredictionProvider = v10;

    if (v2->_wtePredictionProvider)
    {
      if (dword_1EAF17610)
      {
        v32 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = v32;
        if (os_log_type_enabled(v12, type))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v15 = v2->_wtePredictionProvider;
          v35 = 136315650;
          v36 = "[FigNetworkWirelessReportingInterface init]";
          v37 = 2112;
          v38 = v2;
          v39 = 2112;
          v40 = v15;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();

        if (dword_1EAF17610)
        {
          v32 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v17 = v32;
          if (os_log_type_enabled(v16, type))
          {
            v18 = v17;
          }

          else
          {
            v18 = v17 & 0xFFFFFFFE;
          }

          if (v18)
          {
            v19 = v2->_wifiManager;
            cellManager = v2->_cellManager;
            v35 = 136315906;
            v36 = "[FigNetworkWirelessReportingInterface init]";
            v37 = 2112;
            v38 = v2;
            v39 = 2112;
            v40 = v19;
            v41 = 2112;
            v42 = cellManager;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v21 = v2;
      goto LABEL_21;
    }

    v32 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v32;
    if (os_log_type_enabled(v23, type))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v35 = 136315394;
      v36 = "[FigNetworkWirelessReportingInterface init]";
      v37 = 2112;
      v38 = v4;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_29;
  }

  v30 = v4;
  v6 = [[FigCoreTelephony alloc] initWithError:&v30];
  v7 = v30;

  v8 = v2->_cellManager;
  v2->_cellManager = v6;

  if (v2->_cellManager)
  {
    v4 = v7;
    goto LABEL_6;
  }

  v32 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v27 = v32;
  if (os_log_type_enabled(v26, type))
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 & 0xFFFFFFFE;
  }

  if (v28)
  {
    v35 = 136315394;
    v36 = "[FigNetworkWirelessReportingInterface init]";
    v37 = 2112;
    v38 = v7;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();

  v21 = 0;
  v4 = v7;
LABEL_21:

  return v21;
}

+ (id)globalInterface
{
  if (globalInterface_sOnceToken != -1)
  {
    +[FigNetworkWirelessReportingInterface globalInterface];
  }

  v3 = globalInterface_sGlobalInterface;

  return v3;
}

uint64_t __55__FigNetworkWirelessReportingInterface_globalInterface__block_invoke()
{
  globalInterface_sGlobalInterface = objc_alloc_init(FigNetworkWirelessReportingInterface);

  return MEMORY[0x1EEE66BB8]();
}

@end