@interface ADPearlColorInFieldCalibrationResult
- (ADPearlColorInFieldCalibrationResult)initWithDictionary:(id)dictionary;
- (__n128)setPearlToColorExtrinsics:(__n128)extrinsics;
- (id)dictionaryRepresentation;
@end

@implementation ADPearlColorInFieldCalibrationResult

- (__n128)setPearlToColorExtrinsics:(__n128)extrinsics
{
  result[8] = a2;
  result[9] = extrinsics;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (ADPearlColorInFieldCalibrationResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v69.receiver = self;
  v69.super_class = ADPearlColorInFieldCalibrationResult;
  v5 = [(ADPearlColorInFieldCalibrationResult *)&v69 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pearlToColorExtrinsics"];
    v7 = v6;
    if (v6)
    {
      v8 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,3ul,simd_float4x3>(v6);
      *&v5[1]._executed = v8.n128_u32[2];
      v5[1].super.isa = v8.n128_u64[0];
      v5[1]._stdX = v9;
      v5[1]._absoluteRotationY = v10;
      *&v5[1]._deltaRotationY = v11;
      *&v5[1]._stdZ = v12;
      v5[1]._factoryRotationZ = v13;
      *&v5[1]._factoryRotationX = v14;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"execute"];
    v5->_executed = [v15 BOOLValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"deltaRotationX"];
    [v16 doubleValue];
    *&v17 = v17;
    v5->_deltaRotationX = *&v17;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"deltaRotationY"];
    [v18 doubleValue];
    *&v19 = v19;
    v5->_deltaRotationY = *&v19;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"deltaRotationZ"];
    [v20 doubleValue];
    *&v21 = v21;
    v5->_deltaRotationZ = *&v21;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"STDX"];
    [v22 doubleValue];
    *&v23 = v23;
    v5->_stdX = *&v23;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"STDY"];
    [v24 doubleValue];
    *&v25 = v25;
    v5->_stdY = *&v25;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"STDZ"];
    [v26 doubleValue];
    *&v27 = v27;
    v5->_stdZ = *&v27;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"absoluteRotationX"];
    [v28 doubleValue];
    *&v29 = v29;
    v5->_absoluteRotationX = *&v29;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"absoluteRotationY"];
    [v30 doubleValue];
    *&v31 = v31;
    v5->_absoluteRotationY = *&v31;

    v32 = [dictionaryCopy objectForKeyedSubscript:@"absoluteRotationZ"];
    [v32 doubleValue];
    *&v33 = v33;
    v5->_absoluteRotationZ = *&v33;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"factoryRotationX"];
    [v34 doubleValue];
    *&v35 = v35;
    v5->_factoryRotationX = *&v35;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"factoryRotationY"];
    [v36 doubleValue];
    *&v37 = v37;
    v5->_factoryRotationY = *&v37;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"factoryRotationZ"];
    [v38 doubleValue];
    *&v39 = v39;
    v5->_factoryRotationZ = *&v39;

    v40 = [dictionaryCopy objectForKeyedSubscript:@"absoluteRotationPostISFX"];
    [v40 doubleValue];
    *&v41 = v41;
    v5->_absoluteRotationPostISFX = *&v41;

    v42 = [dictionaryCopy objectForKeyedSubscript:@"absoluteRotationPostISFY"];
    [v42 doubleValue];
    *&v43 = v43;
    v5->_absoluteRotationPostISFY = *&v43;

    v44 = [dictionaryCopy objectForKeyedSubscript:@"absoluteRotationPostISFZ"];
    [v44 doubleValue];
    *&v45 = v45;
    v5->_absoluteRotationPostISFZ = *&v45;

    v46 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    [v46 doubleValue];
    *&v47 = v47;
    v5->_confidence = *&v47;

    v48 = [dictionaryCopy objectForKeyedSubscript:@"preRelative2FactoryX"];
    [v48 doubleValue];
    *&v49 = v49;
    v5->_preRelative2FactoryX = *&v49;

    v50 = [dictionaryCopy objectForKeyedSubscript:@"preRelative2FactoryY"];
    [v50 doubleValue];
    *&v51 = v51;
    v5->_preRelative2FactoryY = *&v51;

    v52 = [dictionaryCopy objectForKeyedSubscript:@"preRelative2FactoryZ"];
    [v52 doubleValue];
    *&v53 = v53;
    v5->_preRelative2FactoryZ = *&v53;

    v54 = [dictionaryCopy objectForKeyedSubscript:@"postRelative2FactoryX"];
    [v54 doubleValue];
    *&v55 = v55;
    v5->_postRelative2FactoryX = *&v55;

    v56 = [dictionaryCopy objectForKeyedSubscript:@"postRelative2FactoryY"];
    [v56 doubleValue];
    *&v57 = v57;
    v5->_postRelative2FactoryY = *&v57;

    v58 = [dictionaryCopy objectForKeyedSubscript:@"postRelative2FactoryZ"];
    [v58 doubleValue];
    *&v59 = v59;
    v5->_postRelative2FactoryZ = *&v59;

    v60 = [dictionaryCopy objectForKeyedSubscript:@"postRelative2PrevX"];
    [v60 doubleValue];
    *&v61 = v61;
    v5->_postRelative2PrevX = *&v61;

    v62 = [dictionaryCopy objectForKeyedSubscript:@"postRelative2PrevY"];
    [v62 doubleValue];
    *&v63 = v63;
    v5->_postRelative2PrevY = *&v63;

    v64 = [dictionaryCopy objectForKeyedSubscript:@"postRelative2PrevZ"];
    [v64 doubleValue];
    *&v65 = v65;
    v5->_postRelative2PrevZ = *&v65;

    v66 = [dictionaryCopy objectForKeyedSubscript:@"validDepthPercentage"];
    [v66 doubleValue];
    *&v67 = v67;
    v5->_validDepthPercentage = *&v67;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v60[28] = *MEMORY[0x277D85DE8];
  v58 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,3ul,simd_float4x3>(&self[1]);
  v59[0] = @"execute";
  v57 = [MEMORY[0x277CCABB0] numberWithBool:self->_executed];
  v60[0] = v57;
  v59[1] = @"deltaRotationX";
  *&v3 = self->_deltaRotationX;
  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v60[1] = v56;
  v59[2] = @"deltaRotationY";
  *&v4 = self->_deltaRotationY;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v60[2] = v55;
  v59[3] = @"deltaRotationZ";
  *&v5 = self->_deltaRotationZ;
  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v60[3] = v54;
  v59[4] = @"STDX";
  *&v6 = self->_stdX;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v60[4] = v53;
  v59[5] = @"STDY";
  *&v7 = self->_stdY;
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v60[5] = v52;
  v59[6] = @"STDZ";
  *&v8 = self->_stdZ;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v60[6] = v51;
  v59[7] = @"absoluteRotationX";
  *&v9 = self->_absoluteRotationX;
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v60[7] = v50;
  v59[8] = @"absoluteRotationY";
  *&v10 = self->_absoluteRotationY;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v60[8] = v49;
  v59[9] = @"absoluteRotationZ";
  *&v11 = self->_absoluteRotationZ;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v60[9] = v48;
  v59[10] = @"factoryRotationX";
  *&v12 = self->_factoryRotationX;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v60[10] = v47;
  v59[11] = @"factoryRotationY";
  *&v13 = self->_factoryRotationY;
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v60[11] = v46;
  v59[12] = @"factoryRotationZ";
  *&v14 = self->_factoryRotationZ;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v60[12] = v45;
  v59[13] = @"absoluteRotationPostISFX";
  *&v15 = self->_absoluteRotationPostISFX;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v60[13] = v44;
  v59[14] = @"absoluteRotationPostISFY";
  *&v16 = self->_absoluteRotationPostISFY;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v60[14] = v43;
  v59[15] = @"absoluteRotationPostISFZ";
  *&v17 = self->_absoluteRotationPostISFZ;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v60[15] = v42;
  v59[16] = @"confidence";
  *&v18 = self->_confidence;
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v60[16] = v41;
  v59[17] = @"preRelative2FactoryX";
  *&v19 = self->_preRelative2FactoryX;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v60[17] = v40;
  v59[18] = @"preRelative2FactoryY";
  *&v20 = self->_preRelative2FactoryY;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v60[18] = v21;
  v59[19] = @"preRelative2FactoryZ";
  *&v22 = self->_preRelative2FactoryZ;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v60[19] = v23;
  v59[20] = @"postRelative2FactoryX";
  *&v24 = self->_postRelative2FactoryX;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v60[20] = v25;
  v59[21] = @"postRelative2FactoryY";
  *&v26 = self->_postRelative2FactoryY;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v60[21] = v27;
  v59[22] = @"postRelative2FactoryZ";
  *&v28 = self->_postRelative2FactoryZ;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v60[22] = v29;
  v59[23] = @"postRelative2PrevX";
  *&v30 = self->_postRelative2PrevX;
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v60[23] = v31;
  v59[24] = @"postRelative2PrevY";
  *&v32 = self->_postRelative2PrevY;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v60[24] = v33;
  v59[25] = @"postRelative2PrevZ";
  *&v34 = self->_postRelative2PrevZ;
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  v60[25] = v35;
  v59[26] = @"validDepthPercentage";
  *&v36 = self->_validDepthPercentage;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v59[27] = @"pearlToColorExtrinsics";
  v60[26] = v37;
  v60[27] = v58;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:28];

  return v38;
}

@end