@interface CBSpatialInteractionSession
+ (id)dictionaryWithTokenData:(id)a3 error:(id *)a4;
- (BOOL)matchesWithDevice:(id)a3;
- (BOOL)updateWithSession:(id)a3;
- (CBSpatialInteractionSession)init;
- (CBSpatialInteractionSession)initWithXPCObject:(id)a3 error:(id *)a4;
- (NSArray)discoveredDevices;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)a3;
- (void)_activate;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)a3 reactivate:(BOOL)a4;
- (void)_activateXPCStart:(BOOL)a3;
- (void)_addPeerToken:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_reAddTokens;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)a3;
- (void)_xpcReceivedAOPData:(id)a3;
- (void)_xpcReceivedAdvertisingAddressChanged:(id)a3;
- (void)_xpcReceivedDeviceFound:(id)a3;
- (void)_xpcReceivedDeviceLost:(id)a3;
- (void)_xpcReceivedEvent:(id)a3;
- (void)_xpcReceivedMessage:(id)a3;
- (void)_xpcReceivedPowerStateChanged:(id)a3;
- (void)_xpcReceivedSystemOverrideChanged:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)addPeerToken:(id)a3 completion:(id)a4;
- (void)addPeerToken:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)encodeWithXPCObject:(id)a3;
- (void)invalidate;
- (void)removePeerToken:(id)a3 completion:(id)a4;
- (void)setAdvertiseRate:(int)a3;
- (void)setAdvertiseRate:(int)a3 timeout:(double)a4;
- (void)setBleRSSIThresholdOrder:(unsigned __int8)a3;
- (void)setControlFlags:(unsigned int)a3;
- (void)setFilter:(id)a3;
- (void)setLabel:(id)a3;
- (void)setScanRate:(int)a3;
- (void)setScanRateScreenOff:(int)a3;
@end

@implementation CBSpatialInteractionSession

+ (id)dictionaryWithTokenData:(id)a3 error:(id *)a4
{
  HIDWORD(v14) = 0;
  v5 = OPACKDecodeData();
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
    }

    else if (a4)
    {
      CBErrorF(312900, "Non-dict token", v6, v7, v8, v9, v10, v11, v14);
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    [(CBSpatialInteractionSession *)a4 dictionaryWithTokenData:&v15 error:?];
    v12 = v15;
  }

  return v12;
}

- (CBSpatialInteractionSession)init
{
  v5.receiver = self;
  v5.super_class = CBSpatialInteractionSession;
  v2 = [(CBSpatialInteractionSession *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBSpatial;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    v3 = self;
    v4 = self->_ucat;
    LogCategory_Remove();
    self = v3;
    v3->_ucat = 0;
  }

  v5.receiver = self;
  v5.super_class = CBSpatialInteractionSession;
  [(CBSpatialInteractionSession *)&v5 dealloc];
}

- (void)encodeWithXPCObject:(id)a3
{
  xdict = a3;
  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    xpc_dictionary_set_int64(xdict, "advR", advertiseRate);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  if (self->_enableEPAForLEAdvertisement)
  {
    xpc_dictionary_set_BOOL(xdict, "naEE", 1);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  scanRate = self->_scanRate;
  if (scanRate)
  {
    xpc_dictionary_set_int64(xdict, "scnR", scanRate);
  }

  scanRateOverride = self->_scanRateOverride;
  if (scanRateOverride)
  {
    xpc_dictionary_set_int64(xdict, "scRO", scanRateOverride);
  }

  scanRateScreenOff = self->_scanRateScreenOff;
  if (scanRateScreenOff)
  {
    xpc_dictionary_set_int64(xdict, "scRS", scanRateScreenOff);
  }

  if (self->_bleRSSIThresholdHint)
  {
    xpc_dictionary_set_int64(xdict, "blRT", self->_bleRSSIThresholdHint);
  }

  if (self->_bleRSSIThresholdOrder)
  {
    xpc_dictionary_set_uint64(xdict, "blRO", self->_bleRSSIThresholdOrder);
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    xpc_dictionary_set_uint64(xdict, "siCF", controlFlags);
  }

  v11 = [(CBSpatialInteractionSession *)self presenceConfigData];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = xdict;
    v15 = [v12 bytes];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    xpc_dictionary_set_data(v14, "siPC", v16, [v12 length]);
  }

  v17 = [(CBSpatialInteractionSession *)self uwbConfigData];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = xdict;
    v21 = [v18 bytes];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = "";
    }

    xpc_dictionary_set_data(v20, "siUC", v22, [v18 length]);
  }

  uwbTokenFlags = self->_uwbTokenFlags;
  if (uwbTokenFlags)
  {
    xpc_dictionary_set_uint64(xdict, "siUF", uwbTokenFlags);
  }

  clientIrkData = self->_clientIrkData;
  if (clientIrkData)
  {
    if ([(NSData *)clientIrkData length]!= 16)
    {
      var0 = self->_ucat->var0;
      if (var0 > 90)
      {
        goto LABEL_44;
      }

      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v45 = self->_ucat;
      }

      v47 = [(NSData *)self->_clientIrkData length];
      v48 = 16;
      LogPrintF_safe();
      goto LABEL_44;
    }

    v25 = self->_clientIrkData;
    if (v25)
    {
      v26 = v25;
      v27 = xdict;
      v28 = v25;
      v29 = [(NSData *)v28 bytes];
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = "";
      }

      v31 = [(NSData *)v28 length];

      xpc_dictionary_set_data(v27, "irkD", v30, v31);
    }
  }

LABEL_44:
  clientIdentifierData = self->_clientIdentifierData;
  if (!clientIdentifierData)
  {
    goto LABEL_55;
  }

  if ([(NSData *)clientIdentifierData length]!= 3)
  {
    v42 = self->_ucat->var0;
    if (v42 > 90)
    {
      goto LABEL_55;
    }

    if (v42 == -1)
    {
      v43 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_55;
      }

      v46 = self->_ucat;
    }

    [(NSData *)self->_clientIdentifierData length:v47];
    LogPrintF_safe();
    goto LABEL_55;
  }

  v35 = self->_clientIdentifierData;
  if (v35)
  {
    v36 = v35;
    v37 = xdict;
    v38 = v35;
    v39 = [(NSData *)v38 bytes];
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = "";
    }

    v41 = [(NSData *)v38 length:v47];

    xpc_dictionary_set_data(v37, "id", v40, v41);
  }

LABEL_55:
  filter = self->_filter;
  CUXPCEncodeObject();
}

- (id)descriptionWithLevel:(int)a3
{
  clientID = self->_clientID;
  NSAppendPrintF_safe();
  v4 = 0;
  if (self->_controlFlags)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v5 = v4;

    v4 = v5;
  }

  advertisingAddressData = self->_advertisingAddressData;
  if (advertisingAddressData)
  {
    v7 = advertisingAddressData;
    clientID = CUPrintNSDataAddress();
    NSAppendPrintF_safe();
    v8 = v4;

    v4 = v8;
  }

  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    if (advertiseRate <= 39)
    {
      if (advertiseRate > 19)
      {
        if (advertiseRate == 20)
        {
          v10 = "Background";
          goto LABEL_28;
        }

        if (advertiseRate == 30)
        {
          v10 = "Low";
          goto LABEL_28;
        }
      }

      else
      {
        if (advertiseRate == 10)
        {
          v10 = "Periodic";
          goto LABEL_28;
        }

        if (advertiseRate == 15)
        {
          v10 = "PeriodicHigh";
          goto LABEL_28;
        }
      }
    }

    else if (advertiseRate <= 44)
    {
      if (advertiseRate == 40)
      {
        v10 = "Medium";
        goto LABEL_28;
      }

      if (advertiseRate == 42)
      {
        v10 = "MediumMid";
        goto LABEL_28;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case '-':
          v10 = "MediumHigh";
          goto LABEL_28;
        case '2':
          v10 = "High";
          goto LABEL_28;
        case '<':
          v10 = "Max";
LABEL_28:
          clientID = v10;
          NSAppendPrintF_safe();
          v11 = v4;

          v4 = v11;
          goto LABEL_29;
      }
    }

    v10 = "?";
    goto LABEL_28;
  }

LABEL_29:
  if (self->_enableEPAForLEAdvertisement)
  {
    clientID = 1;
    NSAppendPrintF_safe();
    v12 = v4;

    v4 = v12;
  }

  scanRate = self->_scanRate;
  if (scanRate)
  {
    if (scanRate <= 34)
    {
      switch(scanRate)
      {
        case 10:
          v14 = "Periodic";
          goto LABEL_49;
        case 20:
          v14 = "Background";
          goto LABEL_49;
        case 30:
          v14 = "Low";
          goto LABEL_49;
      }
    }

    else if (scanRate > 49)
    {
      if (scanRate == 50)
      {
        v14 = "High";
        goto LABEL_49;
      }

      if (scanRate == 60)
      {
        v14 = "Max";
        goto LABEL_49;
      }
    }

    else
    {
      if (scanRate == 35)
      {
        v14 = "MediumLow";
        goto LABEL_49;
      }

      if (scanRate == 40)
      {
        v14 = "Medium";
LABEL_49:
        clientID = v14;
        NSAppendPrintF_safe();
        v15 = v4;

        v4 = v15;
        goto LABEL_50;
      }
    }

    v14 = "?";
    goto LABEL_49;
  }

LABEL_50:
  scanRateScreenOff = self->_scanRateScreenOff;
  if (!scanRateScreenOff)
  {
    goto LABEL_69;
  }

  if (scanRateScreenOff <= 34)
  {
    switch(scanRateScreenOff)
    {
      case 10:
        v17 = "Periodic";
        goto LABEL_68;
      case 20:
        v17 = "Background";
        goto LABEL_68;
      case 30:
        v17 = "Low";
        goto LABEL_68;
    }

LABEL_64:
    v17 = "?";
    goto LABEL_68;
  }

  if (scanRateScreenOff > 49)
  {
    if (scanRateScreenOff == 50)
    {
      v17 = "High";
      goto LABEL_68;
    }

    if (scanRateScreenOff == 60)
    {
      v17 = "Max";
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (scanRateScreenOff == 35)
  {
    v17 = "MediumLow";
    goto LABEL_68;
  }

  if (scanRateScreenOff != 40)
  {
    goto LABEL_64;
  }

  v17 = "Medium";
LABEL_68:
  clientID = v17;
  NSAppendPrintF_safe();
  v18 = v4;

  v4 = v18;
LABEL_69:
  scanRateOverride = self->_scanRateOverride;
  if (!scanRateOverride)
  {
    goto LABEL_88;
  }

  if (scanRateOverride <= 34)
  {
    switch(scanRateOverride)
    {
      case 10:
        v20 = "Periodic";
        goto LABEL_87;
      case 20:
        v20 = "Background";
        goto LABEL_87;
      case 30:
        v20 = "Low";
        goto LABEL_87;
    }

LABEL_83:
    v20 = "?";
    goto LABEL_87;
  }

  if (scanRateOverride > 49)
  {
    if (scanRateOverride == 50)
    {
      v20 = "High";
      goto LABEL_87;
    }

    if (scanRateOverride == 60)
    {
      v20 = "Max";
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  if (scanRateOverride == 35)
  {
    v20 = "MediumLow";
    goto LABEL_87;
  }

  if (scanRateOverride != 40)
  {
    goto LABEL_83;
  }

  v20 = "Medium";
LABEL_87:
  clientID = v20;
  NSAppendPrintF_safe();
  v21 = v4;

  v4 = v21;
LABEL_88:
  if (self->_bleRSSIThresholdHint)
  {
    clientID = self->_bleRSSIThresholdHint;
    NSAppendPrintF_safe();
    v22 = v4;

    v4 = v22;
  }

  if (self->_bleRSSIThresholdOrder)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v23 = v4;

    v4 = v23;
  }

  identifierData = self->_identifierData;
  if (identifierData)
  {
    clientID = identifierData;
    NSAppendPrintF_safe();
    v25 = v4;

    v4 = v25;
  }

  irkData = self->_irkData;
  if (irkData)
  {
    v27 = irkData;
    clientID = CUPrintNSObjectMasked();
    NSAppendPrintF_safe();
    v28 = v4;

    v4 = v28;
  }

  tokenData = self->_tokenData;
  if (tokenData)
  {
    v30 = tokenData;
    clientID = CUPrintNSObjectMasked();
    NSAppendPrintF_safe();
    v31 = v4;

    v4 = v31;
  }

  v32 = [(CBSpatialInteractionSession *)self uwbConfigData];
  if (v32)
  {
    v51 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v33 = v4;

    v4 = v33;
  }

  v34 = [(CBSpatialInteractionSession *)self presenceConfigData];
  if (v34)
  {
    v52 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v35 = v4;

    v4 = v35;
  }

  if (self->_uwbTokenFlags)
  {
    uwbTokenFlags = self->_uwbTokenFlags;
    NSAppendPrintF_safe();
    v36 = v4;

    v4 = v36;
  }

  if (self->_systemOverrideFlags)
  {
    v54 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v37 = v4;

    v4 = v37;
  }

  deviceMap = self->_deviceMap;
  if (deviceMap)
  {
    v39 = deviceMap;
    [(NSMutableDictionary *)v39 count];
    NSAppendPrintF_safe();
    v40 = v4;

    v4 = v40;
  }

  clientIrkData = self->_clientIrkData;
  if (clientIrkData)
  {
    v42 = clientIrkData;
    v55 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe();
    v43 = v4;

    v4 = v43;
  }

  clientIdentifierData = self->_clientIdentifierData;
  if (clientIdentifierData)
  {
    v45 = clientIdentifierData;
    v56 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe();
    v46 = v4;

    v4 = v46;
  }

  filter = self->_filter;
  if (filter)
  {
    v57 = filter;
    NSAppendPrintF_safe();
    v48 = v4;

    v4 = v48;
  }

  return v4;
}

- (BOOL)matchesWithDevice:(id)a3
{
  v4 = [a3 deviceFlags];
  controlFlags = self->_controlFlags;
  if ((v4 & 0x100) != 0 && (controlFlags & 0x40) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else if ((v4 & 0x400) != 0 && (controlFlags & 0x100) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else if ((v4 & 0x80) != 0 && (controlFlags & 0x20) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else if ((v4 & 0x200) != 0 && (controlFlags & 0x80) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    return (v4 >> 11) & ((self->_controlFlags & 0x200) >> 9);
  }

  return v6;
}

- (BOOL)updateWithSession:(id)a3
{
  v4 = a3;
  v5 = [v4 advertiseRate];
  advertiseRate = self->_advertiseRate;
  v7 = v5 != advertiseRate;
  if (v5 != advertiseRate)
  {
    if (advertiseRate > 39)
    {
      if (advertiseRate <= 44)
      {
        if (advertiseRate == 40)
        {
          v8 = "Medium";
          v9 = [v4 advertiseRate];
          if (v9 <= 39)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (advertiseRate != 42)
          {
            goto LABEL_47;
          }

          v8 = "MediumMid";
          v9 = [v4 advertiseRate];
          if (v9 <= 39)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        switch(advertiseRate)
        {
          case '-':
            v8 = "MediumHigh";
            v9 = [v4 advertiseRate];
            if (v9 <= 39)
            {
              goto LABEL_36;
            }

            break;
          case '2':
            v8 = "High";
            v9 = [v4 advertiseRate];
            if (v9 > 39)
            {
              break;
            }

            goto LABEL_36;
          case '<':
            v8 = "Max";
            v9 = [v4 advertiseRate];
            if (v9 <= 39)
            {
              goto LABEL_36;
            }

            break;
          default:
            goto LABEL_47;
        }
      }
    }

    else if (advertiseRate <= 14)
    {
      if (advertiseRate)
      {
        if (advertiseRate != 10)
        {
          goto LABEL_47;
        }

        v8 = "Periodic";
        v9 = [v4 advertiseRate];
        if (v9 <= 39)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = "Default";
        v9 = [v4 advertiseRate];
        if (v9 <= 39)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case 15:
          v8 = "PeriodicHigh";
          v9 = [v4 advertiseRate];
          if (v9 <= 39)
          {
            goto LABEL_36;
          }

          break;
        case 20:
          v8 = "Background";
          v9 = [v4 advertiseRate];
          if (v9 <= 39)
          {
            goto LABEL_36;
          }

          break;
        case 30:
          v8 = "Low";
          v9 = [v4 advertiseRate];
          if (v9 > 39)
          {
            break;
          }

LABEL_36:
          if (v9 <= 14)
          {
            if (!v9)
            {
              v11 = "Default";
              goto LABEL_60;
            }

            if (v9 == 10)
            {
              v11 = "Periodic";
              goto LABEL_60;
            }
          }

          else
          {
            switch(v9)
            {
              case 15:
                v11 = "PeriodicHigh";
                goto LABEL_60;
              case 20:
                v11 = "Background";
                goto LABEL_60;
              case 30:
                v11 = "Low";
                goto LABEL_60;
            }
          }

          goto LABEL_59;
        default:
LABEL_47:
          v8 = "?";
          v9 = [v4 advertiseRate];
          if (v9 > 39)
          {
            break;
          }

          goto LABEL_36;
      }
    }

    if (v9 <= 44)
    {
      if (v9 == 40)
      {
        v11 = "Medium";
        goto LABEL_60;
      }

      if (v9 == 42)
      {
        v11 = "MediumMid";
        goto LABEL_60;
      }
    }

    else
    {
      switch(v9)
      {
        case '-':
          v11 = "MediumHigh";
          goto LABEL_60;
        case '2':
          v11 = "High";
          goto LABEL_60;
        case '<':
          v11 = "Max";
          goto LABEL_60;
      }
    }

LABEL_59:
    v11 = "?";
LABEL_60:
    v59 = v8;
    v61 = v11;
    CUAppendF();
    v10 = 0;
    self->_advertiseRate = [v4 advertiseRate];
    if ([v4 controlFlags] == self->_controlFlags)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v10 = 0;
  if ([v4 controlFlags] != self->_controlFlags)
  {
LABEL_61:
    v12 = CUPrintFlags32();
    [v4 controlFlags];
    v62 = CUPrintFlags32();
    CUAppendF();
    v13 = v10;

    self->_controlFlags = [v4 controlFlags];
    v7 = 1;
    v10 = v13;
  }

LABEL_62:
  if ([v4 bleRSSIThresholdHint] == self->_bleRSSIThresholdHint)
  {
    if ([v4 bleRSSIThresholdOrder] == self->_bleRSSIThresholdOrder)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
  v64 = [v4 bleRSSIThresholdHint];
  CUAppendF();
  v22 = v10;

  self->_bleRSSIThresholdHint = [v4 bleRSSIThresholdHint];
  v7 = 1;
  v10 = v22;
  if ([v4 bleRSSIThresholdOrder] != self->_bleRSSIThresholdOrder)
  {
LABEL_64:
    v14 = CUPrintFlags32();
    [v4 bleRSSIThresholdOrder];
    v63 = CUPrintFlags32();
    CUAppendF();
    v15 = v10;

    self->_bleRSSIThresholdOrder = [v4 bleRSSIThresholdOrder];
    v7 = 1;
    v10 = v15;
  }

LABEL_65:
  v16 = [v4 filter];
  filter = self->_filter;
  v18 = v16;
  v19 = filter;
  if (v18 == v19)
  {

LABEL_74:
    goto LABEL_75;
  }

  if ((v18 != 0) == (v19 == 0))
  {

    goto LABEL_73;
  }

  v20 = v19;
  v21 = [(CBSpatialInteractionFilter *)v18 isEqual:v19];

  if (!v21)
  {
LABEL_73:
    v23 = self->_filter;
    v24 = CUPrintNSObjectOneLine();
    v25 = [v4 filter];
    v65 = CUPrintNSObjectOneLine();
    CUAppendF();
    v26 = v10;

    v27 = [v4 filter];
    v18 = self->_filter;
    self->_filter = v27;
    v7 = 1;
    v10 = v26;
    goto LABEL_74;
  }

LABEL_75:
  v28 = [(CBSpatialInteractionSession *)self presenceConfigData];
  v29 = [v4 presenceConfigData];
  v30 = v28;
  v31 = v30;
  if (v29 == v30)
  {
  }

  else
  {
    if ((v30 == 0) != (v29 != 0))
    {
      v32 = [v29 isEqual:v30];

      if (v32)
      {
        v33 = [v4 scanRate];
        scanRate = self->_scanRate;
        if (v33 == scanRate)
        {
          goto LABEL_79;
        }

LABEL_85:
        if (scanRate > 34)
        {
          if (scanRate > 49)
          {
            if (scanRate == 50)
            {
              v39 = "High";
              v40 = [v4 scanRate];
              if (v40 > 34)
              {
                goto LABEL_121;
              }

              goto LABEL_111;
            }

            if (scanRate != 60)
            {
              goto LABEL_120;
            }

            v39 = "Max";
            v40 = [v4 scanRate];
            if (v40 <= 34)
            {
              goto LABEL_111;
            }
          }

          else if (scanRate == 35)
          {
            v39 = "MediumLow";
            v40 = [v4 scanRate];
            if (v40 <= 34)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (scanRate != 40)
            {
              goto LABEL_120;
            }

            v39 = "Medium";
            v40 = [v4 scanRate];
            if (v40 <= 34)
            {
              goto LABEL_111;
            }
          }
        }

        else if (scanRate > 19)
        {
          if (scanRate == 20)
          {
            v39 = "Background";
            v40 = [v4 scanRate];
            if (v40 <= 34)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (scanRate != 30)
            {
              goto LABEL_120;
            }

            v39 = "Low";
            v40 = [v4 scanRate];
            if (v40 <= 34)
            {
              goto LABEL_111;
            }
          }
        }

        else
        {
          if (scanRate)
          {
            if (scanRate == 10)
            {
              v39 = "Periodic";
              v40 = [v4 scanRate];
              if (v40 > 34)
              {
                goto LABEL_121;
              }

LABEL_111:
              if (v40 > 19)
              {
                if (v40 == 20)
                {
                  v41 = "Background";
                  goto LABEL_131;
                }

                if (v40 == 30)
                {
                  v41 = "Low";
                  goto LABEL_131;
                }
              }

              else
              {
                if (!v40)
                {
                  v41 = "Default";
                  goto LABEL_131;
                }

                if (v40 == 10)
                {
                  v41 = "Periodic";
                  goto LABEL_131;
                }
              }

              goto LABEL_130;
            }

LABEL_120:
            v39 = "?";
            v40 = [v4 scanRate];
            if (v40 > 34)
            {
              goto LABEL_121;
            }

            goto LABEL_111;
          }

          v39 = "Default";
          v40 = [v4 scanRate];
          if (v40 <= 34)
          {
            goto LABEL_111;
          }
        }

LABEL_121:
        if (v40 > 49)
        {
          if (v40 == 50)
          {
            v41 = "High";
            goto LABEL_131;
          }

          if (v40 == 60)
          {
            v41 = "Max";
            goto LABEL_131;
          }
        }

        else
        {
          if (v40 == 35)
          {
            v41 = "MediumLow";
            goto LABEL_131;
          }

          if (v40 == 40)
          {
            v41 = "Medium";
            goto LABEL_131;
          }
        }

LABEL_130:
        v41 = "?";
LABEL_131:
        v67 = v41;
        CUAppendF();
        v42 = v10;

        self->_scanRate = [v4 scanRate];
        v7 = 1;
        v10 = v42;
        v43 = [v4 scanRateScreenOff];
        scanRateScreenOff = self->_scanRateScreenOff;
        if (v43 == scanRateScreenOff)
        {
          goto LABEL_179;
        }

LABEL_132:
        if (scanRateScreenOff > 34)
        {
          if (scanRateScreenOff > 49)
          {
            if (scanRateScreenOff == 50)
            {
              v44 = "High";
              v45 = [v4 scanRateScreenOff];
              if (v45 > 34)
              {
                goto LABEL_168;
              }

              goto LABEL_158;
            }

            if (scanRateScreenOff != 60)
            {
              goto LABEL_167;
            }

            v44 = "Max";
            v45 = [v4 scanRateScreenOff];
            if (v45 <= 34)
            {
              goto LABEL_158;
            }
          }

          else if (scanRateScreenOff == 35)
          {
            v44 = "MediumLow";
            v45 = [v4 scanRateScreenOff];
            if (v45 <= 34)
            {
              goto LABEL_158;
            }
          }

          else
          {
            if (scanRateScreenOff != 40)
            {
              goto LABEL_167;
            }

            v44 = "Medium";
            v45 = [v4 scanRateScreenOff];
            if (v45 <= 34)
            {
              goto LABEL_158;
            }
          }
        }

        else if (scanRateScreenOff > 19)
        {
          if (scanRateScreenOff == 20)
          {
            v44 = "Background";
            v45 = [v4 scanRateScreenOff];
            if (v45 <= 34)
            {
              goto LABEL_158;
            }
          }

          else
          {
            if (scanRateScreenOff != 30)
            {
              goto LABEL_167;
            }

            v44 = "Low";
            v45 = [v4 scanRateScreenOff];
            if (v45 <= 34)
            {
              goto LABEL_158;
            }
          }
        }

        else
        {
          if (scanRateScreenOff)
          {
            if (scanRateScreenOff == 10)
            {
              v44 = "Periodic";
              v45 = [v4 scanRateScreenOff];
              if (v45 > 34)
              {
                goto LABEL_168;
              }

LABEL_158:
              if (v45 > 19)
              {
                if (v45 == 20)
                {
                  v46 = "Background";
                }

                else
                {
                  if (v45 != 30)
                  {
                    goto LABEL_177;
                  }

                  v46 = "Low";
                }
              }

              else if (v45)
              {
                if (v45 != 10)
                {
                  goto LABEL_177;
                }

                v46 = "Periodic";
              }

              else
              {
                v46 = "Default";
              }

LABEL_178:
              v68 = v46;
              CUAppendF();
              v47 = v10;

              self->_scanRateScreenOff = [v4 scanRateScreenOff];
              v7 = 1;
              v10 = v47;
              goto LABEL_179;
            }

LABEL_167:
            v44 = "?";
            v45 = [v4 scanRateScreenOff];
            if (v45 > 34)
            {
              goto LABEL_168;
            }

            goto LABEL_158;
          }

          v44 = "Default";
          v45 = [v4 scanRateScreenOff];
          if (v45 <= 34)
          {
            goto LABEL_158;
          }
        }

LABEL_168:
        if (v45 > 49)
        {
          if (v45 == 50)
          {
            v46 = "High";
            goto LABEL_178;
          }

          if (v45 == 60)
          {
            v46 = "Max";
            goto LABEL_178;
          }
        }

        else
        {
          if (v45 == 35)
          {
            v46 = "MediumLow";
            goto LABEL_178;
          }

          if (v45 == 40)
          {
            v46 = "Medium";
            goto LABEL_178;
          }
        }

LABEL_177:
        v46 = "?";
        goto LABEL_178;
      }
    }

    else
    {
    }

    v66 = [v4 presenceConfigData];
    CUAppendF();
    v37 = v10;

    v29 = [v4 presenceConfigData];
    [(CBSpatialInteractionSession *)self setPresenceConfigData:v29];
    v7 = 1;
    v10 = v37;
  }

  v38 = [v4 scanRate];
  scanRate = self->_scanRate;
  if (v38 != scanRate)
  {
    goto LABEL_85;
  }

LABEL_79:
  v35 = [v4 scanRateScreenOff];
  scanRateScreenOff = self->_scanRateScreenOff;
  if (v35 != scanRateScreenOff)
  {
    goto LABEL_132;
  }

LABEL_179:
  v48 = [(CBSpatialInteractionSession *)self uwbConfigData];
  v49 = [v4 uwbConfigData];
  v50 = v48;
  v51 = v50;
  if (v49 == v50)
  {

    var0 = self->_ucat->var0;
    if (!v10)
    {
      goto LABEL_190;
    }

LABEL_183:
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_196;
        }

        ucat = self->_ucat;
      }

      goto LABEL_192;
    }

    goto LABEL_196;
  }

  if ((v50 == 0) == (v49 != 0))
  {

LABEL_189:
    v69 = [v4 uwbConfigData];
    CUAppendF();
    v54 = v10;

    v55 = [v4 uwbConfigData];
    [(CBSpatialInteractionSession *)self setUwbConfigData:v55];
    v7 = 1;
    v10 = v54;

    var0 = self->_ucat->var0;
    if (!v54)
    {
      goto LABEL_190;
    }

    goto LABEL_183;
  }

  v52 = [v49 isEqual:v50];

  if ((v52 & 1) == 0)
  {
    goto LABEL_189;
  }

  var0 = self->_ucat->var0;
  if (v10)
  {
    goto LABEL_183;
  }

LABEL_190:
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_196;
      }

      v58 = self->_ucat;
    }

LABEL_192:
    LogPrintF_safe();
  }

LABEL_196:

  return v7;
}

- (NSArray)discoveredDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deviceMap;
  v4 = v3;
  if (v3)
  {
    v5 = [(NSMutableDictionary *)v3 allValues];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)setAdvertiseRate:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__CBSpatialInteractionSession_setAdvertiseRate___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __48__CBSpatialInteractionSession_setAdvertiseRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 == v3)
  {
    return v1 != v3;
  }

  *(v2 + 88) = v1;
  v5 = *(a1 + 32);
  if (*(v5 + 24))
  {
    v6 = **(v5 + 64);
    if (v6 <= 30)
    {
      if (v6 != -1)
      {
LABEL_5:
        LogPrintF_safe();
        v5 = *(a1 + 32);
        goto LABEL_7;
      }

      v7 = _LogCategory_Initialize();
      v5 = *(a1 + 32);
      if (v7)
      {
        v13 = *(v5 + 64);
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v8 = *(v5 + 24);
  if (v8)
  {
    v9 = v8;
    dispatch_source_cancel(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;
  }

  return v1 != v3;
}

- (void)setAdvertiseRate:(int)a3 timeout:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke;
  v4[3] = &unk_1E81225A0;
  v5 = a3;
  v4[4] = self;
  *&v4[5] = a4;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v4];
}

BOOL __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 == v3)
  {
    return v1 != v3;
  }

  *(v2 + 88) = v1;
  v5 = *(a1 + 32);
  v6 = **(v5 + 64);
  if (v6 <= 30)
  {
    if (v6 == -1)
    {
      v7 = _LogCategory_Initialize();
      v5 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_6;
      }

      v18 = *(v5 + 64);
    }

    v19 = *(a1 + 40);
    LogPrintF_safe();
    v5 = *(a1 + 32);
  }

LABEL_6:
  v8 = *(v5 + 24);
  if (v8)
  {
    v9 = v8;
    dispatch_source_cancel(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;
  }

  v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 136));
  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  *(v13 + 24) = v12;
  v15 = v12;

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke_2;
  handler[3] = &unk_1E811D130;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v15, handler);
  v16 = *(a1 + 40);
  CUDispatchTimerSet();
  dispatch_activate(v15);

  return v1 != v3;
}

uint64_t __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[8];
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF_safe();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v12 = v2[8];
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = v2;
  objc_sync_enter(v5);
  v6 = *(*(a1 + 32) + 24);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;
  }

  objc_sync_exit(v5);

  v10 = *(a1 + 32);

  return [v10 setAdvertiseRate:0];
}

- (void)setControlFlags:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CBSpatialInteractionSession_setControlFlags___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __47__CBSpatialInteractionSession_setControlFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 92);
  if (v1 != v3)
  {
    *(v2 + 92) = v1;
  }

  return v1 != v3;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v4 = v5;
  [v5 UTF8String];
  LogCategoryReplaceF();
}

- (void)setScanRate:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBSpatialInteractionSession_setScanRate___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBSpatialInteractionSession_setScanRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v1 != v3)
  {
    *(v2 + 96) = v1;
  }

  return v1 != v3;
}

- (void)setScanRateScreenOff:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__CBSpatialInteractionSession_setScanRateScreenOff___block_invoke;
  v3[3] = &unk_1E811D508;
  v4 = a3;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __52__CBSpatialInteractionSession_setScanRateScreenOff___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v1 != v3)
  {
    *(v2 + 104) = v1;
  }

  return v1 != v3;
}

- (void)setBleRSSIThresholdOrder:(unsigned __int8)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CBSpatialInteractionSession_setBleRSSIThresholdOrder___block_invoke;
  v3[3] = &unk_1E811D530;
  v4 = a3;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __56__CBSpatialInteractionSession_setBleRSSIThresholdOrder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 82);
  if (v1 != v3)
  {
    *(v2 + 82) = v1;
  }

  return v1 != v3;
}

- (void)setFilter:(id)a3
{
  v4 = [a3 copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBSpatialInteractionSession_setFilter___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBSpatialInteractionSession_setFilter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 280);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 280);
    *(v10 + 280) = v11;
  }

  return v5;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_activateCalled)
  {
    v5->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](v4);
    activateCompletion = v5->_activateCompletion;
    v5->_activateCompletion = v6;

    dispatchQueue = v5->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CBSpatialInteractionSession_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_activate
{
  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  v9 = gCBDaemonServer;
  self->_direct = gCBDaemonServer != 0;
  if (self->_invalidateCalled)
  {
    v19 = CBErrorF(-71148, "Activate after invalidate", v2, v3, v4, v5, v6, v7, v17);
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v16 = self->_ucat;
      }

      self->_direct;
      v18 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_15:
    v12 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v12)
    {
      (v12)[2](v12, v19);
    }

    else
    {
      v14 = MEMORY[0x1C68DF720](self->_errorHandler);
      v15 = v14;
      if (v14)
      {
        (*(v14 + 16))(v14, v19);
      }
    }

    return;
  }

  if (v9)
  {

    [(CBSpatialInteractionSession *)self _activateDirectStart];
  }

  else
  {

    [(CBSpatialInteractionSession *)self _activateXPCStart:0];
  }
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v5 = self;
    LogPrintF_safe();
  }

LABEL_5:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CBSpatialInteractionSession__activateDirectStart__block_invoke;
  v6[3] = &unk_1E811D5F8;
  v6[4] = self;
  [gCBDaemonServer activateCBSpatialInteractionSession:self completion:{v6, v5}];
}

void __51__CBSpatialInteractionSession__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CBSpatialInteractionSession__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __51__CBSpatialInteractionSession__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v15 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = **(v4 + 64);
  if (*(a1 + 40))
  {
    if (v5 > 90)
    {
      goto LABEL_9;
    }

    if (v5 == -1)
    {
      v6 = *(v4 + 64);
      if (!_LogCategory_Initialize())
      {
LABEL_9:
        if (v15)
        {
          (*(v15 + 16))(v15, *(a1 + 40));
        }

        else
        {
          v7 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 160));
          v8 = v7;
          if (v7)
          {
            (*(v7 + 16))(v7, *(a1 + 40));
          }
        }

        goto LABEL_17;
      }

      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 64);
    }

    v14 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_9;
  }

  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v9 = *(v4 + 64);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v13 = *(*(a1 + 32) + 64);
    }

    LogPrintF_safe();
  }

LABEL_15:
  v10 = v15;
  if (!v15)
  {
    goto LABEL_18;
  }

  (*(v15 + 16))(v15, 0);
LABEL_17:
  v10 = v15;
LABEL_18:
}

- (void)_activateXPCStart:(BOOL)a3
{
  var0 = self->_ucat->var0;
  if (a3)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      goto LABEL_7;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v10 = self->_ucat;
    }

LABEL_7:
    LogPrintF_safe();
  }

LABEL_11:
  v7 = xpc_dictionary_create(0, 0, 0);
  [(CBSpatialInteractionSession *)self encodeWithXPCObject:v7];
  xpc_dictionary_set_string(v7, "mTyp", "SpIn");
  v8 = [(CBSpatialInteractionSession *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __49__CBSpatialInteractionSession__activateXPCStart___block_invoke;
  handler[3] = &unk_1E81225C8;
  handler[4] = self;
  v12 = a3;
  xpc_connection_send_message_with_reply(v8, v7, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__8;
  v45 = __Block_byref_object_dispose__8;
  v46 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke;
  v40[3] = &unk_1E811D378;
  v40[4] = self;
  v40[5] = &v41;
  v7 = MEMORY[0x1C68DF720](v40);
  v8 = CUXPCDecodeNSErrorIfNeeded();
  v9 = v42[5];
  v42[5] = v8;

  if (!v42[5])
  {
    obj = 0;
    CUXPCDecodeNSData();
    CUXPCDecodeNSData();
    objc_storeStrong(&self->_advertisingAddressData, 0);
    self->_bluetoothState = xpc_dictionary_get_int64(v6, "pwrS");
    v10 = v42;
    v38 = v42[5];
    v11 = CUXPCDecodeNSData();
    objc_storeStrong(v10 + 5, v38);
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = xpc_dictionary_get_array(v6, "devA");
    v13 = v12;
    if (v12)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__8;
      v36 = __Block_byref_object_dispose__8;
      v37 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__8;
      v30 = __Block_byref_object_dispose__8;
      v31 = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke_2;
      applier[3] = &unk_1E81208C8;
      applier[4] = &v26;
      applier[5] = &v32;
      xpc_array_apply(v12, applier);
      v14 = v27[5];
      if (v14)
      {
        v21 = v42;
        v22 = v14;
        v15 = v21[5];
        v21[5] = v22;
      }

      else
      {
        v15 = self;
        objc_sync_enter(v15);
        objc_storeStrong(&v15->_deviceMap, v33[5]);
        objc_sync_exit(v15);
      }

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v32, 8);

      if (v14)
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
      }

      v24 = self;
      LogPrintF_safe();
    }

LABEL_13:
    v17 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v17)
    {
      v17[2](v17, 0);
    }

    if (v4)
    {
      v19 = MEMORY[0x1C68DF720](self->_tokenChangedHandler);
      v20 = v19;
      if (v19)
      {
        (*(v19 + 16))(v19);
      }

      [(CBSpatialInteractionSession *)self _reAddTokens];
    }

    goto LABEL_20;
  }

LABEL_22:
  v7[2](v7);

  _Block_object_dispose(&v41, 8);
}

void __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = **(v2 + 64);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v4 = *(v2 + 64);
      v5 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v10 = *(v2 + 64);
      v11 = *(*(*(a1 + 40) + 8) + 40);
    }

    v12 = CUPrintNSError();
    LogPrintF_safe();

    v2 = *(a1 + 32);
  }

LABEL_7:
  v13 = MEMORY[0x1C68DF720](*(v2 + 16));
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  if (v13)
  {
    v13[2](v13, *(*(*(a1 + 40) + 8) + 40));
  }

  else
  {
    v8 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 160));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, *(*(*(a1 + 40) + 8) + 40));
    }
  }
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
  }

  else
  {
    v6 = self->_testListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__CBSpatialInteractionSession__ensureXPCStarted__block_invoke;
    v10[3] = &unk_1E811D620;
    v10[4] = self;
    v9 = mach_service;
    v11 = v9;
    xpc_connection_set_event_handler(v9, v10);
    xpc_connection_activate(v9);

    v4 = v9;
  }

  return v4;
}

void *__48__CBSpatialInteractionSession__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _xpcReceivedEvent:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    v10 = self;
    LogPrintF_safe();
  }

LABEL_6:
  [(CBSpatialInteractionSession *)self _lostAllDevices];
  v5 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  self->_bluetoothState = 1;
  v7 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
  }

  [(CBSpatialInteractionSession *)self _activateXPCStart:1];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CBSpatialInteractionSession_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__CBSpatialInteractionSession_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 49))
  {
    return result;
  }

  v3 = result;
  *(v2 + 49) = 1;
  v4 = *(result + 32);
  v5 = *v4[8];
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(v3 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v15 = v4[8];
    }

    LogPrintF_safe();
    v4 = *(v3 + 32);
  }

LABEL_6:
  v7 = v4;
  objc_sync_enter(v7);
  v8 = *(*(v3 + 32) + 24);
  if (v8)
  {
    v9 = v8;
    dispatch_source_cancel(v9);
    v10 = *(v3 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;
  }

  objc_sync_exit(v7);

  v12 = *(v3 + 32);
  if (*(v12 + 48) == 1)
  {
    [v12 _invalidateDirect];
    v12 = *(v3 + 32);
  }

  v13 = *(v12 + 72);
  if (v13)
  {
    xpc_connection_cancel(v13);
  }

  v14 = *(v3 + 32);

  return [v14 _invalidated];
}

void __48__CBSpatialInteractionSession__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CBSpatialInteractionSession__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct && !self->_xpcCnx)
  {
    self->_invalidateCalled = 1;
    advertisingAddressChangedHandler = self->_advertisingAddressChangedHandler;
    self->_advertisingAddressChangedHandler = 0;

    aopDataHandler = self->_aopDataHandler;
    self->_aopDataHandler = 0;

    bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
    self->_bluetoothStateChangedHandler = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v18 = MEMORY[0x1C68DF720](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    measurementHandler = self->_measurementHandler;
    self->_measurementHandler = 0;

    systemOverrideHandler = self->_systemOverrideHandler;
    self->_systemOverrideHandler = 0;

    tokenChangedHandler = self->_tokenChangedHandler;
    self->_tokenChangedHandler = 0;

    v15 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18);
      v15 = v18;
    }

    self->_invalidateDone = 1;
    p_var0 = &self->_ucat->var0;
    if (*p_var0 <= 30)
    {
      if (*p_var0 != -1)
      {
        goto LABEL_10;
      }

      p_var0 = _LogCategory_Initialize();
      v15 = v18;
      if (p_var0)
      {
        ucat = self->_ucat;
LABEL_10:
        p_var0 = LogPrintF_safe();
        v15 = v18;

- (void)addPeerToken:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__CBSpatialInteractionSession_addPeerToken_userInfo_completion___block_invoke;
  v15[3] = &unk_1E811E468;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)addPeerToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CBSpatialInteractionSession_addPeerToken_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_addPeerToken:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__8;
  v70 = __Block_byref_object_dispose__8;
  v71 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke;
  v63[3] = &unk_1E811D350;
  v65 = &v66;
  v63[4] = self;
  v57 = v10;
  v64 = v57;
  v17 = MEMORY[0x1C68DF720](v63);
  v56 = v17;
  if (!self->_activateCalled)
  {
    v41 = CBErrorF(-6745, "Not activated", v11, v12, v13, v14, v15, v16, v53);
    v42 = v67[5];
    v67[5] = v41;

    goto LABEL_18;
  }

  v62 = 0;
  v18 = OPACKDecodeData();
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = objc_alloc_init(CBSpatialInteractionPeerInfoClient);
      [(CBSpatialInteractionPeerInfoClient *)v25 setTokenData:v8];
      [(CBSpatialInteractionPeerInfoClient *)v25 setUserInfo:v9];
      [(CBSpatialInteractionPeerInfoClient *)v25 setUwbTokenFlags:CFDictionaryGetInt64Ranged()];
      v55 = v9;
      ClientID = CBXPCGetNextClientID();
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:ClientID];
      peerMap = self->_peerMap;
      if (!peerMap)
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v30 = self->_peerMap;
        self->_peerMap = v29;

        peerMap = self->_peerMap;
      }

      [(NSMutableDictionary *)peerMap setObject:v25 forKeyedSubscript:v27];
      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_10;
      }

      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        v52 = self->_ucat;
      }

      v53 = CUPrintNSObjectMasked();
      v54 = ClientID;
      LogPrintF_safe();

LABEL_10:
      v33 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v33, "mTyp", "SpAT");
      if (ClientID)
      {
        xpc_dictionary_set_uint64(v33, "siPI", ClientID);
      }

      if (v8)
      {
        v34 = v8;
        v35 = v8;
        v36 = v33;
        v37 = [v35 bytes];
        v38 = [v35 length];
        if (!v37)
        {
          v37 = "";
        }

        xpc_dictionary_set_data(v36, "siTD", v37, v38);
      }

      v39 = [(CBSpatialInteractionSession *)self _ensureXPCStarted:v53];
      dispatchQueue = self->_dispatchQueue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke_131;
      handler[3] = &unk_1E81225F0;
      handler[4] = self;
      v59 = v8;
      v60 = v27;
      v61 = v57;
      xpc_connection_send_message_with_reply(v39, v33, dispatchQueue, handler);

      v9 = v55;
      v17 = v56;
      goto LABEL_17;
    }

    v51 = CBErrorF(312900, "Non-dict token", v19, v20, v21, v22, v23, v24, v53);
    v25 = v67[5];
    v67[5] = v51;
  }

  else
  {
    v25 = CUPrintErrorCode();
    v49 = CBErrorF(312900, "Decode token failed: %@", v43, v44, v45, v46, v47, v48, v25);
    v50 = v67[5];
    v67[5] = v49;
  }

LABEL_17:

LABEL_18:
  v17[2](v17);

  _Block_object_dispose(&v66, 8);
}

void *__65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = **(result[4] + 64);
  if (v2 <= 90)
  {
    v3 = result;
    if (v2 == -1)
    {
      v4 = *(result[4] + 64);
      v5 = _LogCategory_Initialize();
      result = v3;
      v1 = v3[6];
      if (!v5)
      {
        goto LABEL_7;
      }

      v8 = *(v3[4] + 64);
      v9 = *(*(v1 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF_safe();

    result = v3;
    v1 = v3[6];
  }

LABEL_7:
  v6 = *(*(v1 + 8) + 40);
  v7 = *(result[5] + 16);

  return v7();
}

void __65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke_131(void *a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  v3 = a1[4];
  v4 = **(v3 + 64);
  v14 = v2;
  if (v2)
  {
    if (v4 <= 90)
    {
      if (v4 == -1)
      {
        v8 = _LogCategory_Initialize();
        v3 = a1[4];
        if (!v8)
        {
          goto LABEL_9;
        }

        v9 = *(v3 + 64);
      }

      v5 = a1[5];
      v6 = CUPrintNSObjectMasked();
      CUPrintNSError();
      v13 = v11 = v6;
      LogPrintF_safe();

      v3 = a1[4];
    }

LABEL_9:
    [*(v3 + 56) setObject:0 forKeyedSubscript:{a1[6], v11, v13}];
    (*(a1[7] + 16))(a1[7]);
    goto LABEL_12;
  }

  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v10 = *(a1[4] + 64);
    }

    v7 = a1[5];
    v12 = CUPrintNSObjectMasked();
    LogPrintF_safe();
  }

LABEL_11:
  (*(a1[7] + 16))(a1[7]);
LABEL_12:
}

- (void)_reAddTokens
{
  peerMap = self->_peerMap;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBSpatialInteractionSession__reAddTokens__block_invoke;
  v3[3] = &unk_1E8122618;
  v3[4] = self;
  [(NSMutableDictionary *)peerMap enumerateKeysAndObjectsUsingBlock:v3];
}

void __43__CBSpatialInteractionSession__reAddTokens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = [v5 tokenData];

  v8 = **(*(a1 + 32) + 64);
  if (v8 <= 30)
  {
    if (v8 != -1)
    {
LABEL_3:
      v21 = CUPrintNSObjectMasked();
      v22 = v6;
      LogPrintF_safe();

      goto LABEL_5;
    }

    v9 = *(*(a1 + 32) + 64);
    if (_LogCategory_Initialize())
    {
      v20 = *(*(a1 + 32) + 64);
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "mTyp", "SpAT");
  if (v6)
  {
    xpc_dictionary_set_uint64(v10, "siPI", v6);
  }

  if (v7)
  {
    v11 = v7;
    v12 = v10;
    v13 = v7;
    v14 = [v13 bytes];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = "";
    }

    v16 = [v13 length];

    xpc_dictionary_set_data(v12, "siTD", v15, v16);
  }

  v17 = [*(a1 + 32) _ensureXPCStarted];
  v18 = *(a1 + 32);
  v19 = *(v18 + 136);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__CBSpatialInteractionSession__reAddTokens__block_invoke_2;
  handler[3] = &unk_1E811D620;
  handler[4] = v18;
  handler[5] = v7;
  xpc_connection_send_message_with_reply(v17, v10, v19, handler);
}

uint64_t __43__CBSpatialInteractionSession__reAddTokens__block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  v3 = v2;
  if (v2)
  {
    v4 = 90;
  }

  else
  {
    v4 = 30;
  }

  v5 = **(*(a1 + 32) + 64);
  if (v4 >= v5)
  {
    v11 = v2;
    if (v5 != -1)
    {
      goto LABEL_6;
    }

    v2 = _LogCategory_Initialize();
    v3 = v11;
    if (v2)
    {
      v8 = *(*(a1 + 32) + 64);
LABEL_6:
      v6 = *(a1 + 40);
      v7 = CUPrintNSObjectMasked();
      v10 = CUPrintNSError();
      LogPrintF_safe();

      v3 = v11;

      return MEMORY[0x1EEE66BB8](v2, v3);
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)removePeerToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  if ((*(v9 + 8) & 1) == 0)
  {
    v29 = CBErrorF(-6745, "Not activated", a3, a4, a5, a6, a7, a8, v59);
    v30 = **(*(a1 + 32) + 64);
    v63 = v29;
    if (v30 <= 90)
    {
      if (v30 == -1)
      {
        v39 = _LogCategory_Initialize();
        v29 = v63;
        if (!v39)
        {
          goto LABEL_27;
        }

        v56 = *(*(a1 + 32) + 64);
      }

      v31 = *(a1 + 40);
      v32 = CUPrintNSObjectMasked();
      v61 = CUPrintNSError();
      LogPrintF_safe();

      v29 = v63;
    }

LABEL_27:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v29);
    v40 = *MEMORY[0x1E69E9840];

    return;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [*(v9 + 56) allKeys];
  v11 = [v10 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v68;
LABEL_4:
    v14 = 0;
    while (1)
    {
      if (*v68 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v67 + 1) + 8 * v14);
      v16 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v15];
      v17 = [v16 tokenData];
      v18 = *(a1 + 40);
      v19 = v17;
      v20 = v18;
      v21 = v20;
      if (v19 == v20)
      {
        break;
      }

      if ((v19 != 0) != (v20 == 0))
      {
        v22 = [v19 isEqual:v20];

        if (v22)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v12)
        {
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }

LABEL_19:
    [*(*(a1 + 32) + 56) setObject:0 forKeyedSubscript:v15];
    v33 = v15;

    if (!v33)
    {
      goto LABEL_23;
    }

    v34 = **(*(a1 + 32) + 64);
    if (v34 <= 30)
    {
      if (v34 == -1)
      {
        v42 = *(*(a1 + 32) + 64);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        v58 = *(*(a1 + 32) + 64);
      }

      v35 = *(a1 + 40);
      v59 = CUPrintNSObjectMasked();
      v60 = [v33 unsignedIntValue];
      LogPrintF_safe();
    }

LABEL_33:
    v43 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v43, "mTyp", "SpRT");
    v44 = *(a1 + 40);
    if (v44)
    {
      v45 = v44;
      v46 = v43;
      v47 = v44;
      v48 = [v47 bytes];
      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = "";
      }

      v50 = [v47 length];

      xpc_dictionary_set_data(v46, "siTD", v49, v50);
    }

    v51 = [*(a1 + 32) _ensureXPCStarted];
    v53 = *(a1 + 32);
    v52 = *(a1 + 40);
    v54 = *(v53 + 136);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke_2;
    handler[3] = &unk_1E8122640;
    handler[4] = v53;
    v65 = v52;
    v66 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v51, v43, v54, handler);

    goto LABEL_39;
  }

LABEL_14:

LABEL_23:
  v33 = CBErrorF(-6727, "Token not found", v23, v24, v25, v26, v27, v28, v59);
  v36 = **(*(a1 + 32) + 64);
  if (v36 > 90)
  {
    goto LABEL_31;
  }

  if (v36 != -1)
  {
    goto LABEL_25;
  }

  v41 = *(*(a1 + 32) + 64);
  if (_LogCategory_Initialize())
  {
    v57 = *(*(a1 + 32) + 64);
LABEL_25:
    v37 = *(a1 + 40);
    v38 = CUPrintNSObjectMasked();
    v62 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_31:
  (*(*(a1 + 48) + 16))(*(a1 + 48), v33);
LABEL_39:

  v55 = *MEMORY[0x1E69E9840];
}

void __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke_2(void *a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  v3 = **(a1[4] + 64);
  v13 = v2;
  if (v2)
  {
    v4 = v2;
    if (v3 <= 90)
    {
      if (v3 == -1)
      {
        v8 = _LogCategory_Initialize();
        v4 = v13;
        if (!v8)
        {
          goto LABEL_9;
        }

        v9 = *(a1[4] + 64);
      }

      v5 = a1[5];
      v6 = CUPrintNSObjectMasked();
      v12 = CUPrintNSError();
      LogPrintF_safe();

      v4 = v13;
    }

LABEL_9:
    (*(a1[6] + 16))(a1[6], v4);
    goto LABEL_12;
  }

  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v10 = *(a1[4] + 64);
    }

    v7 = a1[5];
    v11 = CUPrintNSObjectMasked();
    LogPrintF_safe();
  }

LABEL_11:
  (*(a1[6] + 16))(a1[6], 0);
LABEL_12:
}

- (void)_lostAllDevices
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1C68DF720](self->_deviceLostHandler, a2);
  v4 = self;
  objc_sync_enter(v4);
  deviceMap = v4->_deviceMap;
  if (v3)
  {
    v6 = [(NSMutableDictionary *)deviceMap allValues];
    [(NSMutableDictionary *)v4->_deviceMap removeAllObjects];
    objc_sync_exit(v4);

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v3[2](v3, *(*(&v12 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(NSMutableDictionary *)deviceMap removeAllObjects];
    objc_sync_exit(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateIfNeededWithBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((v4[2](v4) & 1) != 0 && v5->_activateCalled && !v5->_changesPending)
  {
    v5->_changesPending = 1;
    dispatchQueue = v5->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CBSpatialInteractionSession__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_update
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v2 = self;
  objc_sync_enter(v2);
  changesPending = v2->_changesPending;
  v2->_changesPending = 0;
  objc_sync_exit(v2);

  var0 = v2->_ucat->var0;
  if (changesPending)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = v2->_ucat;
      }

      LogPrintF_safe();
    }

LABEL_13:
    xdict = xpc_dictionary_create(0, 0, 0);
    [(CBSpatialInteractionSession *)v2 encodeWithXPCObject:xdict];
    xpc_dictionary_set_string(xdict, "mTyp", "SpIU");
    v5 = [(CBSpatialInteractionSession *)v2 _ensureXPCStarted];
    xpc_connection_send_message(v5, xdict);

    return;
  }

  if (var0 > 10)
  {
    return;
  }

  if (var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v6 = v2->_ucat;
  }

  LogPrintF_safe();
}

- (void)_xpcReceivedEvent:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v27 = v4;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_3:
      v25 = CUPrintXPC();
      LogPrintF_safe();

      v4 = v27;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v27;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (MEMORY[0x1C68DFDD0](v4) == MEMORY[0x1E69E9E80])
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedMessage:v27];
    goto LABEL_26;
  }

  if (v27 == MEMORY[0x1E69E9E18])
  {
    [(CBSpatialInteractionSession *)self _interrupted];
    goto LABEL_26;
  }

  if (v27 == MEMORY[0x1E69E9E20])
  {
    if (self->_invalidateCalled)
    {
      goto LABEL_25;
    }

    v17 = self->_ucat->var0;
    if (v17 > 90)
    {
      goto LABEL_25;
    }

    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v24 = self->_ucat;
    }

    LogPrintF_safe();
LABEL_25:
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(CBSpatialInteractionSession *)self _invalidated];
    goto LABEL_26;
  }

  v7 = CUXPCDecodeNSErrorIfNeeded();
  v14 = v7;
  if (v7)
  {
    v15 = v7;

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v25);

    v16 = self->_ucat->var0;
    if (v16 > 90)
    {
      goto LABEL_21;
    }
  }

  if (v16 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v23 = self->_ucat;
  }

  v18 = CUPrintNSError();
  v26 = CUPrintXPC();
  LogPrintF_safe();

LABEL_21:
  v19 = MEMORY[0x1C68DF720](self->_errorHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19, v15);
  }

LABEL_26:
}

- (void)_xpcReceivedMessage:(id)a3
{
  v11 = a3;
  string = xpc_dictionary_get_string(v11, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_14;
    }

    if (var0 != -1)
    {
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_13:
      LogPrintF_safe();
    }

LABEL_14:
    v8 = v11;

    goto LABEL_16;
  }

  v5 = string;
  if (!strcmp(string, "DvFo"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedDeviceFound:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "DvLo"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedDeviceLost:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "AdAC"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedAdvertisingAddressChanged:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "PwrC"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedPowerStateChanged:v11];
    v8 = v11;
  }

  else if (!strcmp(v5, "SpAD"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedAOPData:v11];
    v8 = v11;
  }

  else
  {
    if (strcmp(v5, "SyOC"))
    {
      v6 = self->_ucat->var0;
      if (v6 > 90)
      {
        goto LABEL_14;
      }

      if (v6 != -1)
      {
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        v10 = self->_ucat;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    [(CBSpatialInteractionSession *)self _xpcReceivedSystemOverrideChanged:v11];
    v8 = v11;
  }

LABEL_16:
}

- (void)_xpcReceivedAdvertisingAddressChanged:(id)a3
{
  v4 = a3;
  CUXPCDecodeBool();
  CUXPCDecodeNSData();

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v10 = CUPrintNSDataAddress();
      LogPrintF_safe();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v9 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  objc_storeStrong(&self->_advertisingAddressData, 0);
  v7 = MEMORY[0x1C68DF720](self->_advertisingAddressChangedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
  }
}

- (void)_xpcReceivedAOPData:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    CUXPCDecodeNSData();
    v5 = 0;
    if (([CBSpatialInteractionSession _xpcReceivedAOPData:?]& 1) == 0)
    {
    }
  }

  else
  {
    [CBSpatialInteractionSession _xpcReceivedAOPData:?];
  }
}

- (void)_xpcReceivedDeviceFound:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBSpatialInteractionSession _xpcReceivedDeviceFound:?];
    goto LABEL_19;
  }

  v21[0] = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:v4 error:v21];
  v6 = v21[0];
  if (v5)
  {
    peerMap = self->_peerMap;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CBDevice spatialInteractionPeerID](v5, "spatialInteractionPeerID")}];
    v9 = [(NSMutableDictionary *)peerMap objectForKeyedSubscript:v8];

    v10 = [v9 tokenData];
    if (!v10 && ![(CBSpatialInteractionSession *)self matchesWithDevice:v5])
    {
      [CBSpatialInteractionSession _xpcReceivedDeviceFound:?];
      goto LABEL_16;
    }

    [(CBDevice *)v5 setSpatialInteractionTokenData:v10];
    v11 = [v9 userInfo];
    [(CBDevice *)v5 setSpatialInteractionUserInfo:v11];

    -[CBDevice setSpatialInteractionUWBTokenFlags:](v5, "setSpatialInteractionUWBTokenFlags:", [v9 uwbTokenFlags]);
    v12 = [(CBDevice *)v5 identifier];
    if (!v12)
    {
      [CBSpatialInteractionSession _xpcReceivedDeviceFound:?];
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

    v13 = self;
    objc_sync_enter(v13);
    deviceMap = v13->_deviceMap;
    if (!deviceMap)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = v13->_deviceMap;
      v13->_deviceMap = v15;

      deviceMap = v13->_deviceMap;
    }

    [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:v12];
    objc_sync_exit(v13);

    var0 = v13->_ucat->var0;
    if (var0 <= 9)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = v13->_ucat;
      }

      LogPrintF_safe();
    }

LABEL_12:
    v18 = MEMORY[0x1C68DF720](v13->_deviceFoundHandler);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18, v5);
    }

    goto LABEL_15;
  }

  if (([CBSpatialInteractionSession _xpcReceivedDeviceFound:?]& 1) != 0)
  {
    goto LABEL_18;
  }

  v9 = v21[1];
LABEL_17:

LABEL_18:
LABEL_19:
}

- (void)_xpcReceivedDeviceLost:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBSpatialInteractionSession _xpcReceivedDeviceLost:?];
    goto LABEL_15;
  }

  v15 = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:v4 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [(CBDevice *)v5 identifier];
    if (!v7)
    {
      [(CBSpatialInteractionSession *)self _xpcReceivedDeviceLost:v5, 0, &v16];
      v7 = v16;
      goto LABEL_13;
    }

    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)v8->_deviceMap objectForKeyedSubscript:v7];
    [(NSMutableDictionary *)v8->_deviceMap setObject:0 forKeyedSubscript:v7];
    objc_sync_exit(v8);

    var0 = v8->_ucat->var0;
    if (!v9)
    {
      [(CBSpatialInteractionSession *)var0 _xpcReceivedDeviceLost:&v8->_ucat];
LABEL_12:

      goto LABEL_13;
    }

    if (var0 <= 9)
    {
      if (var0 == -1)
      {
        ucat = v8->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v14 = v8->_ucat;
      }

      LogPrintF_safe();
    }

LABEL_9:
    v12 = MEMORY[0x1C68DF720](v8->_deviceLostHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, v9);
    }

    goto LABEL_12;
  }

  if (([CBSpatialInteractionSession _xpcReceivedDeviceLost:?]& 1) != 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
LABEL_13:

LABEL_14:
LABEL_15:
}

- (void)_xpcReceivedPowerStateChanged:(id)a3
{
  xdict = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(xdict, "pwrS");
    v4 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBSpatialInteractionSession _xpcReceivedPowerStateChanged:?];
    v6 = xdict;
  }
}

- (void)_xpcReceivedSystemOverrideChanged:(id)a3
{
  xdict = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_scanRateOverride = xpc_dictionary_get_int64(xdict, "scRO");
    self->_systemOverrideFlags = xpc_dictionary_get_uint64(xdict, "syOF");
    v4 = MEMORY[0x1C68DF720](self->_systemOverrideHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBSpatialInteractionSession _xpcReceivedSystemOverrideChanged:?];
    v6 = xdict;
  }
}

- (CBSpatialInteractionSession)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = [(CBSpatialInteractionSession *)self init];
  if (!v13)
  {
    if (!a4)
    {
      goto LABEL_44;
    }

    v26 = "init failed";
LABEL_43:
    CBErrorF(-6756, v26, v7, v8, v9, v10, v11, v12, v27);
    *a4 = v24 = 0;
    goto LABEL_38;
  }

  if (MEMORY[0x1C68DFDD0](v6) != MEMORY[0x1E69E9E80])
  {
    if (!a4)
    {
      goto LABEL_44;
    }

    v26 = "XPC non-dict";
    goto LABEL_43;
  }

  v14 = OUTLINED_FUNCTION_3_10();
  if (v14 == 6)
  {
    v13->_advertiseRate = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_5();
  if (v15 == 6)
  {
    v13->_clientID = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_0();
  v16 = OUTLINED_FUNCTION_5();
  if (v16 == 6)
  {
    v13->_internalFlags = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_44;
  }

  v17 = OUTLINED_FUNCTION_3_10();
  if (v17 == 6)
  {
    v13->_scanRate = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_44;
  }

  v18 = OUTLINED_FUNCTION_3_10();
  if (v18 == 6)
  {
    v13->_scanRateOverride = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_44;
  }

  v19 = OUTLINED_FUNCTION_3_10();
  if (v19 == 6)
  {
    v13->_scanRateScreenOff = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_44;
  }

  v20 = CUXPCDecodeSInt64RangedEx();
  if (v20 == 6)
  {
    v13->_bleRSSIThresholdHint = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_0();
  v21 = CUXPCDecodeUInt64RangedEx();
  if (v21 == 6)
  {
    v13->_bleRSSIThresholdOrder = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_5();
  if (v22 == 6)
  {
    v13->_controlFlags = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_0();
  v23 = OUTLINED_FUNCTION_5();
  if (v23 == 6)
  {
    v13->_uwbTokenFlags = 0;
    goto LABEL_36;
  }

  if (v23 == 5)
  {
LABEL_44:
    v24 = 0;
    goto LABEL_38;
  }

LABEL_36:
  CUXPCDecodeNSDataOfLength();
  CUXPCDecodeNSDataOfLength();
  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_44;
  }

  v24 = v13;
LABEL_38:

  return v24;
}

BOOL __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [CBDevice alloc];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [(CBDevice *)v5 initWithXPCObject:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v14 = [(CBDevice *)v7 identifier];
    v15 = v14 != 0;
    if (v14)
    {
      v16 = *(*(*(a1 + 40) + 8) + 40);
      if (!v16)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v16 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v16 setObject:v7 forKeyedSubscript:v14];
    }

    else
    {
      v21 = CBErrorF(-6708, "No device ID", v8, v9, v10, v11, v12, v13, v24);
      v22 = *(*(a1 + 32) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)dictionaryWithTokenData:(void *)a3 error:.cold.1(void *a1, unsigned int *a2, void *a3)
{
  if (a1)
  {
    v5 = *a2;
    v6 = CUPrintErrorCode();
    *a1 = CBErrorF(312900, "Decode token failed: %@", v7, v8, v9, v10, v11, v12, v6);
  }

  *a3 = 0;
}

- (uint64_t)_xpcReceivedAOPData:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 64);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedAOPData:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_5_7(a1);
  if (!(v4 ^ v5 | v3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_8();
  if (!v3)
  {
LABEL_4:
    *v1 = CUPrintNSError();
    LogPrintF_safe();
    return 0;
  }

  if (OUTLINED_FUNCTION_6_3())
  {
    v7 = *(v2 + 64);
    goto LABEL_4;
  }

  return 1;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 64);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (int)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = *(a1 + 64);
  if (*result <= 30)
  {
    if (*result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *(a1 + 64);
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.3(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 64);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_7(a1);
  if (!(v4 ^ v5 | v3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_8();
  if (!v3)
  {
LABEL_4:
    *v1 = CUPrintNSError();
    LogPrintF_safe();
    return 0;
  }

  if (OUTLINED_FUNCTION_6_3())
  {
    v7 = *(v2 + 64);
    goto LABEL_4;
  }

  return 1;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 64);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t *)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *a3;
      return LogPrintF_safe();
    }
  }

  return result;
}

- (int)_xpcReceivedDeviceLost:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = *(a1 + 64);
  if (*result <= 90)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      v8 = *(a1 + 64);
    }

    result = LogPrintF_safe();
  }

LABEL_5:
  *a4 = a3;
  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_7(a1);
  if (!(v4 ^ v5 | v3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_8();
  if (!v3)
  {
LABEL_4:
    *v1 = CUPrintNSError();
    LogPrintF_safe();
    return 0;
  }

  if (OUTLINED_FUNCTION_6_3())
  {
    v7 = *(v2 + 64);
    goto LABEL_4;
  }

  return 1;
}

- (uint64_t)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 64);
    }

    return LogPrintF_safe();
  }

  return result;
}

- (uint64_t)_xpcReceivedSystemOverrideChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 64);
    }

    return LogPrintF_safe();
  }

  return result;
}

@end