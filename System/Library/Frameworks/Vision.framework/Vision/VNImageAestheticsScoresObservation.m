@interface VNImageAestheticsScoresObservation
+ (id)observationForOriginatingRequestSpecifier:(id)a3 isUtility:(BOOL)a4 overallScore:(float)a5 aestheticScore:(float)a6 failureScore:(float)a7 junkNegativeScore:(float)a8 junkTragicFailureScore:(float)a9 poorQualityScore:(float)a10 nonMemorableScore:(float)a11 screenShotScore:(float)a12 receiptOrDocumentScore:(float)a13 textDocumentScore:(float)a14 error:(id *)a15;
- (VNImageAestheticsScoresObservation)initWithCoder:(id)a3;
- (id)_initWithOriginatingRequestSpecifier:(id)a3 isUtility:(BOOL)a4 overallScore:(float)a5 aestheticScore:(float)a6 failureScore:(float)a7 junkNegativeScore:(float)a8 junkTragicFailureScore:(float)a9 poorQualityScore:(float)a10 nonMemorableScore:(float)a11 screenShotScore:(float)a12 receiptOrDocumentScore:(float)a13 textDocumentScore:(float)a14;
- (id)vn_cloneObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNImageAestheticsScoresObservation

- (id)vn_cloneObject
{
  v5.receiver = self;
  v5.super_class = VNImageAestheticsScoresObservation;
  v3 = [(VNObservation *)&v5 vn_cloneObject];
  if (v3)
  {
    *(v3 + 96) = self->_isUtility;
    *(v3 + 100) = self->_overallScore;
    *(v3 + 104) = self->_aestheticScore;
    *(v3 + 108) = self->_failureScore;
    *(v3 + 112) = self->_junkNegativeScore;
    *(v3 + 116) = self->_junkTragicFailureScore;
    *(v3 + 120) = self->_poorQualityScore;
    *(v3 + 124) = self->_nonMemorableScore;
    *(v3 + 128) = self->_screenShotScore;
    *(v3 + 132) = self->_receiptOrDocumentScore;
    *(v3 + 136) = self->_textDocumentScore;
  }

  return v3;
}

- (id)_initWithOriginatingRequestSpecifier:(id)a3 isUtility:(BOOL)a4 overallScore:(float)a5 aestheticScore:(float)a6 failureScore:(float)a7 junkNegativeScore:(float)a8 junkTragicFailureScore:(float)a9 poorQualityScore:(float)a10 nonMemorableScore:(float)a11 screenShotScore:(float)a12 receiptOrDocumentScore:(float)a13 textDocumentScore:(float)a14
{
  v24.receiver = self;
  v24.super_class = VNImageAestheticsScoresObservation;
  result = [(VNObservation *)&v24 initWithOriginatingRequestSpecifier:a3];
  if (result)
  {
    *(result + 96) = a4;
    *(result + 25) = a5;
    *(result + 26) = a6;
    *(result + 27) = a7;
    *(result + 28) = a8;
    *(result + 29) = a9;
    *(result + 30) = a10;
    *(result + 31) = a11;
    *(result + 32) = a12;
    *(result + 33) = a13;
    *(result + 34) = a14;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = VNImageAestheticsScoresObservation;
  v4 = a3;
  [(VNObservation *)&v17 encodeWithCoder:v4];
  LOBYTE(v5) = self->_isUtility;
  *&v6 = v5;
  [v4 vn_encodeValidatedScore:@"isUtility" forKey:{v6, v17.receiver, v17.super_class}];
  *&v7 = self->_overallScore;
  [v4 vn_encodeValidatedScore:@"OverallScore" forKey:v7];
  *&v8 = self->_aestheticScore;
  [v4 vn_encodeValidatedScore:@"AestheticsScore" forKey:v8];
  *&v9 = self->_failureScore;
  [v4 vn_encodeValidatedScore:@"FailureScore" forKey:v9];
  *&v10 = self->_junkNegativeScore;
  [v4 vn_encodeValidatedScore:@"JunkNegative" forKey:v10];
  *&v11 = self->_junkTragicFailureScore;
  [v4 vn_encodeValidatedScore:@"JunkTragicFailure" forKey:v11];
  *&v12 = self->_poorQualityScore;
  [v4 vn_encodeValidatedScore:@"PoorQuality" forKey:v12];
  *&v13 = self->_nonMemorableScore;
  [v4 vn_encodeValidatedScore:@"NonMemorable" forKey:v13];
  *&v14 = self->_screenShotScore;
  [v4 vn_encodeValidatedScore:@"ScreenShot" forKey:v14];
  *&v15 = self->_receiptOrDocumentScore;
  [v4 vn_encodeValidatedScore:@"ReceiptOrDocument" forKey:v15];
  *&v16 = self->_textDocumentScore;
  [v4 vn_encodeValidatedScore:@"TextDocument" forKey:v16];
}

- (VNImageAestheticsScoresObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = VNImageAestheticsScoresObservation;
  v5 = [(VNObservation *)&v18 initWithCoder:v4];
  if (v5)
  {
    [v4 vn_decodeValidatedScoreForKey:@"isUtility"];
    v5->_isUtility = v6 != 0.0;
    [v4 vn_decodeValidatedScoreForKey:@"OverallScore"];
    v5->_overallScore = v7;
    [v4 vn_decodeValidatedScoreForKey:@"AestheticsScore"];
    v5->_aestheticScore = v8;
    [v4 vn_decodeValidatedScoreForKey:@"FailureScore"];
    v5->_failureScore = v9;
    [v4 vn_decodeValidatedScoreForKey:@"JunkNegative"];
    v5->_junkNegativeScore = v10;
    [v4 vn_decodeValidatedScoreForKey:@"JunkTragicFailure"];
    v5->_junkTragicFailureScore = v11;
    [v4 vn_decodeValidatedScoreForKey:@"PoorQuality"];
    v5->_poorQualityScore = v12;
    [v4 vn_decodeValidatedScoreForKey:@"NonMemorable"];
    v5->_nonMemorableScore = v13;
    [v4 vn_decodeValidatedScoreForKey:@"ScreenShot"];
    v5->_screenShotScore = v14;
    [v4 vn_decodeValidatedScoreForKey:@"ReceiptOrDocument"];
    v5->_receiptOrDocumentScore = v15;
    [v4 vn_decodeValidatedScoreForKey:@"TextDocument"];
    v5->_textDocumentScore = v16;
  }

  return v5;
}

+ (id)observationForOriginatingRequestSpecifier:(id)a3 isUtility:(BOOL)a4 overallScore:(float)a5 aestheticScore:(float)a6 failureScore:(float)a7 junkNegativeScore:(float)a8 junkTragicFailureScore:(float)a9 poorQualityScore:(float)a10 nonMemorableScore:(float)a11 screenShotScore:(float)a12 receiptOrDocumentScore:(float)a13 textDocumentScore:(float)a14 error:(id *)a15
{
  v22 = a4;
  v24 = a3;
  *&v25 = v22;
  if ([VNValidationUtilities validateScoreRange:@"is utility" named:a15 error:v25]&& (*&v26 = a5, [VNValidationUtilities validateScoreRange:@"overall score" named:a15 error:v26]) && (*&v27 = a6, [VNValidationUtilities validateScoreRange:@"aesthetic score" named:a15 error:v27]) && (*&v28 = a7, [VNValidationUtilities validateScoreRange:@"failure" named:a15 error:v28]) && (*&v29 = a8, [VNValidationUtilities validateScoreRange:@"junk negative" named:a15 error:v29]) && (*&v30 = a9, [VNValidationUtilities validateScoreRange:@"junk tragic failure" named:a15 error:v30]) && (*&v31 = a10, [VNValidationUtilities validateScoreRange:@"poor quality" named:a15 error:v31]) && (*&v32 = a11, [VNValidationUtilities validateScoreRange:@"non memorable" named:a15 error:v32]) && (*&v33 = a12, [VNValidationUtilities validateScoreRange:@"screen shot" named:a15 error:v33]) && (*&v34 = a13, [VNValidationUtilities validateScoreRange:@"receipt or document" named:a15 error:v34]) && (*&v35 = a14, [VNValidationUtilities validateScoreRange:@"text document" named:a15 error:v35]))
  {
    v36 = [a1 alloc];
    *&v37 = a5;
    *&v38 = a6;
    *&v39 = a7;
    *&v40 = a8;
    *&v41 = a9;
    *&v42 = a10;
    *&v44 = a12;
    *&v43 = a11;
    v45 = [v36 _initWithOriginatingRequestSpecifier:v24 isUtility:v22 overallScore:v37 aestheticScore:v38 failureScore:v39 junkNegativeScore:v40 junkTragicFailureScore:v41 poorQualityScore:v42 nonMemorableScore:v43 screenShotScore:v44 receiptOrDocumentScore:__PAIR64__(LODWORD(a14) textDocumentScore:LODWORD(a13))];
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

@end