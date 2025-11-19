@interface CBDeviceResponse
- (CBDeviceResponse)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBDeviceResponse

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_btBand)
  {
    xpc_dictionary_set_uint64(v4, "btBd", self->_btBand);
  }

  if (self->_connectionHandle)
  {
    xpc_dictionary_set_uint64(v5, "CnHd", self->_connectionHandle);
  }

  if (self->_core0TargetPower)
  {
    xpc_dictionary_set_int64(v5, "c0TP", self->_core0TargetPower);
  }

  if (self->_core1TargetPower)
  {
    xpc_dictionary_set_int64(v5, "c1TP", self->_core1TargetPower);
  }

  if (self->_currentPCAP)
  {
    xpc_dictionary_set_int64(v5, "pcap", self->_currentPCAP);
  }

  identifier = self->_identifier;
  xdict = v5;
  v7 = [(NSString *)identifier UTF8String];
  if (v7)
  {
    xpc_dictionary_set_string(xdict, "id", v7);
  }

  if (self->_rssi)
  {
    xpc_dictionary_set_int64(xdict, "rssi", self->_rssi);
  }

  sniffInterval = self->_sniffInterval;
  if (sniffInterval)
  {
    xpc_dictionary_set_uint64(xdict, "snfI", sniffInterval);
  }

  v9 = xdict;
  if (self->_txPower)
  {
    xpc_dictionary_set_int64(xdict, "txPw", self->_txPower);
    v9 = xdict;
  }

  if (self->_txPowerMax)
  {
    xpc_dictionary_set_int64(xdict, "txPM", self->_txPowerMax);
    v9 = xdict;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v4 = a3;
  if ((a3 & 0x8000000) != 0)
  {
    v6 = 0;
    if (a3 > 0x14u)
    {
LABEL_3:
      if (self->_btBand)
      {
        v32 = v6;
        NSAppendPrintF_safe();
        v9 = v32;

        v6 = v9;
        if (self->_connectionHandle)
        {
          goto LABEL_13;
        }
      }

      else if (self->_connectionHandle)
      {
LABEL_13:
        v31[8] = v6;
        NSAppendPrintF_safe();
        v10 = v6;

        v6 = v10;
      }

      if (self->_core0TargetPower)
      {
        v31[7] = v6;
        NSAppendPrintF_safe();
        v11 = v6;

        if (!self->_core0TargetPower)
        {
          if (!self->_currentPCAP)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v31[6] = v11;
        core1TargetPower = self->_core1TargetPower;
        NSAppendPrintF_safe();
        v6 = v11;
      }

      v11 = v6;
      if (!self->_currentPCAP)
      {
LABEL_19:
        if (self->_identifier)
        {
          v31[4] = v11;
          NSAppendPrintF_safe();
          v13 = v11;

          v11 = v13;
        }

        if (self->_rssi)
        {
          v31[3] = v11;
          NSAppendPrintF_safe();
          v14 = v11;

          v11 = v14;
        }

        if (self->_sniffInterval)
        {
          v31[2] = v11;
          NSAppendPrintF_safe();
          v15 = v11;

          v11 = v15;
        }

        if (self->_txPower)
        {
          v31[1] = v11;
          NSAppendPrintF_safe();
          v6 = v11;

          if (!self->_txPowerMax)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v6 = v11;
          if (!self->_txPowerMax)
          {
            goto LABEL_51;
          }
        }

        v31[0] = v6;
        v16 = v31;
LABEL_50:
        NSAppendPrintF_safe();
        v26 = *v16;

        v6 = v26;
        goto LABEL_51;
      }

LABEL_18:
      v31[5] = v11;
      NSAppendPrintF_safe();
      v12 = v11;

      v11 = v12;
      goto LABEL_19;
    }
  }

  else
  {
    v33[10] = 0;
    v5 = [objc_opt_class() description];
    NSAppendPrintF_safe();
    v6 = 0;

    if (v4 > 0x14)
    {
      goto LABEL_3;
    }
  }

  self->_btBand;
  connectionHandle = self->_connectionHandle;
  if (!self->_connectionHandle)
  {
    v8 = 8 * (self->_btBand != 0);
  }

  self->_core1TargetPower;
  self->_core0TargetPower;
  self->_currentPCAP;
  self->_identifier;
  self->_rssi;
  self->_sniffInterval;
  self->_txPower;
  self->_txPowerMax;
  if (self->_btBand)
  {
    v33[9] = v6;
    NSAppendPrintF_safe();
    v17 = v6;

    connectionHandle = self->_connectionHandle;
    v6 = v17;
  }

  if (connectionHandle)
  {
    v33[8] = v6;
    NSAppendPrintF_safe();
    v18 = v6;

    v6 = v18;
  }

  if (self->_core0TargetPower)
  {
    v33[7] = v6;
    NSAppendPrintF_safe();
    v19 = v6;

    v6 = v19;
  }

  if (self->_core1TargetPower)
  {
    v33[6] = v6;
    NSAppendPrintF_safe();
    v20 = v6;

    v6 = v20;
  }

  if (self->_currentPCAP)
  {
    v33[5] = v6;
    NSAppendPrintF_safe();
    v21 = v6;

    v6 = v21;
  }

  if (self->_identifier)
  {
    v33[4] = v6;
    NSAppendPrintF_safe();
    v22 = v6;

    v6 = v22;
  }

  if (self->_rssi)
  {
    v33[3] = v6;
    NSAppendPrintF_safe();
    v23 = v6;

    v6 = v23;
  }

  if (self->_sniffInterval)
  {
    v33[2] = v6;
    NSAppendPrintF_safe();
    v24 = v6;

    v6 = v24;
  }

  if (self->_txPower)
  {
    v33[1] = v6;
    NSAppendPrintF_safe();
    v25 = v6;

    v6 = v25;
  }

  if (self->_txPowerMax)
  {
    v33[0] = v6;
    v16 = v33;
    goto LABEL_50;
  }

LABEL_51:
  if (v6)
  {
    v27 = v6;
  }

  else
  {
    v27 = @"?";
  }

  v28 = v27;

  return v27;
}

- (CBDeviceResponse)initWithXPCObject:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_19(self, a2, a3);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v45, v46, v47, v48, v49, v50, v52);
    }

    goto LABEL_37;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v51 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v52);
      OUTLINED_FUNCTION_16(v51);
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    OUTLINED_FUNCTION_5_4(v14, v15, v16, v17, v18, v19, v20, v21, v52, 0);
  }

  else if (v14 == 5)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0();
  v22 = CUXPCDecodeUInt64RangedEx();
  if (v22 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_37;
  }

  v23 = OUTLINED_FUNCTION_1_3();
  if (v23 == 6)
  {
    OUTLINED_FUNCTION_11(v23, v24, v25, v26, v27, v28, v29, v30, v52, 0);
  }

  else if (v23 == 5)
  {
    goto LABEL_37;
  }

  v31 = OUTLINED_FUNCTION_1_3();
  if (v31 == 6)
  {
    OUTLINED_FUNCTION_10_1(v31, v32, v33, v34, v35, v36, v37, v38, v52, 0);
  }

  else if (v31 == 5)
  {
    goto LABEL_37;
  }

  v39 = OUTLINED_FUNCTION_1_3();
  if (v39 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v39 == 5)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_37;
  }

  v40 = OUTLINED_FUNCTION_1_3();
  if (v40 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v40 == 5)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0();
  v41 = OUTLINED_FUNCTION_5();
  if (v41 == 6)
  {
    *(v7 + 20) = 0;
  }

  else if (v41 == 5)
  {
    goto LABEL_37;
  }

  v42 = OUTLINED_FUNCTION_1_3();
  if (v42 == 6)
  {
    *(v7 + 13) = 0;
  }

  else if (v42 == 5)
  {
    goto LABEL_37;
  }

  v43 = OUTLINED_FUNCTION_1_3();
  if (v43 != 6)
  {
    if (v43 != 5)
    {
      goto LABEL_31;
    }

LABEL_37:
    v6 = 0;
    goto LABEL_32;
  }

  *(v7 + 14) = 0;
LABEL_31:
  v6 = v7;
LABEL_32:

  return v6;
}

@end