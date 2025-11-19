@interface HMDeviceCloudRecordInfo
- (HMDeviceCloudRecordInfo)initWithBluetoothAddress:(id)a3;
- (HMDeviceCloudRecordInfo)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDeviceCloudRecordInfo

- (HMDeviceCloudRecordInfo)initWithBluetoothAddress:(id)a3
{
  v4 = a3;
  v5 = [(HMDeviceCloudRecordInfo *)self init];
  if (v5)
  {
    v6 = [v4 uppercaseString];
    bluetoothAddress = v5->_bluetoothAddress;
    v5->_bluetoothAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (id)descriptionWithLevel:(int)a3
{
  v56 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v5 = 0;

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v57 = bluetoothAddress;
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  if (self->_haRegionStatus)
  {
    haRegionStatus = self->_haRegionStatus;
    NSAppendPrintF_safe();
    v8 = v5;

    v5 = v8;
  }

  if (self->_haRegionStatusV2)
  {
    haRegionStatusV2 = self->_haRegionStatusV2;
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  if (self->_hpPPERegionStatus)
  {
    hpPPERegionStatus = self->_hpPPERegionStatus;
    NSAppendPrintF_safe();
    v10 = v5;

    v5 = v10;
  }

  if (self->_hpRegionStatus)
  {
    hpRegionStatus = self->_hpRegionStatus;
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  if (self->_mediaAssistEnabled)
  {
    mediaAssistEnabled = self->_mediaAssistEnabled;
    NSAppendPrintF_safe();
    v12 = v5;

    v5 = v12;
  }

  if (self->_pmeMediaEnabled)
  {
    pmeMediaEnabled = self->_pmeMediaEnabled;
    NSAppendPrintF_safe();
    v13 = v5;

    v5 = v13;
  }

  if (self->_pmeVoiceEnabled)
  {
    pmeVoiceEnabled = self->_pmeVoiceEnabled;
    NSAppendPrintF_safe();
    v14 = v5;

    v5 = v14;
  }

  if (self->_swipeGainEnabled)
  {
    swipeGainEnabled = self->_swipeGainEnabled;
    NSAppendPrintF_safe();
    v15 = v5;

    v5 = v15;
  }

  bottomMicFaultCountLeft = self->_bottomMicFaultCountLeft;
  if (bottomMicFaultCountLeft)
  {
    v66 = bottomMicFaultCountLeft;
    NSAppendPrintF_safe();
    v17 = v5;

    v5 = v17;
  }

  bottomMicFaultCountRight = self->_bottomMicFaultCountRight;
  if (bottomMicFaultCountRight)
  {
    v67 = bottomMicFaultCountRight;
    NSAppendPrintF_safe();
    v19 = v5;

    v5 = v19;
  }

  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount)
  {
    v68 = diagnosticMeasurementsCount;
    NSAppendPrintF_safe();
    v21 = v5;

    v5 = v21;
  }

  freqAccuracyFaultCountLeft = self->_freqAccuracyFaultCountLeft;
  if (freqAccuracyFaultCountLeft)
  {
    v69 = freqAccuracyFaultCountLeft;
    NSAppendPrintF_safe();
    v23 = v5;

    v5 = v23;
  }

  freqAccuracyFaultCountRight = self->_freqAccuracyFaultCountRight;
  if (freqAccuracyFaultCountRight)
  {
    v70 = freqAccuracyFaultCountRight;
    NSAppendPrintF_safe();
    v25 = v5;

    v5 = v25;
  }

  frontVentFaultCountLeft = self->_frontVentFaultCountLeft;
  if (frontVentFaultCountLeft)
  {
    v71 = frontVentFaultCountLeft;
    NSAppendPrintF_safe();
    v27 = v5;

    v5 = v27;
  }

  frontVentFaultCountRight = self->_frontVentFaultCountRight;
  if (frontVentFaultCountRight)
  {
    v72 = frontVentFaultCountRight;
    NSAppendPrintF_safe();
    v29 = v5;

    v5 = v29;
  }

  innerMicFaultCountLeft = self->_innerMicFaultCountLeft;
  if (innerMicFaultCountLeft)
  {
    v73 = innerMicFaultCountLeft;
    NSAppendPrintF_safe();
    v31 = v5;

    v5 = v31;
  }

  innerMicFaultCountRight = self->_innerMicFaultCountRight;
  if (innerMicFaultCountRight)
  {
    v74 = innerMicFaultCountRight;
    NSAppendPrintF_safe();
    v33 = v5;

    v5 = v33;
  }

  latestDiagnosticTimestampLeft = self->_latestDiagnosticTimestampLeft;
  if (latestDiagnosticTimestampLeft)
  {
    v75 = latestDiagnosticTimestampLeft;
    NSAppendPrintF_safe();
    v35 = v5;

    v5 = v35;
  }

  latestDiagnosticTimestampRight = self->_latestDiagnosticTimestampRight;
  if (latestDiagnosticTimestampRight)
  {
    v76 = latestDiagnosticTimestampRight;
    NSAppendPrintF_safe();
    v37 = v5;

    v5 = v37;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  if (rearVentFaultCountLeft)
  {
    v77 = rearVentFaultCountLeft;
    NSAppendPrintF_safe();
    v39 = v5;

    v5 = v39;
  }

  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if (rearVentFaultCountRight)
  {
    v78 = rearVentFaultCountRight;
    NSAppendPrintF_safe();
    v41 = v5;

    v5 = v41;
  }

  speakerFaultCountLeft = self->_speakerFaultCountLeft;
  if (speakerFaultCountLeft)
  {
    v79 = speakerFaultCountLeft;
    NSAppendPrintF_safe();
    v43 = v5;

    v5 = v43;
  }

  speakerFaultCountRight = self->_speakerFaultCountRight;
  if (speakerFaultCountRight)
  {
    v80 = speakerFaultCountRight;
    NSAppendPrintF_safe();
    v45 = v5;

    v5 = v45;
  }

  topMicFaultCountLeft = self->_topMicFaultCountLeft;
  if (topMicFaultCountLeft)
  {
    v81 = topMicFaultCountLeft;
    NSAppendPrintF_safe();
    v47 = v5;

    v5 = v47;
  }

  topMicFaultCountRight = self->_topMicFaultCountRight;
  if (topMicFaultCountRight)
  {
    v82 = topMicFaultCountRight;
    NSAppendPrintF_safe();
    v49 = v5;

    v5 = v49;
  }

  totalHarmonicDistortionFaultCountLeft = self->_totalHarmonicDistortionFaultCountLeft;
  if (totalHarmonicDistortionFaultCountLeft)
  {
    v83 = totalHarmonicDistortionFaultCountLeft;
    NSAppendPrintF_safe();
    v51 = v5;

    v5 = v51;
  }

  totalHarmonicDistortionFaultCountRight = self->_totalHarmonicDistortionFaultCountRight;
  if (totalHarmonicDistortionFaultCountRight)
  {
    v84 = totalHarmonicDistortionFaultCountRight;
    NSAppendPrintF_safe();
    v53 = v5;

    v5 = v53;
  }

  if (a3 < 21)
  {
    NSAppendPrintF_safe();
    v54 = v5;

    v5 = v54;
  }

  return v5;
}

- (HMDeviceCloudRecordInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDeviceCloudRecordInfo *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_haRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_haRegionStatusV2 = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hpPPERegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hpRegionStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaAssistEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeMediaEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeVoiceEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_swipeGainEnabled = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  bluetoothAddress = self->_bluetoothAddress;
  v25 = v4;
  if (bluetoothAddress)
  {
    [v4 encodeObject:bluetoothAddress forKey:@"btAd"];
    v4 = v25;
  }

  if (self->_haRegionStatus)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_haRegionStatusV2)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_hpPPERegionStatus)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_hpRegionStatus)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_mediaAssistEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_pmeMediaEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_pmeVoiceEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  if (self->_swipeGainEnabled)
  {
    [v25 encodeInteger:? forKey:?];
    v4 = v25;
  }

  bottomMicFaultCountLeft = self->_bottomMicFaultCountLeft;
  if (bottomMicFaultCountLeft)
  {
    [v25 encodeObject:bottomMicFaultCountLeft forKey:@"bmfl"];
    v4 = v25;
  }

  bottomMicFaultCountRight = self->_bottomMicFaultCountRight;
  if (bottomMicFaultCountRight)
  {
    [v25 encodeObject:bottomMicFaultCountRight forKey:@"bmfr"];
    v4 = v25;
  }

  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount)
  {
    [v25 encodeObject:diagnosticMeasurementsCount forKey:@"dimc"];
    v4 = v25;
  }

  freqAccuracyFaultCountLeft = self->_freqAccuracyFaultCountLeft;
  if (freqAccuracyFaultCountLeft)
  {
    [v25 encodeObject:freqAccuracyFaultCountLeft forKey:@"fafl"];
    v4 = v25;
  }

  freqAccuracyFaultCountRight = self->_freqAccuracyFaultCountRight;
  if (freqAccuracyFaultCountRight)
  {
    [v25 encodeObject:freqAccuracyFaultCountRight forKey:@"fafr"];
    v4 = v25;
  }

  frontVentFaultCountLeft = self->_frontVentFaultCountLeft;
  if (frontVentFaultCountLeft)
  {
    [v25 encodeObject:frontVentFaultCountLeft forKey:@"fvfl"];
    v4 = v25;
  }

  frontVentFaultCountRight = self->_frontVentFaultCountRight;
  if (frontVentFaultCountRight)
  {
    [v25 encodeObject:frontVentFaultCountRight forKey:@"fvfr"];
    v4 = v25;
  }

  innerMicFaultCountLeft = self->_innerMicFaultCountLeft;
  if (innerMicFaultCountLeft)
  {
    [v25 encodeObject:innerMicFaultCountLeft forKey:@"imfl"];
    v4 = v25;
  }

  innerMicFaultCountRight = self->_innerMicFaultCountRight;
  if (innerMicFaultCountRight)
  {
    [v25 encodeObject:innerMicFaultCountRight forKey:@"imfr"];
    v4 = v25;
  }

  latestDiagnosticTimestampLeft = self->_latestDiagnosticTimestampLeft;
  if (latestDiagnosticTimestampLeft)
  {
    [v25 encodeObject:latestDiagnosticTimestampLeft forKey:@"ldtl"];
    v4 = v25;
  }

  latestDiagnosticTimestampRight = self->_latestDiagnosticTimestampRight;
  if (latestDiagnosticTimestampRight)
  {
    [v25 encodeObject:latestDiagnosticTimestampRight forKey:@"ldtr"];
    v4 = v25;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  if (rearVentFaultCountLeft)
  {
    [v25 encodeObject:rearVentFaultCountLeft forKey:@"rvfl"];
    v4 = v25;
  }

  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if (rearVentFaultCountRight)
  {
    [v25 encodeObject:rearVentFaultCountRight forKey:@"rvfr"];
    v4 = v25;
  }

  speakerFaultCountLeft = self->_speakerFaultCountLeft;
  if (speakerFaultCountLeft)
  {
    [v25 encodeObject:speakerFaultCountLeft forKey:@"sfcl"];
    v4 = v25;
  }

  speakerFaultCountRight = self->_speakerFaultCountRight;
  if (speakerFaultCountRight)
  {
    [v25 encodeObject:speakerFaultCountRight forKey:@"sfcr"];
    v4 = v25;
  }

  topMicFaultCountLeft = self->_topMicFaultCountLeft;
  if (topMicFaultCountLeft)
  {
    [v25 encodeObject:topMicFaultCountLeft forKey:@"tmfl"];
    v4 = v25;
  }

  topMicFaultCountRight = self->_topMicFaultCountRight;
  if (topMicFaultCountRight)
  {
    [v25 encodeObject:topMicFaultCountRight forKey:@"tmfr"];
    v4 = v25;
  }

  totalHarmonicDistortionFaultCountLeft = self->_totalHarmonicDistortionFaultCountLeft;
  if (totalHarmonicDistortionFaultCountLeft)
  {
    [v25 encodeObject:totalHarmonicDistortionFaultCountLeft forKey:@"thdl"];
    v4 = v25;
  }

  totalHarmonicDistortionFaultCountRight = self->_totalHarmonicDistortionFaultCountRight;
  if (totalHarmonicDistortionFaultCountRight)
  {
    [v25 encodeObject:totalHarmonicDistortionFaultCountRight forKey:@"thdr"];
    v4 = v25;
  }
}

@end