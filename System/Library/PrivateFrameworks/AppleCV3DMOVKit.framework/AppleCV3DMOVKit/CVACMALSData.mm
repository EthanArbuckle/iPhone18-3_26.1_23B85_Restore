@interface CVACMALSData
+ (id)classes;
+ (id)withData:(id)data;
- (CVACMALSData)init;
- (CVACMALSData)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMALSData

+ (id)classes
{
  if (qword_27E3C85B8 == -1)
  {
    v3 = qword_27E3C85B0;
  }

  else
  {
    sub_24019CBA0();
    v3 = qword_27E3C85B0;
  }

  return v3;
}

- (CVACMALSData)init
{
  v8.receiver = self;
  v8.super_class = CVACMALSData;
  v2 = [(CVACMALSData *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rawChannels = v2->_rawChannels;
    v2->_rawChannels = v3;

    v5 = objc_opt_new();
    colorComponents = v2->_colorComponents;
    v2->_colorComponents = v5;
  }

  return v2;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACMALSData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CVACMALSData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVACMALSData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_luxValue = [coderCopy decodeIntForKey:@"lux"];
    [coderCopy decodeFloatForKey:@"rc0"];
    [(CVACLMotionTypeVector4 *)v5->_rawChannels setX:?];
    [coderCopy decodeFloatForKey:@"rc1"];
    [(CVACLMotionTypeVector4 *)v5->_rawChannels setY:?];
    [coderCopy decodeFloatForKey:@"rc2"];
    [(CVACLMotionTypeVector4 *)v5->_rawChannels setZ:?];
    [coderCopy decodeFloatForKey:@"rc3"];
    [(CVACLMotionTypeVector4 *)v5->_rawChannels setW:?];
    [coderCopy decodeDoubleForKey:@"cx"];
    [(CVACLMotionTypeDoubleVector3 *)v5->_colorComponents setX:?];
    [coderCopy decodeDoubleForKey:@"cy"];
    [(CVACLMotionTypeDoubleVector3 *)v5->_colorComponents setY:?];
    [coderCopy decodeDoubleForKey:@"cz"];
    [(CVACLMotionTypeDoubleVector3 *)v5->_colorComponents setZ:?];
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"st"];
    v5->_frameId = [coderCopy decodeInt64ForKey:@"fi"];
    v8 = [coderCopy decodeObjectForKey:@"g"];
    gain = v5->_gain;
    v5->_gain = v8;

    v10 = [coderCopy decodeObjectForKey:@"e"];
    integrationTime = v5->_integrationTime;
    v5->_integrationTime = v10;

    v5->_vendorNumChannels = [coderCopy decodeIntForKey:@"vnc"];
    v12 = [coderCopy decodeObjectForKey:@"vch"];
    vendorRawChannels = v5->_vendorRawChannels;
    v5->_vendorRawChannels = v12;

    v5->_vendorStatus = [coderCopy decodeIntForKey:@"vstat"];
    v5->_vendorOrientation = [coderCopy decodeIntForKey:@"vori"];
    v5->_vendorIntegrationTime = [coderCopy decodeIntForKey:@"vintt"];
    v5->_vendorReportInterval = [coderCopy decodeIntForKey:@"vrepi"];
    [coderCopy decodeFloatForKey:@"vlux"];
    v5->_vendorLux = v14;
    [coderCopy decodeFloatForKey:@"vtemp"];
    v5->_vendorTemperature = v15;
    [coderCopy decodeFloatForKey:@"vcct"];
    v5->_vendorCCT = v16;
    v17 = [coderCopy decodeObjectForKey:@"vazo"];
    vendorAZOffsets = v5->_vendorAZOffsets;
    v5->_vendorAZOffsets = v17;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInt:self->_luxValue forKey:@"lux"];
  [(CVACLMotionTypeVector4 *)self->_rawChannels x];
  [coderCopy encodeFloat:@"rc0" forKey:?];
  [(CVACLMotionTypeVector4 *)self->_rawChannels y];
  [coderCopy encodeFloat:@"rc1" forKey:?];
  [(CVACLMotionTypeVector4 *)self->_rawChannels z];
  [coderCopy encodeFloat:@"rc2" forKey:?];
  [(CVACLMotionTypeVector4 *)self->_rawChannels w];
  [coderCopy encodeFloat:@"rc3" forKey:?];
  [(CVACLMotionTypeDoubleVector3 *)self->_colorComponents x];
  [coderCopy encodeDouble:@"cx" forKey:?];
  [(CVACLMotionTypeDoubleVector3 *)self->_colorComponents y];
  [coderCopy encodeDouble:@"cy" forKey:?];
  [(CVACLMotionTypeDoubleVector3 *)self->_colorComponents z];
  [coderCopy encodeDouble:@"cz" forKey:?];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
  [coderCopy encodeObject:self->_gain forKey:@"g"];
  [coderCopy encodeObject:self->_integrationTime forKey:@"e"];
  [coderCopy encodeInt:self->_vendorNumChannels forKey:@"vnc"];
  [coderCopy encodeObject:self->_vendorRawChannels forKey:@"vch"];
  [coderCopy encodeInt:self->_vendorStatus forKey:@"vstat"];
  [coderCopy encodeInt:self->_vendorOrientation forKey:@"vori"];
  [coderCopy encodeInt:self->_vendorIntegrationTime forKey:@"vintt"];
  [coderCopy encodeInt:self->_vendorReportInterval forKey:@"vrepi"];
  *&v5 = self->_vendorLux;
  [coderCopy encodeFloat:@"vlux" forKey:v5];
  *&v6 = self->_vendorTemperature;
  [coderCopy encodeFloat:@"vtemp" forKey:v6];
  *&v7 = self->_vendorCCT;
  [coderCopy encodeFloat:@"vcct" forKey:v7];
  [coderCopy encodeObject:self->_vendorAZOffsets forKey:@"vazo"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v52 = *MEMORY[0x277D85DE8];
  v39[0] = @"lux";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_luxValue];
  v40[0] = v38;
  v39[1] = @"rc0";
  v3 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector4 *)self->_rawChannels x];
  v37 = [v3 numberWithFloat:?];
  v40[1] = v37;
  v39[2] = @"rc1";
  v4 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector4 *)self->_rawChannels y];
  v36 = [v4 numberWithFloat:?];
  v40[2] = v36;
  v39[3] = @"rc2";
  v5 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector4 *)self->_rawChannels z];
  v35 = [v5 numberWithFloat:?];
  v40[3] = v35;
  v39[4] = @"rc3";
  v6 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector4 *)self->_rawChannels w];
  v34 = [v6 numberWithFloat:?];
  v40[4] = v34;
  v39[5] = @"cx";
  v7 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector3 *)self->_colorComponents x];
  v33 = [v7 numberWithDouble:?];
  v40[5] = v33;
  v39[6] = @"cy";
  v8 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector3 *)self->_colorComponents y];
  v32 = [v8 numberWithDouble:?];
  v40[6] = v32;
  v39[7] = @"cz";
  v9 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector3 *)self->_colorComponents z];
  v31 = [v9 numberWithDouble:?];
  v40[7] = v31;
  v39[8] = @"t";
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v40[8] = v30;
  v39[9] = @"st";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v40[9] = v29;
  v39[10] = @"fi";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v40[10] = v28;
  v39[11] = @"g";
  v39[12] = @"e";
  v41 = vbslq_s8(vceqzq_s64(*&self->_gain), vdupq_n_s64(&unk_285225260), *&self->_gain);
  v39[13] = @"vnc";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_vendorNumChannels];
  v11 = v10;
  vendorRawChannels = self->_vendorRawChannels;
  if (!vendorRawChannels)
  {
    vendorRawChannels = MEMORY[0x277CBEBF8];
  }

  v42 = v10;
  v43 = vendorRawChannels;
  v39[14] = @"vch";
  v39[15] = @"vstat";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_vendorStatus];
  v44 = v13;
  v39[16] = @"vori";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_vendorOrientation];
  v45 = v14;
  v39[17] = @"vintt";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_vendorIntegrationTime];
  v46 = v15;
  v39[18] = @"vrepi";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_vendorReportInterval];
  v47 = v16;
  v39[19] = @"vlux";
  *&v17 = self->_vendorLux;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v48 = v18;
  v39[20] = @"vtemp";
  *&v19 = self->_vendorTemperature;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v49 = v20;
  v39[21] = @"vcct";
  *&v21 = self->_vendorCCT;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v23 = v22;
  v39[22] = @"vazo";
  vendorAZOffsets = self->_vendorAZOffsets;
  if (!vendorAZOffsets)
  {
    vendorAZOffsets = MEMORY[0x277CBEBF8];
  }

  v50 = v22;
  v51 = vendorAZOffsets;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:23];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMALSData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end