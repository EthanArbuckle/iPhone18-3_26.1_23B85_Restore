@interface STTranscriberMultisegmentResult
- ($105C7F46451D331BD7843CF46B2B4F94)recognitionAudioRange;
- (STTranscriberMultisegmentResult)initWithSegments:(id)segments transcriptions:(id)transcriptions earResultType:(unint64_t)type nBestChoices:(id)choices recognitionAudioRange:(id *)range bestFormattedString:(id)string bestFormattedStringSegmentConfidence:(double)confidence;
@end

@implementation STTranscriberMultisegmentResult

- ($105C7F46451D331BD7843CF46B2B4F94)recognitionAudioRange
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var3;
  return self;
}

- (STTranscriberMultisegmentResult)initWithSegments:(id)segments transcriptions:(id)transcriptions earResultType:(unint64_t)type nBestChoices:(id)choices recognitionAudioRange:(id *)range bestFormattedString:(id)string bestFormattedStringSegmentConfidence:(double)confidence
{
  v31.receiver = self;
  v31.super_class = STTranscriberMultisegmentResult;
  stringCopy = string;
  choicesCopy = choices;
  transcriptionsCopy = transcriptions;
  segmentsCopy = segments;
  v19 = [(STTranscriberMultisegmentResult *)&v31 init];
  v20 = [segmentsCopy copy];

  v21 = *(v19 + 1);
  *(v19 + 1) = v20;

  v22 = [transcriptionsCopy copy];
  v23 = *(v19 + 2);
  *(v19 + 2) = v22;

  *(v19 + 3) = type;
  v24 = [choicesCopy copy];

  v25 = *(v19 + 4);
  *(v19 + 4) = v24;

  v26 = *&range->var0.var0;
  v27 = *&range->var0.var3;
  *(v19 + 88) = *&range->var1.var1;
  *(v19 + 72) = v27;
  *(v19 + 56) = v26;
  v28 = [stringCopy copy];

  v29 = *(v19 + 5);
  *(v19 + 5) = v28;

  *(v19 + 6) = confidence;
  return v19;
}

@end