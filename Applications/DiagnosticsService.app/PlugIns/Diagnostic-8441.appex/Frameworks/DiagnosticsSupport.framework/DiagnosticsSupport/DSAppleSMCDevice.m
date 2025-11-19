@interface DSAppleSMCDevice
- (BOOL)closeAppleSMC;
- (BOOL)openAppleSMC:(int)a3;
- (BOOL)writeDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5;
- (BOOL)writeValueFor:(id)a3 andValue:(id)a4;
- (DSAppleSMCDevice)init;
- (double)readValueFor:(id)a3;
- (int)readDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5;
- (void)closeAppleSMC;
@end

@implementation DSAppleSMCDevice

- (DSAppleSMCDevice)init
{
  v3.receiver = self;
  v3.super_class = DSAppleSMCDevice;
  result = [(DSAppleSMCDevice *)&v3 init];
  if (result)
  {
    result->_dataPort = 0;
    result->_isConnectionOpen = 0;
  }

  return result;
}

- (BOOL)openAppleSMC:(int)a3
{
  *mainPort = 0;
  connect = 0;
  if (self->_isConnectionOpen)
  {
    v5 = [(DSAppleSMCDevice *)self closeAppleSMC];
    v6 = DiagnosticLogHandleForCategory(6);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [DSAppleSMCDevice openAppleSMC:];
      }

      return 0;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Closed an existing SMC connection.", v16, 2u);
    }
  }

  if (IOMainPort(0, &mainPort[1]))
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice openAppleSMC:];
    }

LABEL_16:

    result = 0;
    self->_dataPort = 0;
    return result;
  }

  v10 = mainPort[1];
  v11 = IOServiceMatching("AppleSMC");
  if (IOServiceGetMatchingServices(v10, v11, mainPort))
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice openAppleSMC:];
    }

    goto LABEL_16;
  }

  v12 = IOIteratorNext(mainPort[0]);
  IOObjectRelease(mainPort[0]);
  if (v12)
  {
    if (IOServiceOpen(v12, mach_task_self_, a3, &connect))
    {
      v13 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [DSAppleSMCDevice openAppleSMC:];
      }

      return 0;
    }

    v15 = connect;
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice openAppleSMC:];
    }

    v15 = 0;
  }

  self->_dataPort = v15;
  result = 1;
  self->_isConnectionOpen = 1;
  return result;
}

- (BOOL)closeAppleSMC
{
  if (IOConnectCallScalarMethod(self->_dataPort, 1u, 0, 0, 0, 0))
  {
    v3 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice closeAppleSMC];
    }

LABEL_7:

    return 0;
  }

  if (IOServiceClose(self->_dataPort))
  {
    v3 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice closeAppleSMC];
    }

    goto LABEL_7;
  }

  self->_dataPort = 0;
  self->_isConnectionOpen = 0;
  return 1;
}

- (double)readValueFor:(id)a3
{
  v4 = a3;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v5 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice readValueFor:];
    }
  }

  v6 = [v4 cStringUsingEncoding:4];
  v48 = smckSMCMakeUInt32Key(v6);
  BYTE6(v51) = 9;
  v7 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v48, &v25);
  if (v7 || BYTE8(v27))
  {
    v12 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = BYTE8(v27);
      v14 = "Could not retrieve Key info from AppleSMC for key: %s (0x%X, 0x%X)";
      goto LABEL_18;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (HIDWORD(v26) > 0x78)
  {
LABEL_13:
    v11 = NAN;
    goto LABEL_14;
  }

  BYTE4(v39) = 0;
  v36 = smckSMCMakeUInt32Key(v6);
  DWORD2(v38) = HIDWORD(v26);
  BYTE6(v39) = 5;
  v8 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v36, v21);
  if (v8 || BYTE8(v22))
  {
    v12 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = v6;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = BYTE8(v22);
      v14 = "Could not read data value from AppleSMC for key: %s (0x%X, 0x%X)";
LABEL_18:
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v14, &v15, 0x18u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = returnEnumForDataTypeStr(v27);
  v11 = convertKeyToValueMiniT(v9, DWORD2(v38), v23, v10);
LABEL_14:

  return v11;
}

- (int)readDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5
{
  v8 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  *__n = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice readValueFor:];
    }
  }

  v10 = [v8 cStringUsingEncoding:4];
  v50 = smckSMCMakeUInt32Key(v10);
  BYTE6(v53) = 9;
  v11 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v50, &v27);
  if (v11 || BYTE8(v29))
  {
    v14 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = BYTE8(v29);
      v16 = "Could not retrieve Key info from AppleSMC for key: %s (0x%X, 0x%X)";
      goto LABEL_18;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  if (HIDWORD(__n[1]) <= 0x78 && HIDWORD(__n[1]) <= a5)
  {
    BYTE4(v41) = 0;
    v38 = smckSMCMakeUInt32Key(v10);
    DWORD2(v40) = HIDWORD(__n[1]);
    BYTE6(v41) = 5;
    v13 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v38, v23);
    if (!v13 && !BYTE8(v24))
    {
      memcpy(a4, v25, HIDWORD(__n[1]));
      v12 = 1;
      goto LABEL_14;
    }

    v14 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = v10;
      v19 = 1024;
      v20 = v13;
      v21 = 1024;
      v22 = BYTE8(v24);
      v16 = "Could not read data value from AppleSMC for key: %s (0x%X, 0x%X)";
LABEL_18:
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v16, &v17, 0x18u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v12;
}

- (BOOL)writeValueFor:(id)a3 andValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v37 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v24, 0, sizeof(v24));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v8 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice writeValueFor:andValue:];
    }
  }

  v9 = [v6 cStringUsingEncoding:4];
  v41 = smckSMCMakeUInt32Key(v9);
  BYTE6(v44) = 9;
  v10 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v41, v34);
  if (v10 || BYTE8(v34[2]))
  {
    v15 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = BYTE8(v34[2]);
      v17 = "Could not retrieve Key info from AppleSMC for key: %s (0x%X, 0x%X)";
      goto LABEL_20;
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  v39[4] = 0;
  v11 = 0;
  v36 = smckSMCMakeUInt32Key(v9);
  *(&v38 + 1) = *(&v34[1] + 12);
  v39[6] = 6;
  if (BYTE12(v34[1]) <= 0x78u)
  {
    v12 = returnEnumForDataTypeStr(v34[2]);
    [v7 floatValue];
    if (translateFloatToFixed(v12, &v39[12], HIDWORD(v34[1]), v13) != 1)
    {
      v15 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [DSAppleSMCDevice writeValueFor:andValue:];
      }

      goto LABEL_13;
    }

    v14 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v36, v24);
    if (!v14 && !BYTE8(v25))
    {
      v11 = 1;
      goto LABEL_14;
    }

    v15 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = v9;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = BYTE8(v25);
      v17 = "Could not write data value from AppleSMC for key: %s (0x%X, 0x%X)";
LABEL_20:
      _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v17, &v18, 0x18u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v11;
}

- (BOOL)writeDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5
{
  v8 = a3;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice writeValueFor:andValue:];
    }
  }

  v10 = [v8 cStringUsingEncoding:4];
  v37[6] = 6;
  v34 = smckSMCMakeUInt32Key(v10);
  DWORD2(v36) = a5;
  if (a5)
  {
    v11 = a5 - 1;
    if (a5 - 1 >= 0x1F)
    {
      v11 = 31;
    }

    memcpy(&v37[12], a4, v11 + 1);
  }

  v12 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v34, v24);
  v13 = v12 | BYTE8(v25);
  v14 = v13 == 0;
  if (v13)
  {
    v15 = v12;
    v16 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = v10;
      v20 = 1024;
      v21 = v15;
      v22 = 1024;
      v23 = BYTE8(v25);
      _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Failed to write AppleSMC data for key: %s (0x%X, 0x%X)", &v18, 0x18u);
    }
  }

  return v14;
}

- (void)openAppleSMC:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)openAppleSMC:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)openAppleSMC:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)openAppleSMC:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)closeAppleSMC
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)readValueFor:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeValueFor:andValue:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeValueFor:andValue:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end