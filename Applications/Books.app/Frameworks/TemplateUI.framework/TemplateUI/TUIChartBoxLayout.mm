@interface TUIChartBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUIChartBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  [(TUILayout *)self renderModelSizeWithContext:a4];
  v6 = v5;
  v8 = v7;
  v9 = [(TUILayout *)self box];
  v10 = [v9 chartType];
  v11 = [v10 isEqualToString:@"bar-chart"];

  [(TUILayout *)self box];
  if (v11)
    v37 = {;
    v29 = [v37 identifier];
    v38 = [(TUILayout *)self box];
    v32 = [v38 title];
    v36 = [(TUILayout *)self box];
    v31 = [v36 footer];
    v35 = [(TUILayout *)self box];
    v30 = [v35 columns];
    v34 = [(TUILayout *)self box];
    [v34 cornerRadius];
    v13 = v12;
    v33 = [(TUILayout *)self box];
    [v33 progress];
    v15 = v14;
    v16 = [(TUILayout *)self box];
    [v16 spacing];
    v18 = v17;
    v19 = [(TUILayout *)self box];
    v20 = [v19 color];
    v21 = [(TUILayout *)self box];
    v22 = [v21 backgroundColor];
    v23 = [(TUILayout *)self box];
    v24 = [v23 shadowColor];
    v25 = [TUIBarChartView renderModelWithIdentifier:v29 title:v32 footer:v31 columns:v30 cornerRadius:v20 progress:v22 spacing:v13 color:v15 backgroundColor:v18 shadowColor:v24];

    v26 = v29;
    v27 = v37;
  }

  else
    v27 = {;
    v26 = [v27 chartType];
    [v26 isEqualToString:@"circle-chart"];
    v25 = 0;
  }

  [v25 setSize:{v6, v8}];
  return v25;
}

@end