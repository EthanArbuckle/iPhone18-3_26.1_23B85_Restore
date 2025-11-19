@interface STTranscriberSingleSegmentResult
- (STTranscriberSingleSegmentResult)initWithIsFinal:(BOOL)a3 resultsFinalizationTime:(id *)a4 text:(id)a5 bestTextSegmentConfidence:(double)a6 alternatives:(id)a7;
@end

@implementation STTranscriberSingleSegmentResult

- (STTranscriberSingleSegmentResult)initWithIsFinal:(BOOL)a3 resultsFinalizationTime:(id *)a4 text:(id)a5 bestTextSegmentConfidence:(double)a6 alternatives:(id)a7
{
  v20.receiver = self;
  v20.super_class = STTranscriberSingleSegmentResult;
  v11 = a7;
  v12 = a5;
  v13 = [(STTranscriberSingleSegmentResult *)&v20 init];
  v13[8] = a3;
  var3 = a4->var3;
  *(v13 + 40) = *&a4->var0;
  *(v13 + 7) = var3;
  v15 = [v12 copy];

  v16 = *(v13 + 2);
  *(v13 + 2) = v15;

  *(v13 + 3) = a6;
  v17 = [v11 copy];

  v18 = *(v13 + 4);
  *(v13 + 4) = v17;

  return v13;
}

@end