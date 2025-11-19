@interface CMWalkingBoutMobilityMetrics
+ (BoutMetrics)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMWalkingBoutMobilityMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMWalkingBoutMobilityMetrics)initWithCoder:(id)a3;
- (CMWalkingBoutMobilityMetrics)initWithRecordId:(unint64_t)a3 startTime:(id)a4 endTime:(id)a5 stepCount:(int)a6 workoutType:(int)a7 numGaitMetrics:(int)a8 deviceSide:(int64_t)a9 walkingSpeed:(double)a10 doubleSupportPercentage:(double)a11 stepLength:(double)a12 asymmetryPercentage:(double)a13 userHeight:(double)a14 userWeight:(double)a15 isHeightSet:(BOOL)a16 isWeightSet:(BOOL)a17 boundaryType:(int64_t)a18 cycleTimeMean:(double)a19 terminationReason:(int64_t)a20 invalidGradePercentage:(double)a21 segmentsRejectedByIsSwingStanceCycle:(unsigned int)a22 segmentsRejectedByIsNotRunning:(unsigned int)a23 segmentsRejectedByIsFeasibleWalkingSpeed:(unsigned int)a24 segmentsRejectedByIsPendular:(unsigned int)a25 segmentsRejectedByIsSufficientVerticalTwist:(unsigned int)a26 segmentsRejectedByIsCadenceConcordant:(unsigned int)a27 walkingSpeedRejectionStatus:(unsigned int)a28 doubleSupportPercentageRejectionStatus:(unsigned int)a29 stepLengthRejectionStatus:(unsigned int)a30 asymmetryPercentageRejectionStatus:(unsigned int)a31 stepLengthEntropy:(double)a32 stepLengthPoincareSD1:(double)a33 stepLengthPoincareSD2:(double)a34 cycleTimeEntropy:(double)a35 cycleTimePoincareSD1:(double)a36 cycleTimePoincareSD2:(double)a37 stepIndexOfHarmonicityAP:(double)a38 stepIndexOfHarmonicityML:(double)a39 stepIndexOfHarmonicityVT:(double)a40 swingIndexOfHarmonicityAP:(double)a41 swingIndexOfHarmonicityML:(double)a42 swingIndexOfHarmonicityVT:(double)a43;
- (CMWalkingBoutMobilityMetrics)initWithSample:(BoutMetrics *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWalkingBoutMobilityMetrics

- (CMWalkingBoutMobilityMetrics)initWithRecordId:(unint64_t)a3 startTime:(id)a4 endTime:(id)a5 stepCount:(int)a6 workoutType:(int)a7 numGaitMetrics:(int)a8 deviceSide:(int64_t)a9 walkingSpeed:(double)a10 doubleSupportPercentage:(double)a11 stepLength:(double)a12 asymmetryPercentage:(double)a13 userHeight:(double)a14 userWeight:(double)a15 isHeightSet:(BOOL)a16 isWeightSet:(BOOL)a17 boundaryType:(int64_t)a18 cycleTimeMean:(double)a19 terminationReason:(int64_t)a20 invalidGradePercentage:(double)a21 segmentsRejectedByIsSwingStanceCycle:(unsigned int)a22 segmentsRejectedByIsNotRunning:(unsigned int)a23 segmentsRejectedByIsFeasibleWalkingSpeed:(unsigned int)a24 segmentsRejectedByIsPendular:(unsigned int)a25 segmentsRejectedByIsSufficientVerticalTwist:(unsigned int)a26 segmentsRejectedByIsCadenceConcordant:(unsigned int)a27 walkingSpeedRejectionStatus:(unsigned int)a28 doubleSupportPercentageRejectionStatus:(unsigned int)a29 stepLengthRejectionStatus:(unsigned int)a30 asymmetryPercentageRejectionStatus:(unsigned int)a31 stepLengthEntropy:(double)a32 stepLengthPoincareSD1:(double)a33 stepLengthPoincareSD2:(double)a34 cycleTimeEntropy:(double)a35 cycleTimePoincareSD1:(double)a36 cycleTimePoincareSD2:(double)a37 stepIndexOfHarmonicityAP:(double)a38 stepIndexOfHarmonicityML:(double)a39 stepIndexOfHarmonicityVT:(double)a40 swingIndexOfHarmonicityAP:(double)a41 swingIndexOfHarmonicityML:(double)a42 swingIndexOfHarmonicityVT:(double)a43
{
  v60.receiver = self;
  v60.super_class = CMWalkingBoutMobilityMetrics;
  v57 = [(CMWalkingBoutMobilityMetrics *)&v60 init];
  v58 = v57;
  if (v57)
  {
    v57->fRecordId = a3;
    v57->fStartDate = a4;
    v58->fEndDate = a5;
    v58->fStepCount = a6;
    v58->fWorkoutType = a7;
    v58->fNumGaitMetrics = a8;
    v58->fDeviceSide = a9;
    v58->fWalkingSpeed = a10;
    v58->fDoubleSupportPercentage = a11;
    v58->fStepLength = a12;
    v58->fAsymmetryPercentage = a13;
    v58->fUserHeight = a14;
    v58->fIsHeightSet = a16;
    v58->fUserWeight = a15;
    v58->fIsWeightSet = a17;
    v58->fBoundaryType = a18;
    v58->fCycleTimeMean = a19;
    v58->fTerminationReason = a20;
    v58->fInvalidGradePercentage = a21;
    v58->fSegmentsRejectedByIsSwingStanceCycle = a22;
    v58->fSegmentsRejectedByIsNotRunning = a23;
    v58->fSegmentsRejectedByIsFeasibleWalkingSpeed = a24;
    v58->fSegmentsRejectedByIsPendular = a25;
    v58->fSegmentsRejectedByIsSufficientVerticalTwist = a26;
    v58->fSegmentsRejectedByIsCadenceConcordant = a27;
    v58->fWalkingSpeedRejectionStatus = a28;
    v58->fDoubleSupportPercentageRejectionStatus = a29;
    v58->fStepLengthRejectionStatus = a30;
    v58->fAsymmetryPercentageRejectionStatus = a31;
    v58->fStepLengthEntropy = a32;
    v58->fStepLengthPoincareSD1 = a33;
    v58->fStepLengthPoincareSD2 = a34;
    v58->fCycleTimeEntropy = a35;
    v58->fCycleTimePoincareSD1 = a36;
    v58->fCycleTimePoincareSD2 = a37;
    v58->fStepIndexOfHarmonicityAP = a38;
    v58->fStepIndexOfHarmonicityML = a39;
    v58->fStepIndexOfHarmonicityVT = a40;
    v58->fSwingIndexOfHarmonicityAP = a41;
    v58->fSwingIndexOfHarmonicityML = a42;
    v58->fSwingIndexOfHarmonicityVT = a43;
  }

  return v58;
}

- (CMWalkingBoutMobilityMetrics)initWithSample:(BoutMetrics *)a3
{
  v19.receiver = self;
  v19.super_class = CMWalkingBoutMobilityMetrics;
  v4 = [(CMWalkingBoutMobilityMetrics *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = a3->var0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, a3->var1);
    v9 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v9, v10, v11, a3->var2);
    v5->fWalkingSpeed = a3->var17;
    v5->fDoubleSupportPercentage = a3->var18;
    v5->fStepLength = a3->var19;
    var37 = a3->var37;
    v13 = *&a3->var21;
    v5->fAsymmetryPercentage = a3->var20;
    v5->fUserHeight = var37;
    v5->fUserWeight = a3->var39;
    v5->fCycleTimeMean = a3->var10;
    v5->fInvalidGradePercentage = a3->var7;
    v5->fStepLengthEntropy = a3->var11;
    v5->fStepLengthPoincareSD1 = a3->var12;
    v5->fStepLengthPoincareSD2 = a3->var13;
    v5->fCycleTimeEntropy = a3->var14;
    v5->fCycleTimePoincareSD1 = a3->var15;
    v5->fCycleTimePoincareSD2 = a3->var16;
    v14 = vcvtq_f64_f32(v13);
    v15 = *&a3->var25;
    v16 = vcvtq_f64_f32(*&a3->var23);
    *&v5->fStepIndexOfHarmonicityAP = v14;
    *&v5->fStepIndexOfHarmonicityVT = v16;
    v5->fStepCount = a3->var3;
    var5 = a3->var5;
    v5->fWorkoutType = a3->var4;
    v5->fNumGaitMetrics = a3->var6;
    v5->fDeviceSide = a3->var8;
    v5->fIsHeightSet = a3->var38;
    v5->fIsWeightSet = a3->var40;
    v5->fBoundaryType = a3->var9;
    v5->fTerminationReason = var5;
    v5->fSegmentsRejectedByIsSwingStanceCycle = a3->var27;
    v5->fSegmentsRejectedByIsNotRunning = a3->var28;
    v5->fSegmentsRejectedByIsFeasibleWalkingSpeed = a3->var29;
    v5->fSegmentsRejectedByIsPendular = a3->var30;
    v5->fSegmentsRejectedByIsSufficientVerticalTwist = a3->var31;
    v5->fSegmentsRejectedByIsCadenceConcordant = a3->var32;
    v5->fWalkingSpeedRejectionStatus = a3->var33;
    v5->fDoubleSupportPercentageRejectionStatus = a3->var34;
    v5->fStepLengthRejectionStatus = a3->var35;
    v5->fAsymmetryPercentageRejectionStatus = a3->var36;
    *&v5->fSwingIndexOfHarmonicityML = vcvtq_f64_f32(v15);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWalkingBoutMobilityMetrics;
  [(CMWalkingBoutMobilityMetrics *)&v3 dealloc];
}

- (CMWalkingBoutMobilityMetrics)initWithCoder:(id)a3
{
  v75.receiver = self;
  v75.super_class = CMWalkingBoutMobilityMetrics;
  v5 = [(CMWalkingBoutMobilityMetrics *)&v75 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMWalkingBoutMobilityMetricsCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMWalkingBoutMobilityMetricsCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMWalkingBoutMobilityMetricsCodingKeyEndDate");
    v5->fEndDate = objc_msgSend_copy(v13, v14, v15);
    v5->fStepCount = objc_msgSend_decodeIntegerForKey_(a3, v16, @"kCMWalkingBoutMobilityMetricsCodingKeyStepCount");
    v5->fWorkoutType = objc_msgSend_decodeIntegerForKey_(a3, v17, @"kCMWalkingBoutMobilityMetricsCodingKeyWorkoutType");
    v5->fNumGaitMetrics = objc_msgSend_decodeIntegerForKey_(a3, v18, @"kCMWalkingBoutMobilityMetricsCodingKeyNumGaitMetrics");
    v5->fDeviceSide = objc_msgSend_decodeIntegerForKey_(a3, v19, @"kCMWalkingBoutMobilityMetricsCodingKeyDeviceSide");
    objc_msgSend_decodeDoubleForKey_(a3, v20, @"kCMWalkingBoutMobilityMetricsCodingKeyWalkingSpeed");
    v5->fWalkingSpeed = v21;
    objc_msgSend_decodeDoubleForKey_(a3, v22, @"kCMWalkingBoutMobilityMetricsCodingKeyDoubleSupportPercentage");
    v5->fDoubleSupportPercentage = v23;
    objc_msgSend_decodeDoubleForKey_(a3, v24, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLength");
    v5->fStepLength = v25;
    objc_msgSend_decodeDoubleForKey_(a3, v26, @"kCMWalkingBoutMobilityMetricsCodingKeyAsymmetryPercentage");
    v5->fAsymmetryPercentage = v27;
    objc_msgSend_decodeDoubleForKey_(a3, v28, @"kCMWalkingBoutMobilityMetricsCodingKeyUserHeight");
    v5->fUserHeight = v29;
    v5->fIsHeightSet = objc_msgSend_decodeIntegerForKey_(a3, v30, @"kCMWalkingBoutMobilityMetricsCodingKeyIsHeightSet") != 0;
    objc_msgSend_decodeDoubleForKey_(a3, v31, @"kCMWalkingBoutMobilityMetricsCodingKeyUserWeight");
    v5->fUserWeight = v32;
    v5->fIsWeightSet = objc_msgSend_decodeIntegerForKey_(a3, v33, @"kCMWalkingBoutMobilityMetricsCodingKeyIsWeightSet") != 0;
    v5->fBoundaryType = objc_msgSend_decodeIntegerForKey_(a3, v34, @"kCMWalkingBoutMobilityMetricsCodingKeyBoundaryType");
    objc_msgSend_decodeDoubleForKey_(a3, v35, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimeMean");
    v5->fCycleTimeMean = v36;
    v5->fTerminationReason = objc_msgSend_decodeIntegerForKey_(a3, v37, @"kCMWalkingBoutMobilityMetricsCodingKeyTerminationReason");
    objc_msgSend_decodeDoubleForKey_(a3, v38, @"kCMWalkingBoutMobilityMetricsCodingKeyInvalidGradePercentage");
    v5->fInvalidGradePercentage = v39;
    v5->fSegmentsRejectedByIsSwingStanceCycle = objc_msgSend_decodeInt32ForKey_(a3, v40, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsSwingStanceCycle");
    v5->fSegmentsRejectedByIsNotRunning = objc_msgSend_decodeInt32ForKey_(a3, v41, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsNotRunning");
    v5->fSegmentsRejectedByIsFeasibleWalkingSpeed = objc_msgSend_decodeInt32ForKey_(a3, v42, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsFeasibleWalkingSpeed");
    v5->fSegmentsRejectedByIsPendular = objc_msgSend_decodeInt32ForKey_(a3, v43, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsPendular");
    v5->fSegmentsRejectedByIsSufficientVerticalTwist = objc_msgSend_decodeInt32ForKey_(a3, v44, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsSufficientVerticalTwist");
    v5->fSegmentsRejectedByIsCadenceConcordant = objc_msgSend_decodeInt32ForKey_(a3, v45, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsCadenceConcordant");
    v5->fWalkingSpeedRejectionStatus = objc_msgSend_decodeInt32ForKey_(a3, v46, @"kCMWalkingBoutMobilityMetricsCodingKeyWalkingSpeedRejectionStatus");
    v5->fDoubleSupportPercentageRejectionStatus = objc_msgSend_decodeInt32ForKey_(a3, v47, @"kCMWalkingBoutMobilityMetricsCodingKeyDoubleSupportPercentageRejectionStatus");
    v5->fStepLengthRejectionStatus = objc_msgSend_decodeInt32ForKey_(a3, v48, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthRejectionStatus");
    v5->fAsymmetryPercentageRejectionStatus = objc_msgSend_decodeInt32ForKey_(a3, v49, @"kCMWalkingBoutMobilityMetricsCodingKeyAsymmetryPercentageRejectionStatus");
    objc_msgSend_decodeDoubleForKey_(a3, v50, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthEntropy");
    v5->fStepLengthEntropy = v51;
    objc_msgSend_decodeDoubleForKey_(a3, v52, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthPoincareSD1");
    v5->fStepLengthPoincareSD1 = v53;
    objc_msgSend_decodeDoubleForKey_(a3, v54, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthPoincareSD2");
    v5->fStepLengthPoincareSD2 = v55;
    objc_msgSend_decodeDoubleForKey_(a3, v56, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimeEntropy");
    v5->fCycleTimeEntropy = v57;
    objc_msgSend_decodeDoubleForKey_(a3, v58, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimePoincareSD1");
    v5->fCycleTimePoincareSD1 = v59;
    objc_msgSend_decodeDoubleForKey_(a3, v60, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimePoincareSD2");
    v5->fCycleTimePoincareSD2 = v61;
    objc_msgSend_decodeDoubleForKey_(a3, v62, @"kCMWalkingBoutMobilityMetricsCodingKeyStepIndexOfHarmonicityAP");
    v5->fStepIndexOfHarmonicityAP = v63;
    objc_msgSend_decodeDoubleForKey_(a3, v64, @"kCMWalkingBoutMobilityMetricsCodingKeyStepIndexOfHarmonicityML");
    v5->fStepIndexOfHarmonicityML = v65;
    objc_msgSend_decodeDoubleForKey_(a3, v66, @"kCMWalkingBoutMobilityMetricsCodingKeyStepIndexOfHarmonicityVT");
    v5->fStepIndexOfHarmonicityVT = v67;
    objc_msgSend_decodeDoubleForKey_(a3, v68, @"kCMWalkingBoutMobilityMetricsCodingKeySwingIndexOfHarmonicityAP");
    v5->fSwingIndexOfHarmonicityAP = v69;
    objc_msgSend_decodeDoubleForKey_(a3, v70, @"kCMWalkingBoutMobilityMetricsCodingKeySwingIndexOfHarmonicityML");
    v5->fSwingIndexOfHarmonicityML = v71;
    objc_msgSend_decodeDoubleForKey_(a3, v72, @"kCMWalkingBoutMobilityMetricsCodingKeySwingIndexOfHarmonicityVT");
    v5->fSwingIndexOfHarmonicityVT = v73;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  fRecordId = self->fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, a3);
  v7 = v6;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEndDate, v8, v9);
  v11 = v10;
  fTerminationReason = self->fTerminationReason;
  fNumGaitMetrics = self->fNumGaitMetrics;
  fInvalidGradePercentage = self->fInvalidGradePercentage;
  fDeviceSide = self->fDeviceSide;
  fBoundaryType = self->fBoundaryType;
  *&v17 = self->fCycleTimeMean;
  v37 = *&self->fStepLengthPoincareSD1;
  v38 = *&self->fCycleTimeEntropy;
  *&v18 = self->fCycleTimePoincareSD2;
  fAsymmetryPercentage = self->fAsymmetryPercentage;
  *&v10 = self->fUserHeight;
  v39 = v10;
  fIsHeightSet = self->fIsHeightSet;
  fUserWeight = self->fUserWeight;
  fIsWeightSet = self->fIsWeightSet;
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->fStepIndexOfHarmonicityAP), *&self->fStepIndexOfHarmonicityVT);
  v36 = *&self->fDoubleSupportPercentage;
  v23 = vcvt_f32_f64(*&self->fSwingIndexOfHarmonicityML);
  *(&v17 + 1) = *&self->fStepLengthEntropy;
  v24 = *&self->fStepCount;
  *(&v18 + 1) = *&self->fWalkingSpeed;
  v31 = v18;
  v32 = v17;
  v33 = *&self->fSegmentsRejectedByIsSufficientVerticalTwist;
  v34 = *&self->fSegmentsRejectedByIsSwingStanceCycle;
  v25 = *&self->fStepLengthRejectionStatus;
  v26 = objc_opt_class();
  v28 = objc_msgSend_allocWithZone_(v26, v27, a3);
  v40 = fRecordId;
  v41 = v7;
  v42 = v11;
  v43 = v24;
  v44 = fTerminationReason;
  v45 = fNumGaitMetrics;
  v46 = fInvalidGradePercentage;
  v47 = fDeviceSide;
  v48 = fBoundaryType;
  v49 = v32;
  v50 = v37;
  v51 = v38;
  v52 = v31;
  v53 = v36;
  v54 = fAsymmetryPercentage;
  v55 = v35;
  v57 = v34;
  v58 = v33;
  v56 = v23;
  v59 = v25;
  v60 = v39;
  v61 = fIsHeightSet;
  v62 = fUserWeight;
  v63 = fIsWeightSet;
  return objc_msgSend_initWithSample_(v28, v29, &v40);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMWalkingBoutMobilityMetricsCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kCMWalkingBoutMobilityMetricsCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fEndDate, @"kCMWalkingBoutMobilityMetricsCodingKeyEndDate");
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->fStepCount, @"kCMWalkingBoutMobilityMetricsCodingKeyStepCount");
  objc_msgSend_encodeInteger_forKey_(a3, v8, self->fWorkoutType, @"kCMWalkingBoutMobilityMetricsCodingKeyWorkoutType");
  objc_msgSend_encodeInteger_forKey_(a3, v9, self->fNumGaitMetrics, @"kCMWalkingBoutMobilityMetricsCodingKeyNumGaitMetrics");
  objc_msgSend_encodeInteger_forKey_(a3, v10, self->fDeviceSide, @"kCMWalkingBoutMobilityMetricsCodingKeyDeviceSide");
  objc_msgSend_encodeDouble_forKey_(a3, v11, @"kCMWalkingBoutMobilityMetricsCodingKeyWalkingSpeed", self->fWalkingSpeed);
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kCMWalkingBoutMobilityMetricsCodingKeyDoubleSupportPercentage", self->fDoubleSupportPercentage);
  objc_msgSend_encodeDouble_forKey_(a3, v13, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLength", self->fStepLength);
  objc_msgSend_encodeDouble_forKey_(a3, v14, @"kCMWalkingBoutMobilityMetricsCodingKeyAsymmetryPercentage", self->fAsymmetryPercentage);
  objc_msgSend_encodeDouble_forKey_(a3, v15, @"kCMWalkingBoutMobilityMetricsCodingKeyUserHeight", self->fUserHeight);
  objc_msgSend_encodeInteger_forKey_(a3, v16, self->fIsHeightSet, @"kCMWalkingBoutMobilityMetricsCodingKeyIsHeightSet");
  objc_msgSend_encodeDouble_forKey_(a3, v17, @"kCMWalkingBoutMobilityMetricsCodingKeyUserWeight", self->fUserWeight);
  objc_msgSend_encodeInteger_forKey_(a3, v18, self->fIsWeightSet, @"kCMWalkingBoutMobilityMetricsCodingKeyIsWeightSet");
  objc_msgSend_encodeInteger_forKey_(a3, v19, self->fBoundaryType, @"kCMWalkingBoutMobilityMetricsCodingKeyBoundaryType");
  objc_msgSend_encodeDouble_forKey_(a3, v20, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimeMean", self->fCycleTimeMean);
  objc_msgSend_encodeInteger_forKey_(a3, v21, self->fTerminationReason, @"kCMWalkingBoutMobilityMetricsCodingKeyTerminationReason");
  objc_msgSend_encodeDouble_forKey_(a3, v22, @"kCMWalkingBoutMobilityMetricsCodingKeyInvalidGradePercentage", self->fInvalidGradePercentage);
  objc_msgSend_encodeInt32_forKey_(a3, v23, self->fSegmentsRejectedByIsSwingStanceCycle, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsSwingStanceCycle");
  objc_msgSend_encodeInt32_forKey_(a3, v24, self->fSegmentsRejectedByIsNotRunning, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsNotRunning");
  objc_msgSend_encodeInt32_forKey_(a3, v25, self->fSegmentsRejectedByIsFeasibleWalkingSpeed, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsFeasibleWalkingSpeed");
  objc_msgSend_encodeInt32_forKey_(a3, v26, self->fSegmentsRejectedByIsPendular, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsPendular");
  objc_msgSend_encodeInt32_forKey_(a3, v27, self->fSegmentsRejectedByIsSufficientVerticalTwist, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsSufficientVerticalTwist");
  objc_msgSend_encodeInt32_forKey_(a3, v28, self->fSegmentsRejectedByIsCadenceConcordant, @"kCMWalkingBoutMobilityMetricsCodingKeySegmentsRejectedByIsCadenceConcordant");
  objc_msgSend_encodeInt32_forKey_(a3, v29, self->fWalkingSpeedRejectionStatus, @"kCMWalkingBoutMobilityMetricsCodingKeyWalkingSpeedRejectionStatus");
  objc_msgSend_encodeInt32_forKey_(a3, v30, self->fDoubleSupportPercentageRejectionStatus, @"kCMWalkingBoutMobilityMetricsCodingKeyDoubleSupportPercentageRejectionStatus");
  objc_msgSend_encodeInt32_forKey_(a3, v31, self->fStepLengthRejectionStatus, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthRejectionStatus");
  objc_msgSend_encodeInt32_forKey_(a3, v32, self->fAsymmetryPercentageRejectionStatus, @"kCMWalkingBoutMobilityMetricsCodingKeyAsymmetryPercentageRejectionStatus");
  objc_msgSend_encodeDouble_forKey_(a3, v33, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthEntropy", self->fStepLengthEntropy);
  objc_msgSend_encodeDouble_forKey_(a3, v34, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthPoincareSD1", self->fStepLengthPoincareSD1);
  objc_msgSend_encodeDouble_forKey_(a3, v35, @"kCMWalkingBoutMobilityMetricsCodingKeyStepLengthPoincareSD2", self->fStepLengthPoincareSD2);
  objc_msgSend_encodeDouble_forKey_(a3, v36, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimeEntropy", self->fCycleTimeEntropy);
  objc_msgSend_encodeDouble_forKey_(a3, v37, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimePoincareSD1", self->fCycleTimePoincareSD1);
  objc_msgSend_encodeDouble_forKey_(a3, v38, @"kCMWalkingBoutMobilityMetricsCodingKeyCycleTimePoincareSD2", self->fCycleTimePoincareSD2);
  objc_msgSend_encodeDouble_forKey_(a3, v39, @"kCMWalkingBoutMobilityMetricsCodingKeyStepIndexOfHarmonicityAP", self->fStepIndexOfHarmonicityAP);
  objc_msgSend_encodeDouble_forKey_(a3, v40, @"kCMWalkingBoutMobilityMetricsCodingKeyStepIndexOfHarmonicityML", self->fStepIndexOfHarmonicityML);
  objc_msgSend_encodeDouble_forKey_(a3, v41, @"kCMWalkingBoutMobilityMetricsCodingKeyStepIndexOfHarmonicityVT", self->fStepIndexOfHarmonicityVT);
  objc_msgSend_encodeDouble_forKey_(a3, v42, @"kCMWalkingBoutMobilityMetricsCodingKeySwingIndexOfHarmonicityAP", self->fSwingIndexOfHarmonicityAP);
  objc_msgSend_encodeDouble_forKey_(a3, v43, @"kCMWalkingBoutMobilityMetricsCodingKeySwingIndexOfHarmonicityML", self->fSwingIndexOfHarmonicityML);
  fSwingIndexOfHarmonicityVT = self->fSwingIndexOfHarmonicityVT;

  objc_msgSend_encodeDouble_forKey_(a3, v44, @"kCMWalkingBoutMobilityMetricsCodingKeySwingIndexOfHarmonicityVT", fSwingIndexOfHarmonicityVT);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(a3, v8, v9))
  {
    goto LABEL_47;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(a3, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(a3, v15, v16), (isEqualToDate = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    if (!objc_msgSend_endDate(self, v12, v13) && !objc_msgSend_endDate(a3, v20, v21) || (v22 = objc_msgSend_endDate(self, v20, v21), v25 = objc_msgSend_endDate(a3, v23, v24), (isEqualToDate = objc_msgSend_isEqualToDate_(v22, v26, v25)) != 0))
    {
      v27 = objc_msgSend_stepCount(self, v20, v21);
      if (v27 == objc_msgSend_stepCount(a3, v28, v29))
      {
        v32 = objc_msgSend_workoutType(self, v30, v31);
        if (v32 == objc_msgSend_workoutType(a3, v33, v34))
        {
          v37 = objc_msgSend_numGaitMetrics(self, v35, v36);
          if (v37 == objc_msgSend_numGaitMetrics(a3, v38, v39))
          {
            v42 = objc_msgSend_deviceSide(self, v40, v41);
            if (v42 == objc_msgSend_deviceSide(a3, v43, v44))
            {
              objc_msgSend_walkingSpeed(self, v45, v46);
              v48 = v47;
              objc_msgSend_walkingSpeed(a3, v49, v50);
              if (v48 == v53)
              {
                objc_msgSend_doubleSupportPercentage(self, v51, v52);
                v55 = v54;
                objc_msgSend_doubleSupportPercentage(a3, v56, v57);
                if (v55 == v60)
                {
                  objc_msgSend_stepLength(self, v58, v59);
                  v62 = v61;
                  objc_msgSend_stepLength(a3, v63, v64);
                  if (v62 == v67)
                  {
                    objc_msgSend_asymmetryPercentage(self, v65, v66);
                    v69 = v68;
                    objc_msgSend_asymmetryPercentage(a3, v70, v71);
                    if (v69 == v74)
                    {
                      objc_msgSend_userHeight(self, v72, v73);
                      v76 = v75;
                      objc_msgSend_userHeight(a3, v77, v78);
                      if (v76 == v81)
                      {
                        isHeightSet = objc_msgSend_isHeightSet(self, v79, v80);
                        if (isHeightSet == objc_msgSend_isHeightSet(a3, v83, v84))
                        {
                          objc_msgSend_userWeight(self, v85, v86);
                          v88 = v87;
                          objc_msgSend_userWeight(a3, v89, v90);
                          if (v88 == v93)
                          {
                            isWeightSet = objc_msgSend_isWeightSet(self, v91, v92);
                            if (isWeightSet == objc_msgSend_isWeightSet(a3, v95, v96))
                            {
                              v99 = objc_msgSend_boundaryType(self, v97, v98);
                              if (v99 == objc_msgSend_boundaryType(a3, v100, v101))
                              {
                                objc_msgSend_cycleTimeMean(self, v102, v103);
                                v105 = v104;
                                objc_msgSend_cycleTimeMean(a3, v106, v107);
                                if (v105 == v110)
                                {
                                  v111 = objc_msgSend_terminationReason(self, v108, v109);
                                  if (v111 == objc_msgSend_terminationReason(a3, v112, v113))
                                  {
                                    objc_msgSend_invalidGradePercentage(self, v114, v115);
                                    v117 = v116;
                                    objc_msgSend_invalidGradePercentage(a3, v118, v119);
                                    if (v117 == v122)
                                    {
                                      IsSwingStanceCycle = objc_msgSend_segmentsRejectedByIsSwingStanceCycle(self, v120, v121);
                                      if (IsSwingStanceCycle == objc_msgSend_segmentsRejectedByIsSwingStanceCycle(a3, v124, v125))
                                      {
                                        IsNotRunning = objc_msgSend_segmentsRejectedByIsNotRunning(self, v126, v127);
                                        if (IsNotRunning == objc_msgSend_segmentsRejectedByIsNotRunning(a3, v129, v130))
                                        {
                                          IsFeasibleWalkingSpeed = objc_msgSend_segmentsRejectedByIsFeasibleWalkingSpeed(self, v131, v132);
                                          if (IsFeasibleWalkingSpeed == objc_msgSend_segmentsRejectedByIsFeasibleWalkingSpeed(a3, v134, v135))
                                          {
                                            IsPendular = objc_msgSend_segmentsRejectedByIsPendular(self, v136, v137);
                                            if (IsPendular == objc_msgSend_segmentsRejectedByIsPendular(a3, v139, v140))
                                            {
                                              IsSufficientVerticalTwist = objc_msgSend_segmentsRejectedByIsSufficientVerticalTwist(self, v141, v142);
                                              if (IsSufficientVerticalTwist == objc_msgSend_segmentsRejectedByIsSufficientVerticalTwist(a3, v144, v145))
                                              {
                                                IsCadenceConcordant = objc_msgSend_segmentsRejectedByIsCadenceConcordant(self, v146, v147);
                                                if (IsCadenceConcordant == objc_msgSend_segmentsRejectedByIsCadenceConcordant(a3, v149, v150))
                                                {
                                                  v153 = objc_msgSend_walkingSpeedRejectionStatus(self, v151, v152);
                                                  if (v153 == objc_msgSend_walkingSpeedRejectionStatus(a3, v154, v155))
                                                  {
                                                    v158 = objc_msgSend_doubleSupportPercentageRejectionStatus(self, v156, v157);
                                                    if (v158 == objc_msgSend_doubleSupportPercentageRejectionStatus(a3, v159, v160))
                                                    {
                                                      v163 = objc_msgSend_stepLengthRejectionStatus(self, v161, v162);
                                                      if (v163 == objc_msgSend_stepLengthRejectionStatus(a3, v164, v165))
                                                      {
                                                        v168 = objc_msgSend_asymmetryPercentageRejectionStatus(self, v166, v167);
                                                        if (v168 == objc_msgSend_asymmetryPercentageRejectionStatus(a3, v169, v170))
                                                        {
                                                          objc_msgSend_stepLengthEntropy(self, v171, v172);
                                                          v174 = v173;
                                                          objc_msgSend_stepLengthEntropy(a3, v175, v176);
                                                          if (v174 == v179)
                                                          {
                                                            objc_msgSend_stepLengthPoincareSD1(self, v177, v178);
                                                            v181 = v180;
                                                            objc_msgSend_stepLengthPoincareSD1(a3, v182, v183);
                                                            if (v181 == v186)
                                                            {
                                                              objc_msgSend_stepLengthPoincareSD2(self, v184, v185);
                                                              v188 = v187;
                                                              objc_msgSend_stepLengthPoincareSD2(a3, v189, v190);
                                                              if (v188 == v193)
                                                              {
                                                                objc_msgSend_cycleTimeEntropy(self, v191, v192);
                                                                v195 = v194;
                                                                objc_msgSend_cycleTimeEntropy(a3, v196, v197);
                                                                if (v195 == v200)
                                                                {
                                                                  objc_msgSend_cycleTimePoincareSD1(self, v198, v199);
                                                                  v202 = v201;
                                                                  objc_msgSend_cycleTimePoincareSD1(a3, v203, v204);
                                                                  if (v202 == v207)
                                                                  {
                                                                    objc_msgSend_cycleTimePoincareSD2(self, v205, v206);
                                                                    v209 = v208;
                                                                    objc_msgSend_cycleTimePoincareSD2(a3, v210, v211);
                                                                    if (v209 == v214)
                                                                    {
                                                                      objc_msgSend_stepIndexOfHarmonicityAP(self, v212, v213);
                                                                      v216 = v215;
                                                                      objc_msgSend_stepIndexOfHarmonicityAP(a3, v217, v218);
                                                                      if (v216 == v221)
                                                                      {
                                                                        objc_msgSend_stepIndexOfHarmonicityML(self, v219, v220);
                                                                        v223 = v222;
                                                                        objc_msgSend_stepIndexOfHarmonicityML(a3, v224, v225);
                                                                        if (v223 == v228)
                                                                        {
                                                                          objc_msgSend_stepIndexOfHarmonicityVT(self, v226, v227);
                                                                          v230 = v229;
                                                                          objc_msgSend_stepIndexOfHarmonicityVT(a3, v231, v232);
                                                                          if (v230 == v235)
                                                                          {
                                                                            objc_msgSend_swingIndexOfHarmonicityAP(self, v233, v234);
                                                                            v237 = v236;
                                                                            objc_msgSend_swingIndexOfHarmonicityAP(a3, v238, v239);
                                                                            if (v237 == v242)
                                                                            {
                                                                              objc_msgSend_swingIndexOfHarmonicityML(self, v240, v241);
                                                                              v244 = v243;
                                                                              objc_msgSend_swingIndexOfHarmonicityML(a3, v245, v246);
                                                                              if (v244 == v249)
                                                                              {
                                                                                objc_msgSend_swingIndexOfHarmonicityVT(self, v247, v248);
                                                                                v251 = v250;
                                                                                objc_msgSend_swingIndexOfHarmonicityVT(a3, v252, v253);
                                                                                LOBYTE(isEqualToDate) = v251 == v254;
                                                                                return isEqualToDate;
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_47:
      LOBYTE(isEqualToDate) = 0;
    }
  }

  return isEqualToDate;
}

- (NSString)description
{
  v149 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v148 = NSStringFromClass(v3);
  v147 = objc_msgSend_recordId(self, v4, v5);
  started = objc_msgSend_startDate(self, v6, v7);
  v145 = objc_msgSend_endDate(self, v8, v9);
  v144 = objc_msgSend_stepCount(self, v10, v11);
  v143 = objc_msgSend_workoutType(self, v12, v13);
  v142 = objc_msgSend_numGaitMetrics(self, v14, v15);
  v141 = objc_msgSend_deviceSide(self, v16, v17);
  objc_msgSend_walkingSpeed(self, v18, v19);
  v140 = v20;
  objc_msgSend_doubleSupportPercentage(self, v21, v22);
  v139 = v23;
  objc_msgSend_stepLength(self, v24, v25);
  v138 = v26;
  objc_msgSend_asymmetryPercentage(self, v27, v28);
  v137 = v29;
  objc_msgSend_userHeight(self, v30, v31);
  v136 = v32;
  isHeightSet = objc_msgSend_isHeightSet(self, v33, v34);
  objc_msgSend_userWeight(self, v35, v36);
  v134 = v37;
  isWeightSet = objc_msgSend_isWeightSet(self, v38, v39);
  v132 = objc_msgSend_boundaryType(self, v40, v41);
  objc_msgSend_cycleTimeMean(self, v42, v43);
  v131 = v44;
  v130 = objc_msgSend_terminationReason(self, v45, v46);
  objc_msgSend_invalidGradePercentage(self, v47, v48);
  v129 = v49;
  IsSwingStanceCycle = objc_msgSend_segmentsRejectedByIsSwingStanceCycle(self, v50, v51);
  IsNotRunning = objc_msgSend_segmentsRejectedByIsNotRunning(self, v52, v53);
  IsFeasibleWalkingSpeed = objc_msgSend_segmentsRejectedByIsFeasibleWalkingSpeed(self, v55, v56);
  IsPendular = objc_msgSend_segmentsRejectedByIsPendular(self, v58, v59);
  IsSufficientVerticalTwist = objc_msgSend_segmentsRejectedByIsSufficientVerticalTwist(self, v61, v62);
  IsCadenceConcordant = objc_msgSend_segmentsRejectedByIsCadenceConcordant(self, v64, v65);
  v69 = objc_msgSend_walkingSpeedRejectionStatus(self, v67, v68);
  v72 = objc_msgSend_stepLengthRejectionStatus(self, v70, v71);
  v75 = objc_msgSend_doubleSupportPercentageRejectionStatus(self, v73, v74);
  v78 = objc_msgSend_asymmetryPercentageRejectionStatus(self, v76, v77);
  objc_msgSend_stepLengthEntropy(self, v79, v80);
  v127 = v81;
  objc_msgSend_stepLengthPoincareSD1(self, v82, v83);
  v126 = v84;
  objc_msgSend_stepLengthPoincareSD2(self, v85, v86);
  v125 = v87;
  objc_msgSend_cycleTimeEntropy(self, v88, v89);
  v91 = v90;
  objc_msgSend_cycleTimePoincareSD1(self, v92, v93);
  v95 = v94;
  objc_msgSend_cycleTimePoincareSD2(self, v96, v97);
  v99 = v98;
  objc_msgSend_stepIndexOfHarmonicityAP(self, v100, v101);
  v103 = v102;
  objc_msgSend_stepIndexOfHarmonicityML(self, v104, v105);
  v107 = v106;
  objc_msgSend_stepIndexOfHarmonicityVT(self, v108, v109);
  v111 = v110;
  objc_msgSend_swingIndexOfHarmonicityAP(self, v112, v113);
  v115 = v114;
  objc_msgSend_swingIndexOfHarmonicityML(self, v116, v117);
  v119 = v118;
  objc_msgSend_swingIndexOfHarmonicityVT(self, v120, v121);
  return objc_msgSend_stringWithFormat_(v149, v122, @"%@, <recordId, %lu, startDate, %@, endDate, %@, stepCount, %.3d, workoutType, %lu, numGaitMetrics, %d, deviceSide, %lu, walkingSpeed, %f, doubleSupportPercentage, %f, stepLength, %f, asymmetryPercentage, %f, userHeight, %f, isHeightSet, %d, userWeight, %f, isWeightSet, %d, boundaryType, %lu, cycleTimeMean, %f, terminationReason, %lu, invalidGradePercentage, %f, segmentsRejectedByIsSwingStanceCycle, %d, segmentsRejectedByIsNotRunning, %d, segmentsRejectedByIsFeasibleWalkingSpeed, %d, segmentsRejectedByIsPendular, %d, segmentsRejectedByIsSufficientVerticalTwist, %d, segmentsRejectedByIsCadenceConcordant, %d, walkingSpeedRejectionStatus, %d, stepLengthRejectionStatus, %d, doubleSupportPercentageRejectionStatus, %d, asymmetryPercentageRejectionStatus, %d, stepLengthEntropy, %f, stepLengthPoincareSD1, %f, stepLengthPoincareSD2, %f, cycleTimeEntropy, %f, cycleTimePoincareSD1, %f, cycleTimePoincareSD2, %f, stepIndexOfHarmonicityAP, %f, stepIndexOfHarmonicityML, %f, stepIndexOfHarmonicityVT, %f, swingIndexOfHarmonicityAP, %f, swingIndexOfHarmonicityML, %f, swingIndexOfHarmonicityVT, %f>", v148, v147, started, v145, v144, v143, v142, v141, v140, v139, v138, v137, v136, isHeightSet, v134, isWeightSet, v132, v131, v130, v129, IsSwingStanceCycle, IsNotRunning, IsFeasibleWalkingSpeed, IsPendular, IsSufficientVerticalTwist, IsCadenceConcordant, v69, v72, v75, v78, v127, v126, v125, v91, v95, v99, v103, v107, v111, v115, v119, v123);
}

+ (BoutMetrics)inputFromPreparedStatement:(SEL)a3
{
  retstr->var0 = sqlite3_column_int(a4, 0);
  retstr->var1 = sqlite3_column_double(a4, 1);
  retstr->var2 = sqlite3_column_double(a4, 2);
  retstr->var3 = sqlite3_column_int(a4, 3);
  retstr->var4 = sqlite3_column_int(a4, 4);
  retstr->var5 = sqlite3_column_int(a4, 5);
  retstr->var6 = sqlite3_column_int(a4, 6);
  retstr->var7 = sqlite3_column_double(a4, 7);
  retstr->var8 = sqlite3_column_int(a4, 8);
  retstr->var9 = sqlite3_column_int(a4, 27);
  retstr->var10 = sqlite3_column_double(a4, 28);
  retstr->var11 = sqlite3_column_double(a4, 29);
  retstr->var12 = sqlite3_column_double(a4, 30);
  retstr->var13 = sqlite3_column_double(a4, 31);
  retstr->var14 = sqlite3_column_double(a4, 32);
  retstr->var15 = sqlite3_column_double(a4, 33);
  retstr->var16 = sqlite3_column_double(a4, 34);
  retstr->var17 = sqlite3_column_double(a4, 9);
  retstr->var18 = sqlite3_column_double(a4, 10);
  retstr->var19 = sqlite3_column_double(a4, 11);
  retstr->var20 = sqlite3_column_double(a4, 12);
  v6 = sqlite3_column_double(a4, 35);
  retstr->var21 = v6;
  v7 = sqlite3_column_double(a4, 36);
  retstr->var22 = v7;
  v8 = sqlite3_column_double(a4, 37);
  retstr->var23 = v8;
  v9 = sqlite3_column_double(a4, 38);
  retstr->var24 = v9;
  v10 = sqlite3_column_double(a4, 39);
  retstr->var25 = v10;
  v11 = sqlite3_column_double(a4, 40);
  retstr->var26 = v11;
  retstr->var27 = sqlite3_column_int(a4, 13);
  retstr->var28 = sqlite3_column_int(a4, 14);
  retstr->var29 = sqlite3_column_int(a4, 15);
  retstr->var30 = sqlite3_column_int(a4, 16);
  retstr->var31 = sqlite3_column_int(a4, 17);
  retstr->var32 = sqlite3_column_int(a4, 18);
  retstr->var33 = sqlite3_column_int(a4, 19);
  retstr->var34 = sqlite3_column_int(a4, 20);
  retstr->var35 = sqlite3_column_int(a4, 21);
  retstr->var36 = sqlite3_column_int(a4, 22);
  v12 = sqlite3_column_double(a4, 23);
  retstr->var37 = v12;
  retstr->var38 = sqlite3_column_int(a4, 24) != 0;
  v13 = sqlite3_column_double(a4, 25);
  retstr->var39 = v13;
  result = sqlite3_column_int(a4, 26);
  retstr->var40 = result != 0;
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMWalkingBoutMobilityMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMWalkingBoutMobilityMetrics;
    v7 = [(CMWalkingBoutMobilityMetrics *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, a3, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (id)sr_dictionaryRepresentation
{
  v77[13] = *MEMORY[0x1E69E9840];
  v76[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v77[0] = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v76[1] = @"endTime";
  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_endDate(self, v11, v12);
  objc_msgSend_timeIntervalSinceReferenceDate(v13, v14, v15);
  v77[1] = objc_msgSend_numberWithDouble_(v10, v16, v17);
  v76[2] = @"stepCount";
  v18 = MEMORY[0x1E696AD98];
  v21 = objc_msgSend_stepCount(self, v19, v20);
  v77[2] = objc_msgSend_numberWithInt_(v18, v22, v21);
  v76[3] = @"workoutType";
  v23 = MEMORY[0x1E696AD98];
  v26 = objc_msgSend_workoutType(self, v24, v25);
  v77[3] = objc_msgSend_numberWithInt_(v23, v27, v26);
  v76[4] = @"deviceSide";
  v28 = MEMORY[0x1E696AD98];
  v31 = objc_msgSend_deviceSide(self, v29, v30);
  v77[4] = objc_msgSend_numberWithInteger_(v28, v32, v31);
  v76[5] = @"walkingSpeed";
  v33 = MEMORY[0x1E696AD98];
  objc_msgSend_walkingSpeed(self, v34, v35);
  v77[5] = objc_msgSend_numberWithDouble_(v33, v36, v37);
  v76[6] = @"doubleSupportPercentage";
  v38 = MEMORY[0x1E696AD98];
  objc_msgSend_doubleSupportPercentage(self, v39, v40);
  v77[6] = objc_msgSend_numberWithDouble_(v38, v41, v42);
  v76[7] = @"stepLength";
  v43 = MEMORY[0x1E696AD98];
  objc_msgSend_stepLength(self, v44, v45);
  v77[7] = objc_msgSend_numberWithDouble_(v43, v46, v47);
  v76[8] = @"asymmetryPercentage";
  v48 = MEMORY[0x1E696AD98];
  objc_msgSend_asymmetryPercentage(self, v49, v50);
  v77[8] = objc_msgSend_numberWithDouble_(v48, v51, v52);
  v76[9] = @"userHeight";
  v53 = MEMORY[0x1E696AD98];
  objc_msgSend_userHeight(self, v54, v55);
  v77[9] = objc_msgSend_numberWithDouble_(v53, v56, v57);
  v76[10] = @"isHeightSet";
  v58 = MEMORY[0x1E696AD98];
  isHeightSet = objc_msgSend_isHeightSet(self, v59, v60);
  v77[10] = objc_msgSend_numberWithBool_(v58, v62, isHeightSet);
  v76[11] = @"userWeight";
  v63 = MEMORY[0x1E696AD98];
  objc_msgSend_userWeight(self, v64, v65);
  v77[11] = objc_msgSend_numberWithDouble_(v63, v66, v67);
  v76[12] = @"isWeightSet";
  v68 = MEMORY[0x1E696AD98];
  isWeightSet = objc_msgSend_isWeightSet(self, v69, v70);
  v77[12] = objc_msgSend_numberWithBool_(v68, v72, isWeightSet);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v73, v77, v76, 13);
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

@end