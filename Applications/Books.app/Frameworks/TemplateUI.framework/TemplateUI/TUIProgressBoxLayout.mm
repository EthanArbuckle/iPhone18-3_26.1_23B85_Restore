@interface TUIProgressBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUIProgressBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  [(TUILayout *)self renderModelSizeWithContext:a4];
  if (a3 < 4)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = [(TUILayout *)self box];
  v11 = [v10 progressMode];
  v12 = [v11 isEqualToString:@"activityIndicator"];

  v13 = [(TUILayout *)self box];
  [v13 identifier];
  if (v12)
    v14 = {;
    v15 = [TUISpinnerView renderModelWithIdentifier:v14];
  }

  else
    v14 = {;
    v29 = [(TUILayout *)self box];
    v28 = [v29 progressId];
    v27 = [(TUILayout *)self box];
    v26 = [v27 progressMode];
    v25 = [(TUILayout *)self box];
    [v25 progress];
    v17 = v16;
    v18 = [(TUILayout *)self box];
    v19 = [v18 dynamicProgress];
    v20 = [(TUILayout *)self box];
    v21 = [v20 paused];
    v22 = [(TUILayout *)self box];
    v23 = [v22 color];
    v15 = [TUIProgressView renderModelWithIdentifier:v14 progressId:v28 mode:v26 value:v19 dynamicProgress:v21 paused:v23 color:v17];
  }

  [v15 setSize:{v8, v9}];
  return v15;
}

@end