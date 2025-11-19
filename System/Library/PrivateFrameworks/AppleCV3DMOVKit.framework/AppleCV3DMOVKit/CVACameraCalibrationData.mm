@interface CVACameraCalibrationData
+ (id)classes;
+ (id)withData:(id)a3;
- (CGPoint)lensDistortionCenter;
- (CGSize)intrinsicMatrixReferenceDimensions;
- (CVACameraCalibrationData)initWithAVCameraCalibrationData:(id)a3 timestamp:(double)a4 streamID:(id)a5;
- (CVACameraCalibrationData)initWithCoder:(id)a3;
- (__n128)extrinsicMatrix;
- (__n128)intrinsicMatrix;
- (__n128)setExtrinsicMatrix:(__n128)a3;
- (__n128)setIntrinsicMatrix:(__n128)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
- (void)updateProperties:(id)a3;
@end

@implementation CVACameraCalibrationData

+ (id)classes
{
  if (qword_27E3C8588 == -1)
  {
    v3 = qword_27E3C8580;
  }

  else
  {
    sub_24019CB64();
    v3 = qword_27E3C8580;
  }

  return v3;
}

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVACameraCalibrationData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4];

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

- (void)updateProperties:(id)a3
{
  v4 = a3;
  [v4 intrinsicMatrix];
  *&self->_anon_60[8] = v5;
  *&self->_anon_60[24] = v6;
  *self->_anon_60 = v7;
  *&self->_anon_60[16] = v8;
  *&self->_anon_60[40] = v9;
  *&self->_anon_60[32] = v10;
  [v4 intrinsicMatrixReferenceDimensions];
  self->_intrinsicMatrixReferenceDimensions.width = v11;
  self->_intrinsicMatrixReferenceDimensions.height = v12;
  [v4 extrinsicMatrix];
  self[1]._pixelSize = v13;
  self[1].super.isa = v14;
  LODWORD(self[1]._timestamp) = v15;
  LODWORD(self[1]._calibrationData) = v16;
  self[1]._streamID = v17;
  self[1]._calibrationDictionary = v18;
  LODWORD(self[1]._inverseLensDistortionLookupTable) = v19;
  self[1]._lensDistortionLookupTable = v20;
  [v4 pixelSize];
  self->_pixelSize = v21;
  v22 = [v4 lensDistortionLookupTable];
  lensDistortionLookupTable = self->_lensDistortionLookupTable;
  self->_lensDistortionLookupTable = v22;

  v24 = [v4 inverseLensDistortionLookupTable];
  inverseLensDistortionLookupTable = self->_inverseLensDistortionLookupTable;
  self->_inverseLensDistortionLookupTable = v24;

  [v4 lensDistortionCenter];
  v27 = v26;
  v29 = v28;

  self->_lensDistortionCenter.x = v27;
  self->_lensDistortionCenter.y = v29;
}

- (CVACameraCalibrationData)initWithAVCameraCalibrationData:(id)a3 timestamp:(double)a4 streamID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CVACameraCalibrationData;
  v10 = [(CVACameraCalibrationData *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_streamID, a5);
    v11->_timestamp = a4;
    [(CVACameraCalibrationData *)v11 updateProperties:v8];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v8 cameraCalibrationDataDictionary];
      calibrationDictionary = v11->_calibrationDictionary;
      v11->_calibrationDictionary = v12;
    }
  }

  return v11;
}

- (CVACameraCalibrationData)initWithCoder:(id)a3
{
  v117 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v114.receiver = self;
  v114.super_class = CVACameraCalibrationData;
  v5 = [(CVACameraCalibrationData *)&v114 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"si"];
    streamID = v5->_streamID;
    v5->_streamID = v7;

    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v9;
    v10 = [v4 decodeObjectForKey:@"d"];
    calibrationDictionary = v5->_calibrationDictionary;
    v5->_calibrationDictionary = v10;

    if (v5->_calibrationDictionary)
    {
      if ([MEMORY[0x277CE5A98] instancesRespondToSelector:sel_initWithCameraCalibrationDataDictionary_error_])
      {
        v12 = objc_alloc(MEMORY[0x277CE5A98]);
        v13 = v5->_calibrationDictionary;
        v113 = 0;
        v14 = [v12 initWithCameraCalibrationDataDictionary:v13 error:&v113];
        v15 = v113;
        calibrationData = v5->_calibrationData;
        v5->_calibrationData = v14;

        if (v15)
        {
          v17 = +[AppleCV3DMOVKitLog defaultLog];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v116 = v15;
            _os_log_impl(&dword_24016D000, v17, OS_LOG_TYPE_ERROR, "Failed to recreate calibration data : %@", buf, 0xCu);
          }

          v18 = +[AppleCV3DMOVKitLog defaultLog];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v116 = v15;
            _os_log_impl(&dword_24016D000, v18, OS_LOG_TYPE_ERROR, "Failed to recreate calibration data : %@", buf, 0xCu);
          }

LABEL_18:

LABEL_24:
          objc_autoreleasePoolPop(v6);
          goto LABEL_25;
        }

        [(CVACameraCalibrationData *)v5 updateProperties:v5->_calibrationData];
      }

      else
      {
        v89 = [MEMORY[0x277CCAC38] processInfo];
        v90 = [v89 operatingSystemVersionString];
        v91 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v116 = v90;
          _os_log_impl(&dword_24016D000, v91, OS_LOG_TYPE_ERROR, "Failed to recreate calibration data : OS %@", buf, 0xCu);
        }
      }

      [(CVACameraCalibrationData *)v5 updateProperties:v5->_calibrationData];
      goto LABEL_24;
    }

    v19 = [v4 decodeObjectForKey:@"im"];
    v15 = v19;
    if (v19)
    {
      v20 = [v19 objectAtIndexedSubscript:0];
      [v20 floatValue];
      v109 = v21;

      v22 = [v15 objectAtIndexedSubscript:1];
      [v22 floatValue];
      v103 = v23;

      v24 = [v15 objectAtIndexedSubscript:2];
      [v24 floatValue];
      v26 = v25;
      v110 = __PAIR64__(v103, v109);

      v27 = [v15 objectAtIndexedSubscript:3];
      [v27 floatValue];
      v104 = v28;

      v29 = [v15 objectAtIndexedSubscript:4];
      [v29 floatValue];
      v98 = v30;

      v31 = [v15 objectAtIndexedSubscript:5];
      [v31 floatValue];
      v33 = v32;
      v105 = __PAIR64__(v98, v104);

      v34 = [v15 objectAtIndexedSubscript:6];
      [v34 floatValue];
      v99 = v35;

      v36 = [v15 objectAtIndexedSubscript:7];
      [v36 floatValue];
      v95 = v37;

      v38 = [v15 objectAtIndexedSubscript:8];
      [v38 floatValue];
      v40 = v39;

      *&v5->_anon_60[8] = v26;
      *v5->_anon_60 = v110;
      *&v5->_anon_60[12] = 0;
      *&v5->_anon_60[24] = v33;
      *&v5->_anon_60[16] = v105;
      *&v5->_anon_60[28] = 0;
      *&v5->_anon_60[40] = v40;
      *&v5->_anon_60[32] = __PAIR64__(v95, v99);
      *&v5->_anon_60[44] = 0;
    }

    v41 = [v4 decodeObjectForKey:@"imrd"];
    v18 = v41;
    if (v41)
    {
      v42 = [v41 objectAtIndexedSubscript:0];
      [v42 floatValue];
      v44 = v43;
      v45 = [v18 objectAtIndexedSubscript:1];
      [v45 floatValue];
      v5->_intrinsicMatrixReferenceDimensions.width = v44;
      v5->_intrinsicMatrixReferenceDimensions.height = v46;
    }

    v47 = [v4 decodeObjectForKey:@"em"];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 objectAtIndexedSubscript:0];
      [v49 floatValue];
      v111 = v50;

      v51 = [v48 objectAtIndexedSubscript:1];
      [v51 floatValue];
      v106 = v52;

      v53 = [v48 objectAtIndexedSubscript:2];
      [v53 floatValue];
      v55 = v54;
      v112 = __PAIR64__(v106, v111);

      v56 = [v48 objectAtIndexedSubscript:3];
      [v56 floatValue];
      v107 = v57;

      v58 = [v48 objectAtIndexedSubscript:4];
      [v58 floatValue];
      v100 = v59;

      v60 = [v48 objectAtIndexedSubscript:5];
      [v60 floatValue];
      v62 = v61;
      v108 = __PAIR64__(v100, v107);

      v63 = [v48 objectAtIndexedSubscript:6];
      [v63 floatValue];
      v101 = v64;

      v65 = [v48 objectAtIndexedSubscript:7];
      [v65 floatValue];
      v96 = v66;

      v67 = [v48 objectAtIndexedSubscript:8];
      [v67 floatValue];
      v69 = v68;
      v102 = __PAIR64__(v96, v101);

      v70 = [v48 objectAtIndexedSubscript:9];
      [v70 floatValue];
      v97 = v71;

      v72 = [v48 objectAtIndexedSubscript:10];
      [v72 floatValue];
      v94 = v73;

      v74 = [v48 objectAtIndexedSubscript:11];
      [v74 floatValue];
      v76 = v75;

      v5[1]._pixelSize = v55;
      v5[1].super.isa = v112;
      *(&v5[1]._pixelSize + 1) = 0;
      LODWORD(v5[1]._timestamp) = v62;
      v5[1]._streamID = v108;
      HIDWORD(v5[1]._timestamp) = 0;
      LODWORD(v5[1]._calibrationData) = v69;
      v5[1]._calibrationDictionary = v102;
      HIDWORD(v5[1]._calibrationData) = 0;
      LODWORD(v5[1]._inverseLensDistortionLookupTable) = v76;
      v5[1]._lensDistortionLookupTable = __PAIR64__(v94, v97);
      HIDWORD(v5[1]._inverseLensDistortionLookupTable) = 0;
    }

    [v4 decodeFloatForKey:{@"ps", v94}];
    v5->_pixelSize = v77;
    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ldlt"];
    lensDistortionLookupTable = v5->_lensDistortionLookupTable;
    v5->_lensDistortionLookupTable = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ildlt"];
    inverseLensDistortionLookupTable = v5->_inverseLensDistortionLookupTable;
    v5->_inverseLensDistortionLookupTable = v80;

    v82 = [v4 decodeObjectForKey:@"ldc"];
    v83 = v82;
    if (v82)
    {
      v84 = [v82 objectAtIndexedSubscript:0];
      [v84 floatValue];
      v86 = v85;
      v87 = [v83 objectAtIndexedSubscript:1];
      [v87 floatValue];
      v5->_lensDistortionCenter.x = v86;
      v5->_lensDistortionCenter.y = v88;
    }

    goto LABEL_18;
  }

LABEL_25:

  v92 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v63[9] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_streamID forKey:@"si"];
  [v4 encodeDouble:@"t" forKey:self->_timestamp];
  calibrationDictionary = self->_calibrationDictionary;
  if (calibrationDictionary)
  {
    [v4 encodeObject:calibrationDictionary forKey:@"d"];
  }

  else
  {
    LODWORD(v6) = *self->_anon_60;
    v56 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    v63[0] = v56;
    LODWORD(v8) = *&self->_anon_60[4];
    v54 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v63[1] = v54;
    LODWORD(v9) = *&self->_anon_60[8];
    v52 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v63[2] = v52;
    LODWORD(v10) = *&self->_anon_60[16];
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v63[3] = v11;
    LODWORD(v12) = *&self->_anon_60[20];
    [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v13 = v59 = v5;
    v63[4] = v13;
    LODWORD(v14) = *&self->_anon_60[24];
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v63[5] = v15;
    LODWORD(v16) = *&self->_anon_60[32];
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    v63[6] = v17;
    LODWORD(v18) = *&self->_anon_60[36];
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v63[7] = v19;
    LODWORD(v20) = *&self->_anon_60[40];
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v63[8] = v21;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:9];

    [v4 encodeObject:v58 forKey:@"im"];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.width];
    v62[0] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.height];
    v62[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    [v4 encodeObject:v24 forKey:@"imrd"];

    LODWORD(v25) = self[1].super.isa;
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
    v61[0] = v57;
    LODWORD(v26) = HIDWORD(self[1].super.isa);
    v55 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    v61[1] = v55;
    *&v27 = self[1]._pixelSize;
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
    v61[2] = v53;
    LODWORD(v28) = self[1]._streamID;
    v51 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    v61[3] = v51;
    LODWORD(v29) = HIDWORD(self[1]._streamID);
    v50 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
    v61[4] = v50;
    LODWORD(v30) = LODWORD(self[1]._timestamp);
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    v61[5] = v31;
    LODWORD(v32) = self[1]._calibrationDictionary;
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    v61[6] = v33;
    LODWORD(v34) = HIDWORD(self[1]._calibrationDictionary);
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
    v61[7] = v35;
    LODWORD(v36) = self[1]._calibrationData;
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    v61[8] = v37;
    LODWORD(v38) = self[1]._lensDistortionLookupTable;
    v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    v61[9] = v39;
    LODWORD(v40) = HIDWORD(self[1]._lensDistortionLookupTable);
    v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
    v61[10] = v41;
    LODWORD(v42) = self[1]._inverseLensDistortionLookupTable;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
    v61[11] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:12];

    [v4 encodeObject:v44 forKey:@"em"];
    *&v45 = self->_pixelSize;
    [v4 encodeFloat:@"ps" forKey:v45];
    [v4 encodeObject:self->_lensDistortionLookupTable forKey:@"ldlt"];
    [v4 encodeObject:self->_inverseLensDistortionLookupTable forKey:@"ildlt"];
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.x];
    v60[0] = v46;
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.y];
    v60[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    [v4 encodeObject:v48 forKey:@"ldc"];

    v5 = v59;
  }

  objc_autoreleasePoolPop(v5);

  v49 = *MEMORY[0x277D85DE8];
}

- (id)dictionary
{
  v78[2] = *MEMORY[0x277D85DE8];
  if (self->_streamID)
  {
    streamID = self->_streamID;
  }

  else
  {
    streamID = &stru_28521B010;
  }

  v4 = MEMORY[0x277CBEB38];
  v77[0] = @"si";
  v77[1] = @"t";
  v78[0] = streamID;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v78[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v7 = [v4 dictionaryWithDictionary:v6];

  calibrationDictionary = self->_calibrationDictionary;
  if (calibrationDictionary)
  {
    [v7 setObject:calibrationDictionary forKeyedSubscript:@"d"];
    goto LABEL_13;
  }

  v70 = v7;
  LODWORD(v8) = *self->_anon_60;
  v66 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v76[0] = v66;
  LODWORD(v10) = *&self->_anon_60[4];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v76[1] = v11;
  LODWORD(v12) = *&self->_anon_60[8];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v76[2] = v13;
  LODWORD(v14) = *&self->_anon_60[16];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v76[3] = v15;
  LODWORD(v16) = *&self->_anon_60[20];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v76[4] = v17;
  LODWORD(v18) = *&self->_anon_60[24];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v76[5] = v19;
  LODWORD(v20) = *&self->_anon_60[32];
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v76[6] = v21;
  LODWORD(v22) = *&self->_anon_60[36];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v76[7] = v23;
  LODWORD(v24) = *&self->_anon_60[40];
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v76[8] = v25;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:9];

  LODWORD(v26) = self[1].super.isa;
  v67 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v75[0] = v67;
  LODWORD(v27) = HIDWORD(self[1].super.isa);
  v64 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v75[1] = v64;
  *&v28 = self[1]._pixelSize;
  v62 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v75[2] = v62;
  LODWORD(v29) = self[1]._streamID;
  v61 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v75[3] = v61;
  LODWORD(v30) = HIDWORD(self[1]._streamID);
  v60 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v75[4] = v60;
  LODWORD(v31) = LODWORD(self[1]._timestamp);
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v75[5] = v59;
  LODWORD(v32) = self[1]._calibrationDictionary;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v75[6] = v33;
  LODWORD(v34) = HIDWORD(self[1]._calibrationDictionary);
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  v75[7] = v35;
  LODWORD(v36) = self[1]._calibrationData;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v75[8] = v37;
  LODWORD(v38) = self[1]._lensDistortionLookupTable;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v75[9] = v39;
  LODWORD(v40) = HIDWORD(self[1]._lensDistortionLookupTable);
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  v75[10] = v41;
  LODWORD(v42) = self[1]._inverseLensDistortionLookupTable;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  v75[11] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:12];

  v74[0] = v69;
  v73[0] = @"im";
  v73[1] = @"imrd";
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.width];
  v72[0] = v65;
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intrinsicMatrixReferenceDimensions.height];
  v72[1] = v63;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v74[1] = v45;
  v74[2] = v44;
  v68 = v44;
  v73[2] = @"em";
  v73[3] = @"ps";
  *&v46 = self->_pixelSize;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  v74[3] = v47;
  v73[4] = @"ldlt";
  lensDistortionLookupTable = self->_lensDistortionLookupTable;
  v49 = lensDistortionLookupTable;
  if (!lensDistortionLookupTable)
  {
    v49 = objc_opt_new();
  }

  v74[4] = v49;
  v73[5] = @"ildlt";
  inverseLensDistortionLookupTable = self->_inverseLensDistortionLookupTable;
  v51 = inverseLensDistortionLookupTable;
  if (!inverseLensDistortionLookupTable)
  {
    v51 = objc_opt_new();
  }

  v74[5] = v51;
  v73[6] = @"ldc";
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.x];
  v71[0] = v52;
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lensDistortionCenter.y];
  v71[1] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v74[6] = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:7];
  [v70 addEntriesFromDictionary:v55];

  if (!inverseLensDistortionLookupTable)
  {

    if (lensDistortionLookupTable)
    {
      goto LABEL_12;
    }

LABEL_17:

    goto LABEL_12;
  }

  if (!lensDistortionLookupTable)
  {
    goto LABEL_17;
  }

LABEL_12:

  v7 = v70;
LABEL_13:
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVACameraCalibrationData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (__n128)intrinsicMatrix
{
  result = *(a1 + 96);
  v2 = *(a1 + 112);
  v3 = *(a1 + 128);
  return result;
}

- (__n128)setIntrinsicMatrix:(__n128)a3
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  return result;
}

- (CGSize)intrinsicMatrixReferenceDimensions
{
  width = self->_intrinsicMatrixReferenceDimensions.width;
  height = self->_intrinsicMatrixReferenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)extrinsicMatrix
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  v4 = *(a1 + 192);
  return result;
}

- (__n128)setExtrinsicMatrix:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (CGPoint)lensDistortionCenter
{
  x = self->_lensDistortionCenter.x;
  y = self->_lensDistortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end