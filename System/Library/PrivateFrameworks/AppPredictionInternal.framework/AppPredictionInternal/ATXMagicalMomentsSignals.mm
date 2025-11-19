@interface ATXMagicalMomentsSignals
+ (unint64_t)pmmReasonToATXSuggestionReason:(int64_t)a3;
- (ATXMagicalMomentsSignals)initWithPredictionSource:(unint64_t)a3 pmmReason:(int64_t)a4 reasonMetadata:(id)a5 confidence:(double)a6 anchorType:(int64_t)a7 index:(unint64_t)a8;
- (unint64_t)atxReason;
@end

@implementation ATXMagicalMomentsSignals

- (ATXMagicalMomentsSignals)initWithPredictionSource:(unint64_t)a3 pmmReason:(int64_t)a4 reasonMetadata:(id)a5 confidence:(double)a6 anchorType:(int64_t)a7 index:(unint64_t)a8
{
  v15 = a5;
  v19.receiver = self;
  v19.super_class = ATXMagicalMomentsSignals;
  v16 = [(ATXMagicalMomentsSignals *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_predictionSource = a3;
    v16->_pmmReason = a4;
    objc_storeStrong(&v16->_reasonMetadata, a5);
    v17->_confidence = a6;
    v17->_anchorType = a7;
    v17->_predictionIndex = a8;
  }

  return v17;
}

- (unint64_t)atxReason
{
  v3 = objc_opt_class();
  pmmReason = self->_pmmReason;

  return [v3 pmmReasonToATXSuggestionReason:pmmReason];
}

+ (unint64_t)pmmReasonToATXSuggestionReason:(int64_t)a3
{
  v3 = vdupq_n_s64(a3);
  v4 = vshlq_u64(v3, xmmword_226872800);
  v5 = vshlq_u64(v3, xmmword_226872810);
  v6 = v5.i16[0] & 0x1000;
  v7 = vorrq_s8(vandq_s8(v4, xmmword_226872830), vandq_s8(v5, xmmword_226872820));
  return *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | (a3 >> 1) & 0x40 | v6 & 0xFFFFFFFFFFFCFFFFLL | (((a3 >> 8) & 3) << 16);
}

@end