@interface STTranscriberSingleSegmentResult
- (STTranscriberSingleSegmentResult)initWithIsFinal:(BOOL)final resultsFinalizationTime:(id *)time text:(id)text bestTextSegmentConfidence:(double)confidence alternatives:(id)alternatives;
@end

@implementation STTranscriberSingleSegmentResult

- (STTranscriberSingleSegmentResult)initWithIsFinal:(BOOL)final resultsFinalizationTime:(id *)time text:(id)text bestTextSegmentConfidence:(double)confidence alternatives:(id)alternatives
{
  v20.receiver = self;
  v20.super_class = STTranscriberSingleSegmentResult;
  alternativesCopy = alternatives;
  textCopy = text;
  v13 = [(STTranscriberSingleSegmentResult *)&v20 init];
  v13[8] = final;
  var3 = time->var3;
  *(v13 + 40) = *&time->var0;
  *(v13 + 7) = var3;
  v15 = [textCopy copy];

  v16 = *(v13 + 2);
  *(v13 + 2) = v15;

  *(v13 + 3) = confidence;
  v17 = [alternativesCopy copy];

  v18 = *(v13 + 4);
  *(v13 + 4) = v17;

  return v13;
}

@end