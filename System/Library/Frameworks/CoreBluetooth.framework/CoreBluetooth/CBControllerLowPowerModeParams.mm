@interface CBControllerLowPowerModeParams
- (CBControllerLowPowerModeParams)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBControllerLowPowerModeParams

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  xdict = objectCopy;
  if (self->_actionType)
  {
    xpc_dictionary_set_uint64(objectCopy, "suA", self->_actionType);
  }

  dataBlob = self->_dataBlob;
  if (dataBlob)
  {
    v6 = dataBlob;
    v7 = xdict;
    v8 = dataBlob;
    bytes = [(NSData *)v8 bytes];
    if (bytes)
    {
      v10 = bytes;
    }

    else
    {
      v10 = "";
    }

    v11 = [(NSData *)v8 length];

    xpc_dictionary_set_data(v7, "blb", v10, v11);
  }

  dataMask = self->_dataMask;
  if (dataMask)
  {
    v13 = dataMask;
    v14 = xdict;
    v15 = dataMask;
    bytes2 = [(NSData *)v15 bytes];
    if (bytes2)
    {
      v17 = bytes2;
    }

    else
    {
      v17 = "";
    }

    v18 = [(NSData *)v15 length];

    xpc_dictionary_set_data(v14, "msk", v17, v18);
  }

  if (self->_configFlags)
  {
    xpc_dictionary_set_uint64(xdict, "ctcf", self->_configFlags);
  }

  if (self->_scanDelayStart)
  {
    xpc_dictionary_set_uint64(xdict, "ctds", self->_scanDelayStart);
  }

  if (self->_scanWindow)
  {
    xpc_dictionary_set_uint64(xdict, "ctsw", self->_scanWindow);
  }

  if (self->_scanInterval)
  {
    xpc_dictionary_set_uint64(xdict, "ctsi", self->_scanInterval);
  }

  if (self->_scanDuration)
  {
    xpc_dictionary_set_uint64(xdict, "ctsd", self->_scanDuration);
  }

  if (self->_nextScanDelay)
  {
    xpc_dictionary_set_uint64(xdict, "ctns", self->_nextScanDelay);
  }

  if (self->_numberOfDelayIterations)
  {
    xpc_dictionary_set_uint64(xdict, "ctND", self->_numberOfDelayIterations);
  }

  if (self->_packetLength)
  {
    xpc_dictionary_set_uint64(xdict, "ctpl", self->_packetLength);
  }

  if (self->_rssiThresholdValue)
  {
    xpc_dictionary_set_int64(xdict, "ctri", self->_rssiThresholdValue);
  }

  deviceIDSalt = self->_deviceIDSalt;
  if (deviceIDSalt)
  {
    v20 = deviceIDSalt;
    v21 = xdict;
    v22 = deviceIDSalt;
    bytes3 = [(NSData *)v22 bytes];
    if (bytes3)
    {
      v24 = bytes3;
    }

    else
    {
      v24 = "";
    }

    v25 = [(NSData *)v22 length];

    xpc_dictionary_set_data(v21, "dISt", v24, v25);
  }

  if (self->_deviceIDTimestampFrequency)
  {
    xpc_dictionary_set_uint64(xdict, "dITf", self->_deviceIDTimestampFrequency);
  }

  if (self->_deviceIDTimestampEffectiveBits)
  {
    xpc_dictionary_set_uint64(xdict, "dIEb", self->_deviceIDTimestampEffectiveBits);
  }

  if (self->_deviceIDTimestampLsbsTruncated)
  {
    xpc_dictionary_set_uint64(xdict, "dILT", self->_deviceIDTimestampLsbsTruncated);
  }

  maxClockDriftSeconds = self->_maxClockDriftSeconds;
  if (maxClockDriftSeconds)
  {
    xpc_dictionary_set_uint64(xdict, "mcds", maxClockDriftSeconds);
  }

  deviceIDInputKeyMaterial = self->_deviceIDInputKeyMaterial;
  if (deviceIDInputKeyMaterial)
  {
    v28 = deviceIDInputKeyMaterial;
    v29 = xdict;
    v30 = deviceIDInputKeyMaterial;
    bytes4 = [(NSData *)v30 bytes];
    if (bytes4)
    {
      v32 = bytes4;
    }

    else
    {
      v32 = "";
    }

    v33 = [(NSData *)v30 length];

    xpc_dictionary_set_data(v29, "dIIk", v32, v33);
  }

  deviceIDInfo = self->_deviceIDInfo;
  if (deviceIDInfo)
  {
    v35 = deviceIDInfo;
    v36 = xdict;
    v37 = deviceIDInfo;
    bytes5 = [(NSData *)v37 bytes];
    if (bytes5)
    {
      v39 = bytes5;
    }

    else
    {
      v39 = "";
    }

    v40 = [(NSData *)v37 length];

    xpc_dictionary_set_data(v36, "dIII", v39, v40);
  }

  if (self->_deviceIDLength)
  {
    xpc_dictionary_set_uint64(xdict, "dIdL", self->_deviceIDLength);
  }

  if (self->_deviceIDAdvScanCount)
  {
    xpc_dictionary_set_uint64(xdict, "dIAS", self->_deviceIDAdvScanCount);
  }

  if (self->_gpioAssertionTime)
  {
    xpc_dictionary_set_uint64(xdict, "ctga", self->_gpioAssertionTime);
  }

  if (self->_diagnosticTxAdvInterval)
  {
    xpc_dictionary_set_uint64(xdict, "dtAI", self->_diagnosticTxAdvInterval);
  }

  if (self->_diagnosticTxAdvDuration)
  {
    xpc_dictionary_set_uint64(xdict, "dtAD", self->_diagnosticTxAdvDuration);
  }

  if (self->_diagnosticTxAdvBackoff)
  {
    xpc_dictionary_set_uint64(xdict, "dtAB", self->_diagnosticTxAdvBackoff);
  }

  deviceIDDiagInfo = self->_deviceIDDiagInfo;
  if (deviceIDDiagInfo)
  {
    v42 = deviceIDDiagInfo;
    v43 = xdict;
    v44 = deviceIDDiagInfo;
    bytes6 = [(NSData *)v44 bytes];
    if (bytes6)
    {
      v46 = bytes6;
    }

    else
    {
      v46 = "";
    }

    v47 = [(NSData *)v44 length];

    xpc_dictionary_set_data(v43, "dIDI", v46, v47);
  }

  if (self->_deviceIDDiagLength)
  {
    xpc_dictionary_set_uint64(xdict, "dIDL", self->_deviceIDDiagLength);
  }

  macKeyDiagInfo = self->_macKeyDiagInfo;
  if (macKeyDiagInfo)
  {
    v49 = macKeyDiagInfo;
    v50 = xdict;
    v51 = macKeyDiagInfo;
    bytes7 = [(NSData *)v51 bytes];
    if (bytes7)
    {
      v53 = bytes7;
    }

    else
    {
      v53 = "";
    }

    v54 = [(NSData *)v51 length];

    xpc_dictionary_set_data(v50, "mkDI", v53, v54);
  }

  v55 = xdict;
  if (self->_macKeyDiagLength)
  {
    xpc_dictionary_set_uint64(xdict, "mkDL", self->_macKeyDiagLength);
    v55 = xdict;
  }
}

- (id)description
{
  actionType = self->_actionType;
  if (actionType > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E811E540[actionType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"ActionType: %s, Blob: %@, Mask: %@, Config: 0x%x, DelayStart: %d, ScanW: 0x%x, ScanI: 0x%x, ScanD: %d, NextScan: %d, ClockDrift: %u, RSSI: %d, GPIOAssertTime: %d, dIDSalt: %@, dIDTsFrq: %d, dIDEffectiveBits: %d, dIDTsLsbsTruncated: %d, dIDIKM: %@, dIDInfo: %@, dIDLen: %d, dIDAdvScanCnt: %d, diagTxAdvInt: %d, diagTxAdvDur: %d, diagTxAdvBackoff: %d, dIDDiagInfo: %@, dIDDiagLen: %d, macKeyDiagInfo: %@, macKeyDiagLen: %d", v3, self->_dataBlob, self->_dataMask, self->_configFlags, self->_scanDelayStart, self->_scanWindow, self->_scanInterval, self->_scanDuration, self->_nextScanDelay, self->_maxClockDriftSeconds, self->_rssiThresholdValue, self->_gpioAssertionTime, self->_deviceIDSalt, self->_deviceIDTimestampFrequency, self->_deviceIDTimestampEffectiveBits, self->_deviceIDTimestampLsbsTruncated, self->_deviceIDInputKeyMaterial, self->_deviceIDInfo, self->_deviceIDLength, self->_deviceIDAdvScanCount, self->_diagnosticTxAdvInterval, self->_diagnosticTxAdvDuration, self->_diagnosticTxAdvBackoff, self->_deviceIDDiagInfo, self->_deviceIDDiagLength, self->_macKeyDiagInfo, self->_macKeyDiagLength];
}

- (CBControllerLowPowerModeParams)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      v37 = [objc_opt_class() description];
      *v5 = CBErrorF(-6756, "%@ init failed", v38, v39, v40, v41, v42, v43, v37);
    }

    goto LABEL_82;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v44 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v45);
      OUTLINED_FUNCTION_16(v44);
      goto LABEL_77;
    }

    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    *(v7 + 8) = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_4_0();
  if (v15 == 6)
  {
    *(v7 + 20) = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v16 = OUTLINED_FUNCTION_4_0();
  if (v16 == 6)
  {
    *(v7 + 22) = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v17 = OUTLINED_FUNCTION_4_0();
  if (v17 == 6)
  {
    *(v7 + 24) = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v18 = OUTLINED_FUNCTION_4_0();
  if (v18 == 6)
  {
    *(v7 + 26) = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_4_0();
  if (v19 == 6)
  {
    *(v7 + 28) = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_4_0();
  if (v20 == 6)
  {
    *(v7 + 30) = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v21 = OUTLINED_FUNCTION_4_0();
  if (v21 == 6)
  {
    *(v7 + 32) = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_3_1();
  if (v22 == 6)
  {
    *(v7 + 10) = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_82;
  }

  v23 = OUTLINED_FUNCTION_1_3();
  if (v23 == 6)
  {
    *(v7 + 9) = 0;
  }

  else if (v23 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v24 = OUTLINED_FUNCTION_3_1();
  if (v24 == 6)
  {
    *(v7 + 14) = 0;
  }

  else if (v24 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v25 = OUTLINED_FUNCTION_3_1();
  if (v25 == 6)
  {
    *(v7 + 13) = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v26 = OUTLINED_FUNCTION_3_1();
  if (v26 == 6)
  {
    *(v7 + 15) = 0;
  }

  else if (v26 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v27 = OUTLINED_FUNCTION_5();
  if (v27 == 6)
  {
    *(v7 + 40) = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v28 = OUTLINED_FUNCTION_3_1();
  if (v28 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v28 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v29 = OUTLINED_FUNCTION_3_1();
  if (v29 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v30 = OUTLINED_FUNCTION_4_0();
  if (v30 == 6)
  {
    *(v7 + 34) = 0;
  }

  else if (v30 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v31 = OUTLINED_FUNCTION_4_0();
  if (v31 == 6)
  {
    *(v7 + 36) = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v32 = OUTLINED_FUNCTION_3_1();
  if (v32 == 6)
  {
    *(v7 + 18) = 0;
  }

  else if (v32 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v33 = OUTLINED_FUNCTION_3_1();
  if (v33 == 6)
  {
    *(v7 + 17) = 0;
  }

  else if (v33 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v34 = OUTLINED_FUNCTION_3_1();
  if (v34 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v34 == 5)
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0();
  v35 = OUTLINED_FUNCTION_3_1();
  if (v35 != 6)
  {
    if (v35 != 5)
    {
      goto LABEL_76;
    }

LABEL_82:
    v6 = 0;
    goto LABEL_77;
  }

  *(v7 + 19) = 0;
LABEL_76:
  v6 = v7;
LABEL_77:

  return v6;
}

@end