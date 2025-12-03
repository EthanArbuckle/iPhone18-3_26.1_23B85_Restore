@interface _TUIMicaPlayerBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation _TUIMicaPlayerBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v8 = v7;
  v10 = v9;
  v11 = [(TUILayout *)self box];
  urlString = [v11 urlString];
  v13 = [(TUILayout *)self box];
  baseURL = [v13 baseURL];
  v15 = [NSURL fileURLWithPath:urlString relativeToURL:baseURL];

  if (kind < 3)
  {
    v36 = 0;
  }

  else
  {
    controller = [(TUILayout *)self controller];
    [controller manager];
    v17 = v52 = v15;
    resourceRegistry = [v17 resourceRegistry];
    v19 = [(TUILayout *)self box];
    resourceKind = [v19 resourceKind];
    v51 = [resourceRegistry fileProviderForKind:resourceKind];

    v21 = [_TUIMicaPlayerLayerConfig alloc];
    v50 = [(TUILayout *)self box];
    gravity = [v50 gravity];
    v49 = [(TUILayout *)self box];
    textKey = [v49 textKey];
    v47 = [(TUILayout *)self box];
    textValue = [v47 textValue];
    v46 = [(TUILayout *)self box];
    shouldStartAtEnd = [v46 shouldStartAtEnd];
    v45 = [(TUILayout *)self box];
    triggerName = [v45 triggerName];
    v44 = [(TUILayout *)self box];
    targetTriggerState = [v44 targetTriggerState];
    v25 = [(TUILayout *)self box];
    [v25 triggerDelay];
    v27 = v26;
    [contextCopy environment];
    v28 = v48 = contextCopy;
    [v28 contentsScale];
    v30 = v29;
    v31 = [(TUILayout *)self box];
    [v31 opacity];
    v33 = v32;
    v34 = [(TUILayout *)self box];
    fontSpec = [v34 fontSpec];
    v42 = [(_TUIMicaPlayerLayerConfig *)v21 initWithURL:v52 gravity:gravity textKey:textKey textValue:textValue shouldStartAtEnd:shouldStartAtEnd triggerName:triggerName targetTriggerState:v27 triggerDelay:v30 contentScale:v33 opacity:targetTriggerState fontSpec:fontSpec fileProvider:v51];

    contextCopy = v48;
    v36 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v42 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v37 = [(TUILayout *)self box];
    identifier = [v37 identifier];
    [(TUIRenderModelLayer *)v36 setIdentifier:identifier];

    v15 = v52;
    [(TUIRenderModelLayer *)v36 setSize:v8, v10];
  }

  return v36;
}

@end