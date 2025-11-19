uint64_t ggctl_connect(io_object_t *a1)
{
  connect = 0;
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceMatching("AppleHDQGasGaugeControl");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    if (IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &connect))
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        ggctl_connect_cold_1();
      }

      connect = 0;
    }

    if (a1)
    {
      *a1 = v5;
    }

    else
    {
      IOObjectRelease(v5);
    }

    return connect;
  }

  else
  {
    result = os_log_type_enabled(logger, OS_LOG_TYPE_ERROR);
    if (result)
    {
      ggctl_connect_cold_2();
      return 0;
    }
  }

  return result;
}

uint64_t ggctl_disconnect(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

void ggctl_reset(mach_port_t a1, unsigned int a2)
{
  input = a2;
  v2 = IOConnectCallMethod(a1, 0, &input, 1u, 0, 0, 0, 0, 0, 0);
  v3 = logger;
  if (v2)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      ggctl_reset_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29D352000, v3, OS_LOG_TYPE_DEFAULT, "gas gauge: reset", buf, 2u);
    }

    ++gauge_reset_count;
  }
}

uint64_t ggctl_get_hdq_state(mach_port_t a1)
{
  output = 0;
  outputCnt = 1;
  v1 = IOConnectCallMethod(a1, 1u, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
  if (v1 == -536870183)
  {
    return 4294967294;
  }

  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  return output != 0;
}

uint64_t ggctl_map_currentlog(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  result = MEMORY[0x29ED52C10](a1, 0, *MEMORY[0x29EDCA6B0], &v6, &v5, 1);
  v4 = v6;
  if (result)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ggctl_open_device(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (!a3)
  {
    return v3;
  }

  hdq_state = ggctl_get_hdq_state(a1);
  if (hdq_state < 0)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      ggctl_open_device_cold_3();
    }
  }

  else
  {
    if (hdq_state)
    {
      if (IOConnectCallScalarMethod(v3, 6u, 0, 0, 0, 0) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        ggctl_open_device_cold_1();
      }

      return v3;
    }

    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      ggctl_open_device_cold_2();
    }

    ggctl_reset(v3, 1u);
  }

  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    ggctl_open_device_cold_4();
  }

  return 0xFFFFFFFFLL;
}

uint64_t hdqBreak(mach_port_t a1)
{
  v1 = IOConnectCallScalarMethod(a1, 6u, 0, 0, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_hdqBreak(mach_port_t a1)
{
  v1 = IOConnectCallScalarMethod(a1, 6u, 0, 0, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_hdqRead8(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  input = a2;
  v6 = vdupq_n_s64(8uLL);
  outputCnt = 1;
  if (IOConnectCallScalarMethod(a1, 7u, &input, 3u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_hdqRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v4 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v4, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_hdqWrite8(mach_port_t a1, char a2, unsigned __int8 a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = a2 & 0x7F | (a3 << 8) | 0x80u;
  v6 = xmmword_29D35D0D0;
  if (IOConnectCallScalarMethod(a1, 7u, &v5, 3u, 0, 0))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_controlRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v4 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v4, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_controlWrite16(mach_port_t a1, int a2, int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallScalarMethod(a1, 0xAu, input, 2u, 0, 0))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_readBlock(mach_port_t a1, int a2, int a3, void *outputStruct, _BYTE *a5)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  output = 0;
  outputCnt = 1;
  v8 = 32;
  if (IOConnectCallMethod(a1, 9u, input, 2u, 0, 0, &output, &outputCnt, outputStruct, &v8))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    if (a5)
    {
      *a5 = output;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_writeBlock(mach_port_t a1, int a2, int a3, void *inputStruct)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallMethod(a1, 0xFu, input, 2u, inputStruct, 0x20uLL, 0, 0, 0, 0))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_drainDataLog(mach_port_t a1)
{
  if (IOConnectCallMethod(a1, 0xEu, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ggctl_gaugeInterrupts(mach_port_t a1, unsigned int a2)
{
  input = a2;
  v2 = IOConnectCallScalarMethod(a1, 0x10u, &input, 1u, 0, 0);
  if (v2 == -536870183)
  {
    v3 = -2;
  }

  else
  {
    v3 = -1;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef pmps_service()
{
  keys = @"built-in";
  result = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &keys, MEMORY[0x29EDB8F00], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (result)
  {
    v1 = result;
    v2 = IOServiceMatching("IOPMPowerSource");
    CFDictionarySetValue(v2, @"IOPropertyMatch", v1);
    CFRelease(v1);
    return IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v2);
  }

  return result;
}

uint64_t hdqRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v4 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v4, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hdqWrite8(mach_port_t a1, char a2, unsigned __int8 a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = a2 & 0x7F | (a3 << 8) | 0x80u;
  v6 = xmmword_29D35D0D0;
  if (IOConnectCallScalarMethod(a1, 7u, &v5, 3u, 0, 0))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t controlOp16(mach_port_t a1, int a2)
{
  input = a2;
  if (IOConnectCallScalarMethod(a1, 0xAu, &input, 1u, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t controlRead16(mach_port_t a1, int a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v4 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v4, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t controlWrite16(mach_port_t a1, int a2, int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallScalarMethod(a1, 0xAu, input, 2u, 0, 0))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t writeBlock(mach_port_t a1, int a2, int a3, void *inputStruct)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  if (IOConnectCallMethod(a1, 0xFu, input, 2u, inputStruct, 0x20uLL, 0, 0, 0, 0))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t drainDataLog(mach_port_t a1)
{
  if (IOConnectCallMethod(a1, 0xEu, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t gaugeEnableInterrupts(mach_port_t a1)
{
  input = 1;
  v1 = IOConnectCallScalarMethod(a1, 0x10u, &input, 1u, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t gaugeDisableInterrupts(mach_port_t a1)
{
  input = 0;
  v1 = IOConnectCallScalarMethod(a1, 0x10u, &input, 1u, 0, 0);
  if (v1 == -536870183)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t gaugeDisconnect(mach_port_t connection)
{
  v2 = 0;
  v16 = *MEMORY[0x29EDCA608];
  while (1)
  {
    output = 0;
    outputCnt = 1;
    input = 23;
    v3 = IOConnectCallScalarMethod(connection, 0xBu, &input, 1u, &output, &outputCnt) ? -1 : output;
    if (!v3)
    {
      break;
    }

    v4 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      LODWORD(output) = 67109376;
      HIDWORD(output) = v2;
      v14 = 1024;
      v15 = v3;
      _os_log_error_impl(&dword_29D352000, v4, OS_LOG_TYPE_ERROR, "%d: retry OpenProtector (%d)", &output, 0xEu);
    }

    usleep(0xF4240u);
    if (++v2 == 3)
    {
      v5 = -36;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  v10 = 0;
  output = 0;
  outputCnt = 1;
  input = 32;
  IOConnectCallScalarMethod(connection, 0xBu, &input, 1u, &output, &outputCnt);
  v6 = controlReadU16(connection, 0, &v10);
  if ((v10 & 0x2000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    result = 4294967291;
  }

  else
  {
    result = v7;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t controlReadU16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v6 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v6, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hdqReadS16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v6 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v6, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hdqReadU16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v6 = a2;
  if (IOConnectCallScalarMethod(a1, 8u, &v6, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hdqReadS8(mach_port_t a1, int a2, _BYTE *a3)
{
  result = ggctl_hdqRead8(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t hdqReadU8(mach_port_t a1, int a2, _BYTE *a3)
{
  result = ggctl_hdqRead8(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    return 0;
  }

  return result;
}

uint64_t controlReadS16(mach_port_t a1, int a2, _WORD *a3)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0;
  outputCnt = 1;
  v6 = a2;
  if (IOConnectCallScalarMethod(a1, 0xBu, &v6, 1u, output, &outputCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = result;
    }

    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t dumpBuffer(unsigned __int8 *a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      v5 = *a1++;
      printf(" %02x", v5);
      --v4;
    }

    while (v4);
  }

  return putchar(10);
}

uint64_t registerName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x600)
  {
    if (a2 - 1281 > 1 || (*a1 | 4) != 0x1E)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((*a1 | 2) == 0xE)
  {
    return 0;
  }

LABEL_8:
  v2 = *(a1 + 72);
  if (!v2 && (a2 < 0x600 || (v2 = *(a1 + 48)) == 0) && (a2 < 0x501 || (v2 = *(a1 + 40)) == 0) && (a2 < 0x313 || (v2 = *(a1 + 32)) == 0) && (a2 < 0x132 || (v2 = *(a1 + 24)) == 0))
  {
    if (a2 < 0x119)
    {
      return *(a1 + 8);
    }

    v2 = *(a1 + 16);
    if (!v2)
    {
      return *(a1 + 8);
    }
  }

  return v2;
}

uint64_t readRegister(_WORD *a1, uint64_t a2, mach_port_t a3)
{
  v4 = *(a2 + 4);
  result = 0xFFFFFFFFLL;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v6 = *a2;

        return hdqReadU16(a3, v6, a1);
      }
    }

    else
    {
      v9 = *a2;

      return hdqReadS16(a3, v9, a1);
    }
  }

  else
  {
    switch(v4)
    {
      case 100:
        v7 = *(a2 + 64);
        if (v7)
        {

          return v7(a1);
        }

        break;
      case 10:
        v8 = *a2;

        return controlReadU16(a3, v8, a1);
      case 2:
        result = ggctl_hdqRead8(a3, *a2);
        if ((result & 0x80000000) == 0)
        {
          if (a1)
          {
            *a1 = result;
          }

          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t getFWVersion(mach_port_t a1, __int16 *a2)
{
  v3 = getFWVersion_gFWVersion;
  if (getFWVersion_gFWVersion)
  {
    goto LABEL_2;
  }

  if (!controlReadU16(a1, 2, &getFWVersion_gFWVersion))
  {
    v3 = getFWVersion_gFWVersion;
    if (getFWVersion_gFWVersion == 256)
    {
      v3 = 1536;
      getFWVersion_gFWVersion = 1536;
    }

LABEL_2:
    result = 0;
    *a2 = v3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t readLifetimeData(_OWORD *a1, uint64_t a2, mach_port_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = 0;
  if ((getFWVersion(a3, &v9) & 0x80000000) == 0)
  {
    if (v9 < 0x313u)
    {
      result = 0;
      goto LABEL_7;
    }

    if (!ggctl_readBlock(a3, -1, 4, &outputStruct, 0))
    {
      v5 = v11;
      *a1 = outputStruct;
      a1[1] = v5;
      result = ggctl_readBlock(a3, -1, 6, &outputStruct, 0);
      if (!result)
      {
        v8 = v11;
        a1[2] = outputStruct;
        a1[3] = v8;
        goto LABEL_7;
      }
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t readRaTableData(_OWORD *a1, uint64_t a2, mach_port_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = 0;
  if ((getFWVersion(a3, &v8) & 0x80000000) == 0)
  {
    if (v8 < 0x600u)
    {
      result = 0;
      goto LABEL_7;
    }

    result = ggctl_readBlock(a3, -1, 7, outputStruct, 0);
    if (!result)
    {
      v6 = outputStruct[1];
      *a1 = outputStruct[0];
      a1[1] = v6;
      goto LABEL_7;
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t readIMAXAndSOCSmoothData(_OWORD *a1, uint64_t a2, mach_port_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = 0;
  if ((getFWVersion(a3, &v8) & 0x80000000) == 0)
  {
    if (v8 < 0x600u)
    {
      result = 0;
      goto LABEL_7;
    }

    result = ggctl_readBlock(a3, -1, 8, outputStruct, 0);
    if (!result)
    {
      v6 = outputStruct[1];
      *a1 = outputStruct[0];
      a1[1] = v6;
      goto LABEL_7;
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t findRaWeightMulitplier(int a1)
{
  v1 = &dword_2A17A180C;
  v2 = 17;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

CFDictionaryRef readShutdownReasonData(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v13, 0, sizeof(v13));
  if (ggctl_logShutdownReason(a1, v6, 1u))
  {
    v2 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "readShutdownReasonData";
      v11 = 1024;
      v12 = 2502;
      v3 = "%s:%d cannot read data";
LABEL_4:
      _os_log_impl(&dword_29D352000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 0x12u);
    }
  }

  else
  {
    if (*(&v7 + 1))
    {
      result = parseShutdownReason(v6, v13, a1);
      goto LABEL_8;
    }

    v2 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "readShutdownReasonData";
      v11 = 1024;
      v12 = 2506;
      v3 = "%s:%d invalid timestamp";
      goto LABEL_4;
    }
  }

  result = 0;
LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ggctl_logShutdownReason(mach_port_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v10 = 64;
  if (!a2)
  {
LABEL_4:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    outputStruct = 0u;
    v12 = 0u;
    input = a3;
    result = IOConnectCallMethod(a1, 0x11u, &input, 1u, inputStruct, 0x40uLL, 0, 0, &outputStruct, &v10);
    if (!result)
    {
      v6 = v12;
      *a2 = outputStruct;
      *(a2 + 16) = v6;
      *(a2 + 32) = v13;
      *(a2 + 48) = v14;
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v5 = *(a2 + 16);
  inputStruct[0] = *a2;
  inputStruct[1] = v5;
  inputStruct[2] = *(a2 + 32);
  v16 = *(a2 + 48);
  v9 = a3;
  if (IOConnectCallMethod(a1, 0x11u, &v9, 1u, inputStruct, 0x40uLL, 0, 0, &outputStruct, &v10))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

CFDictionaryRef parseShutdownReason(__int16 *a1, const UInt8 *a2, uint64_t a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  keys[0] = @"ShutDownTimestamp";
  v6 = *MEMORY[0x29EDB8ED8];
  valuePtr = *(a1 + 5);
  values[0] = CFNumberCreate(v6, kCFNumberLongType, &valuePtr);
  keys[1] = @"ShutDownUISoc";
  v36 = *(a1 + 12);
  values[1] = CFNumberCreate(v6, kCFNumberFloatType, &v36);
  keys[2] = @"ShutDownTemperature";
  v35 = *a1;
  values[2] = CFNumberCreate(v6, kCFNumberIntType, &v35);
  keys[3] = @"ShutDownPresentDOD";
  v34 = a1[1];
  values[3] = CFNumberCreate(v6, kCFNumberIntType, &v34);
  keys[4] = @"ShutDownMaxRa08";
  v33 = a1[2];
  values[4] = CFNumberCreate(v6, kCFNumberIntType, &v33);
  keys[5] = @"ShutDownNominalChargeCapacity";
  v32 = a1[3];
  values[5] = CFNumberCreate(v6, kCFNumberIntType, &v32);
  keys[6] = @"ShutDownPrevNominalChargeCapacity";
  v31 = a1[4];
  values[6] = CFNumberCreate(v6, kCFNumberIntType, &v31);
  keys[7] = @"ShutDownFullChargeCapacity";
  v30 = a1[5];
  values[7] = CFNumberCreate(v6, kCFNumberIntType, &v30);
  keys[8] = @"ShutDownPrevFullChargeCapacity";
  v29 = a1[6];
  values[8] = CFNumberCreate(v6, kCFNumberIntType, &v29);
  keys[9] = @"ShutDownRemainingCapacity";
  v28 = a1[7];
  values[9] = CFNumberCreate(v6, kCFNumberIntType, &v28);
  keys[10] = @"ShutDownPrevRemainingCapacity";
  v27 = a1[8];
  values[10] = CFNumberCreate(v6, kCFNumberIntType, &v27);
  keys[11] = @"ShutDownCycleCount";
  v26 = a1[9];
  values[11] = CFNumberCreate(v6, kCFNumberIntType, &v26);
  keys[12] = @"ShutDownMaxDischargeCurrent";
  v25 = a1[10];
  values[12] = CFNumberCreate(v6, kCFNumberIntType, &v25);
  keys[13] = @"ShutDownTimeAbove95";
  v24 = *(a1 + 22);
  values[13] = CFNumberCreate(v6, kCFNumberIntType, &v24);
  keys[14] = @"ShutDownVoltage";
  v23 = *(a1 + 23);
  values[14] = CFNumberCreate(v6, kCFNumberIntType, &v23);
  keys[15] = @"ShutDownPrevVoltage";
  v22 = *(a1 + 25);
  values[15] = CFNumberCreate(v6, kCFNumberIntType, &v22);
  keys[16] = @"ShutDownAverageCurrent";
  v21 = *(a1 + 27);
  values[16] = CFNumberCreate(v6, kCFNumberIntType, &v21);
  keys[17] = @"ShutDownPrevAverageCurrent";
  v20 = *(a1 + 29);
  values[17] = CFNumberCreate(v6, kCFNumberIntType, &v20);
  keys[18] = @"ShutDownCycleCountLastQmax";
  v19 = *(a1 + 31);
  values[18] = CFNumberCreate(v6, kCFNumberIntType, &v19);
  keys[19] = @"ShutDownResScale";
  v18 = a1[16];
  values[19] = CFNumberCreate(v6, kCFNumberIntType, &v18);
  keys[20] = @"ShutDownQstart";
  v17 = a1[17];
  values[20] = CFNumberCreate(v6, kCFNumberIntType, &v17);
  keys[21] = @"ShutDownPassedCharge";
  v16 = a1[18];
  values[21] = CFNumberCreate(v6, kCFNumberIntType, &v16);
  keys[22] = @"ShutDownDOD0";
  v15 = a1[19];
  *&v43 = CFNumberCreate(v6, kCFNumberIntType, &v15);
  *&v39 = @"Raw";
  *(&v43 + 1) = CFDataCreate(v6, a1, 52);
  v48 = 0;
  *bytes = 0u;
  v47 = 0u;
  ggctl_logShutdownDLog(a3, bytes, 1u);
  *(&v39 + 1) = @"ShutDownDLog";
  *&v44 = CFDataCreate(v6, bytes, 40);
  *&v40 = @"timeSinceAwake";
  v14 = *a2;
  *(&v44 + 1) = CFNumberCreate(v6, kCFNumberLongType, &v14);
  *(&v40 + 1) = @"ShutDownRaTableRaw";
  *&v45 = CFDataCreate(v6, a2 + 8, 32);
  v41 = @"ShutDownRSS";
  v13 = *(a2 + 20);
  v7 = &v45 + 1;
  *(&v45 + 1) = CFNumberCreate(v6, kCFNumberIntType, &v13);
  v8 = CFDictionaryCreate(v6, keys, values, 28, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  for (i = 29; i > 1; --i)
  {
    v10 = *v7--;
    CFRelease(v10);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

void writeBatteryDiagnosticData(uint64_t a1, int a2)
{
  v8[44] = *MEMORY[0x29EDCA608];
  bzero(v6, 0x258uLL);
  outputStructCnt = 352;
  IOConnectCallStructMethod(a1, 2u, 0, 0, v8, &outputStructCnt);
  v7 = 4000;
  logBatteryDiagnosticData(v6, a1, a2);
  v4 = *MEMORY[0x29EDCA608];
}

void logBatteryDiagnosticData(uint64_t a1, uint64_t a2, int a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  v6 = IOServiceMatching("IOPMPowerSource");
  service = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v6);
  if (service)
  {
    if ((getSInt32ForKey(@"CurrentCapacity", &v15 + 1) & 0x80000000) != 0)
    {
      IOObjectRelease(service);
    }

    else
    {
      SInt32ForKey = getSInt32ForKey(@"MaxCapacity", &v15);
      IOObjectRelease(service);
      if ((SInt32ForKey & 0x80000000) == 0)
      {
        v8 = (100 * HIDWORD(v15)) / v15;
        setUPOData(@"IOPMUBootUPOState", v8 > 10.0);
        if (*(a1 + 596) && v8 > 10.0 && *(a1 + 48) >= 2742)
        {
          setUPOData(@"IOPMUBootUPOCounter", 1);
        }

        v9 = (*(a1 + 104) << 8) | *(a1 + 105);
        v10 = (*(a1 + 126) << 8) | *(a1 + 127);
        v11 = *(a1 + 142);
        v12 = *(a1 + 139);
        if (a3)
        {
          v39 = time(0);
          v40 = v8;
          *__str = *(a1 + 48);
          v22 = *(a1 + 58);
          v23 = v10;
          v24 = *(a1 + 46);
          v25 = *(a1 + 228);
          v26 = *(a1 + 44);
          v27 = *(a1 + 226);
          v28 = *(a1 + 52);
          v29 = *(a1 + 230);
          v30 = *(a1 + 84);
          v31 = v9;
          v32 = v11;
          v33 = *(a1 + 42);
          v34 = *(a1 + 222);
          v35 = *(a1 + 50);
          v36 = *(a1 + 224);
          v37 = v12;
          v38 = *(a1 + 60);
          v20 = 0;
          *v18 = v39 - *(a1 + 232);
          *&v18[8] = *(a1 + 158);
          v19 = *(a1 + 174);
          LOWORD(v20) = bswap32(*(a1 + 191)) >> 16;
          ggctl_logShutdownReason(a2, __str, 0);
          ggctl_logShutdownDLog(a2, &v41, 0);
          ggctl_logShutdownReason2(a2, v18, 0);
        }

        *v18 = *a1;
        *&v18[16] = *(a1 + 16);
        snprintf(__str, 0x200uLL, "%s,%5.2f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d,%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d;%d", v18, v8, *(a1 + 48), *(a1 + 58), v10, *(a1 + 46), *(a1 + 228), *(a1 + 44), *(a1 + 226), *(a1 + 52), *(a1 + 230), *(a1 + 84), v9, v11, *(a1 + 42), *(a1 + 222), *(a1 + 50), *(a1 + 224), v12, *(a1 + 60), __rev16(*(a1 + 191)), __rev16(*(a1 + 158)), __rev16(*(a1 + 160)), __rev16(*(a1 + 162)), __rev16(*(a1 + 164)), __rev16(*(a1 + 166)), __rev16(*(a1 + 168)), __rev16(*(a1 + 170)), __rev16(*(a1 + 172)), __rev16(*(a1 + 174)), __rev16(*(a1 + 176)), __rev16(*(a1 + 178)), __rev16(*(a1 + 180)), __rev16(*(a1 + 182)), __rev16(*(a1 + 184)), __rev16(*(a1 + 186)), v41, WORD1(v41), WORD2(v41), WORD3(v41), WORD4(v41), WORD5(v41), WORD6(v41), HIWORD(v41), v42, WORD1(v42), WORD2(v42), WORD3(v42), WORD4(v42), WORD5(v42), WORD6(v42), HIWORD(v42), v43, WORD1(v43), WORD2(v43), HIWORD(v43));
        CFAbsoluteTimeGetCurrent();
        logLineForAppleCare();
        v13 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = __str;
          _os_log_impl(&dword_29D352000, v13, OS_LOG_TYPE_DEFAULT, "Battery Diagnostic Data:: %s", buf, 0xCu);
        }
      }
    }
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    logBatteryDiagnosticData_cold_1();
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t startUpdateThread(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(&v8, 0, sizeof(v8));
  if (stat("/dev/cu.gas-gauge", &v8) || (v7 = 0, memset(&v8, 0, 64), pthread_attr_init(&v8), pthread_attr_setdetachstate(&v8, 2), (logger = os_log_create("com.apple.AppleHDQGasGauge", "battery")) == 0))
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = pthread_create(&v7, &v8, updateThread, a1);
    if (v2)
    {
      v5 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_29D352000, v5, OS_LOG_TYPE_ERROR, "pthread_create", v6, 2u);
        v5 = logger;
      }

      os_release(v5);
    }

    else
    {
      pthread_attr_destroy(&v8);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t updateThread(uint64_t a1)
{
  v392 = *MEMORY[0x29EDCA608];
  *notification = 0;
  v334 = 0;
  v333 = 0;
  thePortRef = 0;
  notifier = 0;
  notificationID = 0;
  refCon = 0;
  pthread_setname_np("GasGauge-updateThread");
  gRestrictLogMessagesCounter = 0;
  v2 = 0x2A17A1000uLL;
  v3 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29D352000, v3, OS_LOG_TYPE_DEFAULT, "gasgauge: updateThread start", buf, 2u);
  }

  v4 = pmps_service();
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x29EDBB110];
    v7 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    if (IOServiceAddInterestNotification(v7, v5, "IOGeneralInterest", iokit_callback, &refCon, notification))
    {
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        updateThread_cold_1();
      }

      goto LABEL_19;
    }

    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    v10 = *MEMORY[0x29EDB8FC0];
    CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x29EDB8FC0]);
    kernelPort = IORegisterForSystemPower(&refCon, &thePortRef, iokit_callback, &notifier);
    if (kernelPort && thePortRef)
    {
      v11 = CFRunLoopGetCurrent();
      v12 = IONotificationPortGetRunLoopSource(thePortRef);
      CFRunLoopAddSource(v11, v12, v10);
      v13 = ggctl_connect(&notification[1]);
      v14 = 0x2A1A12000uLL;
      if (!v13)
      {
        goto LABEL_19;
      }

      v15 = v13;
      *buf = 0;
      v348[0] = 0;
      v16 = MEMORY[0x29ED52C10](v13, 0, *MEMORY[0x29EDCA6B0], buf, v348, 1);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *buf;
      }

      if (v16)
      {
        v18 = v16;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          updateThread_cold_2(v18);
        }

        IOServiceClose(v15);
        goto LABEL_19;
      }

      v280 = *buf;
      v285 = v17;
      *buf = 352;
      v291 = v15;
      IOConnectCallStructMethod(v15, 2u, 0, 0, &dword_2A17A1B40, buf);
      byte_2A17A1A8C = dword_2A17A1BE4 != 0;
      v333 = word_2A17A1BCE;
      v278 = dword_2A17A1C98;
      valuePtr = dword_2A17A1BD4;
      v288 = *MEMORY[0x29EDB8FA8];
      v289 = *MEMORY[0x29EDB8FB0];
      v21 = CFPreferencesCopyValue(@"UpdateSampleConfig", @"com.apple.gasgauge", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8FA8]);
      if (v21)
      {
        v22 = v21;
        v23 = CFGetTypeID(v21);
        if (v23 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr);
          v24 = logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = valuePtr;
            _os_log_impl(&dword_29D352000, v24, OS_LOG_TYPE_DEFAULT, "changed updateSampleConfig=%#x", buf, 8u);
          }
        }

        CFRelease(v22);
      }

      v284 = valuePtr;
      v25 = CFPreferencesCopyValue(@"CriticalBattery", @"com.apple.gasgauge", v289, v288);
      if (v25)
      {
        v26 = v25;
        v27 = CFGetTypeID(v25);
        if (v27 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v26, kCFNumberSInt32Type, &word_2A17A1BCC);
          CFRelease(v26);
        }

        else
        {
          Value = CFBooleanGetValue(v26);
          CFRelease(v26);
          if (!Value)
          {
            v263 = logger;
            v283 = 0;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_29D352000, v263, OS_LOG_TYPE_DEFAULT, "Critical battery shutdown disabled", buf, 2u);
              v283 = 0;
            }

LABEL_30:
            v29 = CFPreferencesCopyValue(@"UserMode", @"com.apple.gasgauge", v289, v288);
            if (v29)
            {
              v30 = v29;
              v31 = CFGetTypeID(v29);
              v286 = v31 == CFBooleanGetTypeID() && CFBooleanGetValue(v30) != 0;
              CFRelease(v30);
              v32 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v286;
                _os_log_impl(&dword_29D352000, v32, OS_LOG_TYPE_DEFAULT, "gas gauge: userModeEnabled=%d", buf, 8u);
              }
            }

            else
            {
              v286 = 0;
            }

            v33 = CFPreferencesCopyValue(@"CriticalFlagDelay", @"com.apple.gasgauge", v289, v288);
            if (v33)
            {
              v34 = v33;
              v35 = CFGetTypeID(v33);
              if (v35 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v34, kCFNumberSInt32Type, &v333);
              }

              CFRelease(v34);
              v36 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v333;
                _os_log_impl(&dword_29D352000, v36, OS_LOG_TYPE_DEFAULT, "gas gauge: critical flag delay %d", buf, 8u);
              }
            }

            v37 = CFPreferencesCopyValue(@"DebugPolling", @"com.apple.gasgauge", v289, v288);
            if (v37)
            {
              v38 = v37;
              v39 = CFGetTypeID(v37);
              if (v39 == CFBooleanGetTypeID())
              {
                debug_polling = CFBooleanGetValue(v38) != 0;
              }

              CFRelease(v38);
              v40 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = debug_polling;
                _os_log_impl(&dword_29D352000, v40, OS_LOG_TYPE_DEFAULT, "gas gauge: debug_polling=%d", buf, 8u);
              }
            }

            v41 = CFPreferencesCopyValue(@"RestricLogCounter", @"com.apple.gasgauge", v289, v288);
            if (v41)
            {
              v42 = v41;
              v43 = CFGetTypeID(v41);
              if (v43 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v42, kCFNumberSInt32Type, &gRestrictLogCounter);
              }

              CFRelease(v42);
              v44 = logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = gRestrictLogCounter;
                _os_log_impl(&dword_29D352000, v44, OS_LOG_TYPE_DEFAULT, "gas gauge: log counter %d", buf, 8u);
              }
            }

            v299 = dword_2A17A1BD8;
            if (dword_2A17A1BD8)
            {
              v45 = IONotificationPortCreate(v6);
              v46 = IOServiceAddInterestNotification(v45, notification[1], "IOGeneralInterest", iokit_callback, &refCon, notification);
              v47 = logger;
              if (v46)
              {
                if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                {
                  updateThread_cold_3();
                }
              }

              else
              {
                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_29D352000, v47, OS_LOG_TYPE_DEFAULT, "gasgauge: listening for battery interrupts", buf, 2u);
                }

                v48 = CFRunLoopGetCurrent();
                v49 = IONotificationPortGetRunLoopSource(v45);
                CFRunLoopAddSource(v48, v49, v10);
              }
            }

            v334 = 0;
            getUPOData(@"IOPMUBootUPOState", &v334);
            v292 = v334 != 0;
            getUPOData(@"IOPMUBootBatteryHealthMetric", &dword_2A17A1B38);
            v327 = 64;
            if (sysctlbyname("hw.model", v391, &v327, 0, 0) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              updateThread_cold_4();
            }

            mode = v10;
            v50 = UpSeconds();
            v51 = logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219776;
              *&buf[4] = v50;
              *&buf[12] = 1024;
              *&buf[14] = v283;
              *&buf[18] = 1024;
              *&buf[20] = word_2A17A1BCC;
              *&buf[24] = 1024;
              *&buf[26] = valuePtr;
              *&buf[30] = 1024;
              LODWORD(v371) = byte_2A17A1A8C;
              WORD2(v371) = 1024;
              *(&v371 + 6) = v333;
              WORD5(v371) = 1024;
              HIDWORD(v371) = dword_2A17A1BD0;
              LOWORD(v372) = 1024;
              *(&v372 + 2) = v334;
              _os_log_impl(&dword_29D352000, v51, OS_LOG_TYPE_DEFAULT, "gasgauge: %llu updateThread critical(%d, 0x%x), uscfg=0x%x, dyn=%d cfd=%d cfd-voltage=%d, upos=%x", buf, 0x36u);
            }

            v275 = a1;
            v271 = a1 != 0;
            v270 = 0;
            v272 = 0;
            v300 = 0;
            v52 = 0;
            v287 = 0;
            v293 = 0;
            v297 = 0;
            v53 = 0;
            v54 = 0;
            v281 = 0;
            v55 = 0;
            qword_2A17A1B30 = time(0);
            v273 = (dword_2A17A1BE8 | dword_2A17A1C2C) != 0;
            v276 = (v284 >> 3) & 1;
            v277 = 0;
            v279 = (v284 >> 2) & 1;
            allocator = *MEMORY[0x29EDB8ED8];
            v296 = *MEMORY[0x29EDB8F00];
            v282 = *MEMORY[0x29EDB8EF8];
            v56 = 0.0;
            v57 = 0.0;
            v298 = -1;
            v274 = 1;
LABEL_65:
            v58 = -1;
            while (1)
            {
              v390 = 0u;
              v389 = 0u;
              v388 = 0u;
              v387 = 0u;
              v386 = 0u;
              v385 = 0u;
              v384 = 0u;
              v383 = 0u;
              v382 = 0u;
              v381 = 0u;
              v380 = 0u;
              v379 = 0u;
              v378 = 0u;
              v377 = 0u;
              v376 = 0u;
              v375 = 0u;
              v374 = 0u;
              v373 = 0u;
              v372 = 0u;
              v371 = 0u;
              memset(buf, 0, sizeof(buf));
              v369 = 0u;
              v368 = 0u;
              v367 = 0u;
              v366 = 0u;
              v365 = 0u;
              v364 = 0u;
              v363 = 0u;
              v362 = 0u;
              v360 = 0u;
              v361 = 0u;
              v358 = 0u;
              v359 = 0u;
              v356 = 0u;
              v357 = 0u;
              v354 = 0u;
              v355 = 0u;
              v352 = 0u;
              v353 = 0u;
              v350 = 0u;
              v351 = 0u;
              *v348 = 0u;
              v349 = 0u;
              if (v299 && v58 != -1)
              {
                *input = 1;
                v59 = IOConnectCallScalarMethod(v58, 0x10u, input, 1u, 0, 0);
                v60 = v59 == -536870183 ? -2 : -1;
                if (v59)
                {
                  v61 = *(v2 + 2048);
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    *input = 67109120;
                    *&input[4] = v60;
                    _os_log_impl(&dword_29D352000, v61, OS_LOG_TYPE_DEFAULT, "cannot enable gauge interrupts (%d)", input, 8u);
                  }
                }
              }

              LODWORD(refCon) = 0;
              if (v54)
              {
                v62 = *(v14 + 3432);
                if (v62)
                {
                  v63 = v62 - 1;
                }

                else
                {
                  if (v57 == 0.0)
                  {
                    goto LABEL_82;
                  }

                  v64 = *(v2 + 2048);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    v65 = CFAbsoluteTimeGetCurrent();
                    *input = 67109632;
                    *&input[4] = v54;
                    *&input[8] = 2048;
                    *&input[10] = v65 - v57;
                    *&input[18] = 1024;
                    *&input[20] = gRestrictLogCounter;
                    _os_log_impl(&dword_29D352000, v64, OS_LOG_TYPE_DEFAULT, "failure last_update_failed_counter=%d last_success at %g, supressing %d subsequent errors", input, 0x18u);
                  }

                  v63 = gRestrictLogCounter;
                }

                *(v14 + 3432) = v63;
              }

LABEL_82:
              if (v298 != -1 && v298 < 50)
              {
                v66 = 5.0;
              }

              else
              {
                v66 = 20.0;
              }

              if (v52)
              {
LABEL_507:
                IOObjectRelease(v5);
                MEMORY[0x29ED52C20](v291, 0, *MEMORY[0x29EDCA6B0], v285);
                IOServiceClose(v291);
                *(v14 + 3432) = 0;
                v262 = *(v2 + 2048);
                if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_29D352000, v262, OS_LOG_TYPE_DEFAULT, "gasgauge: updateThread terminated", buf, 2u);
                }

                goto LABEL_19;
              }

              if (!(v55 | v54))
              {
                v69 = 1;
                goto LABEL_122;
              }

              v67 = CFAbsoluteTimeGetCurrent();
              if (debug_polling == 1 && (v68 = *(v2 + 2048), os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG)))
              {
                *input = 136316418;
                *&input[4] = "updateThread";
                *&input[12] = 1024;
                *&input[14] = 2802;
                *&input[18] = 1024;
                *&input[20] = v55;
                *&input[24] = 1024;
                *&input[26] = v53 & 1;
                *&input[30] = 2048;
                *&input[32] = v67;
                *&input[40] = 2048;
                *&input[42] = v56;
                _os_log_debug_impl(&dword_29D352000, v68, OS_LOG_TYPE_DEBUG, "*** %s:%d updatesDone=%d last_update_ignored=%d now=%f deadline=%f *** ", input, 0x32u);
                if ((v53 & 1) == 0)
                {
LABEL_94:
                  v56 = v66 + v67;
                  goto LABEL_95;
                }
              }

              else if ((v53 & 1) == 0)
              {
                goto LABEL_94;
              }

              v66 = 0.0;
              if (v67 < v56)
              {
                v66 = v56 - v67;
              }

LABEL_95:
              if (debug_polling == 1)
              {
                v70 = *(v2 + 2048);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  *input = 136316674;
                  *&input[4] = "updateThread";
                  *&input[12] = 1024;
                  *&input[14] = 2860;
                  *&input[18] = 1024;
                  *&input[20] = v55;
                  *&input[24] = 1024;
                  *&input[26] = v53 & 1;
                  *&input[30] = 2048;
                  *&input[32] = v67;
                  *&input[40] = 2048;
                  *&input[42] = v56;
                  *&input[50] = 2048;
                  v346 = v66;
                  _os_log_error_impl(&dword_29D352000, v70, OS_LOG_TYPE_ERROR, "*** %s:%d updatesDone=%d last_update_ignored=%d now=%f deadline=%f update_interval=%f *** ", input, 0x3Cu);
                }
              }

              if (v66 == 0.0)
              {
                v69 = 0;
                v53 = 0;
                LODWORD(refCon) = 0;
                goto LABEL_122;
              }

              v69 = 1;
              if (CFRunLoopRunInMode(mode, v66, 1u) != kCFRunLoopRunHandledSource)
              {
                v53 = 0;
                goto LABEL_122;
              }

              v53 = 0;
              v71 = refCon;
              v72 = 1;
              if (refCon > -536870145)
              {
                if (refCon != -536870144 && refCon != -536723200)
                {
                  v73 = -469794560;
LABEL_109:
                  if (refCon != v73)
                  {
                    if (debug_polling == 1)
                    {
                      v74 = *(v2 + 2048);
                      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                      {
                        *input = 136315906;
                        *&input[4] = "updateThread";
                        *&input[12] = 1024;
                        *&input[14] = 2879;
                        *&input[18] = 1024;
                        *&input[20] = v55;
                        *&input[24] = 1024;
                        *&input[26] = v71;
                        _os_log_error_impl(&dword_29D352000, v74, OS_LOG_TYPE_ERROR, "*** %s:%d updatesDone=%d message.messageType=%#x  (ign) *** ", input, 0x1Eu);
                      }
                    }

                    v72 = 0;
                    v53 = 1;
                  }
                }
              }

              else if ((refCon + 536870288) > 0x20 || ((1 << (refCon - 112)) & 0x100010001) == 0)
              {
                v73 = -536870320;
                goto LABEL_109;
              }

              if (v71 > -536870145)
              {
                if (v71 == -536870144 || v71 == -536723200)
                {
                  goto LABEL_122;
                }

                v75 = -469794560;
              }

              else
              {
                if ((v71 + 536870288) <= 0x20 && ((1 << (v71 - 112)) & 0x100010001) != 0)
                {
                  goto LABEL_122;
                }

                v75 = -536870320;
              }

              if (v71 == v75 || v72)
              {
LABEL_122:
                if (debug_polling == 1 && (v76 = *(v2 + 2048), os_log_type_enabled(v76, OS_LOG_TYPE_ERROR)))
                {
                  *input = 136316162;
                  *&input[4] = "updateThread";
                  *&input[12] = 1024;
                  *&input[14] = 2897;
                  *&input[18] = 1024;
                  *&input[20] = v55;
                  *&input[24] = 1024;
                  *&input[26] = refCon;
                  *&input[30] = 1024;
                  *&input[32] = v300 & 1;
                  _os_log_error_impl(&dword_29D352000, v76, OS_LOG_TYPE_ERROR, "*** %s:%d updatesDone=%d message.messageType=%#x system_sleep=%d *** ", input, 0x24u);
                  if (v55)
                  {
                    goto LABEL_125;
                  }

LABEL_126:
                  CFProperty = IORegistryEntryCreateCFProperty(v5, @"AdapterInfo", allocator, 0);
                  v79 = IORegistryEntryCreateCFProperty(v5, @"AppleRawExternalConnected", allocator, 0);
                  LODWORD(keys[0]) = 0;
                  if (CFProperty)
                  {
                    v80 = CFGetTypeID(CFProperty);
                    if (v80 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, keys);
                    }

                    CFRelease(CFProperty);
                    v81 = keys[0];
                    if (v297 != (LODWORD(keys[0]) == 0))
                    {
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    if (!v297)
                    {
                      v81 = 0;
LABEL_135:
                      v82 = v293 ^ (v79 != v296);
                      goto LABEL_136;
                    }

                    v81 = 0;
                  }

                  v82 = 0;
LABEL_136:
                  if (debug_polling == 1)
                  {
                    v83 = logger;
                    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                    {
                      *input = 136316418;
                      *&input[4] = "updateThread";
                      *&input[12] = 1024;
                      *&input[14] = 2921;
                      *&input[18] = 1024;
                      *&input[20] = v55;
                      *&input[24] = 1024;
                      *&input[26] = v82 & 1;
                      *&input[30] = 1024;
                      *&input[32] = v81;
                      *&input[36] = 1024;
                      *&input[38] = v79 == v296;
                      _os_log_impl(&dword_29D352000, v83, OS_LOG_TYPE_DEFAULT, "*** %s:%d updatesDone=%d same_adaptor=%d adaptor_type=%d external_connected=%d *** ", input, 0x2Au);
                    }
                  }

                  if ((v69 & v82 & (v55 != 0)) != 1)
                  {
                    v84 = keys[0];
                    v297 = LODWORD(keys[0]) != 0;
                    v293 = v79 == v296;
                    v2 = 0x2A17A1000uLL;
                    if (v79)
                    {
                      CFRelease(v79);
                    }

                    if (v84 != 0 && v292)
                    {
                      setUPOData(@"IOPMUBootUPOState", 0);
                      v292 = 0;
                    }

                    ++debug_cnt_ut_recv;
                    v77 = refCon;
                    v14 = 0x2A1A12000;
                    goto LABEL_148;
                  }

                  v2 = 0x2A17A1000;
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  v52 = 0;
                  v58 = -1;
                  v53 = 1;
                  v14 = 0x2A1A12000;
                }

                else
                {
                  if (!v55)
                  {
                    goto LABEL_126;
                  }

LABEL_125:
                  v77 = refCon;
                  if (refCon == -536723200)
                  {
                    goto LABEL_126;
                  }

LABEL_148:
                  if (v77 == -469794560)
                  {
                    v85 = v69;
                  }

                  else
                  {
                    v85 = 0;
                  }

                  v53 |= v77 == -469794560;
                  if ((v300 & (v77 != -536870144)) != 0)
                  {
LABEL_152:
                    v52 = 0;
                    v58 = -1;
                    v300 = 1;
                  }

                  else if (v77 == -536870288)
                  {
                    IOAllowPowerChange(kernelPort, notificationID);
                    v52 = 0;
                    v58 = -1;
                    v53 = 1;
                  }

                  else
                  {
                    if (v54 && v77 == -536870272)
                    {
                      IOAllowPowerChange(kernelPort, notificationID);
                      goto LABEL_152;
                    }

                    if (v291 == -1)
                    {
                      v52 = 0;
                      ++v54;
                      goto LABEL_65;
                    }

                    if (v77 == -536870144)
                    {
                      if (v287)
                      {
                        updateThermalCoolDownState(notification[1], 0);
                      }

                      if (v300)
                      {
                        v300 = 0;
                        v287 = 0;
                        qword_2A17A1B30 = time(0);
                      }

                      else
                      {
                        v300 = 0;
                        v287 = 0;
                      }
                    }

                    hdq_state = ggctl_get_hdq_state(v291);
                    if (hdq_state == -2)
                    {
                      v52 = 1;
                      v58 = v291;
                    }

                    else if (hdq_state)
                    {
                      if (hdq_state < 0)
                      {
                        if (os_log_type_enabled(*(v2 + 2048), OS_LOG_TYPE_ERROR))
                        {
                          updateThread_cold_9(&v321, v322);
                        }

                        v52 = 0;
                        ++v54;
                        v58 = v291;
                      }

                      else
                      {
                        v90 = hdqBreak(v291);
                        if (v90 != -2)
                        {
                          if (v90 < 0)
                          {
                            v91 = ++updateThread_debug_break_failures;
                            v92 = *(v2 + 2048);
                            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                            {
                              *input = 136315906;
                              *&input[4] = "updateThread";
                              *&input[12] = 1024;
                              *&input[14] = 3024;
                              *&input[18] = 1024;
                              *&input[20] = v91;
                              *&input[24] = 1024;
                              *&input[26] = -1;
                              _os_log_error_impl(&dword_29D352000, v92, OS_LOG_TYPE_ERROR, "%s:%d break failed break_failures=%d (%d)", input, 0x1Eu);
                              v91 = updateThread_debug_break_failures;
                            }

                            if ((-858993459 * v91) <= 0x33333333)
                            {
                              statsAndLogs(notification[1], 0);
                              v14 = 0x2A1A12000;
                            }

                            else
                            {
                              v93 = -1227133513 * v91;
                              v14 = 0x2A1A12000;
                              if (v93 <= 0x24924924)
                              {
                                debugLog(notification[1], 63);
                              }
                            }
                          }

                          else if (updateThread_debug_break_failures)
                          {
                            statsAndLogs(notification[1], 1);
                            debugLog(notification[1], 0);
                            updateThread_debug_break_failures = 0;
                          }
                        }

                        if (v299)
                        {
                          if (v55)
                          {
                            v94 = gaugeDisableInterrupts(v291);
                            if (v94 < 0)
                            {
                              v95 = v94;
                              v96 = logger;
                              if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                              {
                                *input = 136315650;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3044;
                                *&input[18] = 1024;
                                *&input[20] = v95;
                                _os_log_error_impl(&dword_29D352000, v96, OS_LOG_TYPE_ERROR, "%s:%d cannot disable gauge interrupts (%d)", input, 0x18u);
                              }
                            }
                          }
                        }

                        if (refCon == -536870272)
                        {
                          v102 = OSThermalNotificationCurrentLevel();
                          v287 = v102 > 14;
                          if (v102 >= 15)
                          {
                            updateThermalCoolDownState(notification[1], 1);
                          }

                          IOAllowPowerChange(kernelPort, notificationID);
                          v52 = 0;
                          v300 = 1;
LABEL_420:
                          v58 = v291;
                          v2 = 0x2A17A1000;
                        }

                        else
                        {
                          v2 = 0x2A17A1000uLL;
                          if (refCon == -536870320)
                          {
                            goto LABEL_507;
                          }

                          if (v55)
                          {
                            v269 = 0;
LABEL_202:
                            if (debug_polling == 1)
                            {
                              v97 = *(v2 + 2048);
                              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                              {
                                *input = 136315650;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3146;
                                *&input[18] = 1024;
                                *&input[20] = v55;
                                _os_log_impl(&dword_29D352000, v97, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d READING FLAGS", input, 0x18u);
                              }
                            }

                            v98 = hdqReadU16(v291, 10, &word_2A17A1AA2) == 0;
                            v99 = word_2A17A1AA2 != 0xFFFF && v98;
                            if ((v99 & v283) != 1)
                            {
                              LOBYTE(v101) = 0;
                              goto LABEL_265;
                            }

                            v265 = v98;
                            if (word_2A17A1BCC)
                            {
                              v267 = 0;
                              v100 = v277;
                              LOBYTE(v101) = ((v284 & 0x20) == 0 || v277) && (word_2A17A1BCC & ~word_2A17A1AA2) == 0;
                              if ((v284 & 0x20) != 0)
                              {
                                v100 = (word_2A17A1BCC & ~word_2A17A1AA2) == 0;
                              }

                              v277 = v100;
                            }

                            else if (v55 && dword_2A17A1BD0 >= word_2A17A1A72)
                            {
                              v267 = 0;
                              LOBYTE(v101) = 1;
                            }

                            else
                            {
                              v101 = (word_2A17A1AA2 >> 2) & 1;
                              v267 = 1;
                            }

                            v110 = v101;
                            if (debug_polling == 1)
                            {
                              v111 = logger;
                              v112 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                              LOBYTE(v101) = v110;
                              if (v112)
                              {
                                v113 = UpSeconds();
                                *input = 136317186;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3178;
                                *&input[18] = 1024;
                                *&input[20] = v55;
                                *&input[24] = 1024;
                                *&input[26] = v110 & 1;
                                v14 = 0x2A1A12000;
                                *&input[30] = 1024;
                                *&input[32] = v293;
                                *&input[36] = 2048;
                                *&input[38] = v113;
                                *&input[46] = 1024;
                                *&input[48] = v333;
                                LOWORD(v346) = 1024;
                                *(&v346 + 2) = dword_2A17A1BD0;
                                HIWORD(v346) = 1024;
                                v347 = word_2A17A1A72;
                                _os_log_impl(&dword_29D352000, v111, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d criticalValue=%d external_connected=%d UpSeconds=%llu cfd=%d cfd-voltage=%d batteryInfo.voltage=%d", input, 0x40u);
                                LOBYTE(v101) = v110;
                              }
                            }

                            if (v333)
                            {
                              v114 = UpSeconds();
                              if (v114 <= v333)
                              {
                                LOBYTE(v101) = v110;
                                if (!v55)
                                {
                                  goto LABEL_513;
                                }

                                v117 = word_2A17A1A72;
                                if (dword_2A17A1BD0 >= word_2A17A1A72)
                                {
                                  v121 = v114;
                                  v122 = logger;
                                  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *input = 136316162;
                                    *&input[4] = "updateThread";
                                    *&input[12] = 1024;
                                    *&input[14] = 3201;
                                    *&input[18] = 1024;
                                    *&input[20] = v55;
                                    *&input[24] = 2048;
                                    *&input[26] = v121;
                                    *&input[34] = 1024;
                                    *&input[36] = v117;
                                    _os_log_impl(&dword_29D352000, v122, OS_LOG_TYPE_DEFAULT, "%s:%d updatesDone=%d UpSeconds=%llu voltage=%d (low)", input, 0x28u);
                                  }

                                  v267 = 0;
                                  LOBYTE(v101) = 1;
                                  v14 = 0x2A1A12000;
                                  goto LABEL_260;
                                }

                                v14 = 0x2A1A12000;
                                if (v293)
                                {
LABEL_513:
                                  if (debug_polling & v110)
                                  {
                                    v118 = logger;
                                    v119 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                                    LOBYTE(v101) = v110;
                                    if (v119)
                                    {
                                      v120 = UpSeconds();
                                      *input = 136315906;
                                      *&input[4] = "updateThread";
                                      *&input[12] = 1024;
                                      *&input[14] = 3209;
                                      *&input[18] = 2048;
                                      *&input[20] = v120;
                                      *&input[28] = 1024;
                                      *&input[30] = v333;
                                      _os_log_impl(&dword_29D352000, v118, OS_LOG_TYPE_DEFAULT, "%s:%d UpSeconds=%llu (cfd = %u) forcing critical to 0", input, 0x22u);
                                      LOBYTE(v101) = v110;
                                    }
                                  }

                                  LOBYTE(v101) = v267 & v101;
                                  v267 = v267 << 31 >> 31;
                                }
                              }

                              else
                              {
                                if (debug_polling == 1)
                                {
                                  v115 = logger;
                                  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v116 = UpSeconds();
                                    *input = 136315906;
                                    *&input[4] = "updateThread";
                                    *&input[12] = 1024;
                                    *&input[14] = 3191;
                                    *&input[18] = 2048;
                                    *&input[20] = v116;
                                    *&input[28] = 1024;
                                    *&input[30] = v333;
                                    _os_log_impl(&dword_29D352000, v115, OS_LOG_TYPE_DEFAULT, "%s:%d deadline expired at UpSeconds=%llu (cfd = %u)", input, 0x22u);
                                  }
                                }

                                LOBYTE(v101) = v110;
                              }
                            }

LABEL_260:
                            v98 = v265;
                            if (!word_2A17A1BCC)
                            {
                              v320 = v267;
                              v123 = v101;
                              v124 = CFNumberCreate(allocator, kCFNumberIntType, &v320);
                              LOBYTE(v101) = v123;
                              *(buf | (8 * v269)) = v124;
                              *(v348 & 0xFFFFFFFFFFFFFFF7 | (8 * (v269++ & 1))) = @"SOCBasedShutdown";
                            }

                            if (debug_polling & v101)
                            {
                              v125 = logger;
                              v126 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                              LOBYTE(v101) = 1;
                              if (v126)
                              {
                                v127 = UpSeconds();
                                *input = 136316674;
                                *&input[4] = "updateThread";
                                *&input[12] = 1024;
                                *&input[14] = 3227;
                                *&input[18] = 1024;
                                *&input[20] = v55;
                                *&input[24] = 1024;
                                *&input[26] = 1;
                                *&input[30] = 1024;
                                *&input[32] = v293;
                                v14 = 0x2A1A12000;
                                *&input[36] = 2048;
                                *&input[38] = v127;
                                *&input[46] = 1024;
                                *&input[48] = word_2A17A1A72;
                                _os_log_impl(&dword_29D352000, v125, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d criticalValue=%d external_connected=%d UpSeconds=%llu batteryInfo.voltage=%d", input, 0x34u);
                                LOBYTE(v101) = 1;
                              }
                            }

LABEL_265:
                            if (!(v85 & 1 | (v298 != -1 && v298 < 50)) || (v281 > 2) | v101 & 1 || v54)
                            {
                              v268 = v101;
                              v281 = 0;
                              goto LABEL_272;
                            }

                            ++v281;
                            v2 = 0x2A17A1000uLL;
                            v128 = logger;
                            if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
                            {
                              *input = 0;
                              _os_log_impl(&dword_29D352000, v128, OS_LOG_TYPE_INFO, "flags update only", input, 2u);
                            }

                            v52 = 0;
                            v54 = 0;
                            v58 = v291;
                          }

                          else if ((getFWVersion(v291, &word_2A17A1A6E) & 0x80000000) != 0)
                          {
                            v52 = 0;
                            v55 = 0;
                            ++v54;
                            v58 = v291;
                          }

                          else
                          {
                            v103 = CFNumberCreate(allocator, kCFNumberIntType, &word_2A17A1A6E);
                            if (v103)
                            {
                              v104 = v103;
                              IORegistryEntrySetCFProperty(v5, @"GasGaugeFirmwareVersion", v103);
                              CFRelease(v104);
                            }

                            v105 = word_2A17A1A6E;
                            v106 = word_2A17A1A6E - 1281 < 2;
                            *v285 = word_2A17A1A6E > 0x131u;
                            if (v105 == 265)
                            {
                              v107 = logger;
                              v283 = 0;
                              if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                              {
                                *input = 0;
                                _os_log_impl(&dword_29D352000, v107, OS_LOG_TYPE_DEFAULT, "gas gauge firmware 1.09: disabling critical battery shutdown", input, 2u);
                                v283 = 0;
                              }
                            }

                            LOBYTE(v279) = v279 | v106;
                            keys[0] = 0;
                            if ((readChargeTable(v291, keys) & 0x80000000) != 0)
                            {
                              v52 = 0;
                              v55 = 0;
                              ++v54;
                              v58 = v291;
                              v14 = 0x2A1A12000;
                            }

                            else
                            {
                              v14 = 0x2A1A12000;
                              if (keys[0])
                              {
                                *buf = keys[0];
                                v348[0] = @"ChargeTable";
                                v269 = 1;
                              }

                              else
                              {
                                v269 = 0;
                              }

                              if (dword_2A17A1B40)
                              {
                                v108 = dword_2A17A1B40;
                              }

                              else
                              {
                                v108 = 2;
                              }

                              Block = ggctl_readBlock(v291, -1, v108, updateThread_batteryInfo, 0);
                              if (Block < 0)
                              {
                                strcpy(updateThread_batteryInfo, "000000");
                              }

                              if (v276)
                              {
                                byte_2A17A1A70 = dword_2A17A1BE0;
                                if (dword_2A17A1BE0)
                                {
                                  LOBYTE(v276) = 1;
                                  goto LABEL_431;
                                }

                                v228 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                {
                                  *input = 67109376;
                                  *&input[8] = 1024;
                                  *&input[10] = Block;
                                  _os_log_error_impl(&dword_29D352000, v228, OS_LOG_TYPE_ERROR, "disabled passedCharge PCFF=%d err=%d", input, 0xEu);
                                }
                              }

                              LOBYTE(v276) = 0;
LABEL_431:
                              if (byte_2A17A1A8C == 1)
                              {
                                word_2A17A1A6C = 136;
                              }

                              if (hdqReadS16(v291, 60, &word_2A17A1A6A))
                              {
                                word_2A17A1A6A = 0;
                              }

                              if (!controlReadU16(v291, 8, &word_2A17A1A68))
                              {
                                v2 = 0x2A17A1000;
                                goto LABEL_202;
                              }

                              v268 = 0;
                              v98 = 0;
                              word_2A17A1A68 = 0;
LABEL_272:
                              v319 = v55 < 16;
                              *&buf[8 * v269] = CFNumberCreate(allocator, kCFNumberIntType, &v319);
                              v348[v269] = @"ForceFullGGUpdateOnBoot";
                              if (20 * v55 % 60)
                              {
                                v129 = 0;
                              }

                              else
                              {
                                v129 = v55 < 16;
                              }

                              if (v129)
                              {
                                v130 = 1;
                              }

                              else
                              {
                                HIDWORD(v131) = -1813430636 * v55 + 9544368;
                                LODWORD(v131) = HIDWORD(v131);
                                v130 = (v131 >> 4) < 0x123457;
                              }

                              v132 = debug_polling;
                              if (debug_polling == 1)
                              {
                                v133 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 136316418;
                                  *&input[4] = "updateThread";
                                  *&input[12] = 1024;
                                  *&input[14] = 3254;
                                  *&input[18] = 1024;
                                  *&input[20] = v55;
                                  *&input[24] = 1024;
                                  *&input[26] = v130;
                                  *&input[30] = 1024;
                                  *&input[32] = v129;
                                  *&input[36] = 1024;
                                  *&input[38] = v55 < 16;
                                  _os_log_impl(&dword_29D352000, v133, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d, fullUpdate=%d, bootFullUpdate=%d, forceFullUpdate=%d] ", input, 0x2Au);
                                  v132 = debug_polling;
                                }

                                else
                                {
                                  v132 = 1;
                                }
                              }

                              if (v55)
                              {
                                v134 = v130;
                              }

                              else
                              {
                                v134 = 0;
                              }

                              if ((v132 & 1) != 0 && v134)
                              {
                                statsAndLogs(notification[1], 1);
                              }

                              v14 = 0x2A1A12000;
                              v135 = v280;
                              if (!v98)
                              {
                                v141 = v285;
                                goto LABEL_416;
                              }

                              v264 = v134;
                              v266 = v130;
                              if (debug_polling == 1)
                              {
                                v136 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 136315650;
                                  *&input[4] = "updateThread";
                                  *&input[12] = 1024;
                                  *&input[14] = 3295;
                                  *&input[18] = 1024;
                                  *&input[20] = v55;
                                  _os_log_impl(&dword_29D352000, v136, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d POLLING THE BATTERY", input, 0x18u);
                                }
                              }

                              v137 = v269 + 1;
                              if (v55)
                              {
                                v138 = !v286;
                              }

                              else
                              {
                                v138 = 1;
                              }

                              if (v138 == 1)
                              {
                                if (v266)
                                {
                                  v139 = 18;
                                }

                                else
                                {
                                  v139 = 10;
                                }

                                BatteryData = readBatteryData(&updateThread_updates, v139, v291);
                                if (BatteryData == v139)
                                {
                                  calculateBatteryHealthMetric();
                                }

                                else
                                {
                                  v142 = BatteryData;
                                  v143 = logger;
                                  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *input = 67109376;
                                    *&input[4] = v139;
                                    *&input[8] = 1024;
                                    *&input[10] = v142;
                                    _os_log_impl(&dword_29D352000, v143, OS_LOG_TYPE_DEFAULT, "cannot read battery data count=%d (err=%d)", input, 0xEu);
                                  }

                                  calculateBatteryHealthMetric();
                                  if (v142)
                                  {
                                    goto LABEL_316;
                                  }
                                }
                              }

                              v144 = word_2A17A1A72;
                              v145 = word_2A17A1A7A;
                              if (word_2A17A1A7A)
                              {
                                v146 = 0;
                              }

                              else
                              {
                                v146 = word_2A17A1A72 == 3600;
                              }

                              v147 = word_2A17A1AA2;
                              if (v146 || word_2A17A1AA2 == 0xFFFF)
                              {
                                v152 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67110144;
                                  *&input[4] = v147;
                                  *&input[8] = 1024;
                                  *&input[10] = word_2A17A1A7C;
                                  *&input[14] = 1024;
                                  *&input[16] = word_2A17A1A74;
                                  *&input[20] = 1024;
                                  *&input[22] = v144;
                                  *&input[26] = 1024;
                                  *&input[28] = v145;
                                  _os_log_impl(&dword_29D352000, v152, OS_LOG_TYPE_DEFAULT, "gas gauge reset detected (flags %#x capacity %d/%dmAh voltage %dmV current %dmA)", input, 0x20u);
                                }

LABEL_316:
                                LOBYTE(v153) = v138 ^ 1;
                                v154 = !v293;
                                v155 = 1;
                                goto LABEL_336;
                              }

                              if (!v55 && v334)
                              {
                                v334 = 0;
                                v148 = word_2A17A1A74;
                                v149 = 100 * (word_2A17A1A74 / 100) + 100;
                                v150 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67110144;
                                  v151 = ((26215 * v149) >> 18) + ((26215 * v149) >> 31);
                                  *&input[8] = 1024;
                                  *&input[10] = v148;
                                  *&input[14] = 1024;
                                  *&input[16] = word_2A17A1A7C;
                                  *&input[20] = 1024;
                                  *&input[22] = v149;
                                  *&input[26] = 1024;
                                  *&input[28] = v151;
                                  _os_log_impl(&dword_29D352000, v150, OS_LOG_TYPE_DEFAULT, "mask real UPOState=%x FCC=%d RemCap=%d new FCC=%d new RemCap=%d", input, 0x20u);
                                }

                                else
                                {
                                  v151 = ((26215 * v149) >> 18) + ((26215 * v149) >> 31);
                                }

                                word_2A17A1A74 = v149;
                                word_2A17A1A7C = v151;
                              }

                              v153 = v138 ^ 1;
                              if ((v138 & 1) == 0)
                              {
                                v155 = 0;
                                v154 = !v293;
                                v158 = 1;
LABEL_333:
                                if (!v158)
                                {
                                  goto LABEL_336;
                                }

LABEL_334:
                                if (word_2A17A1A6E >= 0x501u)
                                {
                                  v318 = word_2A17A1A76;
                                  *&buf[8 * v137] = CFNumberCreate(allocator, kCFNumberIntType, &v318);
                                  v348[v137++] = @"NominalChargeCapacity";
                                }

                                goto LABEL_336;
                              }

                              if (v293)
                              {
                                v156 = 24;
                              }

                              else
                              {
                                v156 = 22;
                              }

                              S16 = hdqReadS16(v291, v156, &word_2A17A1A7E);
                              v158 = S16 == 0;
                              v155 = S16 != 0;
                              v159 = (v284 & 2) == 0 || S16 != 0;
                              v154 = !v293;
                              if ((v159 | !v293 | v153))
                              {
                                goto LABEL_333;
                              }

                              ChargerData = readChargerData(v279 & 1, v276 & 1, v291);
                              *&buf[8 * v137] = ChargerData;
                              if (!ChargerData)
                              {
                                v154 = 0;
                                v155 = 0;
                                if (!v158)
                                {
                                  goto LABEL_336;
                                }

                                goto LABEL_334;
                              }

                              if (v275)
                              {
                                CFShow(ChargerData);
                              }

                              v154 = 0;
                              v155 = 0;
                              v348[v137] = @"ChargerData";
                              v137 = v269 + 2;
                              if (v158)
                              {
                                goto LABEL_334;
                              }

LABEL_336:
                              if (debug_polling == 1)
                              {
                                v161 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67109376;
                                  *&input[4] = dword_2A17A1BE8;
                                  *&input[8] = 1024;
                                  *&input[10] = dword_2A17A1C2C;
                                  _os_log_impl(&dword_29D352000, v161, OS_LOG_TYPE_DEFAULT, "determineVACVoltage, vacLevelCount=%d, vac95LevelCount=%d", input, 0xEu);
                                }
                              }

                              if (byte_2A17A1A8C == 1 && (v55 == 0 || v293))
                              {
                                v162 = dynamicATV(v291);
                                *&buf[8 * v137] = v162;
                                if (!v162)
                                {
                                  goto LABEL_351;
                                }

                                if (v275)
                                {
                                  CFShow(v162);
                                }

                                v163 = @"AppleDynamicATV";
                              }

                              else
                              {
                                if (!v273 || v55 != 0 && !v293)
                                {
                                  goto LABEL_351;
                                }

                                v164 = determineVACVoltage();
                                if (v164 == dword_2A17A1A90)
                                {
                                  goto LABEL_351;
                                }

                                v165 = v164;
                                dword_2A17A1A90 = v164;
                                v166 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                {
                                  *input = 67109120;
                                  *&input[4] = v165;
                                  _os_log_impl(&dword_29D352000, v166, OS_LOG_TYPE_DEFAULT, "Added atvAbsMaxVoltageMV=%u to battery dict", input, 8u);
                                  v165 = dword_2A17A1A90;
                                }

                                v317 = v165;
                                *&buf[8 * v137] = CFNumberCreate(allocator, kCFNumberIntType, &v317);
                                v163 = @"atvAbsMaxVoltageMV";
                              }

                              v348[v137++] = v163;
LABEL_351:
                              if (v153 & 1 | v155 | (v284 >> 1) & 1 | v154)
                              {
                                v167 = allocator;
                              }

                              else
                              {
                                *input = 0;
                                keys[0] = 0;
                                v167 = allocator;
                                *input = CFNumberCreate(allocator, kCFNumberIntType, &dword_2A17A1A90);
                                keys[0] = @"ChargingVoltage";
                                *&buf[8 * v137] = CFDictionaryCreate(allocator, keys, input, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                v348[v137++] = @"ChargerData";
                                CFRelease(*input);
                              }

                              if (dword_2A17A1C70)
                              {
                                v168 = determinePoSMThreshold();
                                if (v168 != dword_2A17A1A98)
                                {
                                  dword_2A17A1A98 = v168;
                                }

                                *input = HIWORD(v168);
                                LODWORD(keys[0]) = v168;
                                if (v168 == 0xFFFF || HIWORD(v168) == 0xFFFF)
                                {
                                  v170 = 0;
                                }

                                else
                                {
                                  v170 = dword_2A17A1C70;
                                }

                                *v338 = v170;
                                *&buf[8 * v137] = CFNumberCreate(v167, kCFNumberIntType, v338);
                                v348[v137] = @"PoSMEnabled";
                                v171 = CFNumberCreate(v167, kCFNumberIntType, input);
                                v172 = 8 * v137 + 8;
                                *&buf[v172] = v171;
                                *(v348 + v172) = @"PoSMUpperThreshold";
                                v173 = CFNumberCreate(v167, kCFNumberIntType, keys);
                                v175 = 8 * v137 + 16;
                                *&buf[v175] = v173;
                                *(v348 + v175) = @"PoSMLowerThreshold";
                                v176 = v137 + 3;
                              }

                              else
                              {
                                *input = 0;
                                *&buf[8 * v137] = CFNumberCreate(v167, kCFNumberIntType, input);
                                v348[v137] = @"PoSMEnabled";
                                v176 = v137 + 1;
                              }

                              if (v153 & 1 | (v155 || (v284 & 1) == 0))
                              {
                                if (v155)
                                {
                                  goto LABEL_378;
                                }
                              }

                              else if (hdqReadU16(v291, 110, &word_2A17A1A80))
                              {
LABEL_378:
                                v207 = 0;
                                v2 = 0x2A17A1000uLL;
                                v206 = v268;
                                goto LABEL_379;
                              }

                              v316 = 10 * word_2A17A1A78 - 27320;
                              v177 = 8 * v176;
                              *&buf[8 * v176] = CFNumberCreate(v167, kCFNumberIntType, &v316);
                              v348[v176] = @"Temperature";
                              v315 = word_2A17A1A7A;
                              v178 = CFNumberCreate(v167, kCFNumberIntType, &v315);
                              v179 = 8 * v176 + 8;
                              *&buf[v179] = v178;
                              *(v348 + v179) = @"Amperage";
                              v314 = word_2A17A1A72;
                              v180 = CFNumberCreate(v167, kCFNumberIntType, &v314);
                              v181 = 8 * v176 + 16;
                              *&buf[v181] = v180;
                              *(v348 + v181) = @"Voltage";
                              v313 = word_2A17A1A7E;
                              v182 = CFNumberCreate(v167, kCFNumberIntType, &v313);
                              v183 = 8 * v176 + 24;
                              *&buf[v183] = v182;
                              *(v348 + v183) = @"TimeRemaining";
                              v298 = word_2A17A1A7C;
                              v312 = word_2A17A1A7C;
                              v184 = CFNumberCreate(v167, kCFNumberIntType, &v312);
                              v185 = 8 * v176 + 32;
                              *&buf[v185] = v184;
                              *(v348 + v185) = @"CurrentCapacity";
                              v311 = word_2A17A1A74;
                              v186 = CFNumberCreate(v167, kCFNumberIntType, &v311);
                              v187 = 8 * v176 + 40;
                              *&buf[v187] = v186;
                              *(v348 + v187) = @"MaxCapacity";
                              HIWORD(v188) = -18304;
                              LOWORD(v188) = word_2A17A1A9E;
                              *input = llroundf(((word_2A17A1A82 * -0.000061035) + 1.0) * v188);
                              v189 = CFNumberCreate(v167, kCFNumberIntType, input);
                              v190 = 8 * v176 + 48;
                              *&buf[v190] = v189;
                              *(v348 + v190) = @"AbsoluteCapacity";
                              v191 = v296;
                              if ((v268 & 1) == 0)
                              {
                                v191 = v282;
                              }

                              v192 = v177 + 56;
                              *&buf[v192] = v191;
                              *(v348 + v192) = @"AtCriticalLevel";
                              v310 = word_2A17A1AA2;
                              v193 = CFNumberCreate(v167, kCFNumberIntType, &v310);
                              v194 = v177 + 64;
                              *&buf[v194] = v193;
                              *(v348 + v194) = @"AppleRawBatteryFlags";
                              v195 = v167;
                              v196 = v176 + 9;
                              if (v284)
                              {
                                v309 = word_2A17A1A80;
                                *&buf[8 * v196] = CFNumberCreate(v195, kCFNumberIntType, &v309);
                                v348[v196] = @"ITMiscStatus";
                                v308 = word_2A17A1A80 & 3;
                                v197 = CFNumberCreate(v195, kCFNumberIntType, &v308);
                                v198 = v177 + 80;
                                *&buf[v198] = v197;
                                *(v348 + v198) = @"ITSimulationCounter";
                                v307 = (word_2A17A1A80 >> 2) & 3;
                                v199 = CFNumberCreate(v195, kCFNumberIntType, &v307);
                                v200 = v177 + 88;
                                *&buf[v200] = v199;
                                *(v348 + v200) = @"RaUpdateCounter";
                                v196 = v176 + 12;
                              }

                              v306 = word_2A17A1AA2 & 0x80;
                              *&buf[8 * v196] = CFNumberCreate(v195, kCFNumberIntType, &v306);
                              v348[v196] = @"OCVTakenFlag";
                              v305 = word_2A17A1AA2 & 0x200;
                              v201 = CFNumberCreate(v195, kCFNumberIntType, &v305);
                              v202 = 8 * v196 + 8;
                              *&buf[v202] = v201;
                              *(v348 + v202) = @"FCFlag";
                              v176 = v196 + 2;
                              v2 = 0x2A17A1000;
                              if (v266)
                              {
                                v304 = word_2A17A1A9C;
                                *&buf[8 * v176] = CFNumberCreate(v195, kCFNumberIntType, &v304);
                                v348[v176] = @"CycleCount";
                                v303 = word_2A17A1A6A;
                                v203 = CFNumberCreate(v195, kCFNumberIntType, &v303);
                                v204 = 8 * v196 + 24;
                                *&buf[v204] = v203;
                                *(v348 + v204) = @"DesignCapacity";
                                v176 = v196 + 4;
                                v205 = parseBatteryData(v284 & 1, v271);
                                *&buf[8 * v196 + 32] = v205;
                                if (v205)
                                {
                                  if (v275)
                                  {
                                    CFShow(v205);
                                  }

                                  v348[v176] = @"BatteryData";
                                  v176 = v196 + 5;
                                }
                              }

                              v206 = v268;
                              v207 = 1;
                              v167 = allocator;
LABEL_379:
                              if (v278 && (updateThread_oneTime & 1) == 0)
                              {
                                v344 = 0u;
                                memset(input, 0, sizeof(input));
                                *keys = 0u;
                                v343 = 0u;
                                if (ggctl_logShutdownReason(v291, input, 1u) || !*&input[40])
                                {
                                  v210 = *(v2 + 2048);
                                  if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v338 = 136315394;
                                    v339 = "updateThread";
                                    v340 = 1024;
                                    v341 = 3577;
                                    _os_log_impl(&dword_29D352000, v210, OS_LOG_TYPE_DEFAULT, "%s:%d  Error Reading Shutdown reason", v338, 0x12u);
                                  }
                                }

                                else
                                {
                                  ggctl_logShutdownReason2(v291, keys, 1u);
                                  v208 = parseShutdownReason(input, keys, v291);
                                  if (v208)
                                  {
                                    v209 = v208;
                                    if (v275)
                                    {
                                      CFShow(v208);
                                    }

                                    *&buf[8 * v176] = v209;
                                    v348[v176++] = @"BatteryShutdownReason";
                                  }

                                  memset(input, 0, sizeof(input));
                                  ggctl_logShutdownReason(v291, input, 0);
                                  *keys = 0u;
                                  v343 = 0u;
                                  v344 = 0u;
                                  ggctl_logShutdownReason2(v291, keys, 0);
                                }

                                updateThread_oneTime = 1;
                                v206 = v268;
                              }

                              if (v206)
                              {
                                readIMAXAndSOCSmoothData(byte_2A17A1B06, v174, v291);
                                v167 = allocator;
                                logBatteryDiagnosticData(updateThread_batteryInfo, v291, v278 != 0);
                              }

                              if (v207)
                              {
                                v211 = CFDictionaryCreate(v167, v348, buf, v176, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                if (v211)
                                {
                                  v212 = v211;
                                  if (v275)
                                  {
                                    CFShow(v211);
                                  }

                                  if (debug_polling == 1)
                                  {
                                    v213 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *input = 136315650;
                                      *&input[4] = "updateThread";
                                      *&input[12] = 1024;
                                      *&input[14] = 3600;
                                      *&input[18] = 1024;
                                      *&input[20] = v55;
                                      _os_log_impl(&dword_29D352000, v213, OS_LOG_TYPE_DEFAULT, "%s:%d  updatesDone=%d PUBLISHING BATTERY data", input, 0x18u);
                                    }
                                  }

                                  v214 = IORegistryEntrySetCFProperties(v5, v212);
                                  LOBYTE(v207) = v214 == 0;
                                  if (v214)
                                  {
                                    v215 = v214;
                                    v216 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                    {
                                      *input = 67109120;
                                      *&input[4] = v215;
                                      _os_log_error_impl(&dword_29D352000, v216, OS_LOG_TYPE_ERROR, "IORegistryEntrySetCFProperties(0x%x)", input, 8u);
                                    }
                                  }

                                  CFRelease(v212);
                                  ++debug_cnt_ut_sent;
                                  v2 = 0x2A17A1000;
                                }

                                else
                                {
                                  v217 = *(v2 + 2048);
                                  if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
                                  {
                                    *input = 136315650;
                                    *&input[4] = "updateThread";
                                    *&input[12] = 1024;
                                    *&input[14] = 3608;
                                    *&input[18] = 1024;
                                    *&input[20] = v55;
                                    _os_log_error_impl(&dword_29D352000, v217, OS_LOG_TYPE_ERROR, "%s:%d  updatesDone=%d dictionary failed", input, 0x18u);
                                  }

                                  LOBYTE(v207) = 1;
                                }
                              }

                              v218 = v176 + 1;
                              v219 = &buf[8 * v176 - 8];
                              do
                              {
                                v220 = *v219--;
                                CFRelease(v220);
                                --v218;
                              }

                              while (v218 > 1);
                              v14 = 0x2A1A12000uLL;
                              if ((v207 & 1) == 0)
                              {
                                v141 = v285;
                                v135 = v280;
LABEL_416:
                                if (*v141 && *(v135 + 4))
                                {
                                  ++*(v135 + 28);
                                }

                                v52 = 0;
                                ++debug_cnt_ut_err;
                                ++v54;
                                goto LABEL_420;
                              }

                              if (!v286)
                              {
                                if (word_2A17A1A6E < 0x132u)
                                {
                                  goto LABEL_494;
                                }

                                if (v272)
                                {
                                  v224 = time(0);
                                  if (v224 < v270)
                                  {
                                    v225 = *(v2 + 2048);
                                    if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *input = 134217984;
                                      *&input[4] = v270;
                                      v226 = v225;
                                      v227 = "CCA: wait for deadline now=%lu";
                                      goto LABEL_426;
                                    }

                                    goto LABEL_457;
                                  }

                                  v229 = v224;
                                  if (word_2A17A1A6E >= 0x600u)
                                  {
                                    v230 = word_2A17A1AA2;
                                    v231 = logger;
                                    v232 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                                    if ((v230 & 0x20) == 0)
                                    {
                                      if (v232)
                                      {
                                        *input = 67109376;
                                        *&input[4] = v55;
                                        *&input[8] = 2048;
                                        *&input[10] = v229;
                                        v233 = v231;
                                        v234 = "CCA: re-enable DLOG updatesDone=%u, now=%lu";
                                        goto LABEL_453;
                                      }

                                      goto LABEL_454;
                                    }

                                    if (!v232)
                                    {
                                      goto LABEL_457;
                                    }

LABEL_449:
                                    *input = 134217984;
                                    *&input[4] = v229;
                                    v226 = v231;
                                    v227 = "CCA: GasGauge still calibrating now=%lu";
LABEL_426:
                                    _os_log_impl(&dword_29D352000, v226, OS_LOG_TYPE_DEFAULT, v227, input, 0xCu);
LABEL_457:
                                    v240 = 1;
LABEL_458:
                                    if (v274)
                                    {
                                      if (*(v280 + 4))
                                      {
                                        goto LABEL_465;
                                      }

                                      v241 = logger;
                                      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v242 = *(v280 + 4);
                                        *input = 67109120;
                                        *&input[4] = v242;
                                        _os_log_impl(&dword_29D352000, v241, OS_LOG_TYPE_DEFAULT, "disabling DLOG (num_clients=%i)", input, 8u);
                                      }

                                      v243 = controlReadS16(v291, 25, 0);
                                      if (v243)
                                      {
                                        v244 = v243;
                                        v245 = logger;
                                        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                        {
                                          *input = 67109120;
                                          *&input[4] = v244;
                                          _os_log_error_impl(&dword_29D352000, v245, OS_LOG_TYPE_ERROR, "cannot disable DLOG (%#x)", input, 8u);
                                        }

LABEL_465:
                                        v246 = 1;
                                      }

                                      else
                                      {
                                        v246 = 0;
                                        *(v280 + 24) = 0;
                                        *(v280 + 16) = 0;
                                        *(v280 + 8) = 0;
                                      }
                                    }

                                    else
                                    {
                                      v246 = 0;
                                    }

                                    if (*(v280 + 4))
                                    {
                                      v247 = v240;
                                    }

                                    else
                                    {
                                      v247 = 1;
                                    }

                                    if ((v247 & 1) == 0)
                                    {
                                      if (!v55 || v246 != 1)
                                      {
                                        v248 = logger;
                                        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v249 = *(v280 + 4);
                                          *input = 67109376;
                                          *&input[4] = v55;
                                          *&input[8] = 1024;
                                          *&input[10] = v249;
                                          _os_log_impl(&dword_29D352000, v248, OS_LOG_TYPE_DEFAULT, "gathering data log updatesDone=%d num_clients=%d", input, 0xEu);
                                        }
                                      }

                                      if ((*(v280 + 4) & 0x80000000) != 0 && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                      {
                                        updateThread_cold_7(&v301, v302);
                                      }

                                      if (drainDataLog(v291))
                                      {
                                        v250 = logger;
                                        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                        {
                                          updateThread_cold_8(v336, v337, v250);
                                        }
                                      }

                                      v246 = 1;
                                    }

                                    if (v240)
                                    {
                                      v251 = 1;
                                    }

                                    else if (word_2A17A1A6E < 0x600u)
                                    {
                                      v251 = word_2A17A1A6E > 0x501u && v264;
                                    }

                                    else
                                    {
                                      v251 = (word_2A17A1AA2 >> 5) & 1;
                                    }

                                    v272 = v251;
                                    v274 = v246;
                                    if ((v246 & v251) != 1)
                                    {
                                      goto LABEL_493;
                                    }

                                    v252 = controlReadS16(v291, 25, 0);
                                    if (!v252)
                                    {
                                      *(v280 + 16) = 0;
                                      *(v280 + 8) = 0;
                                      v270 = time(0) + 20;
                                      v261 = logger;
                                      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *input = 67109376;
                                        *&input[4] = v55;
                                        *&input[8] = 2048;
                                        *&input[10] = v270;
                                        _os_log_impl(&dword_29D352000, v261, OS_LOG_TYPE_DEFAULT, "CCA: disabled DLOG updatesDone=%d ccaDeadline=%lu", input, 0x12u);
                                      }

                                      v274 = 0;
                                      v272 = 1;
                                      goto LABEL_493;
                                    }

                                    v253 = v252;
                                    v254 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                    {
                                      *input = 67109120;
                                      *&input[4] = v253;
                                      _os_log_error_impl(&dword_29D352000, v254, OS_LOG_TYPE_ERROR, "CCA: cannot disable DLOG (%#x)", input, 8u);
                                    }

                                    v272 = 0;
                                    goto LABEL_492;
                                  }

                                  LOWORD(keys[0]) = 0;
                                  U16 = controlReadU16(v291, 0, keys);
                                  if (U16)
                                  {
                                    v236 = U16;
                                    v237 = logger;
                                    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                    {
                                      *input = 67109120;
                                      *&input[4] = v236;
                                      _os_log_error_impl(&dword_29D352000, v237, OS_LOG_TYPE_ERROR, "CCA: cannot read DLOG status (%#x)", input, 8u);
                                    }

                                    goto LABEL_457;
                                  }

                                  v238 = keys[0];
                                  v231 = logger;
                                  v239 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
                                  if ((v238 & 0x800) != 0)
                                  {
                                    if (!v239)
                                    {
                                      goto LABEL_457;
                                    }

                                    goto LABEL_449;
                                  }

                                  if (v239)
                                  {
                                    *input = 67109376;
                                    *&input[4] = v55;
                                    *&input[8] = 2048;
                                    *&input[10] = v229;
                                    v233 = v231;
                                    v234 = "CCA: re-enable DLOG updatesDone=%d, now=%lu";
LABEL_453:
                                    _os_log_impl(&dword_29D352000, v233, OS_LOG_TYPE_DEFAULT, v234, input, 0x12u);
                                  }

LABEL_454:
                                  v270 = 0;
                                }

                                v240 = 0;
                                goto LABEL_458;
                              }

                              if ((v274 & 1) == 0)
                              {
                                v274 = 0;
                                goto LABEL_494;
                              }

                              v221 = controlReadS16(v291, 25, 0);
                              if (v221)
                              {
                                v222 = v221;
                                v223 = logger;
                                if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
                                {
                                  *input = 67109120;
                                  *&input[4] = v222;
                                  _os_log_error_impl(&dword_29D352000, v223, OS_LOG_TYPE_ERROR, "CCA: usermode cannot disable DLOG (%#x)", input, 8u);
                                }

LABEL_492:
                                v274 = 1;
                                goto LABEL_493;
                              }

                              v274 = 0;
                              *(v280 + 24) = 0;
                              *(v280 + 16) = 0;
                              *(v280 + 8) = 0;
LABEL_493:
                              v2 = 0x2A17A1000uLL;
LABEL_494:
                              if (!gRestrictLogMessagesCounter)
                              {
                                goto LABEL_501;
                              }

                              gRestrictLogMessagesCounter = 0;
                              v255 = *(v2 + 2048);
                              v256 = os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT);
                              if (v57 == 0.0)
                              {
                                if (!v256)
                                {
                                  goto LABEL_501;
                                }

                                *input = 0;
                                v257 = v255;
                                v258 = "gasgauge success after previous failure";
                                v259 = 2;
                              }

                              else
                              {
                                if (!v256)
                                {
                                  goto LABEL_501;
                                }

                                v260 = CFAbsoluteTimeGetCurrent();
                                *input = 134217984;
                                *&input[4] = v260 - v57;
                                v257 = v255;
                                v258 = "gasgauge success after previous %gs failure";
                                v259 = 12;
                              }

                              _os_log_impl(&dword_29D352000, v257, OS_LOG_TYPE_DEFAULT, v258, input, v259);
LABEL_501:
                              v57 = CFAbsoluteTimeGetCurrent();
                              v52 = 0;
                              v54 = 0;
                              word_2A17A1B26 = word_2A17A1A72;
                              word_2A17A1B28 = word_2A17A1A7A;
                              dword_2A17A1B2A = *&word_2A17A1A74;
                              word_2A17A1B2E = word_2A17A1A7C;
                              ++v55;
                              v58 = v291;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v87 = CFPreferencesCopyValue(@"ResetEnabled", @"com.apple.gasgauge", v289, v288);
                      v88 = os_log_type_enabled(*(v2 + 2048), OS_LOG_TYPE_ERROR);
                      if (v87 == v282)
                      {
                        v89 = v291;
                        if (v88)
                        {
                          updateThread_cold_6(&v325, v326);
                        }
                      }

                      else
                      {
                        if (v88)
                        {
                          updateThread_cold_5(&v323, v324);
                        }

                        v89 = v291;
                        ggctl_reset(v291, 1u);
                      }

                      v52 = 0;
                      ++v54;
                      v58 = v89;
                    }
                  }
                }
              }

              else
              {
                v52 = 0;
                v58 = -1;
              }
            }
          }
        }
      }

      v283 = 1;
      goto LABEL_30;
    }

    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      updateThread_cold_10();
    }
  }

LABEL_19:
  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

void *GGHIDPlugInFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = calloc(1uLL, 0x98uLL);
  *v4 = &GGHID_IOCFPlugInInterface;
  v4[1] = v4;
  v4[2] = &GGHID_IOHIDServiceInterface2;
  v4[3] = v4;
  v5 = *MEMORY[0x29EDB8EF0];
  v6 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xABu, 0x58u, 0xEBu, 0x3Eu, 0xA7u, 0x74u, 0x4Fu, 0xCCu, 0xA1u, 0x1Au, 0x5Au, 0xCDu, 0x74u, 0xE7u, 0xDAu, 0x17u);
  v4[4] = CFRetain(v6);
  v7 = CFUUIDGetConstantUUIDWithBytes(v5, 0xABu, 0x58u, 0xEBu, 0x3Eu, 0xA7u, 0x74u, 0x4Fu, 0xCCu, 0xA1u, 0x1Au, 0x5Au, 0xCDu, 0x74u, 0xE7u, 0xDAu, 0x17u);
  CFPlugInAddInstanceForFactory(v7);
  v4[5] = 1;
  v4[6] = 0;
  v11 = 5;
  valuePtr = 65280;
  v8 = *MEMORY[0x29EDB8ED8];
  v4[7] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  v4[8] = CFNumberCreate(v8, kCFNumberSInt32Type, &v11);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  if (!clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp))
  {
    v4[16] = __tp.tv_nsec / 1000 + 1000000 * __tp.tv_sec;
  }

  return v4;
}

uint64_t ggctl_logShutdownDLog(uint64_t result, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v8 = 40;
  if (a3)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    v11 = 0;
    outputStruct = 0u;
    v10 = 0u;
    v6 = a3;
    result = IOConnectCallMethod(result, 0x12u, &v6, 1u, 0, 0, 0, 0, &outputStruct, &v8);
  }

  else
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    v11 = 0;
    outputStruct = 0u;
    v10 = 0u;
    input = a3;
    result = IOConnectCallMethod(result, 0x12u, &input, 1u, 0, 0, 0, 0, &outputStruct, &v8);
  }

  if (!result)
  {
    v4 = v10;
    *a2 = outputStruct;
    *(a2 + 16) = v4;
    *(a2 + 32) = v11;
  }

LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t getSInt32ForKey(CFStringRef key, _DWORD *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(service, key, *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      Value = CFNumberGetValue(v4, kCFNumberSInt32Type, a2);
      CFRelease(v4);
      if (Value)
      {
        return 0;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  result = 0xFFFFFFFFLL;
  *a2 = -1;
  return result;
}

void setUPOData(const __CFString *a1, int a2)
{
  v14 = a2;
  v3 = IOServiceMatching("IOService");
  if (v3)
  {
    v4 = v3;
    valuePtr = 0;
    v5 = *MEMORY[0x29EDB8ED8];
    v12 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
    v6 = CFDictionaryCreate(v5, &setUPOData_tmp, &v12, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(v4, @"IOPropertyMatch", v6);
      CFRelease(v7);
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v4);
      if (!MatchingService)
      {
        return;
      }

      v9 = MatchingService;
      v10 = CFNumberCreate(v5, kCFNumberSInt32Type, &v14);
      IORegistryEntrySetCFProperty(v9, a1, v10);
      IOObjectRelease(v9);
      v11 = v10;
    }

    else
    {
      v11 = v4;
    }

    CFRelease(v11);
  }
}

uint64_t ggctl_logShutdownReason2(uint64_t result, _OWORD *a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 48;
  if (a2)
  {
    if (a3)
    {
      v11 = 0u;
      v12 = 0u;
      outputStruct = 0u;
      input = a3;
      result = IOConnectCallMethod(result, 0x13u, &input, 1u, inputStruct, 0x30uLL, 0, 0, &outputStruct, &v9);
      if (!result)
      {
        v4 = v11;
        *a2 = outputStruct;
        a2[1] = v4;
        a2[2] = v12;
      }
    }

    else
    {
      v5 = a2[1];
      inputStruct[0] = *a2;
      inputStruct[1] = v5;
      inputStruct[2] = a2[2];
      v8 = a3;
      result = IOConnectCallMethod(result, 0x13u, &v8, 1u, inputStruct, 0x30uLL, 0, 0, &outputStruct, &v9);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t iokit_callback(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = a3;
  *(result + 8) = a4;
  return result;
}

void getUPOData(CFStringRef key, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = find_pmu_pmu_service;
  v5 = MEMORY[0x29EDB8ED8];
  if (find_pmu_pmu_service)
  {
    goto LABEL_7;
  }

  v6 = IOServiceMatching("IOService");
  if (v6)
  {
    v7 = v6;
    v16 = 0;
    v8 = *v5;
    find_pmu_zero_number = CFNumberCreate(*v5, kCFNumberSInt32Type, &v16);
    v9 = CFDictionaryCreate(v8, &find_pmu_tmp, &find_pmu_zero_number, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v7, @"IOPropertyMatch", v9);
      CFRelease(v10);
      find_pmu_pmu_service = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v7);
    }

    else
    {
      CFRelease(v7);
    }
  }

  v4 = find_pmu_pmu_service;
  if (find_pmu_pmu_service)
  {
LABEL_7:
    CFProperty = IORegistryEntryCreateCFProperty(v4, key, *v5, 0);
    if (CFProperty)
    {
      v12 = CFProperty;
      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(v12) || !CFNumberGetValue(v12, kCFNumberSInt32Type, a2))
      {
        v14 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315394;
          v17 = "/Library/Caches/com.apple.xbs/Sources/AppleHDQGasGauge/AppleHDQGasGauge.c";
          v18 = 1024;
          v19 = 2348;
          _os_log_impl(&dword_29D352000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d cannot read upo data", &v16, 0x12u);
        }
      }

      CFRelease(v12);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void updateThermalCoolDownState(io_registry_entry_t a1, int a2)
{
  keys[1] = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  keys[0] = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "ThermalCoolDown", 0x8000100u);
  v5 = MEMORY[0x29EDB8F00];
  if (!a2)
  {
    v5 = MEMORY[0x29EDB8EF8];
  }

  values = *v5;
  v6 = CFDictionaryCreate(v4, keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v6)
  {
    v7 = v6;
    IORegistryEntrySetCFProperties(a1, v6);
    CFRelease(v7);
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    updateThermalCoolDownState_cold_1();
  }

  v8 = *MEMORY[0x29EDCA608];
}

void statsAndLogs(io_registry_entry_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  cf = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  keys = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "stats", 0x8000100u);
  v5 = *MEMORY[0x29EDB8EF8];
  values = *MEMORY[0x29EDB8EF8];
  if (a2)
  {
    v13 = CFStringCreateWithCString(v4, "log", 0x8000100u);
    cf = v5;
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = CFDictionaryCreate(v4, &keys, &values, v6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v7)
  {
    v8 = v7;
    if (IORegistryEntrySetCFProperties(a1, v7) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      statsAndLogs_cold_1();
    }

    CFRelease(v8);
    CFRelease(values);
    if (a2)
    {
      CFRelease(cf);
    }
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    statsAndLogs_cold_2();
  }

  v9 = *MEMORY[0x29EDCA608];
}

void debugLog(io_registry_entry_t a1, int a2)
{
  keys[1] = *MEMORY[0x29EDCA608];
  valuePtr = a2;
  v3 = *MEMORY[0x29EDB8ED8];
  keys[0] = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "debug", 0x8000100u);
  values = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
  v4 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v4)
  {
    v5 = v4;
    if (IORegistryEntrySetCFProperties(a1, v4) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      debugLog_cold_1();
    }

    CFRelease(v5);
    CFRelease(values);
  }

  else if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    debugLog_cold_2();
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t readChargeTable(mach_port_t a1, __CFData **a2)
{
  *&v46[26] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  if (!dword_2A17A1B44)
  {
    goto LABEL_15;
  }

  v3 = 0xFFFFFFFFLL;
  if (!ggctl_readBlock(a1, -1, dword_2A17A1B44, &outputStruct, 0))
  {
    v4 = v44;
    if (v44 != 255)
    {
      v5 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v36 = v4;
        v6 = "gas gauge charge table invalid type: %#x";
        v7 = v5;
        v8 = 8;
LABEL_14:
        _os_log_impl(&dword_29D352000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v9 = outputStruct;
    v10 = outputStruct >> 4;
    v11 = 6 * v10 + 4;
    if (outputStruct > 0x4Fu)
    {
      v12 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v36 = v10;
        v37 = 1024;
        v38 = 6 * v10 + 4;
        v6 = "gas gauge charge table inconsistent: %d data entries, %d bytes";
        v7 = v12;
        v8 = 14;
        goto LABEL_14;
      }

LABEL_15:
      v3 = 0;
      goto LABEL_16;
    }

    v13 = 0;
    v34 = v43;
    p_outputStruct = &outputStruct;
    do
    {
      v15 = *p_outputStruct++;
      v13 += v15;
      --v11;
    }

    while (v11);
    v16 = v13;
    if (v13)
    {
      v17 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v36 = v16;
        v37 = 1024;
        v38 = v42;
        v39 = 1024;
        v40 = 256 - (v16 - v42);
        v6 = "gas gauge charge table bad checksum: checksum %#x checksum byte %#x expecting %#x";
        v7 = v17;
        v8 = 20;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v33 = v43 >> 4;
    v20 = 4 * v33 + 8;
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], v20 * v10);
    CFDataSetLength(Mutable, v20 * v10);
    if (v9 >= 0x10)
    {
      v22 = 0;
      v23 = v46;
      v24 = 10;
      do
      {
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        v26 = &MutableBytePtr[v22 * v20];
        v27 = &v45[6 * v22];
        *v26 = 100 * *v27;
        *(v26 + 1) = 100 * v27[1];
        *(v26 + 1) = v33;
        if (v34 >= 0x10)
        {
          v28 = &MutableBytePtr[v24];
          v29 = v23;
          v30 = v33;
          do
          {
            if (v30 == 1)
            {
              LOWORD(v31) = -1;
            }

            else
            {
              v31 = updateThread_batteryInfo[(*v29 & 0xF) + 64];
            }

            *(v28 - 1) = v31;
            v32 = *v29++;
            *v28 = *(&updateThread_batteryInfo[80] + ((v32 >> 2) & 0x3C));
            v28 += 4;
            --v30;
          }

          while (v30);
        }

        ++v22;
        v23 += 6;
        v24 += v20;
      }

      while (v22 != v10);
    }

    v3 = 0;
    *a2 = Mutable;
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t readRemainingCapacity__(_WORD *a1, int *a2, mach_port_t a3)
{
  v8 = 0;
  if ((getFWVersion(a3, &v8) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 <= 0x118u)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 50;
  }

  return hdqReadS16(a3, v6, a1);
}

uint64_t readFAC__(_WORD *a1, uint64_t a2, mach_port_t a3)
{
  v6 = 0;
  if ((getFWVersion(a3, &v6) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 == 1536)
  {
    return 0;
  }

  return hdqReadU16(a3, 14, a1);
}

uint64_t readBatteryData(uint64_t a1, uint64_t a2, mach_port_t a3)
{
  v10 = 0;
  if ((getFWVersion(a3, &v10) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 1)
  {
    v6 = 0;
    v7 = v10;
    while (1)
    {
      if (*(a1 + 4) == -1)
      {
        return v6;
      }

      if (registerName(a1, v7))
      {
        Register = readRegister(*(a1 + 56), a1, a3);
        if ((Register & 0x80000000) != 0)
        {
          break;
        }
      }

      ++v6;
      a1 += 80;
      if (a2 == v6)
      {
        return a2;
      }
    }

    return Register;
  }

  return a2;
}

void calculateBatteryHealthMetric()
{
  if (word_2A17A1A6E >= 0x600u)
  {
    v0 = (bswap32(word_2A17A1AE8) >> 16) * 0.137995 + (bswap32(word_2A17A1AE6) >> 16) * 0.0693069 + (bswap32(word_2A17A1AEA) >> 16) * 0.137376 + (bswap32(word_2A17A1AEC) >> 16) * 0.137376 + (bswap32(word_2A17A1AEE) >> 16) * 0.137376 + (bswap32(word_2A17A1AF0) >> 16) * 0.137376 + (bswap32(word_2A17A1AF2) >> 16) * 0.137376 + (bswap32(word_2A17A1AF4) >> 16) * 0.0872525 + (bswap32(word_2A17A1AF6) >> 16) * 0.0185644;
    word_2A17A1B3C = v0;
    v1 = &dword_2A17A180C;
    v2 = 17;
    while (*(v1 - 2) != word_2A17A1A68)
    {
      v1 += 2;
      if (!--v2)
      {
        v3 = 0.0;
        goto LABEL_7;
      }
    }

    v3 = *v1;
LABEL_7:
    v4 = (v3 * v0) / 1000.0;
    word_2A17A1B3E = v4;
    if (dword_2A17A1B38 < v4)
    {
      dword_2A17A1B38 = v4;
      setUPOData(@"IOPMUBootBatteryHealthMetric", v4);
    }
  }
}

CFDictionaryRef readChargerData(int a1, int a2, mach_port_t a3)
{
  v28[6] = *MEMORY[0x29EDCA608];
  if (readBatteryData(&readChargerData_chargerRegs, 5, a3) != 5)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v6 = v26;
  v7 = v28;
  memset(v28, 0, 48);
  memset(v26, 0, sizeof(v26));
  v8 = *MEMORY[0x29EDB8ED8];
  values[0] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt8Type, &readChargerData_notChargingReason);
  keys[0] = @"NotChargingReason";
  values[1] = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargerAlert);
  keys[1] = @"ChargerAlert";
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a2 && (readChargerData_notChargingReason & 0x10) != 0)
  {
    LOWORD(v24) = 0;
    if ((hdqReadU16(a3, 52, &v24) & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    v9 = 1717986919 * byte_2A17A1A70 * word_2A17A1A6A;
    if (((v9 >> 34) + (v9 >> 63)) <= v24)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 2;
    goto LABEL_11;
  }

  if ((readChargerData_notChargingReason & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = &v26[1];
  v7 = &v28[1];
  v28[0] = *MEMORY[0x29EDB8F00];
  v26[0] = @"ChargerTimeout";
  v10 = 3;
LABEL_11:
  if ((readChargerData_notChargingReason & 0x20) != 0)
  {
    *v7 = *MEMORY[0x29EDB8F00];
    *v6 = @"ChargerWatchdogTimeout";
    ++v10;
  }

  v12 = &values[v10];
  *v12 = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargingCurrent);
  v13 = (v12 + 3);
  keys[v10] = @"ChargingCurrent";
  v14 = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargingVoltage);
  v15 = 8 * v10 + 8;
  *(values + v15) = v14;
  *(keys + v15) = @"ChargingVoltage";
  v16 = CFNumberCreate(v8, kCFNumberSInt8Type, &readChargerData_chargerStatus);
  v17 = 8 * v10 + 16;
  *(values + v17) = v16;
  *(keys + v17) = @"ChargerStatus";
  v24 = time(0);
  v18 = CFNumberCreate(v8, kCFNumberLongType, &v24);
  v19 = 8 * v10 + 24;
  *(values + v19) = v18;
  *(keys + v19) = @"UpdateTime";
  v11 = CFDictionaryCreate(v8, keys, values, v10 + 4, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v20 = v10 + 5;
  do
  {
    v21 = *v13--;
    CFRelease(v21);
    --v20;
  }

  while (v20 > 1);
LABEL_15:
  v22 = *MEMORY[0x29EDCA608];
  return v11;
}

CFDictionaryRef dynamicATV(mach_port_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v14 = 0;
  *input = xmmword_29D35D0E0;
  v18 = 0;
  if (IOConnectCallScalarMethod(a1, 7u, input, 3u, 0, 0) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    dynamicATV_cold_1();
  }

  v1 = word_2A17A1A6C + word_2A17A1A76;
  v2 = word_2A17A1A6A;
  if (v1 <= (v2 + ((v2 & 0x8000) >> 15)) >> 1)
  {
    v3 = (word_2A17A1A6A + ((word_2A17A1A6A & 0x8000u) >> 15)) >> 1;
  }

  else
  {
    v3 = word_2A17A1A6C + word_2A17A1A76;
  }

  if (v1 <= word_2A17A1A6A)
  {
    v2 = v3;
  }

  dword_2A17A1A94 = v2;
  v4 = *MEMORY[0x29EDB8ED8];
  values = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &dword_2A17A1A94);
  v13 = @"atvBatteryCapacityMA";
  if (dword_2A17A1BE8)
  {
    v5 = determineVACVoltage();
    if (v5 != dword_2A17A1A90)
    {
      dword_2A17A1A90 = v5;
    }

    v16 = CFNumberCreate(v4, kCFNumberIntType, &dword_2A17A1A90);
    v14 = @"atvAbsMaxVoltageMV";
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = CFDictionaryCreate(v4, &v13, &values, v6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = v6 + 1;
  v9 = (&values + v6 - 1);
  do
  {
    v10 = *v9--;
    CFRelease(v10);
    --v8;
  }

  while (v8 > 1);
  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t determineVACVoltage()
{
  v42 = *MEMORY[0x29EDCA608];
  v0 = dword_2A17A1A90;
  v1 = dword_2A17A1BE8;
  if (dword_2A17A1BE8)
  {
    if (determineVACVoltage_lastBatteryCycleCount != word_2A17A1A9C || dword_2A17A1A90 == 0)
    {
      determineVACVoltage_lastBatteryCycleCount = word_2A17A1A9C;
      v3 = &dword_2A17A1BEC;
      while (1)
      {
        v5 = *v3++;
        v4 = v5;
        v6 = HIWORD(v5);
        if (v5 < 0x10000 || v6 > word_2A17A1A9C)
        {
          break;
        }

        if (!--v1)
        {
          v8 = determineVACVoltage_vacBasedVoltageMV;
          if (determineVACVoltage_vacBasedVoltageMV)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      v8 = v4;
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_16:
      v8 = LOWORD(updateThread_batteryInfo[dword_2A17A1BE8 + 104]);
LABEL_17:
      determineVACVoltage_vacBasedVoltageMV = v8;
      v9 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 67109120;
        v39 = v8;
        _os_log_impl(&dword_29D352000, v9, OS_LOG_TYPE_DEFAULT, "determineVACVoltage:: vacBasedVoltageMV=%d", &v38, 8u);
        v8 = determineVACVoltage_vacBasedVoltageMV;
      }

      if (v0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == 0;
      }

      if (!v10)
      {
        v0 = v8;
      }
    }
  }

  v11 = dword_2A17A1C2C;
  if (dword_2A17A1C2C && word_2A17A1A6E >= 0x313u)
  {
    v12 = word_2A17A1AD6;
    if (word_2A17A1A6E <= 0x500u)
    {
      v13 = word_2A17A1AD6;
    }

    else
    {
      v13 = word_2A17A1AD4;
    }

    v14 = &word_2A17A1AD6 + 1;
    if (word_2A17A1A6E > 0x500u)
    {
      v14 = &word_2A17A1AD4 + 1;
    }

    v15 = *v14 | (v13 << 8);
    if (word_2A17A1A6E <= 0x500u)
    {
      v12 = byte_2A17A1AD8;
    }

    if (v12 && v15 != 0)
    {
      if (determineVACVoltage_lastTimeAbove95 != v12 || (determineVACVoltage_lastToT == v15 ? (v17 = v0 == 0) : (v17 = 1), v17))
      {
        determineVACVoltage_lastTimeAbove95 = v12;
        determineVACVoltage_lastToT = v15;
        v18 = (42949673 * (v12 * v15)) >> 32;
        v19 = &dword_2A17A1C30;
        while (1)
        {
          v21 = *v19++;
          v20 = v21;
          v22 = HIWORD(v21);
          if (v21 < 0x10000 || v18 < v22)
          {
            break;
          }

          if (!--v11)
          {
            v24 = determineVACVoltage_vac95BasedVoltageMV;
            if (determineVACVoltage_vac95BasedVoltageMV)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        v24 = v20;
        if (v20)
        {
          goto LABEL_54;
        }

LABEL_53:
        v24 = LOWORD(updateThread_batteryInfo[dword_2A17A1C2C + 121]);
LABEL_54:
        determineVACVoltage_vac95BasedVoltageMV = v24;
        v25 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 67109376;
          v39 = v24;
          v40 = 1024;
          v41 = v0;
          _os_log_impl(&dword_29D352000, v25, OS_LOG_TYPE_DEFAULT, "determineVACVoltage:: vac95BasedVoltageMV=%d absMaxVoltageMV=%d", &v38, 0xEu);
          v24 = determineVACVoltage_vac95BasedVoltageMV;
        }

        if (v0)
        {
          v26 = 1;
        }

        else
        {
          v26 = v24 == 0;
        }

        if (!v26)
        {
          v0 = v24;
        }
      }
    }
  }

  if (determineVACVoltage_vacBasedVoltageMV >= v0)
  {
    v27 = v0;
  }

  else
  {
    v27 = determineVACVoltage_vacBasedVoltageMV;
  }

  if (determineVACVoltage_vacBasedVoltageMV)
  {
    v28 = v27;
  }

  else
  {
    v28 = v0;
  }

  if (determineVACVoltage_vac95BasedVoltageMV >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = determineVACVoltage_vac95BasedVoltageMV;
  }

  if (determineVACVoltage_vac95BasedVoltageMV)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  v31 = dword_2A17A1A90;
  v32 = word_2A17A1A72;
  if (dword_2A17A1A90)
  {
    v33 = v30 >= word_2A17A1A72;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    v31 = v30;
  }

  else
  {
    v34 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 67109376;
      v39 = v32;
      v40 = 1024;
      v41 = v30;
      _os_log_impl(&dword_29D352000, v34, OS_LOG_TYPE_DEFAULT, "determineVACVoltage:: waiting for vbat(%d) < vac(%d)", &v38, 0xEu);
      v31 = dword_2A17A1A90;
    }
  }

  v36 = *MEMORY[0x29EDCA608];
  return v31;
}

uint64_t determinePoSMThreshold()
{
  v51 = *MEMORY[0x29EDCA608];
  if (word_2A17A1A6E <= 0x500u)
  {
    if (word_2A17A1A6E < 0x313u)
    {
      v22 = 0xFFFFFFFFLL;
      goto LABEL_62;
    }

    v2 = &word_2A17A1AD6;
    v0 = &byte_2A17A1AD8;
    v1 = &word_2A17A1AD6 + 1;
  }

  else
  {
    v0 = &word_2A17A1AD6;
    v1 = &word_2A17A1AD4 + 1;
    v2 = &word_2A17A1AD4;
  }

  v3 = *v1 | (*v2 << 8);
  v4 = *v0;
  v5 = dword_2A17A1C74;
  v6 = dword_2A17A1C74 != 0;
  v7 = word_2A17A1C78;
  v8 = word_2A17A1C78 != 0;
  v9 = dword_2A17A1C7C;
  v10 = dword_2A17A1C7C != 0;
  v11 = word_2A17A1C80;
  v12 = word_2A17A1C80 != 0;
  v13 = determinePoSMThreshold_lastBatteryCycleCount != word_2A17A1A9C && dword_2A17A1C74 != 0;
  v14 = determinePoSMThreshold_lastToT != v3 && word_2A17A1C78 != 0;
  v15 = determinePoSMThreshold_lastAbove95 != v4 && word_2A17A1C80 != 0;
  v32 = v15;
  v33 = v13;
  if (v13)
  {
    determinePoSMThreshold_lastBatteryCycleCount = word_2A17A1A9C;
    if (word_2A17A1A9C <= HIWORD(dword_2A17A1C74))
    {
      v16 = -1;
    }

    else
    {
      v16 = dword_2A17A1C84;
    }

    determinePoSMThreshold_vacThreshold = v16;
  }

  v17 = v10 && (determinePoSMThreshold_lastToT != v3 || determinePoSMThreshold_lastAbove95 != v4);
  if (v14)
  {
    determinePoSMThreshold_lastToT = v3;
    if (v3 <= HIWORD(*&word_2A17A1C78))
    {
      v18 = -1;
    }

    else
    {
      v18 = dword_2A17A1C88;
    }

    determinePoSMThreshold_vacpThreshold = v18;
  }

  if (v17)
  {
    determinePoSMThreshold_lastToT = v3;
    determinePoSMThreshold_lastAbove95 = v4;
    if ((42949673 * (v4 * v3)) >> 32 <= HIWORD(dword_2A17A1C7C))
    {
      v19 = -1;
    }

    else
    {
      v19 = dword_2A17A1C8C;
    }

    determinePoSMThreshold_vac95Threshold = v19;
  }

  v34 = word_2A17A1A9C;
  v31 = v14;
  if (word_2A17A1C80)
  {
    determinePoSMThreshold_lastAbove95 = v4;
    if (v4 <= HIWORD(*&word_2A17A1C80))
    {
      v21 = 0x2A17A1000uLL;
      v20 = -1;
    }

    else
    {
      v20 = dword_2A17A1C90;
      v21 = 0x2A17A1000;
    }

    *(v21 + 3348) = v20;
  }

  else
  {
    v20 = determinePoSMThreshold_vac95pThreshold;
  }

  if (v5)
  {
    v23 = determinePoSMThreshold_vacThreshold;
  }

  else
  {
    v23 = -1;
  }

  v24 = determinePoSMThreshold_vacpThreshold;
  if (determinePoSMThreshold_vacpThreshold >= v23)
  {
    v24 = v23;
  }

  if (v7)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = determinePoSMThreshold_vac95Threshold;
  if (determinePoSMThreshold_vac95Threshold >= v25)
  {
    v26 = v25;
  }

  if (v9)
  {
    v25 = v26;
  }

  if (v20 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v20;
  }

  if (v11)
  {
    v22 = v27;
  }

  else
  {
    v22 = v25;
  }

  v28 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v36 = v6;
    v37 = 1024;
    v38 = v8;
    v39 = 1024;
    v40 = v10;
    v41 = 1024;
    v42 = v12;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold, enabled:%d %d %d %d ", buf, 0x1Au);
    v28 = logger;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v36 = v33;
    v37 = 1024;
    v38 = v31;
    v39 = 1024;
    v40 = v17;
    v41 = 1024;
    v42 = v32;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold, changed:%d %d %d %d ", buf, 0x1Au);
    v28 = logger;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v36 = v34;
    v37 = 1024;
    v38 = HIWORD(dword_2A17A1C74);
    v39 = 1024;
    v40 = v3;
    v41 = 1024;
    v42 = word_2A17A1C7A;
    v43 = 1024;
    v44 = (42949673 * (v4 * v3)) >> 32;
    v45 = 1024;
    v46 = HIWORD(dword_2A17A1C7C);
    v47 = 1024;
    v48 = v4;
    v49 = 1024;
    v50 = word_2A17A1C82;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold, cmp:%d>%u %d>%u %d>%u %d>%u", buf, 0x32u);
    v28 = logger;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    v36 = v22;
    v37 = 1024;
    v38 = determinePoSMThreshold_vacThreshold;
    v39 = 1024;
    v40 = determinePoSMThreshold_vacpThreshold;
    v41 = 1024;
    v42 = determinePoSMThreshold_vac95Threshold;
    v43 = 1024;
    v44 = determinePoSMThreshold_vac95pThreshold;
    _os_log_impl(&dword_29D352000, v28, OS_LOG_TYPE_DEFAULT, "determinePoSMThreshold,minThreshold=%u threshold:%u %u %u %u", buf, 0x20u);
  }

LABEL_62:
  v29 = *MEMORY[0x29EDCA608];
  return v22;
}

CFDictionaryRef parseBatteryData(int a1, int a2)
{
  v113 = *MEMORY[0x29EDCA608];
  *&valuePtr[4] = 0;
  memset(v104, 0, sizeof(v104));
  memset(v102, 0, sizeof(v102));
  v4 = *MEMORY[0x29EDB8ED8];
  v103[0] = CFDataCreate(*MEMORY[0x29EDB8ED8], updateThread_batteryInfo, 32);
  v101[0] = @"MfgData";
  v103[1] = createStringWithBytes(updateThread_batteryInfo, 0x12uLL);
  v101[1] = @"Serial";
  *valuePtr = word_2A17A1A6A;
  v103[2] = CFNumberCreate(v4, kCFNumberIntType, valuePtr);
  v101[2] = @"DesignCapacity";
  v72 = word_2A17A1A9E;
  values = CFNumberCreate(v4, kCFNumberIntType, &v72);
  if (values)
  {
    v5 = &v104[1];
    v6 = &v102[1];
    v104[0] = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    v102[0] = @"Qmax";
    CFRelease(values);
    v7 = 4;
  }

  else
  {
    v5 = v104;
    v6 = v102;
    v7 = 3;
  }

  v71 = word_2A17A1A74;
  *v5 = CFNumberCreate(v4, kCFNumberIntType, &v71);
  *v6 = @"MaxCapacity";
  v70 = word_2A17A1A9C;
  v8 = CFNumberCreate(v4, kCFNumberIntType, &v70);
  v9 = 8 * v7 + 8;
  *(v103 + v9) = v8;
  *(v101 + v9) = @"CycleCount";
  v69 = word_2A17A1AA0;
  v10 = CFNumberCreate(v4, kCFNumberIntType, &v69);
  v11 = 8 * v7 + 16;
  *(v103 + v11) = v10;
  *(v101 + v11) = @"StateOfCharge";
  v68 = word_2A17A1A72;
  v12 = CFNumberCreate(v4, kCFNumberIntType, &v68);
  v13 = 8 * v7 + 24;
  *(v103 + v13) = v12;
  *(v101 + v13) = @"Voltage";
  v67 = word_2A17A1AA2;
  v14 = CFNumberCreate(v4, kCFNumberIntType, &v67);
  v15 = 8 * v7 + 32;
  *(v103 + v15) = v14;
  *(v101 + v15) = @"Flags";
  StringWithBytes = createStringWithBytes(updateThread_batteryInfo + 2, 4uLL);
  v17 = 8 * v7 + 40;
  *(v103 + v17) = StringWithBytes;
  *(v101 + v17) = @"ManufactureDate";
  v66 = word_2A17A1A68;
  v18 = CFNumberCreate(v4, kCFNumberSInt16Type, &v66);
  v19 = 8 * v7 + 48;
  *(v103 + v19) = v18;
  *(v101 + v19) = @"ChemID";
  v20 = v7 + 7;
  if (word_2A17A1A6E != 1536)
  {
    v65 = word_2A17A1AA4;
    v103[v20] = CFNumberCreate(v4, kCFNumberIntType, &v65);
    v101[v20] = @"FullAvailableCapacity";
    v20 = v7 | 8;
    if (word_2A17A1A6E < 0x313u)
    {
      goto LABEL_20;
    }
  }

  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0;
  v100 = time(0);
  keys[0] = @"UpdateTime";
  v109[0] = CFNumberCreate(v4, kCFNumberLongType, &v100);
  keys[1] = @"MaximumTemperature";
  v99 = (byte_2A17A1AA6 << 8) | byte_2A17A1AA7;
  v109[1] = CFNumberCreate(v4, kCFNumberIntType, &v99);
  keys[2] = @"MinimumTemperature";
  v98 = (byte_2A17A1AA8 << 8) | byte_2A17A1AA9;
  v109[2] = CFNumberCreate(v4, kCFNumberIntType, &v98);
  keys[3] = @"MaximumPackVoltage";
  v97 = (byte_2A17A1AAA << 8) | byte_2A17A1AAB;
  v109[3] = CFNumberCreate(v4, kCFNumberIntType, &v97);
  keys[4] = @"MinimumPackVoltage";
  v96 = (byte_2A17A1AAC << 8) | byte_2A17A1AAD;
  v109[4] = CFNumberCreate(v4, kCFNumberIntType, &v96);
  keys[5] = @"MaximumChargeCurrent";
  v95 = (byte_2A17A1AAE << 8) | byte_2A17A1AAF;
  v109[5] = CFNumberCreate(v4, kCFNumberIntType, &v95);
  keys[6] = @"MaximumDischargeCurrent";
  v94 = (byte_2A17A1AB0 << 8) | byte_2A17A1AB1;
  v109[6] = CFNumberCreate(v4, kCFNumberIntType, &v94);
  keys[7] = @"MaximumOverChargedCapacity";
  v93 = (byte_2A17A1AB2 << 8) | byte_2A17A1AB3;
  v109[7] = CFNumberCreate(v4, kCFNumberIntType, &v93);
  keys[8] = @"MaximumOverDischargedCapacity";
  v92 = (byte_2A17A1AB4 << 8) | byte_2A17A1AB5;
  v109[8] = CFNumberCreate(v4, kCFNumberIntType, &v92);
  keys[9] = @"MaximumFCC";
  v91 = (byte_2A17A1AB6 << 8) | byte_2A17A1AB7;
  v109[9] = CFNumberCreate(v4, kCFNumberIntType, &v91);
  keys[10] = @"MinimumFCC";
  v90 = (byte_2A17A1AB8 << 8) | byte_2A17A1AB9;
  v109[10] = CFNumberCreate(v4, kCFNumberIntType, &v90);
  keys[11] = @"MaximumDeltaVoltage";
  v89 = (byte_2A17A1ABA << 8) | byte_2A17A1ABB;
  v109[11] = CFNumberCreate(v4, kCFNumberIntType, &v89);
  keys[12] = @"MinimumDeltaVoltage";
  v88 = (byte_2A17A1ABC << 8) | byte_2A17A1ABD;
  v109[12] = CFNumberCreate(v4, kCFNumberIntType, &v88);
  keys[13] = @"LowAvgCurrentLastRun";
  v87 = (byte_2A17A1ABE << 8) | byte_2A17A1ABF;
  v109[13] = CFNumberCreate(v4, kCFNumberIntType, &v87);
  keys[14] = @"HighAvgCurrentLastRun";
  v86 = (byte_2A17A1AC0 << 8) | byte_2A17A1AC1;
  v109[14] = CFNumberCreate(v4, kCFNumberIntType, &v86);
  keys[15] = @"MaximumQmax";
  v85 = (byte_2A17A1AC2 << 8) | byte_2A17A1AC3;
  v109[15] = CFNumberCreate(v4, kCFNumberIntType, &v85);
  keys[16] = @"MinimumQmax";
  v84 = (byte_2A17A1AC4 << 8) | byte_2A17A1AC5;
  v109[16] = CFNumberCreate(v4, kCFNumberIntType, &v84);
  keys[17] = @"MaximumRa0-8";
  v83 = (byte_2A17A1AC6 << 8) | byte_2A17A1AC7;
  v109[17] = CFNumberCreate(v4, kCFNumberIntType, &v83);
  keys[18] = @"MinimumRa0-8";
  v82 = (byte_2A17A1AC8 << 8) | byte_2A17A1AC9;
  v109[18] = CFNumberCreate(v4, kCFNumberIntType, &v82);
  keys[19] = @"AverageTemperature";
  v81 = byte_2A17A1ACA;
  v109[19] = CFNumberCreate(v4, kCFNumberIntType, &v81);
  keys[20] = @"TemperatureSamples";
  v80 = bswap32(unk_2A17A1ACB);
  v109[20] = CFNumberCreate(v4, kCFNumberIntType, &v80);
  keys[21] = @"FlashWriteCount";
  v79 = __rev16(unk_2A17A1ACF);
  *&v110 = CFNumberCreate(v4, kCFNumberIntType, &v79);
  *&v106 = @"RDISCnt";
  v78 = __rev16(unk_2A17A1AD1);
  *(&v110 + 1) = CFNumberCreate(v4, kCFNumberIntType, &v78);
  *(&v106 + 1) = @"CycleCountLastQmax";
  v77 = byte_2A17A1AD3;
  *&v111 = CFNumberCreate(v4, kCFNumberIntType, &v77);
  if (word_2A17A1A6E < 0x501u)
  {
    if (word_2A17A1A6E < 0x313u)
    {
      v24 = &v107;
      v25 = &v111 + 8;
      v26 = 25;
      goto LABEL_12;
    }

    v21 = &word_2A17A1AD6;
  }

  else
  {
    v21 = &word_2A17A1AD4;
  }

  v22 = __rev16(*v21);
  *&v107 = @"TotalOperatingTime";
  v76 = v22;
  *(&v111 + 1) = CFNumberCreate(v4, kCFNumberIntType, &v76);
  v23 = *(v21 + 2);
  *(&v107 + 1) = @"TimeAbove95Perc";
  v75 = v23;
  v24 = &v108;
  v25 = &v112 + 8;
  *&v112 = CFNumberCreate(v4, kCFNumberIntType, &v75);
  v26 = 27;
LABEL_12:
  *v24 = @"Raw";
  *v25 = CFDataCreate(v4, &byte_2A17A1AA6, 64);
  v27 = CFDictionaryCreate(v4, keys, v109, v26, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v28 = v26 - 1;
  do
  {
    CFRelease(v109[v28]);
    v29 = v28-- + 1;
  }

  while (v29 > 1);
  if (!v27)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      parseBatteryData_cold_1();
      if (!a1)
      {
        goto LABEL_22;
      }

LABEL_21:
      v64 = word_2A17A1A80;
      v103[v20] = CFNumberCreate(v4, kCFNumberIntType, &v64);
      v101[v20] = @"ITMiscStatus";
      v63 = word_2A17A1A80 & 3;
      v30 = CFNumberCreate(v4, kCFNumberIntType, &v63);
      v31 = 8 * v20 + 8;
      *(v103 + v31) = v30;
      *(v101 + v31) = @"ITSimulationCounter";
      v20 += 2;
      goto LABEL_22;
    }

LABEL_20:
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a2)
  {
    CFShow(v27);
  }

  v103[v20] = v27;
  v101[v20++] = @"LifetimeData";
  if (a1)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (word_2A17A1A6E >= 0x600u)
  {
    *&valuePtr[4] = CFDataCreate(v4, &word_2A17A1AE6, 32);
    if (*&valuePtr[4])
    {
      v103[v20] = CFArrayCreate(v4, &valuePtr[4], 1, MEMORY[0x29EDB9000]);
      v101[v20++] = @"RaTableRaw";
      CFRelease(*&valuePtr[4]);
    }

    v62 = word_2A17A1B3C;
    v103[v20] = CFNumberCreate(v4, kCFNumberIntType, &v62);
    v101[v20] = @"WeightedRa";
    v61 = word_2A17A1B3E;
    v32 = CFNumberCreate(v4, kCFNumberIntType, &v61);
    v33 = 8 * v20 + 8;
    *(v103 + v33) = v32;
    *(v101 + v33) = @"ChemicalWeightedRa";
    v60 = dword_2A17A1B38;
    v34 = CFNumberCreate(v4, kCFNumberIntType, &v60);
    v35 = 8 * v20 + 16;
    *(v103 + v35) = v34;
    *(v101 + v35) = @"BatteryHealthMetric";
    v36 = v20 + 3;
    if (word_2A17A1A6E < 0x600u)
    {
      v20 += 3;
    }

    else
    {
      v103[v36] = CFDataCreate(v4, byte_2A17A1B06, 32);
      v101[v36] = @"iMaxAndSocSmoothTable";
      v59 = __rev16(*&byte_2A17A1B06[1]);
      v37 = CFNumberCreate(v4, kCFNumberIntType, &v59);
      v38 = 8 * v20 + 32;
      *(v103 + v38) = v37;
      *(v101 + v38) = @"RSS";
      v20 += 5;
    }
  }

  v58 = word_2A17A1A84;
  v103[v20] = CFNumberCreate(v4, kCFNumberIntType, &v58);
  v101[v20] = @"ResScale";
  v57 = word_2A17A1A86;
  v39 = CFNumberCreate(v4, kCFNumberIntType, &v57);
  v40 = 8 * v20 + 8;
  *(v103 + v40) = v39;
  *(v101 + v40) = @"Qstart";
  v56 = word_2A17A1A88;
  v41 = CFNumberCreate(v4, kCFNumberIntType, &v56);
  v42 = 8 * v20 + 16;
  *(v103 + v42) = v41;
  *(v101 + v42) = @"PassedCharge";
  v43 = v20 + 3;
  v55 = word_2A17A1A8A;
  values = CFNumberCreate(v4, kCFNumberIntType, &v55);
  if (values)
  {
    v103[v43] = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    v101[v43] = @"DOD0";
    v43 = v20 + 4;
    CFRelease(values);
  }

  v54 = word_2A17A1A82;
  values = CFNumberCreate(v4, kCFNumberIntType, &v54);
  if (values)
  {
    v103[v43] = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    v101[v43++] = @"PresentDOD";
    CFRelease(values);
  }

  v53 = word_2A17A1AA2;
  v103[v43] = CFNumberCreate(v4, kCFNumberIntType, &v53);
  v101[v43] = @"GaugeFlagRaw";
  v52 = gauge_reset_count;
  v44 = CFNumberCreate(v4, kCFNumberLongLongType, &v52);
  v45 = 8 * v43 + 8;
  *(v103 + v45) = v44;
  *(v101 + v45) = @"GaugeResetCounter";
  if (v43 >= 27)
  {
    parseBatteryData_cold_2();
  }

  v46 = CFDictionaryCreate(v4, v101, v103, v43 + 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v43 >= -1)
  {
    v47 = v43 + 3;
    v48 = &v103[v43 + 1];
    do
    {
      v49 = *v48--;
      CFRelease(v49);
      --v47;
    }

    while (v47 > 1);
  }

  v50 = *MEMORY[0x29EDCA608];
  return v46;
}

__darwin_time_t UpSeconds()
{
  if (!UpSeconds_boottime)
  {
    v1.tv_sec = 16;
    sysctlbyname("kern.boottime", &UpSeconds_boottime, &v1, 0, 0);
  }

  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec - UpSeconds_boottime;
}

CFStringRef createStringWithBytes(UInt8 *bytes, unint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 1;
    do
    {
      if (!bytes[v2])
      {
        break;
      }

      v2 = v3++;
    }

    while (v2 < a2);
  }

  return CFStringCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], bytes, v2, 0x8000100u, 0, *MEMORY[0x29EDB8EE8]);
}

uint64_t GGHIDQueryInterface(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  v8 = CFEqual(v5, v7);
  v9 = v4;
  if (!v8)
  {
    v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v11 = CFEqual(v5, v10);
    v9 = v4;
    if (!v11)
    {
      v12 = CFUUIDGetConstantUUIDWithBytes(v6, 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
      if (!CFEqual(v5, v12))
      {
        v13 = 2147483652;
        goto LABEL_6;
      }

      v9 = v4 + 16;
    }
  }

  v13 = 0;
  *a3 = v9;
  ++*(v4 + 40);
LABEL_6:
  CFRelease(v5);
  return v13;
}

uint64_t GGHIDAddRef(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = (*(v1 + 40) + 1);
  *(v1 + 40) = result;
  return result;
}

uint64_t GGHIDRelease(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  v3 = (v2 - 1);
  *(v1 + 40) = v3;
  if (v2 == 1)
  {
    v4 = *(v1 + 32);
    GGHIDStop(a1);
    free(v1);
    CFPlugInRemoveInstanceForFactory(v4);
    CFRelease(v4);
  }

  return v3;
}

uint64_t GGHIDProbe(int a1, int a2, io_object_t object)
{
  if (!object)
  {
    return 3758097090;
  }

  if (!IOObjectConformsTo(object, "AppleHDQGasGaugeControl"))
  {
    return 3758097090;
  }

  memset(&v4, 0, sizeof(v4));
  result = stat("/dev/cu.gas-gauge", &v4);
  if (result)
  {
    return 3758097090;
  }

  return result;
}

uint64_t GGHIDStart(uint64_t a1, int a2, io_service_t service)
{
  v3 = *(a1 + 8);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = IOServiceOpen(service, *MEMORY[0x29EDCA6B0], 0, (v3 + 44));
  if (v4)
  {
    v5 = v4;
LABEL_5:
    *(v3 + 44) = 0;
    return v5;
  }

  v6 = *(v3 + 44);
  outputStructCnt = 352;
  v5 = IOConnectCallStructMethod(v6, 2u, 0, 0, v9, &outputStructCnt);
  if (v5)
  {
    IOServiceClose(*(v3 + 44));
    goto LABEL_5;
  }

  v8 = DWORD2(v10);
  if (DWORD2(v10) == -1)
  {
    v8 = 1413951554;
  }

  LODWORD(outputStructCnt) = v8;
  *(v3 + 48) = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &outputStructCnt);
  *(v3 + 72) = DWORD2(v11);
  return v5;
}

uint64_t GGHIDStop(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 44);
  if (v2)
  {
    IOServiceClose(v2);
    *(v1 + 44) = 0;
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 48) = 0;
  }

  return 0;
}

CFDictionaryRef GGHIDCopyProperty(uint64_t a1, CFTypeRef cf1)
{
  v21[4] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  if (CFEqual(cf1, @"ServicePluginDebug"))
  {
    memset(v21, 0, 32);
    memset(v19, 0, sizeof(v19));
    values[0] = @"AppleHDQGasGaugeHID";
    keys[0] = @"PluginName";
    keys[1] = @"TemperatureEventCnt";
    v4 = *MEMORY[0x29EDB8ED8];
    values[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, (v3 + 88));
    keys[2] = @"TemperatureEventFailCnt";
    values[2] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 96));
    keys[3] = @"TemperatureEventConsFailCnt";
    values[3] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 104));
    keys[4] = @"LastCalledTs";
    values[4] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 112));
    keys[5] = @"LastErrTs";
    values[5] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 120));
    keys[6] = @"LastSuccessTs";
    values[6] = CFNumberCreate(v4, kCFNumberSInt64Type, (v3 + 128));
    v5 = *(v3 + 136);
    if (v5)
    {
      v6 = &v21[1];
      v7 = v19 + 1;
      *&v19[0] = @"ErrorHistory";
      v21[0] = v5;
      CFRetain(v5);
      v8 = 8;
    }

    else
    {
      v6 = v21;
      v7 = v19;
      v8 = 7;
    }

    v10 = *(v3 + 144);
    if (v10)
    {
      *v7 = @"ErrorCounts";
      *v6 = v10;
      CFRetain(v10);
      ++v8;
    }

    keys[v8] = @"ErrorInjection";
    if (*(v3 + 76))
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    else
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    v12 = *v11;
    values[v8] = *v11;
    CFRetain(v12);
    v13 = v8 + 1;
    keys[v8 + 1] = @"ErrorInjectionCode";
    values[v8 + 1] = CFNumberCreate(v4, kCFNumberSInt32Type, (v3 + 80));
    v14 = CFDictionaryCreate(v4, keys, values, v8 + 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    do
    {
      CFRelease(values[v13]);
      v15 = v13-- + 1;
    }

    while (v15 > 1);
  }

  else
  {
    if (CFEqual(cf1, @"PrimaryUsagePage"))
    {
      v9 = *(v3 + 56);
    }

    else
    {
      v9 = 0;
    }

    if (CFEqual(cf1, @"PrimaryUsage"))
    {
      v9 = *(v3 + 64);
    }

    if (CFEqual(cf1, @"LocationID"))
    {
      v9 = *(v3 + 48);
    }

    if (CFEqual(cf1, @"Product"))
    {
      v14 = @"gas gauge battery";
    }

    else
    {
      v14 = v9;
    }

    if (v14)
    {
      CFRetain(v14);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t GGHIDSetProperty(uint64_t a1, CFTypeRef cf1, const __CFNumber *a3)
{
  v5 = *(a1 + 8);
  if (CFEqual(cf1, @"ErrorInjectionCode"))
  {
    TypeID = CFNumberGetTypeID();
    if (a3 && CFGetTypeID(a3) == TypeID)
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, (v5 + 80));
      return 1;
    }
  }

  else
  {
    result = CFEqual(cf1, @"ErrorInjection");
    if (!result)
    {
      return result;
    }

    v8 = CFBooleanGetTypeID();
    if (a3)
    {
      if (CFGetTypeID(a3) == v8)
      {
        v9 = *MEMORY[0x29EDB8F00] == a3;
      }

      else
      {
        v10 = CFNumberGetTypeID();
        if (CFGetTypeID(a3) != v10)
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        v9 = valuePtr != 0;
      }

      *(v5 + 76) = v9;
      return 1;
    }

    CFNumberGetTypeID();
  }

  return 0;
}

uint64_t GGHIDCopyEvent(uint64_t a1, int a2)
{
  v50 = *MEMORY[0x29EDCA608];
  if (a2 == 15)
  {
    v2 = *(a1 + 8);
    outputCnt = 1;
    output = 0;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    if (!clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp))
    {
      *(v2 + 112) = __tp.tv_nsec / 1000 + 1000000 * __tp.tv_sec;
    }

    v3 = *(v2 + 88);
    if (v3 != -1)
    {
      *(v2 + 88) = v3 + 1;
    }

    if (*(v2 + 72))
    {
      v4 = *(v2 + 44);
      input = 0;
      v5 = IOConnectCallScalarMethod(v4, 0x10u, &input, 1u, 0, 0);
      v6 = v5 == -536870183 || v5 == 0;
      if (!v6 && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        GGHIDCopyEvent_cold_1();
      }
    }

    v7 = *(v2 + 44);
    v40 = 6;
    v8 = IOConnectCallScalarMethod(v7, 8u, &v40, 1u, &output, &outputCnt);
    if (*(v2 + 76) == 1)
    {
      v9 = *(v2 + 80);
    }

    else
    {
      v9 = v8;
    }

    valuePtr = v9;
    v11 = MEMORY[0x29EDB8ED8];
    if (v9)
    {
      Mutable = *(v2 + 136);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9000]);
        *(v2 + 136) = Mutable;
      }

      if (!*(v2 + 144))
      {
        *(v2 + 144) = CFDictionaryCreateMutable(*v11, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        Mutable = *(v2 + 136);
      }

      *(v2 + 120) = *(v2 + 112);
      if (CFArrayGetCount(Mutable) >= 10)
      {
        CFArrayRemoveValueAtIndex(*(v2 + 136), 0);
      }

      if (*(v2 + 136))
      {
        v13 = CFNumberCreate(*v11, kCFNumberIntType, &valuePtr);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(*(v2 + 136), v13);
          CFRelease(v14);
        }
      }

      v15 = *(v2 + 96);
      if (v15 != -1)
      {
        *(v2 + 96) = v15 + 1;
      }

      v16 = *(v2 + 104);
      if (v16 != -1)
      {
        *(v2 + 104) = v16 + 1;
      }

      if (*(v2 + 144))
      {
        *&__str[7] = 0;
        *__str = 0;
        snprintf(__str, 0xBuLL, "%#x", valuePtr);
        v17 = *v11;
        v18 = CFStringCreateWithCString(*v11, __str, 0x8000100u);
        if (v18)
        {
          v19 = v18;
          v44 = 0;
          Value = CFDictionaryGetValue(*(v2 + 144), v18);
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberIntType, &v44);
            v21 = v44 + 1;
          }

          else
          {
            v21 = 1;
          }

          v44 = v21;
          v22 = CFNumberCreate(v17, kCFNumberIntType, &v44);
          if (v22)
          {
            v23 = v22;
            CFDictionarySetValue(*(v2 + 144), v19, v22);
            CFRelease(v23);
          }

          CFRelease(v19);
        }
      }

      v24 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        v33 = *(v2 + 96);
        v34 = *(v2 + 104);
        *__str = 136315906;
        *&__str[4] = "GGHID_log_error";
        v48 = 1024;
        *v49 = valuePtr;
        *&v49[4] = 2048;
        *&v49[6] = v33;
        *&v49[14] = 2048;
        *&v49[16] = v34;
        _os_log_error_impl(&dword_29D352000, v24, OS_LOG_TYPE_ERROR, "%s: cannot read temperature: rc:%u cnt:%zu ccnt:%zu", __str, 0x26u);
      }

      if (*(v2 + 112) - *(v2 + 128) >= 0x9896801uLL)
      {
        v25 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_FAULT))
        {
          v35 = *(v2 + 96);
          v36 = *(v2 + 104);
          v37 = *(v2 + 136);
          v38 = *(v2 + 144);
          *__str = 134218754;
          *&__str[4] = v35;
          v48 = 2048;
          *v49 = v36;
          *&v49[8] = 2112;
          *&v49[10] = v37;
          *&v49[18] = 2112;
          *&v49[20] = v38;
          _os_log_fault_impl(&dword_29D352000, v25, OS_LOG_TYPE_FAULT, "cnt:%zu ccnt:%zu errs:%@ errCnts:%@", __str, 0x2Au);
        }
      }

      if (v9 == -536870183)
      {
        goto LABEL_52;
      }

      if (v9 == -536870163)
      {
LABEL_51:
        v10 = 0;
        gRestrictLogMessagesCounter = gRestrictLogCounter;
        goto LABEL_53;
      }
    }

    else
    {
      *(v2 + 104) = 0;
      *(v2 + 128) = *(v2 + 112);
    }

    if (*(v2 + 72) && (v26 = *(v2 + 44), v39 = 1, (v27 = IOConnectCallScalarMethod(v26, 0x10u, &v39, 1u, 0, 0)) != 0) && (v28 = v27, v29 = logger, os_log_type_enabled(logger, OS_LOG_TYPE_ERROR)))
    {
      *__str = 136315650;
      *&__str[4] = "GGHID_GetTemperature";
      v48 = 1024;
      *v49 = 4343;
      *&v49[4] = 1024;
      *&v49[6] = v28;
      _os_log_error_impl(&dword_29D352000, v29, OS_LOG_TYPE_ERROR, "%s:%d cannot enable interrupts (%x)", __str, 0x18u);
      if (v9)
      {
        goto LABEL_51;
      }
    }

    else if (v9)
    {
      goto LABEL_51;
    }

LABEL_52:
    gRestrictLogMessagesCounter = 0;
    v30 = *v11;
    mach_absolute_time();
    v10 = IOHIDEventCreate();
    IOHIDEventSetFloatValue();
    goto LABEL_53;
  }

  v10 = 0;
LABEL_53:
  v31 = *MEMORY[0x29EDCA608];
  return v10;
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void ggctl_connect_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void ggctl_connect_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void ggctl_reset_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ggctl_open_device_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void ggctl_open_device_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ggctl_open_device_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ggctl_open_device_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x29EDCA608];
}

void logBatteryDiagnosticData_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x29EDCA608];
}

void updateThread_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void updateThread_cold_2(mach_error_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void updateThread_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void updateThread_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void updateThread_cold_8(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = -1;
  _os_log_error_impl(&dword_29D352000, log, OS_LOG_TYPE_ERROR, "cannot drain the data log (%d)", buf, 8u);
}

void updateThread_cold_10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void updateThermalCoolDownState_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void statsAndLogs_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void statsAndLogs_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void debugLog_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void debugLog_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void dynamicATV_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void parseBatteryData_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void GGHIDCopyEvent_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}