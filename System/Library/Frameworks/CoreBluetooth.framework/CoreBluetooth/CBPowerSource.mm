@interface CBPowerSource
- (BOOL)combinedPublish;
- (BOOL)hasAllComponents;
- (BOOL)isAggregateComponent;
- (BOOL)isAppleDevice;
- (CBPowerSource)init;
- (CBPowerSource)initWithCoder:(id)coder;
- (CBPowerSource)initWithDictionary:(id)dictionary error:(id *)error;
- (CBPowerSource)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (id)dictionaryRepresentation;
- (int)publish;
- (uint64_t)dictionaryRepresentation;
- (unsigned)_updateAggregateWithComponent:(id)component;
- (unsigned)updateWithCBPowerSource:(id)source;
- (void)_setPartName;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)releaseSource;
- (void)removeBatteryInfo;
- (void)removeFlags;
- (void)updatePartID;
@end

@implementation CBPowerSource

- (BOOL)isAggregateComponent
{
  v2 = self->_partID - 1;
  if (v2 < 4u)
  {
    accessoryCategory = 0xEu >> (v2 & 0xF);
    return accessoryCategory & 1;
  }

  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory == 1)
  {
    return accessoryCategory & 1;
  }

  return accessoryCategory == 4 && self->_groupID != 0;
}

- (void)_setPartName
{
  if (!self->_partName && self->_name && [(CBPowerSource *)self isAggregateComponent]&& self->_partID - 2 <= 2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", self->_name, off_1E811E058[(self->_partID - 2)]];
    partName = self->_partName;
    self->_partName = v3;

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)description
{
  internalFlags = self->_internalFlags;
  v100 = 0;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  if ((internalFlags & 8) != 0)
  {
    v99 = v4;
    NSAppendPrintF_safe();
    v6 = v99;

    v5 = v6;
  }

  v7 = self->_name;
  v8 = v7;
  if (v7)
  {
    v98 = v5;
    v77 = v7;
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  sourceID = self->_sourceID;
  if (sourceID)
  {
    v97 = v5;
    v77 = sourceID;
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  accessoryCategory = self->_accessoryCategory;
  if (self->_accessoryCategory)
  {
    v96 = v5;
    if (accessoryCategory > 0xC)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = *(&off_1E811DF98 + accessoryCategory - 1);
    }

    v77 = v13;
    NSAppendPrintF_safe();
    v14 = v96;

    v5 = v14;
  }

  v15 = self->_accessoryID;
  v16 = v15;
  if (v15)
  {
    v95 = v5;
    v77 = v15;
    NSAppendPrintF_safe();
    v17 = v5;

    v5 = v17;
  }

  v18 = self->_groupID;
  v19 = v18;
  if (v18)
  {
    v94 = v5;
    v77 = v18;
    NSAppendPrintF_safe();
    v20 = v5;

    v5 = v20;
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    v93 = v5;
    v77 = familyCode;
    NSAppendPrintF_safe();
    v22 = v5;

    v5 = v22;
  }

  partID = self->_partID;
  if (self->_partID)
  {
    v92 = v5;
    if (partID > 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = off_1E811E028[partID - 1];
    }

    v77 = v24;
    NSAppendPrintF_safe();
    v25 = v92;

    v5 = v25;
  }

  productID = self->_productID;
  if (productID)
  {
    v91 = v5;
    if (productID <= 21759)
    {
      switch(productID)
      {
        case 8194:
          v27 = "AirPods1,1";
          goto LABEL_89;
        case 8195:
          v27 = "PowerBeats3,1";
          goto LABEL_89;
        case 8196:
        case 8199:
        case 8200:
        case 8225:
        case 8226:
        case 8227:
        case 8234:
        case 8235:
        case 8236:
        case 8237:
        case 8238:
          goto LABEL_47;
        case 8197:
          v27 = "BeatsX1,1";
          goto LABEL_89;
        case 8198:
          v27 = "BeatsSolo3,1";
          goto LABEL_89;
        case 8201:
          v27 = "BeatsStudio3,2";
          goto LABEL_89;
        case 8202:
          v27 = "Device1,8202";
          goto LABEL_89;
        case 8203:
          v27 = "PowerbeatsPro1,1";
          goto LABEL_89;
        case 8204:
          v27 = "BeatsSoloPro1,1";
          goto LABEL_89;
        case 8205:
          v27 = "Powerbeats4,1";
          goto LABEL_89;
        case 8206:
          v27 = "AirPodsPro1,1";
          goto LABEL_89;
        case 8207:
          v27 = "AirPods1,3";
          goto LABEL_89;
        case 8208:
          v27 = "Device1,8208";
          goto LABEL_89;
        case 8209:
          v27 = "BeatsStudioBuds1,1";
          goto LABEL_89;
        case 8210:
          v27 = "Device1,8210";
          goto LABEL_89;
        case 8211:
          v27 = "Device1,8211";
          goto LABEL_89;
        case 8212:
          v27 = "Device1,8212";
          goto LABEL_89;
        case 8213:
          v27 = "Device1,8213";
          goto LABEL_89;
        case 8214:
          v27 = "BeatsStudioBuds1,2";
          goto LABEL_89;
        case 8215:
          v27 = "BeatsStudioPro1,1";
          goto LABEL_89;
        case 8216:
          v27 = "Device1,8216";
          goto LABEL_89;
        case 8217:
          v27 = "Device1,8217";
          goto LABEL_89;
        case 8218:
          v27 = "Device1,8218";
          goto LABEL_89;
        case 8219:
          v27 = "Device1,8219";
          goto LABEL_89;
        case 8220:
          v27 = "Device1,8220";
          goto LABEL_89;
        case 8221:
          v27 = "Powerb3,1";
          goto LABEL_89;
        case 8222:
          v27 = "Device1,8222";
          goto LABEL_89;
        case 8223:
          v27 = "Device1,8223";
          goto LABEL_89;
        case 8224:
          v27 = "Device1,8224";
          goto LABEL_89;
        case 8228:
          v27 = "Device1,8228";
          goto LABEL_89;
        case 8229:
          v27 = "Device1,8229";
          goto LABEL_89;
        case 8230:
          v27 = "Device1,8230";
          goto LABEL_89;
        case 8231:
          v27 = "AirPods3,4";
          goto LABEL_89;
        case 8232:
          v27 = "Device1,8232";
          goto LABEL_89;
        case 8233:
          v27 = "Device1,8233";
          goto LABEL_89;
        case 8239:
          v27 = "Device1,8239";
          goto LABEL_89;
        default:
          if (productID == 614)
          {
            v27 = "ATVRemote1,1";
          }

          else
          {
            if (productID != 621)
            {
              goto LABEL_47;
            }

            v27 = "ATVRemote1,2";
          }

          break;
      }

      goto LABEL_89;
    }

    if (productID > 28943)
    {
      if (productID <= 29714)
      {
        if (productID == 28944)
        {
          v27 = "AudioAccessory1,2";
          goto LABEL_89;
        }

        if (productID == 29455)
        {
          v27 = "AppleTV11,1";
          goto LABEL_89;
        }
      }

      else
      {
        switch(productID)
        {
          case 0x7413:
            v27 = "AudioAccessory5,1";
            goto LABEL_89;
          case 0xFFFD:
            v27 = "HeGn";
            goto LABEL_89;
          case 0xFFFE:
            v27 = "ApGn";
            goto LABEL_89;
        }
      }
    }

    else if (productID <= 28419)
    {
      if (productID == 21760)
      {
        v27 = "Device1,21760";
        goto LABEL_89;
      }

      if (productID == 22034)
      {
        v27 = "Device1,22034";
        goto LABEL_89;
      }
    }

    else
    {
      switch(productID)
      {
        case 0x6F04:
          v27 = "AppleTV5,3";
          goto LABEL_89;
        case 0x7108:
          v27 = "AppleTV6,2";
          goto LABEL_89;
        case 0x710F:
          v27 = "AudioAccessory1,1";
LABEL_89:
          v77 = productID;
          v79 = v27;
          NSAppendPrintF_safe();
          v28 = v91;

          v5 = v28;
          goto LABEL_90;
      }
    }

LABEL_47:
    v27 = "?";
    goto LABEL_89;
  }

LABEL_90:
  vendorID = self->_vendorID;
  if (!self->_vendorID)
  {
    goto LABEL_106;
  }

  v90 = v5;
  v30 = "Apple";
  if (vendorID > 300)
  {
    if (vendorID > 1451)
    {
      if (vendorID == 1452)
      {
        goto LABEL_105;
      }

      if (vendorID == 2956)
      {
        v30 = "SmartTech";
        goto LABEL_105;
      }
    }

    else if (vendorID == 301 || vendorID == 1356)
    {
      v30 = "Sony";
      goto LABEL_105;
    }

LABEL_104:
    v30 = "?";
    goto LABEL_105;
  }

  if (vendorID == 6)
  {
    v30 = "MS";
    goto LABEL_105;
  }

  if (vendorID != 76)
  {
    if (vendorID == 196)
    {
      v30 = "LG";
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_105:
  v77 = vendorID;
  v79 = v30;
  NSAppendPrintF_safe();
  v31 = v90;

  v5 = v31;
LABEL_106:
  vendorIDSource = self->_vendorIDSource;
  if (self->_vendorIDSource)
  {
    v33 = "?";
    if (vendorIDSource == 1)
    {
      v33 = "Bluetooth";
    }

    if (vendorIDSource == 2)
    {
      v34 = "USB";
    }

    else
    {
      v34 = v33;
    }

    v89 = v5;
    v77 = v34;
    NSAppendPrintF_safe();
    v35 = v5;

    v5 = v35;
  }

  temperature = self->_temperature;
  if (temperature)
  {
    v88 = v5;
    v77 = temperature;
    NSAppendPrintF_safe();
    v37 = v5;

    v5 = v37;
  }

  v38 = self->_type;
  v39 = v38;
  if (v38)
  {
    v87 = v5;
    v77 = v38;
    NSAppendPrintF_safe();
    v40 = v5;

    v5 = v40;
  }

  v41 = self->_transportType;
  v42 = v41;
  if (v41)
  {
    v86 = v5;
    v77 = v41;
    NSAppendPrintF_safe();
    v43 = v5;

    v5 = v43;
  }

  if (self->_changeFlags)
  {
    v85 = v5;
    v77 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v44 = v5;

    v5 = v44;
  }

  if (self->_internalFlags)
  {
    v84 = v5;
    v77 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v45 = v5;

    v5 = v45;
  }

  if (self->_accessoryID)
  {
    v83 = v5;
    if (self->_present)
    {
      v46 = "yes";
    }

    else
    {
      v46 = "no";
    }

    v77 = v46;
    NSAppendPrintF_safe();
    v47 = v83;

    v5 = v47;
  }

  maxCapacity = self->_maxCapacity;
  if (maxCapacity)
  {
    v82[2] = v5;
    v77 = maxCapacity;
    NSAppendPrintF_safe();
    v49 = v5;

    v5 = v49;
  }

  if ([(CBPowerSource *)self isAggregateComponent:v77])
  {
    v82[1] = v5;
    [(CBPowerSource *)self isAggregateComponent];
    NSAppendPrintF_safe();
    v50 = v5;

    v5 = v50;
  }

  batteryInfo = self->_batteryInfo;
  if (self->_batteryInfo)
  {
    v52 = ((batteryInfo & 0x7F) / 100.0) * 100.0;
    v53 = (batteryInfo >> 8) & 7;
    if (v53 - 1 > 1)
    {
      v81 = v5;
      if (v53 > 5)
      {
        v55 = "?";
      }

      else
      {
        v55 = off_1E811DFF8[v53];
      }

      v80 = v55;
      v54 = &v81;
    }

    else
    {
      v82[0] = v5;
      v80 = v52;
      v54 = v82;
    }

    NSAppendPrintF_safe();
    v56 = *v54;

    v5 = v56;
  }

  if (self->_partID == 1)
  {
    hasAllComponents = [(CBPowerSource *)self hasAllComponents];
    v58 = @"N";
    if (hasAllComponents)
    {
      v58 = @"Y";
    }

    v78 = v58;
    NSAppendPrintF_safe();
    v59 = v5;

    v60 = 0;
    v61 = 1;
    v5 = v59;
    do
    {
      componentMap = self->_componentMap;
      v64 = v61;
      v65 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{v61, v78, v80}];
      v66 = [(NSMutableDictionary *)componentMap objectForKeyedSubscript:v65];

      if (v66)
      {
        if (v60)
        {
          NSAppendPrintF();
          v67 = v5;

          v5 = v67;
        }

        batteryInfo = [v66 batteryInfo];
        if (batteryInfo)
        {
          v69 = (batteryInfo >> 8) & 7;
          v70 = "";
          if (v69 == 2)
          {
            v70 = "-";
          }

          v71 = v69 == 1;
          v72 = "+";
          if (!v71)
          {
            v72 = v70;
          }

          if (v61 > 6u)
          {
            v73 = 0;
          }

          else
          {
            v73 = off_1E811E028[v61 - 1];
          }

          v80 = v72;
          v78 = v73;
          NSAppendPrintF_safe();
          v74 = v5;

          v5 = v74;
        }

        if ([v66 changeFlags])
        {
          v78 = CUPrintFlags32();
          NSAppendPrintF_safe();
          v62 = v5;

          v60 = 1;
          v5 = v62;
        }

        else
        {
          v60 = 1;
        }
      }

      ++v61;
    }

    while (v64 < 6);
  }

  v75 = v5;

  return v5;
}

- (void)removeFlags
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = self->_internalFlags & 8;
  self->_changeFlags = 0;
  self->_internalFlags = v2;
  if (self->_partID == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    allValues = [(NSMutableDictionary *)self->_componentMap allValues];
    v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v9 + 1) + 8 * v7++) removeFlags];
        }

        while (v5 != v7);
        v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(CBPowerSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = CBPowerSource;
  [(CBPowerSource *)&v3 dealloc];
}

- (void)invalidate
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CBPowerSource *)selfCopy releaseSource];
  if (selfCopy->_partID == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_componentMap allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          unsignedIntValue = [v8 unsignedIntValue];
          [v3 addObject:v8];
          [(CBPowerSource *)selfCopy invalidateComponentWithPartID:unsignedIntValue];
        }

        v5 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(NSMutableDictionary *)selfCopy->_componentMap setObject:0 forKeyedSubscript:*(*(&v15 + 1) + 8 * j), v15];
        }

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)releaseSource
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_psID)
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    psID = obj->_psID;
    IOPSReleasePowerSource();
    v2 = obj;
    obj->_psID = 0;
  }

  objc_sync_exit(v2);
}

- (CBPowerSource)init
{
  if (!self)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = 0;
    v4.super_class = CBPowerSource;
    return [(CBPowerSource *)&v4 init];
  }

  return self;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (self->_accessoryCategory)
  {
    xpc_dictionary_set_uint64(objectCopy, "aCat", self->_accessoryCategory);
  }

  accessoryID = self->_accessoryID;
  v7 = v5;
  uTF8String = [(NSString *)accessoryID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v7, "id", uTF8String);
  }

  appearanceValue = self->_appearanceValue;
  if (appearanceValue)
  {
    xpc_dictionary_set_uint64(v7, "aprV", appearanceValue);
  }

  if (self->_batteryInfo)
  {
    xpc_dictionary_set_uint64(v7, "batI", self->_batteryInfo);
  }

  v10 = self->_componentMap;
  v11 = v10;
  if (v10)
  {
    allValues = [(NSMutableDictionary *)v10 allValues];

    if (allValues)
    {
      allValues2 = [(NSMutableDictionary *)v11 allValues];
      CUXPCEncodeNSArrayOfObjects();
    }
  }

  if (self->_deviceType)
  {
    xpc_dictionary_set_uint64(v7, "dvTy", self->_deviceType);
  }

  familyCode = self->_familyCode;
  if (familyCode)
  {
    xpc_dictionary_set_int64(v7, "famC", familyCode);
  }

  groupID = self->_groupID;
  v16 = v7;
  uTF8String2 = [(NSString *)groupID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v16, "grID", uTF8String2);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(v16, "intF", internalFlags);
  }

  lowWarnLevel = self->_lowWarnLevel;
  if (lowWarnLevel)
  {
    xpc_dictionary_set_int64(v16, "lwLv", lowWarnLevel);
  }

  maxCapacity = self->_maxCapacity;
  if (maxCapacity != 0.0)
  {
    xpc_dictionary_set_double(v16, "mxCp", maxCapacity);
  }

  name = self->_name;
  v22 = v16;
  uTF8String3 = [(NSString *)name UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v22, "nm", uTF8String3);
  }

  if (self->_partID)
  {
    xpc_dictionary_set_uint64(v22, "ptID", self->_partID);
  }

  partName = self->_partName;
  v25 = v22;
  uTF8String4 = [(NSString *)partName UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v25, "ptNm", uTF8String4);
  }

  if (self->_present)
  {
    xpc_dictionary_set_BOOL(v25, "psPr", 1);
  }

  productID = self->_productID;
  if (productID)
  {
    xpc_dictionary_set_uint64(v25, "pid", productID);
  }

  sourceID = self->_sourceID;
  if (sourceID)
  {
    xpc_dictionary_set_int64(v25, "psID", sourceID);
  }

  temperature = self->_temperature;
  if (temperature)
  {
    xpc_dictionary_set_int64(v25, "pTmp", temperature);
  }

  transportType = self->_transportType;
  v31 = v25;
  uTF8String5 = [(NSString *)transportType UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v31, "hciT", uTF8String5);
  }

  type = self->_type;
  xdict = v31;
  uTF8String6 = [(NSString *)type UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(xdict, "pTyp", uTF8String6);
  }

  if (self->_vendorID)
  {
    xpc_dictionary_set_uint64(xdict, "vid", self->_vendorID);
  }

  if (self->_vendorIDSource)
  {
    xpc_dictionary_set_uint64(xdict, "vidS", self->_vendorIDSource);
  }
}

- (CBPowerSource)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:5];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"cbPS"];

  v9 = [(CBPowerSource *)self initWithDictionary:v8 error:0];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CBPowerSource)initWithDictionary:(id)dictionary error:(id *)error
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBPowerSource *)self initWithXPCObject:v12 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    CBErrorF(-6700, "CBPowerSource convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(CBPowerSource *)self dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [coderCopy encodeObject:dictionaryRepresentation forKey:@"cbPS"];
  }
}

- (BOOL)hasAllComponents
{
  if (self->_partID != 1)
  {
    return 1;
  }

  if (!self->_componentMap)
  {
    return 0;
  }

  v3 = [(CBPowerSource *)self componentWithPartID:2];
  v4 = [(CBPowerSource *)self componentWithPartID:3];
  v5 = [(CBPowerSource *)self componentWithPartID:4];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v3)
  {
    v9 = 0;
  }

  if (((1 << (LOBYTE(self->_productID) - 2)) & 0x207C7BB7FF9BLL) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (self->_productID - 8194 <= 0x2D)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (BOOL)isAppleDevice
{
  vendorID = self->_vendorID;
  if (vendorID == 1452)
  {
    return self->_vendorIDSource == 2;
  }

  if (vendorID == 76)
  {
    return self->_vendorIDSource == 1;
  }

  return 0;
}

- (void)removeBatteryInfo
{
  v13 = *MEMORY[0x1E69E9840];
  self->_batteryInfo = 0;
  if (self->_partID == 1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    allValues = [(NSMutableDictionary *)self->_componentMap allValues];
    v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v8 + 1) + 8 * v6++) setBatteryInfo:0];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updatePartID
{
  if ([(CBPowerSource *)self isAggregateComponent]&& self->_partID == 5 && self->_accessoryCategory == 4)
  {
    self->_partID = 4;
  }
}

- (int)publish
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_internalFlags & 8) == 0 && !selfCopy->_changeFlags)
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_39;
  }

  if (selfCopy->_partID == 1)
  {
    if ([(CBPowerSource *)selfCopy hasAllComponents]&& [(CBPowerSource *)selfCopy combinedPublish])
    {
      v3 = [(CBPowerSource *)selfCopy componentWithPartID:2];
      v4 = v3;
      if (v3)
      {
        [v3 releaseSource];
      }

      v5 = [(CBPowerSource *)selfCopy componentWithPartID:3];
      v6 = v5;
      if (v5)
      {
        [v5 releaseSource];
      }

      v7 = 1;
    }

    else
    {
      [(CBPowerSource *)selfCopy releaseSource];
      v8 = [(CBPowerSource *)selfCopy componentWithPartID:2];
      v9 = v8;
      if (v8)
      {
        [v8 setChangeFlags:{selfCopy->_changeFlags | objc_msgSend(v8, "changeFlags")}];
        [v9 publish];
      }

      v10 = [(CBPowerSource *)selfCopy componentWithPartID:3];
      v6 = v10;
      if (v10)
      {
        [v10 setChangeFlags:{selfCopy->_changeFlags | objc_msgSend(v10, "changeFlags")}];
        [v6 publish];
      }

      v7 = 0;
    }

    v11 = [(CBPowerSource *)selfCopy componentWithPartID:4];
    v12 = v11;
    if (v11)
    {
      [v11 setChangeFlags:{selfCopy->_changeFlags | objc_msgSend(v11, "changeFlags")}];
      [v12 publish];
    }

    if ((v7 & 1) == 0)
    {
LABEL_39:
      v13 = 0;
      goto LABEL_40;
    }
  }

  if (!selfCopy->_psID && (v13 = IOPSCreatePowerSource()) != 0)
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    dictionaryRepresentation = [(CBPowerSource *)selfCopy dictionaryRepresentation];
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    psID = selfCopy->_psID;
    v13 = IOPSSetPowerSourceDetails();
    if (v13 && gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

LABEL_40:
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)dictionaryRepresentation
{
  v60 = *MEMORY[0x1E69E9840];
  batteryInfo = self->_batteryInfo;
  if (self->_batteryInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = v4;
    v6 = @"Audio Battery Case";
    switch(self->_accessoryCategory)
    {
      case 0u:
        goto LABEL_16;
      case 1u:
        goto LABEL_15;
      case 2u:
        v6 = @"Battery Case";
        goto LABEL_15;
      case 3u:
        v6 = @"Game Controller";
        goto LABEL_15;
      case 4u:
        v6 = @"Headphone";
        goto LABEL_15;
      case 5u:
        v6 = @"Headset";
        goto LABEL_15;
      case 6u:
        v6 = @"HearingAid";
        goto LABEL_15;
      case 7u:
        v6 = @"Keyboard";
        goto LABEL_15;
      case 8u:
        v6 = @"Mouse";
        goto LABEL_15;
      case 9u:
        v6 = @"Pencil";
        goto LABEL_15;
      case 0xAu:
        v6 = @"Speaker";
        goto LABEL_15;
      case 0xBu:
        v6 = @"Trackpad";
        goto LABEL_15;
      case 0xCu:
        v6 = @"Watch";
        goto LABEL_15;
      default:
        v6 = @"Unknown";
LABEL_15:
        [v4 setObject:v6 forKeyedSubscript:@"Accessory Category"];
LABEL_16:
        accessoryID = self->_accessoryID;
        if (accessoryID)
        {
          [v5 setObject:accessoryID forKeyedSubscript:@"Accessory Identifier"];
        }

        if (self->_partID == 1 && [(CBPowerSource *)self hasAllComponents]&& [(CBPowerSource *)self combinedPublish])
        {
          v8 = [(CBPowerSource *)self componentWithPartID:2];
          v9 = v8;
          if (v8)
          {
            dictionaryRepresentation = [v8 dictionaryRepresentation];
            if (dictionaryRepresentation)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v11 addObject:dictionaryRepresentation];
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = [(CBPowerSource *)self componentWithPartID:3];
          v13 = v12;
          if (v12)
          {
            dictionaryRepresentation2 = [v12 dictionaryRepresentation];
            if (dictionaryRepresentation2)
            {
              if (!v11)
              {
                v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v11 addObject:dictionaryRepresentation2];
            }
          }

          if (v11)
          {
            [v5 setObject:v11 forKeyedSubscript:@"Combined Parts"];
          }
        }

        v15 = (batteryInfo >> 8) & 7;
        CFArrayGetTypeID();
        v16 = CFDictionaryGetTypedValue();
        v17 = v16;
        if (v16)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v18 = [v16 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v55;
            LODWORD(v21) = 100;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v55 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v23 = *(*(&v54 + 1) + 8 * i);
                v24 = NSDictionaryGetNSNumber();
                intValue = [v24 intValue];
                if (intValue >= v21)
                {
                  v21 = v21;
                }

                else
                {
                  v21 = intValue;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 100;
          }
        }

        else
        {
          v21 = (((batteryInfo & 0x7F) / 100.0) * 100.0);
        }

        v26 = [MEMORY[0x1E696AD98] numberWithInt:v21];
        [v5 setObject:v26 forKeyedSubscript:@"Current Capacity"];

        v27 = [MEMORY[0x1E696AD98] numberWithInt:v15 == 5];
        [v5 setObject:v27 forKeyedSubscript:@"Dynamic End of Charging Engaged"];

        groupID = self->_groupID;
        if (groupID)
        {
          [v5 setObject:groupID forKeyedSubscript:@"Group Identifier"];
        }

        v30 = v15 == 1 || v15 == 4;
        v31 = [MEMORY[0x1E696AD98] numberWithInt:v30];
        [v5 setObject:v31 forKeyedSubscript:@"Is Charging"];

        maxCapacity = self->_maxCapacity;
        if (maxCapacity <= 0.0)
        {
          v33 = v21 == 100;
        }

        else
        {
          v33 = maxCapacity == v21;
        }

        v34 = [MEMORY[0x1E696AD98] numberWithBool:v33];
        [v5 setObject:v34 forKeyedSubscript:@"Is Charged"];

        v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_present];
        [v5 setObject:v35 forKeyedSubscript:@"Is Present"];

        v36 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lowWarnLevel];
        [v5 setObject:v36 forKeyedSubscript:@"Low Warn Level"];

        v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxCapacity];
        [v5 setObject:v37 forKeyedSubscript:@"Max Capacity"];

        if ((self->_internalFlags & 8) != 0)
        {
          [v5 setObject:&unk_1F40209A8 forKeyedSubscript:@"Mock"];
        }

        name = self->_name;
        if (name)
        {
          [v5 setObject:name forKeyedSubscript:@"Name"];
        }

        v39 = [MEMORY[0x1E696AD98] numberWithInt:v15 == 4];
        [v5 setObject:v39 forKeyedSubscript:@"Optimized Battery Charging Engaged"];

        v40 = 0;
        partID = self->_partID;
        if (partID <= 2)
        {
          if (!self->_partID)
          {
            goto LABEL_80;
          }

          if (partID == 1)
          {
            v40 = @"Combined";
          }

          else if (partID == 2)
          {
            v40 = @"Left";
          }
        }

        else if (self->_partID > 4u)
        {
          if (partID == 5)
          {
            v40 = @"Other";
          }

          else if (partID == 6)
          {
            v40 = @"Single";
          }
        }

        else if (partID == 3)
        {
          v40 = @"Right";
        }

        else if (partID == 4)
        {
          v40 = @"Case";
        }

        [v5 setObject:v40 forKeyedSubscript:@"Part Identifier"];
LABEL_80:
        partName = self->_partName;
        if (partName)
        {
          [v5 setObject:partName forKeyedSubscript:@"Part Name"];
        }

        if (self->_productID)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          [v5 setObject:v43 forKeyedSubscript:@"Product ID"];
        }

        if (self->_sourceID)
        {
          v44 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v5 setObject:v44 forKeyedSubscript:@"Power Source ID"];
        }

        if (((v15 == 1) & ![(CBPowerSource *)self isAggregateComponent]) != 0)
        {
          v45 = @"AC Power";
        }

        else
        {
          v45 = @"Battery Power";
        }

        [v5 setObject:v45 forKeyedSubscript:@"Power Source State"];
        [v5 setObject:&unk_1F40209C0 forKeyedSubscript:@"Time to Full Charge"];
        if (self->_temperature)
        {
          v46 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v5 setObject:v46 forKeyedSubscript:@"Temperature"];
        }

        transportType = self->_transportType;
        if (transportType)
        {
          [v5 setObject:transportType forKeyedSubscript:@"Transport Type"];
        }

        type = self->_type;
        if (type)
        {
          [v5 setObject:type forKeyedSubscript:@"Type"];
        }

        if (self->_vendorID)
        {
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
          [v5 setObject:v49 forKeyedSubscript:@"Vendor ID"];
        }

        if (self->_vendorIDSource)
        {
          v50 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
          [v5 setObject:v50 forKeyedSubscript:@"Vendor ID Source"];
        }

        v51 = *MEMORY[0x1E69E9840];
        break;
    }
  }

  else
  {
    [(CBPowerSource *)self dictionaryRepresentation];
    v5 = v58;
    v53 = *MEMORY[0x1E69E9840];
  }

  return v5;
}

- (unsigned)updateWithCBPowerSource:(id)source
{
  v98 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  changeFlags = self->_changeFlags;
  if (![sourceCopy isAggregateComponent] || self->_partID != 1)
  {
    accessoryCategory = [sourceCopy accessoryCategory];
    if (accessoryCategory && accessoryCategory != self->_accessoryCategory)
    {
      self->_accessoryCategory = accessoryCategory;
      changeFlags |= 1u;
    }

    appearanceValue = [sourceCopy appearanceValue];
    if (appearanceValue && appearanceValue != self->_appearanceValue)
    {
      self->_appearanceValue = appearanceValue;
      changeFlags |= 1u;
    }

    accessoryID = [sourceCopy accessoryID];
    v10 = accessoryID;
    if (accessoryID)
    {
      accessoryID = self->_accessoryID;
      v12 = accessoryID;
      v13 = accessoryID;
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        if (!v13)
        {

          goto LABEL_21;
        }

        v15 = [(NSString *)v12 isEqual:v13];

        if ((v15 & 1) == 0)
        {
LABEL_21:
          objc_storeStrong(&self->_accessoryID, v10);
          changeFlags |= 1u;
          batteryInfo = [sourceCopy batteryInfo];
          if (self->_partID != 1)
          {
LABEL_22:
            if (batteryInfo == self->_batteryInfo)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

LABEL_17:
          v17 = ((batteryInfo & 0x7F) / 100.0);
          if (!v17 || 100 * v17 >= 100 * ((self->_batteryInfo & 0x7F) / 100.0))
          {
LABEL_24:
            groupID = [sourceCopy groupID];
            v19 = groupID;
            if (groupID)
            {
              groupID = self->_groupID;
              v21 = groupID;
              v22 = groupID;
              v23 = v22;
              if (v21 == v22)
              {
              }

              else
              {
                if (!v22)
                {

                  goto LABEL_55;
                }

                v24 = [(NSString *)v21 isEqual:v22];

                if ((v24 & 1) == 0)
                {
LABEL_55:
                  objc_storeStrong(&self->_groupID, v19);
                  changeFlags |= 1u;
                  internalFlags = [sourceCopy internalFlags];
                  if (internalFlags == self->_internalFlags)
                  {
LABEL_32:
                    lowWarnLevel = [sourceCopy lowWarnLevel];
                    lowWarnLevel = self->_lowWarnLevel;
                    v91 = v19;
                    v92 = v10;
                    if (lowWarnLevel)
                    {
                      if (lowWarnLevel == lowWarnLevel)
                      {
LABEL_38:
                        [sourceCopy maxCapacity];
                        v29 = changeFlags | 1;
                        v30 = maxCapacity > 0.0 && maxCapacity != self->_maxCapacity;
                        if (v30)
                        {
                          v31 = changeFlags | 1;
                        }

                        else
                        {
                          maxCapacity = self->_maxCapacity;
                          v31 = changeFlags;
                        }

                        if (v30 || maxCapacity <= 0.0)
                        {
                          if (maxCapacity <= 0.0)
                          {
                            maxCapacity = 100.0;
                          }

                          self->_maxCapacity = maxCapacity;
                        }

                        name = [sourceCopy name];
                        v33 = name;
                        if (name)
                        {
                          name = self->_name;
                          v35 = name;
                          v36 = name;
                          v37 = name;
                          v38 = v37;
                          if (v36 == v37)
                          {

                            v33 = v35;
                          }

                          else
                          {
                            if (!v37)
                            {

                              v33 = v35;
                              goto LABEL_58;
                            }

                            v39 = [(NSString *)v36 isEqual:v37];

                            v33 = v35;
                            if ((v39 & 1) == 0)
                            {
LABEL_58:
                              objc_storeStrong(&self->_name, v33);
                              v31 = v29;
                              partID = [sourceCopy partID];
                              if (!partID)
                              {
                                goto LABEL_61;
                              }

LABEL_59:
                              if (partID != self->_partID)
                              {
                                self->_partID = partID;
                                v31 = v29;
                              }

LABEL_61:
                              partName = [sourceCopy partName];
                              v42 = partName;
                              if (partName)
                              {
                                partName = self->_partName;
                                v44 = partName;
                                v45 = partName;
                                v46 = partName;
                                v47 = v46;
                                if (v45 == v46)
                                {
                                }

                                else
                                {
                                  if (!v46)
                                  {

                                    goto LABEL_73;
                                  }

                                  v48 = [(NSString *)v45 isEqual:v46];

                                  if ((v48 & 1) == 0)
                                  {
LABEL_73:
                                    v42 = v44;
                                    objc_storeStrong(&self->_partName, v44);
                                    v31 |= 1u;
                                    if (!self->_partName)
                                    {
LABEL_74:
                                      [(CBPowerSource *)self _setPartName];
                                      present = [sourceCopy present];
                                      if (self->_present != present)
                                      {
LABEL_75:
                                        self->_present = present;
                                        v31 |= 1u;
                                        productID = [sourceCopy productID];
                                        if (!productID)
                                        {
                                          goto LABEL_78;
                                        }

                                        goto LABEL_76;
                                      }

LABEL_70:
                                      productID = [sourceCopy productID];
                                      if (!productID)
                                      {
                                        goto LABEL_78;
                                      }

LABEL_76:
                                      if (productID != self->_productID)
                                      {
                                        self->_productID = productID;
                                        v31 |= 1u;
                                      }

LABEL_78:
                                      sourceID = [sourceCopy sourceID];
                                      if (sourceID && sourceID != self->_sourceID)
                                      {
                                        self->_sourceID = sourceID;
                                      }

                                      temperature = [sourceCopy temperature];
                                      if (temperature && temperature != self->_temperature)
                                      {
                                        self->_temperature = temperature;
                                        v31 |= 1u;
                                      }

                                      transportType = [sourceCopy transportType];
                                      v54 = transportType;
                                      if (transportType)
                                      {
                                        transportType = self->_transportType;
                                        v56 = transportType;
                                        v57 = transportType;
                                        v58 = v57;
                                        if (v56 != v57)
                                        {
                                          v59 = v33;
                                          v60 = v54;
                                          if (v57)
                                          {
                                            v61 = [(NSString *)v56 isEqual:v57];

                                            if (v61)
                                            {
                                              v54 = v60;
                                              goto LABEL_95;
                                            }
                                          }

                                          else
                                          {
                                          }

                                          v54 = v60;
                                          objc_storeStrong(&self->_transportType, v60);
                                          v31 |= 1u;
LABEL_95:
                                          v33 = v59;
                                          v62 = self->_transportType;
                                          if (!v62)
                                          {
LABEL_96:
                                            self->_transportType = @"Bluetooth";

                                            type = [sourceCopy type];
                                            if (!type)
                                            {
                                              goto LABEL_102;
                                            }

LABEL_97:
                                            type = self->_type;
                                            v65 = type;
                                            v66 = type;
                                            v67 = v66;
                                            if (v65 != v66)
                                            {
                                              v89 = v42;
                                              v68 = v33;
                                              v69 = v54;
                                              if (v66)
                                              {
                                                v70 = [(NSString *)v65 isEqual:v66];

                                                if (v70)
                                                {
LABEL_107:
                                                  v54 = v69;
                                                  v33 = v68;
                                                  v42 = v89;
                                                  v71 = self->_type;
                                                  if (!v71)
                                                  {
LABEL_108:
                                                    self->_type = @"Accessory Source";

                                                    vendorID = [sourceCopy vendorID];
                                                    if (!vendorID)
                                                    {
                                                      goto LABEL_111;
                                                    }

                                                    goto LABEL_109;
                                                  }

LABEL_103:
                                                  vendorID = [sourceCopy vendorID];
                                                  if (!vendorID)
                                                  {
                                                    goto LABEL_111;
                                                  }

LABEL_109:
                                                  if (vendorID != self->_vendorID)
                                                  {
                                                    self->_vendorID = vendorID;
                                                    v31 |= 1u;
                                                  }

LABEL_111:
                                                  vendorIDSource = [sourceCopy vendorIDSource];
                                                  if (vendorIDSource && vendorIDSource != self->_vendorIDSource)
                                                  {
                                                    self->_vendorIDSource = vendorIDSource;
                                                    v31 |= 1u;
                                                  }

                                                  if (((self->_batteryInfo == 0) & ((v31 & 2) >> 1)) != 0)
                                                  {
                                                    v6 = v31 | 0x10;
                                                  }

                                                  else
                                                  {
                                                    v6 = v31;
                                                  }

                                                  if ([sourceCopy partID] == 1 && self->_partID == 1)
                                                  {
                                                    v87 = v54;
                                                    v88 = v33;
                                                    v90 = v42;
                                                    v95 = 0u;
                                                    v96 = 0u;
                                                    v93 = 0u;
                                                    v94 = 0u;
                                                    components = [sourceCopy components];
                                                    allValues = [components allValues];

                                                    v76 = [allValues countByEnumeratingWithState:&v93 objects:v97 count:16];
                                                    if (v76)
                                                    {
                                                      v77 = v76;
                                                      v78 = *v94;
                                                      do
                                                      {
                                                        for (i = 0; i != v77; ++i)
                                                        {
                                                          if (*v94 != v78)
                                                          {
                                                            objc_enumerationMutation(allValues);
                                                          }

                                                          v80 = *(*(&v93 + 1) + 8 * i);
                                                          v81 = -[CBPowerSource componentWithPartID:](self, "componentWithPartID:", [v80 partID]);
                                                          v82 = v81;
                                                          if (v81)
                                                          {
                                                            [v81 setChangeFlags:0];
                                                          }

                                                          v6 |= [(CBPowerSource *)self _updateAggregateWithComponent:v80];
                                                        }

                                                        v77 = [allValues countByEnumeratingWithState:&v93 objects:v97 count:16];
                                                      }

                                                      while (v77);
                                                    }

                                                    v84 = v91;
                                                    v83 = v92;
                                                    v33 = v88;
                                                    v42 = v90;
                                                    v54 = v87;
                                                    self->_changeFlags = v6;
                                                    self->_present = (v6 & 0x10) == 0;
                                                    if (!v6)
                                                    {
                                                      goto LABEL_135;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v84 = v91;
                                                    v83 = v92;
                                                    self->_changeFlags = v6;
                                                    self->_present = (v6 & 0x10) == 0;
                                                    if (!v6)
                                                    {
LABEL_135:

                                                      goto LABEL_136;
                                                    }
                                                  }

                                                  if (![(CBPowerSource *)self isAggregateComponent]&& gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
                                                  {
                                                    [CBPowerSource updateWithCBPowerSource:];
                                                  }

                                                  goto LABEL_135;
                                                }
                                              }

                                              else
                                              {
                                              }

                                              objc_storeStrong(&self->_type, type);
                                              v31 |= 1u;
                                              goto LABEL_107;
                                            }

LABEL_102:
                                            v71 = self->_type;
                                            if (!v71)
                                            {
                                              goto LABEL_108;
                                            }

                                            goto LABEL_103;
                                          }

LABEL_91:
                                          type = [sourceCopy type];
                                          if (!type)
                                          {
                                            goto LABEL_102;
                                          }

                                          goto LABEL_97;
                                        }
                                      }

                                      v62 = self->_transportType;
                                      if (!v62)
                                      {
                                        goto LABEL_96;
                                      }

                                      goto LABEL_91;
                                    }

LABEL_69:
                                    present = [sourceCopy present];
                                    if (self->_present != present)
                                    {
                                      goto LABEL_75;
                                    }

                                    goto LABEL_70;
                                  }
                                }

                                v42 = v44;
                              }

                              if (!self->_partName)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_69;
                            }
                          }
                        }

                        partID = [sourceCopy partID];
                        if (!partID)
                        {
                          goto LABEL_61;
                        }

                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      if (lowWarnLevel)
                      {
                        goto LABEL_38;
                      }

                      lowWarnLevel = 20;
                    }

                    self->_lowWarnLevel = lowWarnLevel;
                    goto LABEL_38;
                  }

LABEL_31:
                  [(CBPowerSource *)self setInternalFlags:internalFlags];
                  goto LABEL_32;
                }
              }
            }

            internalFlags = [sourceCopy internalFlags];
            if (internalFlags == self->_internalFlags)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

LABEL_23:
          self->_batteryInfo = batteryInfo;
          changeFlags |= 2u;
          goto LABEL_24;
        }
      }
    }

    batteryInfo = [sourceCopy batteryInfo];
    if (self->_partID != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v6 = [(CBPowerSource *)self _updateAggregateWithComponent:sourceCopy];
LABEL_136:

  v85 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CBPowerSource)initWithXPCObject:(id)object error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v33.receiver = self;
  v33.super_class = CBPowerSource;
  v13 = [(CBPowerSource *)&v33 init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v30 = "CBPowerSource super init failed";
LABEL_58:
    CBErrorF(-6756, v30, v7, v8, v9, v10, v11, v12, v31);
    *error = v27 = 0;
    goto LABEL_52;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_59;
    }

    v30 = "XPC non-dict";
    goto LABEL_58;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v14 = OUTLINED_FUNCTION_4_0();
  if (v14 == 6)
  {
    v13->_accessoryCategory = v34;
  }

  else if (v14 == 5)
  {
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_59;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v15 = CUXPCDecodeUInt64RangedEx();
  if (v15 == 6)
  {
    v13->_appearanceValue = v34;
  }

  else if (v15 == 5)
  {
    goto LABEL_59;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v16 = OUTLINED_FUNCTION_4_0();
  if (v16 == 6)
  {
    v13->_batteryInfo = v34;
    goto LABEL_13;
  }

  if (v16 == 5)
  {
LABEL_59:
    v27 = 0;
    goto LABEL_52;
  }

LABEL_13:
  v32 = 0;
  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v17 = CUXPCDecodeUInt64RangedEx();
  if (v17 == 6)
  {
    v13->_deviceType = v34;
  }

  else if (v17 == 5)
  {
    goto LABEL_53;
  }

  v34 = 0;
  v18 = OUTLINED_FUNCTION_2_2();
  if (v18 == 6)
  {
    v13->_familyCode = v34;
  }

  else if (v18 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v19 = CUXPCDecodeUInt64RangedEx();
  if (v19 == 6)
  {
    v13->_internalFlags = v34;
  }

  else if (v19 == 5)
  {
    goto LABEL_53;
  }

  v34 = 0;
  v20 = OUTLINED_FUNCTION_2_2();
  if (v20 == 6)
  {
    v13->_lowWarnLevel = v34;
  }

  else if (v20 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v21 = OUTLINED_FUNCTION_4_0();
  if (v21 == 6)
  {
    v13->_partID = v34;
  }

  else if (v21 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_53;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v22 = CUXPCDecodeUInt64RangedEx();
  if (v22 == 6)
  {
    v13->_productID = v34;
  }

  else if (v22 == 5)
  {
    goto LABEL_53;
  }

  v34 = 0;
  v23 = OUTLINED_FUNCTION_2_2();
  if (v23 == 6)
  {
    v13->_sourceID = v34;
  }

  else if (v23 == 5)
  {
    goto LABEL_53;
  }

  v34 = 0;
  v24 = OUTLINED_FUNCTION_2_2();
  if (v24 == 6)
  {
    v13->_temperature = v34;
  }

  else if (v24 == 5)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_53;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v25 = OUTLINED_FUNCTION_4_0();
  if (v25 == 6)
  {
    v13->_vendorID = v34;
  }

  else if (v25 == 5)
  {
    goto LABEL_53;
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_1();
  v26 = CUXPCDecodeUInt64RangedEx();
  if (v26 != 6)
  {
    if (v26 != 5)
    {
      goto LABEL_50;
    }

LABEL_53:
    v27 = 0;
    goto LABEL_51;
  }

  v13->_vendorIDSource = v34;
LABEL_50:
  v27 = v13;
LABEL_51:

LABEL_52:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)combinedPublish
{
  if (self->_partID != 1)
  {
    return 0;
  }

  v3 = [(CBPowerSource *)self componentWithPartID:2];
  v4 = v3;
  if (v3)
  {
    if (![v3 batteryInfo])
    {

      return 0;
    }

    batteryInfo = [v4 batteryInfo];
  }

  else
  {
    batteryInfo = 0;
  }

  v6 = [(CBPowerSource *)self componentWithPartID:3];
  v7 = v6;
  if (!v6)
  {
    batteryInfo2 = 0;
    goto LABEL_10;
  }

  if (![v6 batteryInfo])
  {

    return 0;
  }

  batteryInfo2 = [v7 batteryInfo];
LABEL_10:

  v9 = OUTLINED_FUNCTION_7_0(batteryInfo & 0x7F);
  v11 = ((batteryInfo2 & 0x7F) / v10) * v10;
  if (v9 >= v11)
  {
    v12 = v9 - v11;
  }

  else
  {
    v12 = v11 - v9;
  }

  if ((((batteryInfo2 >> 8) ^ (batteryInfo >> 8)) & 7) != 0)
  {
    v13 = (((batteryInfo >> 8) & 5) == 1) ^ (((batteryInfo2 >> 8) & 5) != 1);
  }

  else
  {
    v13 = 1;
  }

  return v12 < 10.0 && v13;
}

- (unsigned)_updateAggregateWithComponent:(id)component
{
  v159 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  if (self->_partID != 1)
  {
    v108 = 0;
    goto LABEL_189;
  }

  if (!self->_componentMap)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    componentMap = self->_componentMap;
    self->_componentMap = v5;
  }

  v7 = componentCopy;
  if (![v7 partID])
  {
    if (gLogCategory_CBPowerSource <= 30 && (gLogCategory_CBPowerSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v108 = 0;
    goto LABEL_188;
  }

  [v7 updatePartID];
  changeFlags = self->_changeFlags;
  partID = [v7 partID];
  v10 = [(CBPowerSource *)self componentWithPartID:partID];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(CBPowerSource);
    [(CBPowerSource *)v11 setChangeFlags:[(CBPowerSource *)v11 changeFlags]| 8];
    changeFlags |= 4u;
  }

  v12 = [(CBPowerSource *)v11 updateWithCBPowerSource:v7];
  v13 = self->_componentMap;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:partID];
  [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v14];

  v15 = partID & 0xFFFE;
  accessoryCategory = [v7 accessoryCategory];
  if (accessoryCategory)
  {
    v17 = v15 != 2 || accessoryCategory == self->_accessoryCategory;
    v18 = v17;
    if (!self->_accessoryCategory || !v18)
    {
      self->_accessoryCategory = accessoryCategory;
      changeFlags |= 1u;
    }
  }

  accessoryID = [v7 accessoryID];
  v115 = v15;
  v114 = accessoryID;
  if (accessoryID)
  {
    v20 = accessoryID;
    accessoryID = self->_accessoryID;
    if (!accessoryID)
    {
      goto LABEL_23;
    }

    if (v15 == 2)
    {
      v13 = accessoryID;
      v22 = accessoryID;
      OUTLINED_FUNCTION_5_2();
      if (v17)
      {

        goto LABEL_24;
      }

      v23 = OUTLINED_FUNCTION_8_0();

      v20 = v114;
      if ((v23 & 1) == 0)
      {
LABEL_23:
        objc_storeStrong(&self->_accessoryID, v20);
        changeFlags |= 1u;
      }
    }
  }

LABEL_24:
  appearanceValue = [v7 appearanceValue];
  v116 = v7;
  if (appearanceValue && appearanceValue != self->_appearanceValue)
  {
    self->_appearanceValue = appearanceValue;
    changeFlags |= 1u;
  }

  v112 = v11;
  v113 = componentCopy;
  v25 = OUTLINED_FUNCTION_7_0(self->_batteryInfo & 0x7F);
  if (v25 >= 100)
  {
    v26 = 100;
  }

  else
  {
    v26 = v25;
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 100;
  }

  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  allValues = [(NSMutableDictionary *)self->_componentMap allValues];
  v29 = [allValues countByEnumeratingWithState:&v147 objects:v158 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v148;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v148 != v31)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v147 + 1) + 8 * i);
        if (([(NSMutableDictionary *)v13 changeFlags]& 0x10) == 0)
        {
          v33 = ((([(NSMutableDictionary *)v13 batteryInfo]& 0x7F) / 100.0) * 100.0);
          if (v27 >= v33)
          {
            v27 = v33;
          }
        }
      }

      v30 = [allValues countByEnumeratingWithState:&v147 objects:v158 count:16];
    }

    while (v30);
  }

  if (v27 == v25)
  {
    v7 = v116;
    v34 = changeFlags;
  }

  else
  {
    if (v27 >= 100)
    {
      v35 = 100;
    }

    else
    {
      v35 = v27;
    }

    self->_batteryInfo = self->_batteryInfo & 0x700 | v35 & ~(v35 >> 31);
    v34 = changeFlags | 1;
    v7 = v116;
  }

  deviceType = [v7 deviceType];
  if (deviceType && deviceType != self->_deviceType)
  {
    self->_deviceType = deviceType;
    v34 |= 1u;
  }

  v118 = v34;
  groupID = [v7 groupID];
  location = self;
  v111 = groupID;
  if (!groupID)
  {
    goto LABEL_78;
  }

  v38 = groupID;
  groupID = self->_groupID;
  v40 = groupID;
  v41 = groupID;
  v13 = v41;
  if (v40 == v41)
  {
  }

  else
  {
    if (v41)
    {
      allValues = [(NSMutableDictionary *)v40 isEqual:v41];

      if (allValues)
      {
        goto LABEL_78;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_groupID, v38);
    OUTLINED_FUNCTION_0_4();
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_componentMap allValues];
    v43 = [(NSMutableDictionary *)allValues2 countByEnumeratingWithState:&v143 objects:v157 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v144;
      while (1)
      {
        for (j = 0; j != v44; ++j)
        {
          OUTLINED_FUNCTION_4_2(v144);
          if (!v17)
          {
            objc_enumerationMutation(allValues2);
          }

          v47 = *(*(&v143 + 1) + 8 * j);
          changeFlags = [v47 changeFlags];
          if ((changeFlags & 0x10) == 0)
          {
            allValues = [v47 groupID];
            v13 = v40;
            v50 = allValues;
            OUTLINED_FUNCTION_5_2();
            if (v17)
            {

              continue;
            }

            if (!allValues)
            {

LABEL_71:
              [v47 setGroupID:v13];
              changeFlags = [v47 setChangeFlags:{objc_msgSend(v47, "changeFlags") | 1}];
              continue;
            }

            v51 = OUTLINED_FUNCTION_8_0();

            if ((v51 & 1) == 0)
            {
              goto LABEL_71;
            }
          }
        }

        v44 = OUTLINED_FUNCTION_9(changeFlags, v49, &v143, v157);
        if (!v44)
        {
          v40 = allValues2;
          v7 = v116;
          goto LABEL_76;
        }
      }
    }

    v40 = allValues2;
LABEL_76:
    self = location;
  }

LABEL_78:
  internalFlags = [v7 internalFlags];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  allValues3 = [(NSMutableDictionary *)self->_componentMap allValues];
  if ([allValues3 countByEnumeratingWithState:&v139 objects:v156 count:16])
  {
    v54 = *v140;
    do
    {
      OUTLINED_FUNCTION_4_2(v140);
      if (!v17)
      {
        objc_enumerationMutation(allValues3);
      }

      if ((OUTLINED_FUNCTION_10(*(&v139 + 1)) & 0x10) == 0)
      {
        internalFlags = [(NSMutableDictionary *)v13 internalFlags]| internalFlags;
      }

      OUTLINED_FUNCTION_6_0();
    }

    while (!v17 || OUTLINED_FUNCTION_9(v55, v56, &v139, v156));
  }

  if (internalFlags != self->_internalFlags)
  {
    [(CBPowerSource *)self setInternalFlags:internalFlags];
  }

  lowWarnLevel = [v7 lowWarnLevel];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  allValues4 = [(NSMutableDictionary *)self->_componentMap allValues];
  if ([allValues4 countByEnumeratingWithState:&v135 objects:v155 count:16])
  {
    v59 = *v136;
    do
    {
      OUTLINED_FUNCTION_4_2(v136);
      if (!v17)
      {
        objc_enumerationMutation(allValues4);
      }

      if ((OUTLINED_FUNCTION_10(*(&v135 + 1)) & 0x10) == 0 && [(NSMutableDictionary *)v13 lowWarnLevel]< lowWarnLevel)
      {
        lowWarnLevel = [(NSMutableDictionary *)v13 lowWarnLevel];
      }

      OUTLINED_FUNCTION_6_0();
    }

    while (!v17 || OUTLINED_FUNCTION_9(v60, v61, &v135, v155));
  }

  lowWarnLevel = self->_lowWarnLevel;
  if (lowWarnLevel)
  {
    if (lowWarnLevel != lowWarnLevel)
    {
      self->_lowWarnLevel = lowWarnLevel;
      OUTLINED_FUNCTION_0_4();
    }
  }

  else if (!lowWarnLevel)
  {
    self->_lowWarnLevel = 20;
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  allValues5 = [(NSMutableDictionary *)self->_componentMap allValues];
  if ([allValues5 countByEnumeratingWithState:&v131 objects:v154 count:16])
  {
    v64 = *v132;
    v65 = 2.22507386e-308;
    do
    {
      OUTLINED_FUNCTION_4_2(v132);
      if (!v17)
      {
        objc_enumerationMutation(allValues5);
      }

      if ((OUTLINED_FUNCTION_10(*(&v131 + 1)) & 0x10) == 0)
      {
        [(NSMutableDictionary *)v13 maxCapacity];
        if (v65 <= v66)
        {
          [(NSMutableDictionary *)v13 maxCapacity];
          v65 = v67;
        }
      }

      OUTLINED_FUNCTION_6_0();
    }

    while (!v17 || [allValues5 countByEnumeratingWithState:&v131 objects:v154 count:16]);

    if (v65 != 2.22507386e-308 && v65 != self->_maxCapacity)
    {
      self->_maxCapacity = v65;
      OUTLINED_FUNCTION_0_4();
    }
  }

  else
  {
  }

  name = [v7 name];
  v70 = name;
  if (!name)
  {
    goto LABEL_127;
  }

  name = self->_name;
  if (!name)
  {
    goto LABEL_125;
  }

  if (v115 == 2)
  {
    v13 = name;
    v72 = name;
    OUTLINED_FUNCTION_5_2();
    if (v17)
    {

      goto LABEL_126;
    }

    v73 = OUTLINED_FUNCTION_8_0();

    if ((v73 & 1) == 0)
    {
LABEL_125:
      objc_storeStrong(&self->_name, v70);
      OUTLINED_FUNCTION_0_4();
    }
  }

LABEL_126:
  v7 = v116;
LABEL_127:
  if (self->_partID != 1)
  {
    self->_partID = 1;
    OUTLINED_FUNCTION_0_4();
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  allValues6 = [(NSMutableDictionary *)self->_componentMap allValues];
  v75 = [allValues6 countByEnumeratingWithState:&v127 objects:v153 count:16];
  v76 = v75;
  if (v75)
  {
    v77 = *v128;
    while (1)
    {
      OUTLINED_FUNCTION_4_2(v128);
      if (!v17)
      {
        objc_enumerationMutation(allValues6);
      }

      if (([**(&v127 + 1) changeFlags] & 0x10) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_6_0();
      if (v17)
      {
        v80 = OUTLINED_FUNCTION_9(v78, v79, &v127, v153);
        v76 = v80;
        if (!v80)
        {
          goto LABEL_139;
        }
      }
    }

    v76 = 1;
  }

LABEL_139:

  if (self->_present != v76)
  {
    self->_present = v76;
    OUTLINED_FUNCTION_0_4();
  }

  if ([v7 partID] != 4)
  {
    productID = [v7 productID];
    if (productID)
    {
      if (productID != self->_productID)
      {
        self->_productID = productID;
        OUTLINED_FUNCTION_0_4();
      }
    }
  }

  if (self->_sourceID)
  {
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    allValues7 = [(NSMutableDictionary *)self->_componentMap allValues];
    if ([allValues7 countByEnumeratingWithState:&v123 objects:v152 count:16])
    {
      v83 = *v124;
      do
      {
        OUTLINED_FUNCTION_4_2(v124);
        if (!v17)
        {
          objc_enumerationMutation(allValues7);
        }

        if ((OUTLINED_FUNCTION_10(*(&v123 + 1)) & 0x10) == 0 && ([(NSMutableDictionary *)v13 partID]== 2 || [(NSMutableDictionary *)v13 partID]== 3))
        {
          [(NSMutableDictionary *)v13 setSourceID:0];
        }

        OUTLINED_FUNCTION_6_0();
      }

      while (!v17 || OUTLINED_FUNCTION_9(v84, v85, &v123, v152));
    }
  }

  transportType = [v7 transportType];
  v87 = transportType;
  if (!transportType)
  {
    goto LABEL_165;
  }

  transportType = self->_transportType;
  p_transportType = &self->_transportType;
  v88 = transportType;
  if (!transportType)
  {
    goto LABEL_163;
  }

  if (v115 == 2)
  {
    v91 = transportType;
    v92 = v88;
    OUTLINED_FUNCTION_5_2();
    if (v17)
    {

      goto LABEL_164;
    }

    v93 = OUTLINED_FUNCTION_8_0();

    if ((v93 & 1) == 0)
    {
LABEL_163:
      objc_storeStrong(p_transportType, v87);
      OUTLINED_FUNCTION_0_4();
    }
  }

LABEL_164:
  v7 = v116;
LABEL_165:
  type = [v7 type];
  v95 = type;
  if (!type)
  {
    goto LABEL_172;
  }

  type = location->_type;
  if (!type)
  {
    goto LABEL_170;
  }

  if (v115 == 2)
  {
    v97 = type;
    v98 = type;
    OUTLINED_FUNCTION_5_2();
    if (v17)
    {

      goto LABEL_171;
    }

    v99 = OUTLINED_FUNCTION_8_0();

    if ((v99 & 1) == 0)
    {
LABEL_170:
      objc_storeStrong(&location->_type, v95);
      OUTLINED_FUNCTION_0_4();
    }
  }

LABEL_171:
  v7 = v116;
LABEL_172:
  vendorID = [v7 vendorID];
  if (vendorID && vendorID != location->_vendorID)
  {
    location->_vendorID = vendorID;
    OUTLINED_FUNCTION_0_4();
  }

  vendorIDSource = [v7 vendorIDSource];
  if (vendorIDSource && vendorIDSource != location->_vendorIDSource)
  {
    location->_vendorIDSource = vendorIDSource;
    OUTLINED_FUNCTION_0_4();
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  allValues8 = [(NSMutableDictionary *)location->_componentMap allValues];
  v103 = [allValues8 countByEnumeratingWithState:&v119 objects:v151 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v120;
    do
    {
      for (k = 0; k != v104; ++k)
      {
        OUTLINED_FUNCTION_4_2(v120);
        if (!v17)
        {
          objc_enumerationMutation(allValues8);
        }

        v12 |= [*(*(&v119 + 1) + 8 * k) changeFlags];
      }

      v104 = [allValues8 countByEnumeratingWithState:&v119 objects:v151 count:16];
    }

    while (v104);
  }

  v107 = v118 | 4;
  if ((v12 & 0x18) == 0)
  {
    v107 = v118;
  }

  v108 = v107 | v12 & 0x1E;
  location->_changeFlags = v108;

  componentCopy = v113;
LABEL_188:

LABEL_189:
  v109 = *MEMORY[0x1E69E9840];
  return v108;
}

- (uint64_t)dictionaryRepresentation
{
  if (gLogCategory_CBPowerSource <= 30)
  {
    if (gLogCategory_CBPowerSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a2 = 0;
  return result;
}

@end