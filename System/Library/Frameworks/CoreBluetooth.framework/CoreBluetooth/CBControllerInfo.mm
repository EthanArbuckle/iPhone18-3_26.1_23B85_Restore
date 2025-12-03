@interface CBControllerInfo
- (BOOL)isEqual:(id)equal;
- (CBControllerInfo)initWithCoder:(id)coder;
- (CBControllerInfo)initWithDictionary:(id)dictionary error:(id *)error;
- (CBControllerInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBControllerInfo

- (CBControllerInfo)initWithCoder:(id)coder
{
  v12[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v12[6] = objc_opt_class();
  v12[7] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ctrI"];

  v9 = [(CBControllerInfo *)self initWithDictionary:v8 error:0];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CBControllerInfo)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBControllerInfo *)self initWithXPCObject:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    CBErrorF(-6700, "CBControllerInfo convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(CBControllerInfo *)self encodeWithXPCObject:v3];
  v4 = CUXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(CBControllerInfo *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"ctrI"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  audioLinkQualityArray = self->_audioLinkQualityArray;
  CUXPCEncodeNSArrayOfObjects();
  bluetoothState = self->_bluetoothState;
  if (bluetoothState)
  {
    xpc_dictionary_set_int64(objectCopy, "pwrS", bluetoothState);
  }

  chipsetID = self->_chipsetID;
  v8 = objectCopy;
  uTF8String = [(NSString *)chipsetID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v8, "chip", uTF8String);
  }

  if (self->_cloudSyncStatus)
  {
    xpc_dictionary_set_uint64(v8, "clSy", self->_cloudSyncStatus);
  }

  discoverableState = self->_discoverableState;
  if (discoverableState)
  {
    xpc_dictionary_set_int64(v8, "dsSt", discoverableState);
  }

  if (self->_fastLEConnectionAllowed)
  {
    xpc_dictionary_set_BOOL(v8, "fLEal", 1);
  }

  if (self->_fastLEConnectionInfoVersion)
  {
    xpc_dictionary_set_uint64(v8, "fLEVe", self->_fastLEConnectionInfoVersion);
  }

  fastLEConnectionInfoData = self->_fastLEConnectionInfoData;
  if (fastLEConnectionInfoData)
  {
    v12 = fastLEConnectionInfoData;
    v13 = v8;
    v14 = fastLEConnectionInfoData;
    bytes = [(NSData *)v14 bytes];
    if (bytes)
    {
      v16 = bytes;
    }

    else
    {
      v16 = "";
    }

    v17 = [(NSData *)v14 length];

    xpc_dictionary_set_data(v13, "fLEDt", v16, v17);
  }

  firmwareName = self->_firmwareName;
  v19 = v8;
  uTF8String2 = [(NSString *)firmwareName UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v19, "frmN", uTF8String2);
  }

  firmwareVersion = self->_firmwareVersion;
  xdict = v19;
  uTF8String3 = [(NSString *)firmwareVersion UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(xdict, "frmV", uTF8String3);
  }

  hardwareAddressData = self->_hardwareAddressData;
  if (hardwareAddressData)
  {
    v24 = hardwareAddressData;
    v25 = xdict;
    v26 = hardwareAddressData;
    bytes2 = [(NSData *)v26 bytes];
    if (bytes2)
    {
      v28 = bytes2;
    }

    else
    {
      v28 = "";
    }

    v29 = [(NSData *)v26 length];

    xpc_dictionary_set_data(v25, "btAd", v28, v29);
  }

  if (self->_hciTransportType)
  {
    xpc_dictionary_set_int64(xdict, "hciT", self->_hciTransportType);
  }

  inquiryState = self->_inquiryState;
  v31 = xdict;
  if (inquiryState)
  {
    xpc_dictionary_set_int64(xdict, "inqS", inquiryState);
    v31 = xdict;
  }

  if (self->_leaVersion)
  {
    xpc_dictionary_set_uint64(xdict, "fLEAVe", self->_leaVersion);
    v31 = xdict;
  }

  if (self->_lmpVersion)
  {
    xpc_dictionary_set_uint64(xdict, "lmpV", self->_lmpVersion);
    v31 = xdict;
  }

  productID = self->_productID;
  if (productID)
  {
    xpc_dictionary_set_uint64(xdict, "pid", productID);
    v31 = xdict;
  }

  supportedServices = self->_supportedServices;
  if (supportedServices)
  {
    xpc_dictionary_set_uint64(xdict, "supS", supportedServices);
    v31 = xdict;
  }

  if (self->_vendorID)
  {
    xpc_dictionary_set_uint64(xdict, "vid", self->_vendorID);
    v31 = xdict;
  }

  if (self->_vendorIDSource)
  {
    xpc_dictionary_set_uint64(xdict, "vidS", self->_vendorIDSource);
    v31 = xdict;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v145 = *MEMORY[0x1E69E9840];
  if (level <= 0x14u)
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v4 = self->_audioLinkQualityArray;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v139 objects:v144 count:16];
    if (v5)
    {
      v108 = v5;
      v7 = 0;
      v8 = *v140;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v140 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v139 + 1) + 8 * v9);
          v12 = CUDescriptionWithLevel();
          v138 = v10;
          deviceName = [v11 deviceName];
          [v12 UTF8String];
          v108 = CUPrintText();
          NSAppendPrintF();
          v7 = v10;

          ++v9;
          v10 = v7;
        }

        while (v108 != v9);
        v108 = [(NSArray *)v4 countByEnumeratingWithState:&v139 objects:v144 count:16, deviceName, v108];
      }

      while (v108);
    }

    else
    {
      v7 = 0;
    }

    v137 = v7;
    bluetoothState = self->_bluetoothState;
    if (bluetoothState <= 0xA)
    {
      v37 = off_1E811E578[bluetoothState];
    }

    NSAppendPrintF_safe();
    v38 = v137;

    chipsetID = self->_chipsetID;
    if (chipsetID)
    {
      v136 = v38;
      v102 = chipsetID;
      NSAppendPrintF_safe();
      v40 = v38;

      v38 = v40;
    }

    v135 = v38;
    discoverableState = self->_discoverableState;
    if (discoverableState >= 3)
    {
      v42 = "?";
    }

    else
    {
      v42 = off_1E811E680[discoverableState];
    }

    v103 = v42;
    NSAppendPrintF_safe();
    v43 = v135;

    v44 = self->_firmwareName;
    v45 = self->_firmwareVersion;
    v15 = v44;
    v46 = v45;
    p_isa = &v46->super.isa;
    if (v15 == v46)
    {
    }

    else
    {
      if ((v15 != 0) == (v46 == 0))
      {

        if (!v15)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v103 = [(NSArray *)v15 isEqual:v46, v103];

      if ((v103 & 1) == 0)
      {
        if (!v15)
        {
LABEL_46:
          if (!p_isa)
          {
LABEL_51:
            v132 = v43;
            NSAppendPrintF_safe();
            v52 = v43;

            hardwareAddressData = self->_hardwareAddressData;
            if (hardwareAddressData)
            {
              v131 = v52;
              v54 = hardwareAddressData;
              v104 = CUPrintNSDataAddress();
              NSAppendPrintF_safe();
              v55 = v52;

              v52 = v55;
            }

            v130 = v52;
            productID = self->_productID;
            vendorIDSource = self->_vendorIDSource;
            if (vendorIDSource < 3)
            {
              v58 = off_1E811E560[vendorIDSource];
            }

            vendorID = self->_vendorID;
            NSAppendPrintF_safe();
            v59 = v130;

            hciTransportType = self->_hciTransportType;
            if (self->_hciTransportType)
            {
              v129 = v59;
              if (hciTransportType <= 4)
              {
                v61 = off_1E811E660[hciTransportType - 1];
              }

              NSAppendPrintF_safe();
              v71 = v129;

              v59 = v71;
            }

            v128 = v59;
            inquiryState = self->_inquiryState;
            if (inquiryState <= 2)
            {
              v73 = off_1E811E680[inquiryState];
            }

            NSAppendPrintF_safe();
            v74 = v128;

            v127 = v74;
            if (self->_lmpVersion <= 0xEu)
            {
              v75 = off_1E811E5E8[self->_lmpVersion];
            }

            lmpVersion = self->_lmpVersion;
            NSAppendPrintF_safe();
            v76 = v127;

            v126 = v76;
            supportedServices = self->_supportedServices;
            v68 = CUPrintFlags32();
            NSAppendPrintF_safe();
            v78 = v76;
            goto LABEL_100;
          }

          v133[0] = v43;
          v50 = v133;
LABEL_50:
          NSAppendPrintF_safe();
          v51 = *v50;

          v43 = v51;
          goto LABEL_51;
        }

LABEL_45:
        v133[1] = v43;
        NSAppendPrintF_safe();
        v49 = v43;

        v43 = v49;
        goto LABEL_46;
      }
    }

    v134 = v43;
    v50 = &v134;
    goto LABEL_50;
  }

  if ((level & 0x8000000) != 0)
  {
    v14 = 0;
    v15 = self->_audioLinkQualityArray;
    if (![(NSArray *)v15 count])
    {
LABEL_11:
      v117 = v14;
      v16 = self->_bluetoothState;
      if (v16 > 0xA)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v125 = 0;
    NSAppendPrintF_safe();
    v14 = 0;
    v15 = self->_audioLinkQualityArray;
    if (![(NSArray *)v15 count])
    {
      goto LABEL_11;
    }
  }

  v124 = v14;
  NSAppendPrintF_safe();
  v18 = v14;

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v19 = v15;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v120 objects:v143 count:16];
  if (v20)
  {
    v109 = v20;
    v22 = *v121;
    v23 = "";
    do
    {
      if (*v121 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = **(&v120 + 1);
      v119 = v18;
      v100 = v23;
      v109 = v24;
      NSAppendPrintF_safe();
      v25 = v18;

      if (v109 < 2)
      {
        v18 = v25;
      }

      else
      {
        for (i = 1; i != v109; ++i)
        {
          if (*v121 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v120 + 1) + 8 * i);
          v119 = v25;
          v100 = ", ";
          v109 = v27;
          NSAppendPrintF_safe();
          v18 = v25;

          v25 = v18;
        }
      }

      v109 = [(NSArray *)v19 countByEnumeratingWithState:&v120 objects:v143 count:16, v100, v109];
      v23 = ", ";
    }

    while (v109);
  }

  v118 = v18;
  NSAppendPrintF_safe();
  v14 = v18;

  v117 = v14;
  v16 = self->_bluetoothState;
  if (v16 <= 0xA)
  {
LABEL_12:
    v17 = off_1E811E578[v16];
  }

LABEL_26:
  NSAppendPrintF_safe();
  v28 = v117;

  v116 = v28;
  v29 = self->_discoverableState;
  v30 = "?";
  if (v29 <= 2)
  {
    v30 = off_1E811E680[v29];
  }

  v101 = v30;
  NSAppendPrintF_safe();
  v31 = v116;

  v32 = self->_chipsetID;
  if (v32)
  {
    v115 = v31;
    v101 = v32;
    NSAppendPrintF_safe();
    v33 = v31;

    v31 = v33;
  }

  cloudSyncStatus = self->_cloudSyncStatus;
  if (self->_cloudSyncStatus)
  {
    v114 = v31;
    if (cloudSyncStatus > 3)
    {
      v35 = "?";
    }

    else
    {
      v35 = off_1E811E5D0[cloudSyncStatus - 1];
    }

    v101 = v35;
    NSAppendPrintF_safe();
    v62 = v114;

    v31 = v62;
  }

  fastLEConnectionInfoVersion = self->_fastLEConnectionInfoVersion;
  if (self->_fastLEConnectionInfoVersion)
  {
    v113[1] = v31;
    self->_fastLEConnectionAllowed;
    v101 = fastLEConnectionInfoVersion;
    NSAppendPrintF_safe();
    v64 = v31;

    v31 = v64;
  }

  v65 = self->_firmwareName;
  v66 = self->_firmwareVersion;
  p_isa = v65;
  v67 = v66;
  v68 = v67;
  if (p_isa != v67)
  {
    if ((p_isa != 0) != (v67 == 0))
    {
      v101 = [(NSString *)p_isa isEqual:v67, v101];

      if (v101)
      {
        if (!v68)
        {
          goto LABEL_83;
        }

        goto LABEL_68;
      }
    }

    else
    {
    }

    if (p_isa)
    {
      v112[1] = v31;
      NSAppendPrintF_safe();
      v79 = v31;

      v31 = v79;
    }

    if (!v68)
    {
      goto LABEL_83;
    }

    v112[0] = v31;
    v70 = v112;
    goto LABEL_82;
  }

  if (v68)
  {
LABEL_68:
    v113[0] = v31;
    v70 = v113;
LABEL_82:
    NSAppendPrintF_safe();
    v80 = *v70;

    v31 = v80;
  }

LABEL_83:
  v81 = self->_hardwareAddressData;
  if (v81)
  {
    v82 = v81;
    v106 = CUPrintNSDataAddress();
    NSAppendPrintF_safe();
    v83 = v31;

    v31 = v83;
  }

  if (self->_productID)
  {
    NSAppendPrintF_safe();
    v84 = v31;

    v31 = v84;
  }

  if (self->_vendorID)
  {
    NSAppendPrintF_safe();
    v85 = v31;

    v31 = v85;
  }

  if (self->_vendorIDSource)
  {
    self->_vendorIDSource;
    NSAppendPrintF_safe();
    v86 = v31;

    v31 = v86;
  }

  v87 = self->_hciTransportType;
  if (self->_hciTransportType)
  {
    if (v87 <= 4)
    {
      v88 = off_1E811E660[v87 - 1];
    }

    NSAppendPrintF_safe();
    v89 = v31;

    v31 = v89;
  }

  v90 = self->_inquiryState;
  if (v90 <= 2)
  {
    v91 = off_1E811E680[v90];
  }

  NSAppendPrintF_safe();
  v92 = v31;

  if (self->_lmpVersion <= 0xEu)
  {
    v93 = off_1E811E5E8[self->_lmpVersion];
  }

  v107 = self->_lmpVersion;
  NSAppendPrintF_safe();
  v94 = v92;

  v95 = self->_supportedServices;
  v76 = CUPrintFlags32();
  NSAppendPrintF_safe();
  v78 = v94;

LABEL_100:
  if (v78)
  {
    v96 = v78;
  }

  else
  {
    v96 = &stru_1F40009C8;
  }

  v97 = v96;

  v98 = *MEMORY[0x1E69E9840];
  return v96;
}

- (CBControllerInfo)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
  v13 = OUTLINED_FUNCTION_18();
  if (!v13)
  {
    if (!v5)
    {
      goto LABEL_53;
    }

    v27 = "CBControllerInfo init failed";
LABEL_52:
    v28 = CBErrorF(-6756, v27, v7, v8, v9, v10, v11, v12, v29);
    OUTLINED_FUNCTION_16(v28);
    goto LABEL_47;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (!v5)
    {
      goto LABEL_53;
    }

    v27 = "XPC non-dict";
    goto LABEL_52;
  }

  objc_opt_class();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_4();
  v14 = CUXPCDecodeSInt64RangedEx();
  if (v14 == 6)
  {
    *(v13 + 48) = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_3_1();
  if (v15 == 6)
  {
    *(v13 + 8) = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_4();
  v16 = OUTLINED_FUNCTION_15();
  if (v16 == 6)
  {
    *(v13 + 20) = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v17 = OUTLINED_FUNCTION_3_1();
  if (v17 == 6)
  {
    *(v13 + 9) = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString() || !CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_53;
  }

  v18 = OUTLINED_FUNCTION_1_3();
  if (v18 == 6)
  {
    *(v13 + 10) = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_4();
  v19 = OUTLINED_FUNCTION_15();
  if (v19 == 6)
  {
    *(v13 + 24) = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_3_1();
  if (v20 == 6)
  {
    *(v13 + 11) = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v21 = OUTLINED_FUNCTION_3_1();
  if (v21 == 6)
  {
    *(v13 + 12) = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_5();
  if (v22 == 6)
  {
    *(v13 + 28) = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v23 = OUTLINED_FUNCTION_5();
  if (v23 == 6)
  {
    *(v13 + 32) = 0;
  }

  else if (v23 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v24 = OUTLINED_FUNCTION_4_0();
  if (v24 == 6)
  {
    *(v13 + 16) = 0;
  }

  else if (v24 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0();
  v25 = OUTLINED_FUNCTION_3_1();
  if (v25 != 6)
  {
    if (v25 != 5)
    {
      goto LABEL_46;
    }

LABEL_53:
    v6 = 0;
    goto LABEL_47;
  }

  *(v13 + 13) = 0;
LABEL_46:
  v6 = v13;
LABEL_47:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    audioLinkQualityArray = self->_audioLinkQualityArray;
    audioLinkQualityArray = [v5 audioLinkQualityArray];
    v8 = audioLinkQualityArray;
    v9 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v11 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v12 = OUTLINED_FUNCTION_13();

      if (!v12)
      {
        goto LABEL_49;
      }
    }

    bluetoothState = self->_bluetoothState;
    if (bluetoothState != [v5 bluetoothState])
    {
LABEL_49:
      v38 = 0;
LABEL_52:

      goto LABEL_53;
    }

    chipsetID = self->_chipsetID;
    audioLinkQualityArray = [v5 chipsetID];
    v8 = chipsetID;
    v15 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v16 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v17 = OUTLINED_FUNCTION_13();

      if (!v17)
      {
        goto LABEL_49;
      }
    }

    cloudSyncStatus = self->_cloudSyncStatus;
    if (cloudSyncStatus != [v5 cloudSyncStatus])
    {
      goto LABEL_49;
    }

    discoverableState = self->_discoverableState;
    if (discoverableState != [v5 discoverableState])
    {
      goto LABEL_49;
    }

    fastLEConnectionAllowed = self->_fastLEConnectionAllowed;
    if (fastLEConnectionAllowed != [v5 fastLEConnectionAllowed])
    {
      goto LABEL_49;
    }

    fastLEConnectionInfoVersion = self->_fastLEConnectionInfoVersion;
    if (fastLEConnectionInfoVersion != [v5 fastLEConnectionInfoVersion])
    {
      goto LABEL_49;
    }

    fastLEConnectionInfoData = self->_fastLEConnectionInfoData;
    audioLinkQualityArray = [v5 fastLEConnectionInfoData];
    v8 = fastLEConnectionInfoData;
    v23 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v24 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v25 = OUTLINED_FUNCTION_13();

      if (!v25)
      {
        goto LABEL_49;
      }
    }

    firmwareName = self->_firmwareName;
    audioLinkQualityArray = [v5 firmwareName];
    v8 = firmwareName;
    v27 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v28 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v29 = OUTLINED_FUNCTION_13();

      if (!v29)
      {
        goto LABEL_49;
      }
    }

    firmwareVersion = self->_firmwareVersion;
    audioLinkQualityArray = [v5 firmwareVersion];
    v8 = firmwareVersion;
    v31 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v32 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v33 = OUTLINED_FUNCTION_13();

      if (!v33)
      {
        goto LABEL_49;
      }
    }

    hardwareAddressData = self->_hardwareAddressData;
    audioLinkQualityArray = [v5 hardwareAddressData];
    v8 = hardwareAddressData;
    v35 = audioLinkQualityArray;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_9_0();
      if (v36 == (audioLinkQualityArray == 0))
      {
        goto LABEL_50;
      }

      v37 = OUTLINED_FUNCTION_13();

      if (!v37)
      {
        goto LABEL_49;
      }
    }

    hciTransportType = self->_hciTransportType;
    if (hciTransportType != [v5 hciTransportType])
    {
      goto LABEL_49;
    }

    inquiryState = self->_inquiryState;
    if (inquiryState != [v5 inquiryState])
    {
      goto LABEL_49;
    }

    leaVersion = self->_leaVersion;
    if (leaVersion != [v5 leaVersion])
    {
      goto LABEL_49;
    }

    lmpVersion = self->_lmpVersion;
    if (lmpVersion != [v5 lmpVersion])
    {
      goto LABEL_49;
    }

    productID = self->_productID;
    if (productID != [v5 productID])
    {
      goto LABEL_49;
    }

    supportedServices = self->_supportedServices;
    if (supportedServices != [v5 supportedServices])
    {
      goto LABEL_49;
    }

    vendorID = self->_vendorID;
    if (vendorID != [v5 vendorID])
    {
      goto LABEL_49;
    }

    vendorIDSource = self->_vendorIDSource;
    if (vendorIDSource != [v5 vendorIDSource])
    {
      goto LABEL_49;
    }

    lastChipsetInitError = self->_lastChipsetInitError;
    lastChipsetInitError = [v5 lastChipsetInitError];
    v8 = lastChipsetInitError;
    v49 = lastChipsetInitError;
    OUTLINED_FUNCTION_10_0();
    if (v10)
    {
      v38 = 1;
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_9_0();
    if (v50 != (audioLinkQualityArray == 0))
    {
      v38 = OUTLINED_FUNCTION_13();
LABEL_51:

      goto LABEL_52;
    }

LABEL_50:
    v38 = 0;
    goto LABEL_51;
  }

  v38 = 0;
LABEL_53:

  return v38;
}

@end