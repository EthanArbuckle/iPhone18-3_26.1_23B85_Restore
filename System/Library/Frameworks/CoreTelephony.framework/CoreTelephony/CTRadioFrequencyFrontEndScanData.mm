@interface CTRadioFrequencyFrontEndScanData
- (CTRadioFrequencyFrontEndScanData)init;
- (CTRadioFrequencyFrontEndScanData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTRadioFrequencyFrontEndScanData

- (CTRadioFrequencyFrontEndScanData)init
{
  v9.receiver = self;
  v9.super_class = CTRadioFrequencyFrontEndScanData;
  v2 = [(CTRadioFrequencyFrontEndScanData *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_rfcInitPass = 0;
    *&v2->_version = 0u;
    *&v2->_hwSku = 0u;
    *&v2->_hwHousing = 0u;
    *&v2->_rfcRev = 0u;
    *&v2->_rfcMmwRev = 0u;
    *&v2->_numExpectedDevices = 0u;
    rffeScanInfo = v2->_rffeScanInfo;
    v2->_numMissingDevices = 0;
    v2->_rffeScanInfo = 0;

    missingRffeDevices = v3->_missingRffeDevices;
    v3->_missingRffeDevices = 0;

    missingAtDevices = v3->_missingAtDevices;
    v3->_missingAtDevices = 0;

    missingMmwDevices = v3->_missingMmwDevices;
    v3->_missingMmwDevices = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p\n", objc_opt_class(), self];
  [v3 appendFormat:@"version=%lu\n", -[CTRadioFrequencyFrontEndScanData version](self, "version")];
  [v3 appendFormat:@"hwPrdId=%lu\n", -[CTRadioFrequencyFrontEndScanData hwPrdId](self, "hwPrdId")];
  [v3 appendFormat:@"hwSku=%lu\n", -[CTRadioFrequencyFrontEndScanData hwSku](self, "hwSku")];
  [v3 appendFormat:@"hwRev=%lu\n", -[CTRadioFrequencyFrontEndScanData hwRev](self, "hwRev")];
  [v3 appendFormat:@"hwHousing=%lu\n", -[CTRadioFrequencyFrontEndScanData hwHousing](self, "hwHousing")];
  [v3 appendFormat:@"rfcInitPass=%d\n", -[CTRadioFrequencyFrontEndScanData rfcInitPass](self, "rfcInitPass")];
  [v3 appendFormat:@"rfcHwid=0x%02x\n", -[CTRadioFrequencyFrontEndScanData rfcHwid](self, "rfcHwid")];
  [v3 appendFormat:@"rfcRev=%lu\n", -[CTRadioFrequencyFrontEndScanData rfcRev](self, "rfcRev")];
  [v3 appendFormat:@"rfcMmwHwid=0x%02x\n", -[CTRadioFrequencyFrontEndScanData rfcMmwHwid](self, "rfcMmwHwid")];
  [v3 appendFormat:@"rfcMmwRev=%lu\n", -[CTRadioFrequencyFrontEndScanData rfcMmwRev](self, "rfcMmwRev")];
  [v3 appendFormat:@"fr2TrxRev=%lu\n", -[CTRadioFrequencyFrontEndScanData fr2TrxRev](self, "fr2TrxRev")];
  [v3 appendFormat:@"rffeScanPass=%d\n", -[CTRadioFrequencyFrontEndScanData rffeScanPass](self, "rffeScanPass")];
  [v3 appendFormat:@"numExpectedDevices=%lu\n", -[CTRadioFrequencyFrontEndScanData numExpectedDevices](self, "numExpectedDevices")];
  [v3 appendFormat:@"numDetectedDevices=%lu\n", -[CTRadioFrequencyFrontEndScanData numDetectedDevices](self, "numDetectedDevices")];
  [v3 appendFormat:@"numMissingDevices=%lu\n", -[CTRadioFrequencyFrontEndScanData numMissingDevices](self, "numMissingDevices")];
  rffeScanInfo = [(CTRadioFrequencyFrontEndScanData *)self rffeScanInfo];
  [v3 appendFormat:@"rffeScanInfo=%@\n", rffeScanInfo];

  missingRffeDevices = [(CTRadioFrequencyFrontEndScanData *)self missingRffeDevices];
  [v3 appendFormat:@"missingRffeDevices=%@\n", missingRffeDevices];

  missingAtDevices = [(CTRadioFrequencyFrontEndScanData *)self missingAtDevices];
  [v3 appendFormat:@"missingAtDevices=%@\n", missingAtDevices];

  missingMmwDevices = [(CTRadioFrequencyFrontEndScanData *)self missingMmwDevices];
  [v3 appendFormat:@"missingMmwDevices=%@\n", missingMmwDevices];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setVersion:{-[CTRadioFrequencyFrontEndScanData version](self, "version")}];
  [v5 setHwPrdId:{-[CTRadioFrequencyFrontEndScanData hwPrdId](self, "hwPrdId")}];
  [v5 setHwSku:{-[CTRadioFrequencyFrontEndScanData hwSku](self, "hwSku")}];
  [v5 setHwRev:{-[CTRadioFrequencyFrontEndScanData hwRev](self, "hwRev")}];
  [v5 setHwHousing:{-[CTRadioFrequencyFrontEndScanData hwHousing](self, "hwHousing")}];
  [v5 setRfcInitPass:{-[CTRadioFrequencyFrontEndScanData rfcInitPass](self, "rfcInitPass")}];
  [v5 setRfcHwid:{-[CTRadioFrequencyFrontEndScanData rfcHwid](self, "rfcHwid")}];
  [v5 setRfcRev:{-[CTRadioFrequencyFrontEndScanData rfcRev](self, "rfcRev")}];
  [v5 setRfcMmwHwid:{-[CTRadioFrequencyFrontEndScanData rfcMmwHwid](self, "rfcMmwHwid")}];
  [v5 setRfcMmwRev:{-[CTRadioFrequencyFrontEndScanData rfcMmwRev](self, "rfcMmwRev")}];
  [v5 setFr2TrxRev:{-[CTRadioFrequencyFrontEndScanData fr2TrxRev](self, "fr2TrxRev")}];
  [v5 setRffeScanPass:{-[CTRadioFrequencyFrontEndScanData rffeScanPass](self, "rffeScanPass")}];
  [v5 setNumExpectedDevices:{-[CTRadioFrequencyFrontEndScanData numExpectedDevices](self, "numExpectedDevices")}];
  [v5 setNumDetectedDevices:{-[CTRadioFrequencyFrontEndScanData numDetectedDevices](self, "numDetectedDevices")}];
  [v5 setNumMissingDevices:{-[CTRadioFrequencyFrontEndScanData numMissingDevices](self, "numMissingDevices")}];
  rffeScanInfo = [(CTRadioFrequencyFrontEndScanData *)self rffeScanInfo];
  v7 = [rffeScanInfo copyWithZone:zone];
  [v5 setRffeScanInfo:v7];

  missingRffeDevices = [(CTRadioFrequencyFrontEndScanData *)self missingRffeDevices];
  v9 = [missingRffeDevices copyWithZone:zone];
  [v5 setMissingRffeDevices:v9];

  missingAtDevices = [(CTRadioFrequencyFrontEndScanData *)self missingAtDevices];
  v11 = [missingAtDevices copyWithZone:zone];
  [v5 setMissingAtDevices:v11];

  missingMmwDevices = [(CTRadioFrequencyFrontEndScanData *)self missingMmwDevices];
  v13 = [missingMmwDevices copyWithZone:zone];
  [v5 setMissingMmwDevices:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData version](self, "version")}];
  [coderCopy encodeObject:v6 forKey:@"kVersionKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData hwPrdId](self, "hwPrdId")}];
  [coderCopy encodeObject:v7 forKey:@"kHwPrdIdKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData hwSku](self, "hwSku")}];
  [coderCopy encodeObject:v8 forKey:@"kHwSkuKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData hwRev](self, "hwRev")}];
  [coderCopy encodeObject:v9 forKey:@"kHwRevKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData hwHousing](self, "hwHousing")}];
  [coderCopy encodeObject:v10 forKey:@"kHwHousingKey"];

  [coderCopy encodeBool:-[CTRadioFrequencyFrontEndScanData rfcInitPass](self forKey:{"rfcInitPass"), @"kRfcInitPassKey"}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData rfcHwid](self, "rfcHwid")}];
  [coderCopy encodeObject:v11 forKey:@"kRfcHwidKey"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData rfcRev](self, "rfcRev")}];
  [coderCopy encodeObject:v12 forKey:@"kRfcRevKey"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData rfcMmwHwid](self, "rfcMmwHwid")}];
  [coderCopy encodeObject:v13 forKey:@"kRfcMmwHwidKey"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData rfcMmwRev](self, "rfcMmwRev")}];
  [coderCopy encodeObject:v14 forKey:@"kRfcMmwRevKey"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData fr2TrxRev](self, "fr2TrxRev")}];
  [coderCopy encodeObject:v15 forKey:@"kFr2TrxRevKey"];

  [coderCopy encodeBool:-[CTRadioFrequencyFrontEndScanData rffeScanPass](self forKey:{"rffeScanPass"), @"kRffeScanPassKey"}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData numExpectedDevices](self, "numExpectedDevices")}];
  [coderCopy encodeObject:v16 forKey:@"kNumExpectedDevicesKey"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData numDetectedDevices](self, "numDetectedDevices")}];
  [coderCopy encodeObject:v17 forKey:@"kNumDetectedDevicesKey"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTRadioFrequencyFrontEndScanData numMissingDevices](self, "numMissingDevices")}];
  [coderCopy encodeObject:v18 forKey:@"kNumMissingDevicesKey"];

  rffeScanInfo = [(CTRadioFrequencyFrontEndScanData *)self rffeScanInfo];
  [coderCopy encodeObject:rffeScanInfo forKey:@"kRffeScanInfoKey"];

  missingRffeDevices = [(CTRadioFrequencyFrontEndScanData *)self missingRffeDevices];
  [coderCopy encodeObject:missingRffeDevices forKey:@"kMissingRffeDevicesKey"];

  missingAtDevices = [(CTRadioFrequencyFrontEndScanData *)self missingAtDevices];
  [coderCopy encodeObject:missingAtDevices forKey:@"kMissingAtDevicesKey"];

  missingMmwDevices = [(CTRadioFrequencyFrontEndScanData *)self missingMmwDevices];
  [coderCopy encodeObject:missingMmwDevices forKey:@"kMissingMmwDevicesKey"];
}

- (CTRadioFrequencyFrontEndScanData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = CTRadioFrequencyFrontEndScanData;
  v5 = [(CTRadioFrequencyFrontEndScanData *)&v40 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVersionKey"];
    v5->_version = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHwPrdIdKey"];
    v5->_hwPrdId = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHwSkuKey"];
    v5->_hwSku = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHwRevKey"];
    v5->_hwRev = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHwHousingKey"];
    v5->_hwHousing = [v10 unsignedIntegerValue];

    v5->_rfcInitPass = [coderCopy decodeBoolForKey:@"kRfcInitPassKey"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRfcHwidKey"];
    v5->_rfcHwid = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRfcRevKey"];
    v5->_rfcRev = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRfcMmwHwidKey"];
    v5->_rfcMmwHwid = [v13 unsignedIntegerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRfcMmwRevKey"];
    v5->_rfcMmwRev = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFr2TrxRevKey"];
    v5->_fr2TrxRev = [v15 unsignedIntegerValue];

    v5->_rffeScanPass = [coderCopy decodeBoolForKey:@"kRffeScanPassKey"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNumExpectedDevicesKey"];
    v5->_numExpectedDevices = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNumDetectedDevicesKey"];
    v5->_numDetectedDevices = [v17 unsignedIntegerValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNumMissingDevicesKey"];
    v5->_numMissingDevices = [v18 unsignedIntegerValue];

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"kRffeScanInfoKey"];
    rffeScanInfo = v5->_rffeScanInfo;
    v5->_rffeScanInfo = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"kMissingRffeDevicesKey"];
    missingRffeDevices = v5->_missingRffeDevices;
    v5->_missingRffeDevices = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"kMissingAtDevicesKey"];
    missingAtDevices = v5->_missingAtDevices;
    v5->_missingAtDevices = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"kMissingMmwDevicesKey"];
    missingMmwDevices = v5->_missingMmwDevices;
    v5->_missingMmwDevices = v37;
  }

  return v5;
}

@end