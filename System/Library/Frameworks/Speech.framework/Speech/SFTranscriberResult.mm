@interface SFTranscriberResult
- ($105C7F46451D331BD7843CF46B2B4F94)range;
- (SFTranscriberResult)initWithRange:(id *)range contextualizedTranscriberMultisegmentResult:(id)result;
- (SFTranscriberResult)initWithRange:(id *)range normalizedTranscriberMultisegmentResult:(id)result contextualizedTranscriberMultisegmentResult:(id)multisegmentResult;
- (SFTranscriberResult)initWithRange:(id *)range normalizedTranscriberSingleSegmentResult:(id)result contextualizedTranscriberSingleSegmentResult:(id)segmentResult;
@end

@implementation SFTranscriberResult

- ($105C7F46451D331BD7843CF46B2B4F94)range
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (SFTranscriberResult)initWithRange:(id *)range contextualizedTranscriberMultisegmentResult:(id)result
{
  v12.receiver = self;
  v12.super_class = SFTranscriberResult;
  resultCopy = result;
  v6 = [(SFTranscriberResult *)&v12 init];
  v8 = *&range->var0.var3;
  v7 = *&range->var1.var1;
  *(v6 + 40) = *&range->var0.var0;
  *(v6 + 56) = v8;
  *(v6 + 72) = v7;
  v9 = [resultCopy copy];

  v10 = *(v6 + 2);
  *(v6 + 2) = v9;

  return v6;
}

- (SFTranscriberResult)initWithRange:(id *)range normalizedTranscriberSingleSegmentResult:(id)result contextualizedTranscriberSingleSegmentResult:(id)segmentResult
{
  v17.receiver = self;
  v17.super_class = SFTranscriberResult;
  segmentResultCopy = segmentResult;
  resultCopy = result;
  v9 = [(SFTranscriberResult *)&v17 init];
  v11 = *&range->var0.var3;
  v10 = *&range->var1.var1;
  *(v9 + 40) = *&range->var0.var0;
  *(v9 + 56) = v11;
  *(v9 + 72) = v10;
  v12 = [resultCopy copy];

  v13 = *(v9 + 3);
  *(v9 + 3) = v12;

  v14 = [segmentResultCopy copy];
  v15 = *(v9 + 4);
  *(v9 + 4) = v14;

  return v9;
}

- (SFTranscriberResult)initWithRange:(id *)range normalizedTranscriberMultisegmentResult:(id)result contextualizedTranscriberMultisegmentResult:(id)multisegmentResult
{
  v17.receiver = self;
  v17.super_class = SFTranscriberResult;
  multisegmentResultCopy = multisegmentResult;
  resultCopy = result;
  v9 = [(SFTranscriberResult *)&v17 init];
  v11 = *&range->var0.var3;
  v10 = *&range->var1.var1;
  *(v9 + 40) = *&range->var0.var0;
  *(v9 + 56) = v11;
  *(v9 + 72) = v10;
  v12 = [resultCopy copy];

  v13 = *(v9 + 1);
  *(v9 + 1) = v12;

  v14 = [multisegmentResultCopy copy];
  v15 = *(v9 + 2);
  *(v9 + 2) = v14;

  return v9;
}

@end