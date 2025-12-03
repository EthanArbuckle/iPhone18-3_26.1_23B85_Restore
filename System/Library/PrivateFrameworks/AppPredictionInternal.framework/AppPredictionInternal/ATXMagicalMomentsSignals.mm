@interface ATXMagicalMomentsSignals
+ (unint64_t)pmmReasonToATXSuggestionReason:(int64_t)reason;
- (ATXMagicalMomentsSignals)initWithPredictionSource:(unint64_t)source pmmReason:(int64_t)reason reasonMetadata:(id)metadata confidence:(double)confidence anchorType:(int64_t)type index:(unint64_t)index;
- (unint64_t)atxReason;
@end

@implementation ATXMagicalMomentsSignals

- (ATXMagicalMomentsSignals)initWithPredictionSource:(unint64_t)source pmmReason:(int64_t)reason reasonMetadata:(id)metadata confidence:(double)confidence anchorType:(int64_t)type index:(unint64_t)index
{
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = ATXMagicalMomentsSignals;
  v16 = [(ATXMagicalMomentsSignals *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_predictionSource = source;
    v16->_pmmReason = reason;
    objc_storeStrong(&v16->_reasonMetadata, metadata);
    v17->_confidence = confidence;
    v17->_anchorType = type;
    v17->_predictionIndex = index;
  }

  return v17;
}

- (unint64_t)atxReason
{
  v3 = objc_opt_class();
  pmmReason = self->_pmmReason;

  return [v3 pmmReasonToATXSuggestionReason:pmmReason];
}

+ (unint64_t)pmmReasonToATXSuggestionReason:(int64_t)reason
{
  v3 = vdupq_n_s64(reason);
  v4 = vshlq_u64(v3, xmmword_226872800);
  v5 = vshlq_u64(v3, xmmword_226872810);
  v6 = v5.i16[0] & 0x1000;
  v7 = vorrq_s8(vandq_s8(v4, xmmword_226872830), vandq_s8(v5, xmmword_226872820));
  return *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | (reason >> 1) & 0x40 | v6 & 0xFFFFFFFFFFFCFFFFLL | (((reason >> 8) & 3) << 16);
}

@end