@interface VCNetworkAgentCell
- (VCNetworkAgentCell)init;
- (id)queryWifiInterfaceName;
- (void)dealloc;
- (void)queryWifiInterfaceName;
@end

@implementation VCNetworkAgentCell

- (VCNetworkAgentCell)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCNetworkAgentCell;
  v2 = [(VCObject *)&v5 init];
  if (v2)
  {
    v2->_agentUUID = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v2->_active = 1;
    v2->_voluntary = 1;
    v2->_wifiInterfaceName = [(VCNetworkAgentCell *)v2 queryWifiInterfaceName];
    v3 = [objc_alloc(MEMORY[0x1E6977E38]) initWithNetworkAgentClass:objc_opt_class()];
    v2->_agentRegistration = v3;
    [(NWNetworkAgentRegistration *)v3 registerNetworkAgent:v2];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCNetworkAgentCell;
  [(VCObject *)&v3 dealloc];
}

- (id)queryWifiInterfaceName
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E128C540](self, a2);
  v3 = v2;
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCNetworkAgentCell queryWifiInterfaceName];
      }
    }

    goto LABEL_15;
  }

  nw_parameters_set_required_interface_type(v2, nw_interface_type_wifi);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (!evaluator_for_endpoint)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCNetworkAgentCell queryWifiInterfaceName];
      }
    }

LABEL_15:
    v9 = 0;
    v7 = 0;
    v5 = 0;
LABEL_24:
    v10 = @"en0";
    goto LABEL_8;
  }

  v5 = evaluator_for_endpoint;
  v6 = nw_path_evaluator_copy_path();
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCNetworkAgentCell queryWifiInterfaceName];
      }
    }

    v9 = 0;
    v7 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = nw_path_copy_interface();
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCNetworkAgentCell queryWifiInterfaceName];
      }
    }

    v9 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", nw_interface_get_name(v8)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v11;
      v16 = 2080;
      v17 = "[VCNetworkAgentCell queryWifiInterfaceName]";
      v18 = 1024;
      v19 = 91;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Wifi interface name %@", buf, 0x26u);
    }
  }

LABEL_8:

  return v10;
}

VCNetworkAgentCell *___VCNetworkAgentCell_SharedInstance_block_invoke()
{
  result = objc_alloc_init(VCNetworkAgentCell);
  _VCNetworkAgentCell_SharedInstance_sharedInstance = result;
  return result;
}

- (void)queryWifiInterfaceName
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d nil parameters", v2, v3, v4, v5, v6);
}

@end