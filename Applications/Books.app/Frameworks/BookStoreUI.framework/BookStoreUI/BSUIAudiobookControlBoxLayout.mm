@interface BSUIAudiobookControlBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation BSUIAudiobookControlBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(BSUIAudiobookControlBoxLayout *)self computedNaturalSize:kind];
  v6 = v5;
  v8 = v7;
  v9 = [(BSUIAudiobookControlBoxLayout *)self box];
  identifier = [v9 identifier];
  v11 = [(BSUIAudiobookControlBoxLayout *)self box];
  dynamicAudiobookProgress = [v11 dynamicAudiobookProgress];
  v13 = [(BSUIAudiobookControlBoxLayout *)self box];
  dynamicState = [v13 dynamicState];
  v15 = [BSUIAudiobookControlView renderModelWithIdentifier:identifier dynamicProgress:dynamicAudiobookProgress dynamicState:dynamicState];

  [v15 setSize:{v6, v8}];
  return v15;
}

@end