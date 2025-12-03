@interface TUITrackTimeRemainingBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUITrackTimeRemainingBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(TUILayout *)self renderModelSizeWithContext:context];
  v6 = v5;
  v8 = v7;
  v9 = [(TUILayout *)self box];
  identifier = [v9 identifier];
  v11 = [(TUILayout *)self box];
  dynamicProgress = [v11 dynamicProgress];
  v13 = [(TUILayout *)self box];
  style = [v13 style];
  v15 = [TUITrackTimeRemainingView renderModelWithIdentifier:identifier dynamicProgress:dynamicProgress style:style];

  [v15 setSize:{v6, v8}];
  return v15;
}

@end