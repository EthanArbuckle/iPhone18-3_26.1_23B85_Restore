@interface TUIChartBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIChartBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(TUILayout *)self renderModelSizeWithContext:context];
  v6 = v5;
  v8 = v7;
  v9 = [(TUILayout *)self box];
  chartType = [v9 chartType];
  v11 = [chartType isEqualToString:@"bar-chart"];

  [(TUILayout *)self box];
  if (v11)
    v37 = {;
    identifier = [v37 identifier];
    v38 = [(TUILayout *)self box];
    title = [v38 title];
    v36 = [(TUILayout *)self box];
    footer = [v36 footer];
    v35 = [(TUILayout *)self box];
    columns = [v35 columns];
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
    color = [v19 color];
    v21 = [(TUILayout *)self box];
    backgroundColor = [v21 backgroundColor];
    v23 = [(TUILayout *)self box];
    shadowColor = [v23 shadowColor];
    v25 = [TUIBarChartView renderModelWithIdentifier:identifier title:title footer:footer columns:columns cornerRadius:color progress:backgroundColor spacing:v13 color:v15 backgroundColor:v18 shadowColor:shadowColor];

    chartType2 = identifier;
    v27 = v37;
  }

  else
    v27 = {;
    chartType2 = [v27 chartType];
    [chartType2 isEqualToString:@"circle-chart"];
    v25 = 0;
  }

  [v25 setSize:{v6, v8}];
  return v25;
}

@end