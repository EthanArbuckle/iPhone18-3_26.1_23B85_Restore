@interface ADJasperColorInFieldCalibrationResult
- (ADJasperColorInFieldCalibrationResult)initWithDictionary:(id)a3;
- (__n128)setJasperToColorExtrinsics:(__n128)a3;
- (id)dictionaryRepresentation;
@end

@implementation ADJasperColorInFieldCalibrationResult

- (__n128)setJasperToColorExtrinsics:(__n128)a3
{
  result[10] = a2;
  result[11] = a3;
  result[12] = a4;
  result[13] = a5;
  return result;
}

- (ADJasperColorInFieldCalibrationResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v77.receiver = self;
  v77.super_class = ADJasperColorInFieldCalibrationResult;
  v5 = [(ADJasperColorInFieldCalibrationResult *)&v77 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"jasperToColorExtrinsics"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = [v8 objectAtIndexedSubscript:0];
      [v9 floatValue];

      v10 = [v8 objectAtIndexedSubscript:1];
      [v10 floatValue];

      v11 = [v8 objectAtIndexedSubscript:2];
      [v11 floatValue];

      v12 = [v8 objectAtIndexedSubscript:3];
      [v12 floatValue];

      v13 = [v8 objectAtIndexedSubscript:4];
      [v13 floatValue];

      v14 = [v8 objectAtIndexedSubscript:5];
      [v14 floatValue];

      v15 = [v8 objectAtIndexedSubscript:6];
      [v15 floatValue];

      v16 = [v8 objectAtIndexedSubscript:7];
      [v16 floatValue];

      v17 = [v8 objectAtIndexedSubscript:8];
      [v17 floatValue];

      v18 = [v8 objectAtIndexedSubscript:9];
      [v18 floatValue];

      v19 = [v8 objectAtIndexedSubscript:10];
      [v19 floatValue];

      v20 = [v8 objectAtIndexedSubscript:11];
      [v20 floatValue];
    }

    v21 = [v4 objectForKeyedSubscript:@"execute"];
    v5->_executed = [v21 BOOLValue];

    v22 = [v4 objectForKeyedSubscript:@"deltaRotationX"];
    [v22 doubleValue];
    *&v23 = v23;
    v5->_deltaRotationX = *&v23;

    v24 = [v4 objectForKeyedSubscript:@"deltaRotationY"];
    [v24 doubleValue];
    *&v25 = v25;
    v5->_deltaRotationY = *&v25;

    v26 = [v4 objectForKeyedSubscript:@"deltaRotationZ"];
    [v26 doubleValue];
    *&v27 = v27;
    v5->_deltaRotationZ = *&v27;

    v28 = [v4 objectForKeyedSubscript:@"STDX"];
    [v28 doubleValue];
    *&v29 = v29;
    v5->_stdX = *&v29;

    v30 = [v4 objectForKeyedSubscript:@"STDY"];
    [v30 doubleValue];
    *&v31 = v31;
    v5->_stdY = *&v31;

    v32 = [v4 objectForKeyedSubscript:@"STDZ"];
    [v32 doubleValue];
    *&v33 = v33;
    v5->_stdZ = *&v33;

    v34 = [v4 objectForKeyedSubscript:@"absoluteRotationX"];
    [v34 doubleValue];
    *&v35 = v35;
    v5->_absoluteRotationX = *&v35;

    v36 = [v4 objectForKeyedSubscript:@"absoluteRotationY"];
    [v36 doubleValue];
    *&v37 = v37;
    v5->_absoluteRotationY = *&v37;

    v38 = [v4 objectForKeyedSubscript:@"absoluteRotationZ"];
    [v38 doubleValue];
    *&v39 = v39;
    v5->_absoluteRotationZ = *&v39;

    v40 = [v4 objectForKeyedSubscript:@"factoryRotationX"];
    [v40 doubleValue];
    *&v41 = v41;
    v5->_factoryRotationX = *&v41;

    v42 = [v4 objectForKeyedSubscript:@"factoryRotationY"];
    [v42 doubleValue];
    *&v43 = v43;
    v5->_factoryRotationY = *&v43;

    v44 = [v4 objectForKeyedSubscript:@"factoryRotationZ"];
    [v44 doubleValue];
    *&v45 = v45;
    v5->_factoryRotationZ = *&v45;

    v46 = [v4 objectForKeyedSubscript:@"absoluteRotationPostISFX"];
    [v46 doubleValue];
    *&v47 = v47;
    v5->_absoluteRotationPostISFX = *&v47;

    v48 = [v4 objectForKeyedSubscript:@"absoluteRotationPostISFY"];
    [v48 doubleValue];
    *&v49 = v49;
    v5->_absoluteRotationPostISFY = *&v49;

    v50 = [v4 objectForKeyedSubscript:@"absoluteRotationPostISFZ"];
    [v50 doubleValue];
    *&v51 = v51;
    v5->_absoluteRotationPostISFZ = *&v51;

    v52 = [v4 objectForKeyedSubscript:@"confidence"];
    [v52 doubleValue];
    *&v53 = v53;
    v5->_confidence = *&v53;

    v54 = [v4 objectForKeyedSubscript:@"preRelative2FactoryX"];
    [v54 doubleValue];
    *&v55 = v55;
    v5->_preRelative2FactoryX = *&v55;

    v56 = [v4 objectForKeyedSubscript:@"preRelative2FactoryY"];
    [v56 doubleValue];
    *&v57 = v57;
    v5->_preRelative2FactoryY = *&v57;

    v58 = [v4 objectForKeyedSubscript:@"preRelative2FactoryZ"];
    [v58 doubleValue];
    *&v59 = v59;
    v5->_preRelative2FactoryZ = *&v59;

    v60 = [v4 objectForKeyedSubscript:@"postRelative2FactoryX"];
    [v60 doubleValue];
    *&v61 = v61;
    v5->_postRelative2FactoryX = *&v61;

    v62 = [v4 objectForKeyedSubscript:@"postRelative2FactoryY"];
    [v62 doubleValue];
    *&v63 = v63;
    v5->_postRelative2FactoryY = *&v63;

    v64 = [v4 objectForKeyedSubscript:@"postRelative2FactoryZ"];
    [v64 doubleValue];
    *&v65 = v65;
    v5->_postRelative2FactoryZ = *&v65;

    v66 = [v4 objectForKeyedSubscript:@"postRelative2PrevX"];
    [v66 doubleValue];
    *&v67 = v67;
    v5->_postRelative2PrevX = *&v67;

    v68 = [v4 objectForKeyedSubscript:@"postRelative2PrevY"];
    [v68 doubleValue];
    *&v69 = v69;
    v5->_postRelative2PrevY = *&v69;

    v70 = [v4 objectForKeyedSubscript:@"postRelative2PrevZ"];
    [v70 doubleValue];
    *&v71 = v71;
    v5->_postRelative2PrevZ = *&v71;

    v72 = [v4 objectForKeyedSubscript:@"executionStatus"];
    [v72 doubleValue];
    v5->_executionStatus = v73;

    v74 = [v4 objectForKeyedSubscript:@"alpha"];
    [v74 doubleValue];
    *&v75 = v75;
    v5->_alpha = *&v75;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v61[29] = *MEMORY[0x277D85DE8];
  v59 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,3ul,simd_float4x3>(&self[1]);
  v60[0] = @"execute";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:self->_executed];
  v61[0] = v58;
  v60[1] = @"deltaRotationX";
  *&v3 = self->_deltaRotationX;
  v57 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v61[1] = v57;
  v60[2] = @"deltaRotationY";
  *&v4 = self->_deltaRotationY;
  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v61[2] = v56;
  v60[3] = @"deltaRotationZ";
  *&v5 = self->_deltaRotationZ;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v61[3] = v55;
  v60[4] = @"STDX";
  *&v6 = self->_stdX;
  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v61[4] = v54;
  v60[5] = @"STDY";
  *&v7 = self->_stdY;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v61[5] = v53;
  v60[6] = @"STDZ";
  *&v8 = self->_stdZ;
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v61[6] = v52;
  v60[7] = @"absoluteRotationX";
  *&v9 = self->_absoluteRotationX;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v61[7] = v51;
  v60[8] = @"absoluteRotationY";
  *&v10 = self->_absoluteRotationY;
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v61[8] = v50;
  v60[9] = @"absoluteRotationZ";
  *&v11 = self->_absoluteRotationZ;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v61[9] = v49;
  v60[10] = @"factoryRotationX";
  *&v12 = self->_factoryRotationX;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v61[10] = v48;
  v60[11] = @"factoryRotationY";
  *&v13 = self->_factoryRotationY;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v61[11] = v47;
  v60[12] = @"factoryRotationZ";
  *&v14 = self->_factoryRotationZ;
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v61[12] = v46;
  v60[13] = @"absoluteRotationPostISFX";
  *&v15 = self->_absoluteRotationPostISFX;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v61[13] = v45;
  v60[14] = @"absoluteRotationPostISFY";
  *&v16 = self->_absoluteRotationPostISFY;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v61[14] = v44;
  v60[15] = @"absoluteRotationPostISFZ";
  *&v17 = self->_absoluteRotationPostISFZ;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v61[15] = v43;
  v60[16] = @"confidence";
  *&v18 = self->_confidence;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v61[16] = v42;
  v60[17] = @"preRelative2FactoryX";
  *&v19 = self->_preRelative2FactoryX;
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v61[17] = v41;
  v60[18] = @"preRelative2FactoryY";
  *&v20 = self->_preRelative2FactoryY;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v61[18] = v40;
  v60[19] = @"preRelative2FactoryZ";
  *&v21 = self->_preRelative2FactoryZ;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v61[19] = v22;
  v60[20] = @"postRelative2FactoryX";
  *&v23 = self->_postRelative2FactoryX;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v61[20] = v24;
  v60[21] = @"postRelative2FactoryY";
  *&v25 = self->_postRelative2FactoryY;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v61[21] = v26;
  v60[22] = @"postRelative2FactoryZ";
  *&v27 = self->_postRelative2FactoryZ;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v61[22] = v28;
  v60[23] = @"postRelative2PrevX";
  *&v29 = self->_postRelative2PrevX;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v61[23] = v30;
  v60[24] = @"postRelative2PrevY";
  *&v31 = self->_postRelative2PrevY;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v61[24] = v32;
  v60[25] = @"postRelative2PrevZ";
  *&v33 = self->_postRelative2PrevZ;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v61[25] = v34;
  v60[26] = @"executionStatus";
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:self->_executionStatus];
  v61[26] = v35;
  v60[27] = @"alpha";
  *&v36 = self->_alpha;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v60[28] = @"jasperToColorExtrinsics";
  v61[27] = v37;
  v61[28] = v59;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:29];

  return v38;
}

@end