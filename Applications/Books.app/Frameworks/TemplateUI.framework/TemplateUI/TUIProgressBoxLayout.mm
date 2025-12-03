@interface TUIProgressBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIProgressBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(TUILayout *)self renderModelSizeWithContext:context];
  if (kind < 4)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = [(TUILayout *)self box];
  progressMode = [v10 progressMode];
  v12 = [progressMode isEqualToString:@"activityIndicator"];

  v13 = [(TUILayout *)self box];
  [v13 identifier];
  if (v12)
    v14 = {;
    v15 = [TUISpinnerView renderModelWithIdentifier:v14];
  }

  else
    v14 = {;
    v29 = [(TUILayout *)self box];
    progressId = [v29 progressId];
    v27 = [(TUILayout *)self box];
    progressMode2 = [v27 progressMode];
    v25 = [(TUILayout *)self box];
    [v25 progress];
    v17 = v16;
    v18 = [(TUILayout *)self box];
    dynamicProgress = [v18 dynamicProgress];
    v20 = [(TUILayout *)self box];
    paused = [v20 paused];
    v22 = [(TUILayout *)self box];
    color = [v22 color];
    v15 = [TUIProgressView renderModelWithIdentifier:v14 progressId:progressId mode:progressMode2 value:dynamicProgress dynamicProgress:paused paused:color color:v17];
  }

  [v15 setSize:{v8, v9}];
  return v15;
}

@end