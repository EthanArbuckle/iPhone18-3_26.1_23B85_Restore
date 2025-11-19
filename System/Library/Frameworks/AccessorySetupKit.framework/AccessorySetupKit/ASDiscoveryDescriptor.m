@interface ASDiscoveryDescriptor
- (ASDiscoveryDescriptor)initWithCoder:(id)a3;
- (ASDiscoveryDescriptor)initWithDiscoveryConfiguration:(id)a3;
- (ASDiscoveryDescriptor)initWithXPCObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASDiscoveryDescriptor

- (ASDiscoveryDescriptor)initWithDiscoveryConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ASDiscoveryDescriptor *)self init];
  if (v5)
  {
    v6 = [v4 associationIdentifier];
    v7 = [v4 displayName];
    v8 = v7;
    v9 = 0;
    if (v6 && v7)
    {
      [(ASDiscoveryDescriptor *)v4 initWithDiscoveryConfiguration:v5];
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ASDiscoveryDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDiscoveryDescriptor *)self init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"fSp"])
    {
      v5->_supportedOptions = [v6 decodeIntegerForKey:@"fSp"];
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bluetoothCompanyIdentifier = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    if ([v9 containsValueForKey:@"aLC"])
    {
      v5->_bluetoothNameSubstringCompareOptions = [v9 decodeIntegerForKey:@"aLC"];
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    if ([v14 containsValueForKey:@"bRg"])
    {
      v5->_bluetoothRange = [v14 decodeIntegerForKey:@"bRg"];
    }

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v20 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v21 = v20;
    if ([v21 containsValueForKey:@"wASt"])
    {
      v5->_wifiAwareServiceRole = [v21 decodeIntegerForKey:@"wASt"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v22 = v5;
  }

  else
  {
    [ASAccessory initWithCoder:v4];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = a3;
  supportedOptions = self->_supportedOptions;
  if (supportedOptions)
  {
    [v23 encodeInteger:supportedOptions forKey:@"fSp"];
  }

  if (self->_bluetoothCompanyIdentifier)
  {
    [v23 encodeInteger:? forKey:?];
  }

  bluetoothManufacturerDataBlob = self->_bluetoothManufacturerDataBlob;
  if (bluetoothManufacturerDataBlob)
  {
    [v23 encodeObject:bluetoothManufacturerDataBlob forKey:@"mdb"];
  }

  bluetoothManufacturerDataMask = self->_bluetoothManufacturerDataMask;
  if (bluetoothManufacturerDataMask)
  {
    [v23 encodeObject:bluetoothManufacturerDataMask forKey:@"mdm"];
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    [v23 encodeInteger:bluetoothNameSubstringCompareOptions forKey:@"aLC"];
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  if (bluetoothNameSubstring)
  {
    [v23 encodeObject:bluetoothNameSubstring forKey:@"aLn"];
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    [v23 encodeInteger:bluetoothRange forKey:@"bRg"];
  }

  bluetoothServiceDataBlob = self->_bluetoothServiceDataBlob;
  if (bluetoothServiceDataBlob)
  {
    [v23 encodeObject:bluetoothServiceDataBlob forKey:@"sdb"];
  }

  bluetoothServiceDataMask = self->_bluetoothServiceDataMask;
  if (bluetoothServiceDataMask)
  {
    [v23 encodeObject:bluetoothServiceDataMask forKey:@"sdm"];
  }

  v12 = [(CBUUID *)self->_bluetoothServiceUUID data];
  if (v12)
  {
    [v23 encodeObject:v12 forKey:@"bSi"];
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    [v23 encodeObject:bonjourServiceName forKey:@"bSn"];
  }

  bonjourServiceType = self->_bonjourServiceType;
  v15 = v23;
  if (bonjourServiceType)
  {
    [v23 encodeObject:bonjourServiceType forKey:@"bSt"];
    v15 = v23;
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    [v23 encodeObject:bonjourTXTRecordData forKey:@"bTx"];
    v15 = v23;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v23 encodeObject:SSID forKey:@"wsd"];
    v15 = v23;
  }

  SSIDPrefix = self->_SSIDPrefix;
  if (SSIDPrefix)
  {
    [v23 encodeObject:SSIDPrefix forKey:@"wsP"];
    v15 = v23;
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    [v23 encodeObject:wifiAwareServiceName forKey:@"wASn"];
    v15 = v23;
  }

  wifiAwareServiceRole = self->_wifiAwareServiceRole;
  if (wifiAwareServiceRole)
  {
    [v23 encodeInteger:wifiAwareServiceRole forKey:@"wASt"];
    v15 = v23;
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  if (wifiAwareModelNameMatch)
  {
    [v23 encodeObject:wifiAwareModelNameMatch forKey:@"wAMnm"];
    v15 = v23;
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    [v23 encodeObject:wifiAwareVendorNameMatch forKey:@"wAVim"];
    v15 = v23;
  }
}

- (ASDiscoveryDescriptor)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASDiscoveryDescriptor *)self init];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](v6) == MEMORY[0x277D86468])
    {
      v17 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v7->_supportedOptions = v17;
      }

      v17 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v7->_bluetoothCompanyIdentifier = v17;
      }

      CUXPCDecodeNSData();
      CUXPCDecodeNSData();
      v17 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v7->_bluetoothNameSubstringCompareOptions = v17;
      }

      CUXPCDecodeNSString();
      v17 = 0;
      if (CUXPCDecodeSInt64RangedEx() == 6)
      {
        v7->_bluetoothRange = v17;
      }

      CUXPCDecodeNSData();
      CUXPCDecodeNSData();
      CUXPCDecodeNSData();
      CUXPCDecodeNSString();
      CUXPCDecodeNSString();
      CUXPCDecodeNSData();
      CUXPCDecodeNSString();
      CUXPCDecodeNSString();
      CUXPCDecodeNSString();
      v17 = 0;
      if (CUXPCDecodeSInt64RangedEx() == 6)
      {
        v7->_wifiAwareServiceRole = v17;
      }

      objc_opt_class();
      CUXPCDecodeObject();
      objc_opt_class();
      CUXPCDecodeObject();
      v14 = v7;
    }

    else if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v16);
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:a4 error:&v17];
    v14 = v17;
  }

  return v14;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  supportedOptions = self->_supportedOptions;
  if (supportedOptions)
  {
    xpc_dictionary_set_uint64(v4, "fSp", supportedOptions);
  }

  if (self->_bluetoothCompanyIdentifier)
  {
    xpc_dictionary_set_uint64(v5, "bcI", self->_bluetoothCompanyIdentifier);
  }

  bluetoothManufacturerDataBlob = self->_bluetoothManufacturerDataBlob;
  if (bluetoothManufacturerDataBlob)
  {
    v8 = bluetoothManufacturerDataBlob;
    v9 = v5;
    v10 = bluetoothManufacturerDataBlob;
    v11 = [(NSData *)v10 bytes];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    v13 = [(NSData *)v10 length];

    xpc_dictionary_set_data(v9, "mdb", v12, v13);
  }

  bluetoothManufacturerDataMask = self->_bluetoothManufacturerDataMask;
  if (bluetoothManufacturerDataMask)
  {
    v15 = bluetoothManufacturerDataMask;
    v16 = v5;
    v17 = bluetoothManufacturerDataMask;
    v18 = [(NSData *)v17 bytes];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = "";
    }

    v20 = [(NSData *)v17 length];

    xpc_dictionary_set_data(v16, "mdm", v19, v20);
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    xpc_dictionary_set_uint64(v5, "aLC", bluetoothNameSubstringCompareOptions);
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  v23 = v5;
  v24 = [(NSString *)bluetoothNameSubstring UTF8String];
  if (v24)
  {
    xpc_dictionary_set_string(v23, "aLn", v24);
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    xpc_dictionary_set_int64(v23, "bRg", bluetoothRange);
  }

  bluetoothServiceDataBlob = self->_bluetoothServiceDataBlob;
  if (bluetoothServiceDataBlob)
  {
    v27 = bluetoothServiceDataBlob;
    v28 = v23;
    v29 = bluetoothServiceDataBlob;
    v30 = [(NSData *)v29 bytes];
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = "";
    }

    v32 = [(NSData *)v29 length];

    xpc_dictionary_set_data(v28, "sdb", v31, v32);
  }

  bluetoothServiceDataMask = self->_bluetoothServiceDataMask;
  if (bluetoothServiceDataMask)
  {
    v34 = bluetoothServiceDataMask;
    v35 = v23;
    v36 = bluetoothServiceDataMask;
    v37 = [(NSData *)v36 bytes];
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = "";
    }

    v39 = [(NSData *)v36 length];

    xpc_dictionary_set_data(v35, "sdm", v38, v39);
  }

  v40 = [(CBUUID *)self->_bluetoothServiceUUID data];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
    v43 = v23;
    v44 = [v41 bytes];
    if (v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = "";
    }

    xpc_dictionary_set_data(v43, "bSi", v45, [v41 length]);
  }

  bonjourServiceName = self->_bonjourServiceName;
  v47 = v23;
  v48 = [(NSString *)bonjourServiceName UTF8String];
  if (v48)
  {
    xpc_dictionary_set_string(v47, "bSn", v48);
  }

  bonjourServiceType = self->_bonjourServiceType;
  v50 = v47;
  v51 = [(NSString *)bonjourServiceType UTF8String];
  if (v51)
  {
    xpc_dictionary_set_string(v50, "bSt", v51);
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v53 = bonjourTXTRecordData;
    v54 = v50;
    v55 = bonjourTXTRecordData;
    v56 = [(NSData *)v55 bytes];
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = "";
    }

    v58 = [(NSData *)v55 length];

    xpc_dictionary_set_data(v54, "bTx", v57, v58);
  }

  SSID = self->_SSID;
  v60 = v50;
  v61 = [(NSString *)SSID UTF8String];
  if (v61)
  {
    xpc_dictionary_set_string(v60, "wsd", v61);
  }

  SSIDPrefix = self->_SSIDPrefix;
  v63 = v60;
  v64 = [(NSString *)SSIDPrefix UTF8String];
  if (v64)
  {
    xpc_dictionary_set_string(v63, "wsP", v64);
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  xdict = v63;
  v66 = [(NSString *)wifiAwareServiceName UTF8String];
  if (v66)
  {
    xpc_dictionary_set_string(xdict, "wASn", v66);
  }

  wifiAwareServiceRole = self->_wifiAwareServiceRole;
  if (wifiAwareServiceRole)
  {
    xpc_dictionary_set_int64(xdict, "wASt", wifiAwareServiceRole);
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  CUXPCEncodeObject();
  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  CUXPCEncodeObject();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_supportedOptions;
  *(v5 + 8) = self->_bluetoothCompanyIdentifier;
  v6 = [(NSData *)self->_bluetoothManufacturerDataBlob copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_bluetoothManufacturerDataMask copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 40) = self->_bluetoothNameSubstringCompareOptions;
  v10 = [(NSString *)self->_bluetoothNameSubstring copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 56) = self->_bluetoothRange;
  v12 = [(NSData *)self->_bluetoothServiceDataBlob copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSData *)self->_bluetoothServiceDataMask copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(CBUUID *)self->_bluetoothServiceUUID copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_bonjourServiceName copyWithZone:a3];
  v19 = *(v5 + 136);
  *(v5 + 136) = v18;

  v20 = [(NSString *)self->_bonjourServiceType copyWithZone:a3];
  v21 = *(v5 + 144);
  *(v5 + 144) = v20;

  v22 = [(NSData *)self->_bonjourTXTRecordData copyWithZone:a3];
  v23 = *(v5 + 152);
  *(v5 + 152) = v22;

  v24 = [(NSString *)self->_SSID copyWithZone:a3];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSString *)self->_SSIDPrefix copyWithZone:a3];
  v27 = *(v5 + 96);
  *(v5 + 96) = v26;

  v28 = [(NSString *)self->_wifiAwareServiceName copyWithZone:a3];
  v29 = *(v5 + 104);
  *(v5 + 104) = v28;

  *(v5 + 112) = self->_wifiAwareServiceRole;
  v30 = [(ASPropertyCompareString *)self->_wifiAwareModelNameMatch copyWithZone:a3];
  v31 = *(v5 + 120);
  *(v5 + 120) = v30;

  v32 = [(ASPropertyCompareString *)self->_wifiAwareVendorNameMatch copyWithZone:a3];
  v33 = *(v5 + 128);
  *(v5 + 128) = v32;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v15 = 1;
    goto LABEL_12;
  }

  v6 = v4;
  if ([(ASDiscoveryDescriptor *)v6 isMemberOfClass:objc_opt_class()])
  {
    supportedOptions = self->_supportedOptions;
    if (supportedOptions == [(ASDiscoveryDescriptor *)v6 supportedOptions])
    {
      bluetoothCompanyIdentifier = self->_bluetoothCompanyIdentifier;
      if (bluetoothCompanyIdentifier == [(ASDiscoveryDescriptor *)v6 bluetoothCompanyIdentifier])
      {
        bluetoothManufacturerDataBlob = self->_bluetoothManufacturerDataBlob;
        v10 = [(ASDiscoveryDescriptor *)v6 bluetoothManufacturerDataBlob];
        v11 = bluetoothManufacturerDataBlob;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if ((v11 != 0) == (v12 == 0))
          {
            v15 = 0;
            v19 = v12;
LABEL_116:

            goto LABEL_117;
          }

          v14 = [(NSData *)v11 isEqual:v12];

          if (!v14)
          {
            v15 = 0;
LABEL_118:

            goto LABEL_10;
          }
        }

        bluetoothManufacturerDataMask = self->_bluetoothManufacturerDataMask;
        v18 = [(ASDiscoveryDescriptor *)v6 bluetoothManufacturerDataMask];
        v19 = bluetoothManufacturerDataMask;
        v20 = v18;
        v11 = v20;
        if (v19 == v20)
        {
        }

        else
        {
          if ((v19 != 0) == (v20 == 0))
          {
            v15 = 0;
            p_isa = &v20->super.isa;
LABEL_115:

            goto LABEL_116;
          }

          v21 = [(NSData *)v19 isEqual:v20];

          if (!v21)
          {
            goto LABEL_25;
          }
        }

        bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
        if (bluetoothNameSubstringCompareOptions != [(ASDiscoveryDescriptor *)v6 bluetoothNameSubstringCompareOptions])
        {
LABEL_25:
          v15 = 0;
LABEL_117:

          goto LABEL_118;
        }

        bluetoothNameSubstring = self->_bluetoothNameSubstring;
        v24 = [(ASDiscoveryDescriptor *)v6 bluetoothNameSubstring];
        p_isa = bluetoothNameSubstring;
        v26 = v24;
        v19 = v26;
        if (p_isa == v26)
        {
        }

        else
        {
          if ((p_isa != 0) == (v26 == 0))
          {
            v15 = 0;
            v31 = v26;
LABEL_114:

            goto LABEL_115;
          }

          v27 = [(NSString *)p_isa isEqual:v26];

          if (!v27)
          {
            goto LABEL_33;
          }
        }

        bluetoothRange = self->_bluetoothRange;
        if (bluetoothRange != [(ASDiscoveryDescriptor *)v6 bluetoothRange])
        {
LABEL_33:
          v15 = 0;
          goto LABEL_116;
        }

        bluetoothServiceDataBlob = self->_bluetoothServiceDataBlob;
        v30 = [(ASDiscoveryDescriptor *)v6 bluetoothServiceDataBlob];
        v31 = bluetoothServiceDataBlob;
        v32 = v30;
        p_isa = &v32->super.isa;
        if (v31 == v32)
        {
        }

        else
        {
          if ((v31 != 0) == (v32 == 0))
          {
            v15 = 0;
            v36 = v32;
LABEL_113:

            goto LABEL_114;
          }

          v33 = [(NSData *)v31 isEqual:v32];

          if (!v33)
          {
            v15 = 0;
            goto LABEL_115;
          }
        }

        bluetoothServiceDataMask = self->_bluetoothServiceDataMask;
        v35 = [(ASDiscoveryDescriptor *)v6 bluetoothServiceDataMask];
        v36 = bluetoothServiceDataMask;
        v37 = v35;
        v31 = v37;
        if (v36 == v37)
        {
        }

        else
        {
          if ((v36 != 0) == (v37 == 0))
          {
            v15 = 0;
            v44 = v37;
LABEL_112:

            goto LABEL_113;
          }

          v38 = [(NSData *)v36 isEqual:v37];

          if (!v38)
          {
            v15 = 0;
            goto LABEL_114;
          }
        }

        v39 = [(CBUUID *)self->_bluetoothServiceUUID data];
        v99 = [(ASDiscoveryDescriptor *)v6 bluetoothServiceUUID];
        v40 = [(NSData *)v99 data];
        v36 = v39;
        v41 = v40;
        v42 = v41;
        v98 = v41;
        if (v36 == v41)
        {
        }

        else
        {
          if ((v36 != 0) == (v41 == 0))
          {
            v15 = 0;
            v97 = v36;
            v44 = v99;
LABEL_109:

            goto LABEL_110;
          }

          v43 = v41;
          v96 = [(NSData *)v36 isEqual:v41];

          if (!v96)
          {
            v15 = 0;
            v44 = v99;
LABEL_111:

            goto LABEL_112;
          }
        }

        v94 = v36;
        bonjourServiceName = self->_bonjourServiceName;
        v46 = [(ASDiscoveryDescriptor *)v6 bonjourServiceName];
        v47 = bonjourServiceName;
        v48 = v46;
        v49 = v47;
        v50 = v48;
        v97 = v48;
        if (v49 == v48)
        {
          v52 = v49;
        }

        else
        {
          v95 = v49;
          if ((v49 != 0) == (v48 == 0))
          {
            v15 = 0;
            v92 = v48;
LABEL_59:
            v36 = v94;
            v44 = v99;
LABEL_107:

            goto LABEL_108;
          }

          v51 = [(NSString *)v49 isEqual:v48];

          if (!v51)
          {
            v15 = 0;
            v36 = v94;
            v44 = v99;
LABEL_110:

            goto LABEL_111;
          }
        }

        bonjourServiceType = self->_bonjourServiceType;
        v54 = [(ASDiscoveryDescriptor *)v6 bonjourServiceType];
        v55 = bonjourServiceType;
        v56 = v54;
        v57 = v56;
        v95 = v56;
        if (v55 == v56)
        {
        }

        else
        {
          v92 = v55;
          if ((v55 != 0) == (v56 == 0))
          {
            v15 = 0;
            v36 = v94;
            v44 = v99;
LABEL_106:

            goto LABEL_107;
          }

          v58 = v55;
          v59 = v57;
          v60 = [(NSString *)v58 isEqual:v57];

          if (!v60)
          {
            v15 = 0;
            v36 = v94;
            v44 = v99;
LABEL_108:
            v42 = v95;
            goto LABEL_109;
          }
        }

        bonjourTXTRecordData = self->_bonjourTXTRecordData;
        v93 = [(ASDiscoveryDescriptor *)v6 bonjourTXTRecordData];
        v62 = bonjourTXTRecordData;
        v63 = v93;
        v64 = v63;
        v92 = &v63->super.isa;
        if (v62 == v63)
        {
        }

        else
        {
          v91 = v62;
          if ((v62 != 0) == (v63 == 0))
          {
            v15 = 0;
LABEL_104:

            goto LABEL_105;
          }

          v89 = [(NSData *)v62 isEqual:v63];

          if (!v89)
          {
            v15 = 0;
            goto LABEL_59;
          }
        }

        SSID = self->_SSID;
        v66 = [(ASDiscoveryDescriptor *)v6 SSID];
        v67 = SSID;
        v68 = v66;
        v91 = v68;
        if (v67 == v68)
        {
        }

        else
        {
          v90 = v67;
          if ((v67 != 0) == (v68 == 0))
          {
            v15 = 0;
            v72 = v68;
LABEL_102:

            goto LABEL_103;
          }

          v85 = [(NSString *)v67 isEqual:v68];

          if (!v85)
          {
            v15 = 0;
LABEL_105:
            v36 = v94;
            v44 = v99;
            v57 = v91;
            goto LABEL_106;
          }
        }

        SSIDPrefix = self->_SSIDPrefix;
        v70 = [(ASDiscoveryDescriptor *)v6 SSIDPrefix];
        v71 = SSIDPrefix;
        v90 = v70;
        v72 = v71;
        if (v71 == v90)
        {
        }

        else
        {
          if ((v71 != 0) == (v90 == 0))
          {
            v15 = 0;

            goto LABEL_102;
          }

          v86 = [(NSString *)v71 isEqual:v90];

          if (!v86)
          {
            goto LABEL_84;
          }
        }

        wifiAwareServiceRole = self->_wifiAwareServiceRole;
        if (wifiAwareServiceRole != [(ASDiscoveryDescriptor *)v6 wifiAwareServiceRole])
        {
LABEL_84:
          v15 = 0;
LABEL_103:
          v64 = v90;
          goto LABEL_104;
        }

        wifiAwareServiceName = self->_wifiAwareServiceName;
        v75 = [(ASDiscoveryDescriptor *)v6 wifiAwareServiceName];
        v76 = wifiAwareServiceName;
        v77 = v75;
        v72 = v77;
        v87 = v76;
        if (v76 == v77)
        {
        }

        else
        {
          if ((v76 != 0) == (v77 == 0))
          {
            v15 = 0;

            goto LABEL_101;
          }

          v83 = [(NSString *)v76 isEqual:v77];

          if (!v83)
          {
            v15 = 0;
            goto LABEL_102;
          }
        }

        wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
        v88 = [(ASDiscoveryDescriptor *)v6 wifiAwareModelNameMatch];
        v84 = wifiAwareModelNameMatch;
        v87 = v88;
        if (v84 == v87)
        {
        }

        else
        {
          if ((v84 != 0) == (v87 == 0))
          {
            v15 = 0;
            v81 = v87;
LABEL_100:

            goto LABEL_101;
          }

          v82 = [(ASPropertyCompareString *)v84 isEqual:v87];

          if (!v82)
          {
            v15 = 0;
LABEL_101:

            goto LABEL_102;
          }
        }

        wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
        v80 = [(ASDiscoveryDescriptor *)v6 wifiAwareVendorNameMatch];
        v81 = wifiAwareVendorNameMatch;
        v84 = v80;
        if (v81 == v84)
        {
          v15 = 1;
        }

        else if ((v81 != 0) == (v84 == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = [(ASPropertyCompareString *)v81 isEqual:v84];
        }

        goto LABEL_100;
      }
    }
  }

  v15 = 0;
LABEL_10:

LABEL_12:
  return v15;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  if (self->_supportedOptions)
  {
    v43 = CUPrintFlags64();
    CUAppendF();
    v5 = v4;

    v4 = v5;
  }

  if (self->_bluetoothCompanyIdentifier)
  {
    bluetoothCompanyIdentifier = self->_bluetoothCompanyIdentifier;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  bluetoothManufacturerDataBlob = self->_bluetoothManufacturerDataBlob;
  if (bluetoothManufacturerDataBlob)
  {
    v45 = bluetoothManufacturerDataBlob;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  bluetoothManufacturerDataMask = self->_bluetoothManufacturerDataMask;
  if (bluetoothManufacturerDataMask)
  {
    v46 = bluetoothManufacturerDataMask;
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  if (self->_bluetoothNameSubstringCompareOptions)
  {
    bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
    CUAppendF();
    v11 = v4;

    v4 = v11;
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  if (bluetoothNameSubstring)
  {
    v48 = bluetoothNameSubstring;
    CUAppendF();
    v13 = v4;

    v4 = v13;
  }

  if (self->_bluetoothRange)
  {
    CUAppendF();
    v14 = v4;

    v4 = v14;
  }

  bluetoothServiceUUID = self->_bluetoothServiceUUID;
  if (bluetoothServiceUUID)
  {
    v49 = bluetoothServiceUUID;
    CUAppendF();
    v16 = v4;

    v4 = v16;
  }

  bluetoothServiceDataBlob = self->_bluetoothServiceDataBlob;
  if (bluetoothServiceDataBlob)
  {
    v50 = bluetoothServiceDataBlob;
    CUAppendF();
    v18 = v4;

    v4 = v18;
  }

  bluetoothServiceDataMask = self->_bluetoothServiceDataMask;
  if (bluetoothServiceDataMask)
  {
    v51 = bluetoothServiceDataMask;
    CUAppendF();
    v20 = v4;

    v4 = v20;
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    v52 = bonjourServiceName;
    CUAppendF();
    v22 = v4;

    v4 = v22;
  }

  bonjourServiceType = self->_bonjourServiceType;
  if (bonjourServiceType)
  {
    v53 = bonjourServiceType;
    CUAppendF();
    v24 = v4;

    v4 = v24;
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = bonjourTXTRecordData;
    v54 = [v26 numberWithUnsignedInteger:{-[NSData length](v27, "length")}];
    CUAppendF();
    v28 = v4;

    v4 = v28;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v55 = SSID;
    CUAppendF();
    v30 = v4;

    v4 = v30;
  }

  SSIDPrefix = self->_SSIDPrefix;
  if (SSIDPrefix)
  {
    v56 = SSIDPrefix;
    CUAppendF();
    v32 = v4;

    v4 = v32;
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    v57 = wifiAwareServiceName;
    CUAppendF();
    v34 = v4;

    v4 = v34;
  }

  if (self->_wifiAwareServiceRole)
  {
    CUAppendF();
    v35 = v4;

    v4 = v35;
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  if (wifiAwareModelNameMatch)
  {
    v58 = wifiAwareModelNameMatch;
    CUAppendF();
    v37 = v4;

    v4 = v37;
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    v59 = wifiAwareVendorNameMatch;
    CUAppendF();
    v39 = v4;

    v4 = v39;
  }

  v40 = &stru_28499D698;
  if (v4)
  {
    v40 = v4;
  }

  v41 = v40;

  return v41;
}

- (unint64_t)hash
{
  bluetoothCompanyIdentifier = self->_bluetoothCompanyIdentifier;
  supportedOptions = self->_supportedOptions;
  bluetoothManufacturerDataBlob = self->_bluetoothManufacturerDataBlob;
  v6 = supportedOptions ^ bluetoothCompanyIdentifier ^ 0x13;
  if (bluetoothManufacturerDataBlob)
  {
    v6 ^= [(NSData *)bluetoothManufacturerDataBlob hash];
  }

  bluetoothManufacturerDataMask = self->_bluetoothManufacturerDataMask;
  if (bluetoothManufacturerDataMask)
  {
    v6 ^= [(NSData *)bluetoothManufacturerDataMask hash];
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  v9 = self->_bluetoothNameSubstringCompareOptions ^ v6;
  if (bluetoothNameSubstring)
  {
    v9 ^= [(NSString *)bluetoothNameSubstring hash];
  }

  v10 = self->_bluetoothRange ^ v9;
  bluetoothServiceUUID = self->_bluetoothServiceUUID;
  if (bluetoothServiceUUID)
  {
    v10 ^= [(CBUUID *)bluetoothServiceUUID hash];
  }

  bluetoothServiceDataBlob = self->_bluetoothServiceDataBlob;
  if (bluetoothServiceDataBlob)
  {
    v10 ^= [(NSData *)bluetoothServiceDataBlob hash];
  }

  bluetoothServiceDataMask = self->_bluetoothServiceDataMask;
  if (bluetoothServiceDataMask)
  {
    v10 ^= [(NSData *)bluetoothServiceDataMask hash];
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    v10 ^= [(NSString *)bonjourServiceName hash];
  }

  bonjourServiceType = self->_bonjourServiceType;
  if (bonjourServiceType)
  {
    v10 ^= [(NSString *)bonjourServiceType hash];
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v10 ^= [(NSData *)bonjourTXTRecordData hash];
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v10 ^= [(NSString *)SSID hash];
  }

  SSIDPrefix = self->_SSIDPrefix;
  if (SSIDPrefix)
  {
    v10 ^= [(NSString *)SSIDPrefix hash];
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    v10 ^= [(NSString *)wifiAwareServiceName hash];
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  v21 = self->_wifiAwareServiceRole ^ v10;
  if (wifiAwareModelNameMatch)
  {
    v21 ^= [(ASPropertyCompareString *)wifiAwareModelNameMatch hash];
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    v21 ^= [(ASPropertyCompareString *)wifiAwareVendorNameMatch hash];
  }

  return v21;
}

- (void)initWithDiscoveryConfiguration:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v4 = [a1 bluetoothServices];
  v5 = [v4 firstObject];

  v6 = [a1 bluetoothCompanyIdentifiers];
  v7 = [v6 firstObject];
  v8 = [v7 unsignedShortValue];

  if (([a1 flags] & 2) != 0)
  {
    *(a2 + 16) |= 2uLL;
  }

  if (([a1 flags] & 4) != 0)
  {
    *(a2 + 16) |= 4uLL;
  }

  if (([a1 flags] & 0x20) != 0)
  {
    *(a2 + 16) |= 8uLL;
  }

  *(a2 + 8) = v8;
  v9 = [a1 bluetoothCompanyPayload];
  v10 = *(a2 + 24);
  *(a2 + 24) = v9;

  v11 = [a1 bluetoothCompanyPayloadMask];
  v12 = *(a2 + 32);
  *(a2 + 32) = v11;

  *(a2 + 40) = [a1 bluetoothNameSubstringCompareOptions];
  v13 = [a1 bluetoothNameSubstring];
  v14 = *(a2 + 48);
  *(a2 + 48) = v13;

  *(a2 + 56) = [a1 bluetoothRange];
  v15 = [a1 bluetoothServicePayload];
  v16 = *(a2 + 64);
  *(a2 + 64) = v15;

  v17 = [a1 bluetoothServicePayloadMask];
  v18 = *(a2 + 72);
  *(a2 + 72) = v17;

  v19 = *(a2 + 80);
  *(a2 + 80) = v5;
  v20 = v5;

  v21 = [a1 bonjourServiceName];
  v22 = *(a2 + 136);
  *(a2 + 136) = v21;

  v23 = [a1 bonjourServiceTypes];
  v24 = [v23 firstObject];
  v25 = *(a2 + 144);
  *(a2 + 144) = v24;

  v26 = [a1 bonjourTXTRecordData];
  v27 = *(a2 + 152);
  *(a2 + 152) = v26;

  v28 = [a1 hotspotSSIDs];
  v29 = [v28 firstObject];
  v30 = *(a2 + 88);
  *(a2 + 88) = v29;

  v31 = [a1 hotspotSSIDPrefixes];
  v32 = [v31 firstObject];
  v33 = *(a2 + 96);
  *(a2 + 96) = v32;

  v34 = [a1 wifiAwareServiceName];
  v35 = *(a2 + 104);
  *(a2 + 104) = v34;

  *(a2 + 112) = [a1 wifiAwareServiceType];
  v36 = [a1 wifiAwareModelNameMatch];
  v49 = [v36 string];

  v37 = [a1 wifiAwareVendorNameMatch];
  v38 = [v37 string];

  v39 = [ASPropertyCompareString alloc];
  v40 = [a1 wifiAwareModelNameMatch];
  v41 = -[ASPropertyCompareString initWithString:compareOptions:](v39, "initWithString:compareOptions:", v49, [v40 compareOptions]);

  v42 = [ASPropertyCompareString alloc];
  v43 = [a1 wifiAwareVendorNameMatch];
  v44 = -[ASPropertyCompareString initWithString:compareOptions:](v42, "initWithString:compareOptions:", v38, [v43 compareOptions]);

  v45 = *(a2 + 120);
  *(a2 + 120) = v41;
  v46 = v41;

  v47 = *(a2 + 128);
  *(a2 + 128) = v44;

  v48 = a2;
}

@end