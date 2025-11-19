@interface _TUIMicaPlayerBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation _TUIMicaPlayerBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  [(TUILayout *)self renderModelSizeWithContext:v6];
  v8 = v7;
  v10 = v9;
  v11 = [(TUILayout *)self box];
  v12 = [v11 urlString];
  v13 = [(TUILayout *)self box];
  v14 = [v13 baseURL];
  v15 = [NSURL fileURLWithPath:v12 relativeToURL:v14];

  if (a3 < 3)
  {
    v36 = 0;
  }

  else
  {
    v16 = [(TUILayout *)self controller];
    [v16 manager];
    v17 = v52 = v15;
    v18 = [v17 resourceRegistry];
    v19 = [(TUILayout *)self box];
    v20 = [v19 resourceKind];
    v51 = [v18 fileProviderForKind:v20];

    v21 = [_TUIMicaPlayerLayerConfig alloc];
    v50 = [(TUILayout *)self box];
    v22 = [v50 gravity];
    v49 = [(TUILayout *)self box];
    v23 = [v49 textKey];
    v47 = [(TUILayout *)self box];
    v43 = [v47 textValue];
    v46 = [(TUILayout *)self box];
    v41 = [v46 shouldStartAtEnd];
    v45 = [(TUILayout *)self box];
    v40 = [v45 triggerName];
    v44 = [(TUILayout *)self box];
    v24 = [v44 targetTriggerState];
    v25 = [(TUILayout *)self box];
    [v25 triggerDelay];
    v27 = v26;
    [v6 environment];
    v28 = v48 = v6;
    [v28 contentsScale];
    v30 = v29;
    v31 = [(TUILayout *)self box];
    [v31 opacity];
    v33 = v32;
    v34 = [(TUILayout *)self box];
    v35 = [v34 fontSpec];
    v42 = [(_TUIMicaPlayerLayerConfig *)v21 initWithURL:v52 gravity:v22 textKey:v23 textValue:v43 shouldStartAtEnd:v41 triggerName:v40 targetTriggerState:v27 triggerDelay:v30 contentScale:v33 opacity:v24 fontSpec:v35 fileProvider:v51];

    v6 = v48;
    v36 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v42 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v37 = [(TUILayout *)self box];
    v38 = [v37 identifier];
    [(TUIRenderModelLayer *)v36 setIdentifier:v38];

    v15 = v52;
    [(TUIRenderModelLayer *)v36 setSize:v8, v10];
  }

  return v36;
}

@end