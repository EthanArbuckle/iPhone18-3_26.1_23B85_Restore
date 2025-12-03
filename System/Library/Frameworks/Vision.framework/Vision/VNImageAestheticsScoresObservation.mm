@interface VNImageAestheticsScoresObservation
+ (id)observationForOriginatingRequestSpecifier:(id)specifier isUtility:(BOOL)utility overallScore:(float)score aestheticScore:(float)aestheticScore failureScore:(float)failureScore junkNegativeScore:(float)negativeScore junkTragicFailureScore:(float)tragicFailureScore poorQualityScore:(float)self0 nonMemorableScore:(float)self1 screenShotScore:(float)self2 receiptOrDocumentScore:(float)self3 textDocumentScore:(float)self4 error:(id *)self5;
- (VNImageAestheticsScoresObservation)initWithCoder:(id)coder;
- (id)_initWithOriginatingRequestSpecifier:(id)specifier isUtility:(BOOL)utility overallScore:(float)score aestheticScore:(float)aestheticScore failureScore:(float)failureScore junkNegativeScore:(float)negativeScore junkTragicFailureScore:(float)tragicFailureScore poorQualityScore:(float)self0 nonMemorableScore:(float)self1 screenShotScore:(float)self2 receiptOrDocumentScore:(float)self3 textDocumentScore:(float)self4;
- (id)vn_cloneObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageAestheticsScoresObservation

- (id)vn_cloneObject
{
  v5.receiver = self;
  v5.super_class = VNImageAestheticsScoresObservation;
  vn_cloneObject = [(VNObservation *)&v5 vn_cloneObject];
  if (vn_cloneObject)
  {
    *(vn_cloneObject + 96) = self->_isUtility;
    *(vn_cloneObject + 100) = self->_overallScore;
    *(vn_cloneObject + 104) = self->_aestheticScore;
    *(vn_cloneObject + 108) = self->_failureScore;
    *(vn_cloneObject + 112) = self->_junkNegativeScore;
    *(vn_cloneObject + 116) = self->_junkTragicFailureScore;
    *(vn_cloneObject + 120) = self->_poorQualityScore;
    *(vn_cloneObject + 124) = self->_nonMemorableScore;
    *(vn_cloneObject + 128) = self->_screenShotScore;
    *(vn_cloneObject + 132) = self->_receiptOrDocumentScore;
    *(vn_cloneObject + 136) = self->_textDocumentScore;
  }

  return vn_cloneObject;
}

- (id)_initWithOriginatingRequestSpecifier:(id)specifier isUtility:(BOOL)utility overallScore:(float)score aestheticScore:(float)aestheticScore failureScore:(float)failureScore junkNegativeScore:(float)negativeScore junkTragicFailureScore:(float)tragicFailureScore poorQualityScore:(float)self0 nonMemorableScore:(float)self1 screenShotScore:(float)self2 receiptOrDocumentScore:(float)self3 textDocumentScore:(float)self4
{
  v24.receiver = self;
  v24.super_class = VNImageAestheticsScoresObservation;
  result = [(VNObservation *)&v24 initWithOriginatingRequestSpecifier:specifier];
  if (result)
  {
    *(result + 96) = utility;
    *(result + 25) = score;
    *(result + 26) = aestheticScore;
    *(result + 27) = failureScore;
    *(result + 28) = negativeScore;
    *(result + 29) = tragicFailureScore;
    *(result + 30) = qualityScore;
    *(result + 31) = memorableScore;
    *(result + 32) = shotScore;
    *(result + 33) = documentScore;
    *(result + 34) = textDocumentScore;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VNImageAestheticsScoresObservation;
  coderCopy = coder;
  [(VNObservation *)&v17 encodeWithCoder:coderCopy];
  LOBYTE(v5) = self->_isUtility;
  *&v6 = v5;
  [coderCopy vn_encodeValidatedScore:@"isUtility" forKey:{v6, v17.receiver, v17.super_class}];
  *&v7 = self->_overallScore;
  [coderCopy vn_encodeValidatedScore:@"OverallScore" forKey:v7];
  *&v8 = self->_aestheticScore;
  [coderCopy vn_encodeValidatedScore:@"AestheticsScore" forKey:v8];
  *&v9 = self->_failureScore;
  [coderCopy vn_encodeValidatedScore:@"FailureScore" forKey:v9];
  *&v10 = self->_junkNegativeScore;
  [coderCopy vn_encodeValidatedScore:@"JunkNegative" forKey:v10];
  *&v11 = self->_junkTragicFailureScore;
  [coderCopy vn_encodeValidatedScore:@"JunkTragicFailure" forKey:v11];
  *&v12 = self->_poorQualityScore;
  [coderCopy vn_encodeValidatedScore:@"PoorQuality" forKey:v12];
  *&v13 = self->_nonMemorableScore;
  [coderCopy vn_encodeValidatedScore:@"NonMemorable" forKey:v13];
  *&v14 = self->_screenShotScore;
  [coderCopy vn_encodeValidatedScore:@"ScreenShot" forKey:v14];
  *&v15 = self->_receiptOrDocumentScore;
  [coderCopy vn_encodeValidatedScore:@"ReceiptOrDocument" forKey:v15];
  *&v16 = self->_textDocumentScore;
  [coderCopy vn_encodeValidatedScore:@"TextDocument" forKey:v16];
}

- (VNImageAestheticsScoresObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = VNImageAestheticsScoresObservation;
  v5 = [(VNObservation *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy vn_decodeValidatedScoreForKey:@"isUtility"];
    v5->_isUtility = v6 != 0.0;
    [coderCopy vn_decodeValidatedScoreForKey:@"OverallScore"];
    v5->_overallScore = v7;
    [coderCopy vn_decodeValidatedScoreForKey:@"AestheticsScore"];
    v5->_aestheticScore = v8;
    [coderCopy vn_decodeValidatedScoreForKey:@"FailureScore"];
    v5->_failureScore = v9;
    [coderCopy vn_decodeValidatedScoreForKey:@"JunkNegative"];
    v5->_junkNegativeScore = v10;
    [coderCopy vn_decodeValidatedScoreForKey:@"JunkTragicFailure"];
    v5->_junkTragicFailureScore = v11;
    [coderCopy vn_decodeValidatedScoreForKey:@"PoorQuality"];
    v5->_poorQualityScore = v12;
    [coderCopy vn_decodeValidatedScoreForKey:@"NonMemorable"];
    v5->_nonMemorableScore = v13;
    [coderCopy vn_decodeValidatedScoreForKey:@"ScreenShot"];
    v5->_screenShotScore = v14;
    [coderCopy vn_decodeValidatedScoreForKey:@"ReceiptOrDocument"];
    v5->_receiptOrDocumentScore = v15;
    [coderCopy vn_decodeValidatedScoreForKey:@"TextDocument"];
    v5->_textDocumentScore = v16;
  }

  return v5;
}

+ (id)observationForOriginatingRequestSpecifier:(id)specifier isUtility:(BOOL)utility overallScore:(float)score aestheticScore:(float)aestheticScore failureScore:(float)failureScore junkNegativeScore:(float)negativeScore junkTragicFailureScore:(float)tragicFailureScore poorQualityScore:(float)self0 nonMemorableScore:(float)self1 screenShotScore:(float)self2 receiptOrDocumentScore:(float)self3 textDocumentScore:(float)self4 error:(id *)self5
{
  utilityCopy = utility;
  specifierCopy = specifier;
  *&v25 = utilityCopy;
  if ([VNValidationUtilities validateScoreRange:@"is utility" named:error error:v25]&& (*&v26 = score, [VNValidationUtilities validateScoreRange:@"overall score" named:error error:v26]) && (*&v27 = aestheticScore, [VNValidationUtilities validateScoreRange:@"aesthetic score" named:error error:v27]) && (*&v28 = failureScore, [VNValidationUtilities validateScoreRange:@"failure" named:error error:v28]) && (*&v29 = negativeScore, [VNValidationUtilities validateScoreRange:@"junk negative" named:error error:v29]) && (*&v30 = tragicFailureScore, [VNValidationUtilities validateScoreRange:@"junk tragic failure" named:error error:v30]) && (*&v31 = qualityScore, [VNValidationUtilities validateScoreRange:@"poor quality" named:error error:v31]) && (*&v32 = memorableScore, [VNValidationUtilities validateScoreRange:@"non memorable" named:error error:v32]) && (*&v33 = shotScore, [VNValidationUtilities validateScoreRange:@"screen shot" named:error error:v33]) && (*&v34 = documentScore, [VNValidationUtilities validateScoreRange:@"receipt or document" named:error error:v34]) && (*&v35 = textDocumentScore, [VNValidationUtilities validateScoreRange:@"text document" named:error error:v35]))
  {
    v36 = [self alloc];
    *&v37 = score;
    *&v38 = aestheticScore;
    *&v39 = failureScore;
    *&v40 = negativeScore;
    *&v41 = tragicFailureScore;
    *&v42 = qualityScore;
    *&v44 = shotScore;
    *&v43 = memorableScore;
    v45 = [v36 _initWithOriginatingRequestSpecifier:specifierCopy isUtility:utilityCopy overallScore:v37 aestheticScore:v38 failureScore:v39 junkNegativeScore:v40 junkTragicFailureScore:v41 poorQualityScore:v42 nonMemorableScore:v43 screenShotScore:v44 receiptOrDocumentScore:__PAIR64__(LODWORD(textDocumentScore) textDocumentScore:LODWORD(documentScore))];
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

@end