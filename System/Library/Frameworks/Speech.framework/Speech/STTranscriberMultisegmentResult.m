@interface STTranscriberMultisegmentResult
- ($105C7F46451D331BD7843CF46B2B4F94)recognitionAudioRange;
- (STTranscriberMultisegmentResult)initWithSegments:(id)a3 transcriptions:(id)a4 earResultType:(unint64_t)a5 nBestChoices:(id)a6 recognitionAudioRange:(id *)a7 bestFormattedString:(id)a8 bestFormattedStringSegmentConfidence:(double)a9;
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

- (STTranscriberMultisegmentResult)initWithSegments:(id)a3 transcriptions:(id)a4 earResultType:(unint64_t)a5 nBestChoices:(id)a6 recognitionAudioRange:(id *)a7 bestFormattedString:(id)a8 bestFormattedStringSegmentConfidence:(double)a9
{
  v31.receiver = self;
  v31.super_class = STTranscriberMultisegmentResult;
  v15 = a8;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [(STTranscriberMultisegmentResult *)&v31 init];
  v20 = [v18 copy];

  v21 = *(v19 + 1);
  *(v19 + 1) = v20;

  v22 = [v17 copy];
  v23 = *(v19 + 2);
  *(v19 + 2) = v22;

  *(v19 + 3) = a5;
  v24 = [v16 copy];

  v25 = *(v19 + 4);
  *(v19 + 4) = v24;

  v26 = *&a7->var0.var0;
  v27 = *&a7->var0.var3;
  *(v19 + 88) = *&a7->var1.var1;
  *(v19 + 72) = v27;
  *(v19 + 56) = v26;
  v28 = [v15 copy];

  v29 = *(v19 + 5);
  *(v19 + 5) = v28;

  *(v19 + 6) = a9;
  return v19;
}

@end