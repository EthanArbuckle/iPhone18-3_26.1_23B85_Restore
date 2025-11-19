@interface BNPanGestureProxyAction
+ (id)_infoFromPanGestureProxy:(id)a3 window:(id)a4;
- (BNPanGestureProxyAction)initWithPanGestureProxy:(id)a3 hostSideWindow:(id)a4;
- (BOOL)didCrossDefaultThreshold;
- (CGPoint)_convertPointInSceneReferenceSpace:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (CGPoint)translationInCoordinateSpace:(id)a3;
- (CGPoint)velocityInCoordinateSpace:(id)a3;
- (CGPoint)visualTranslationInCoordinateSpace:(id)a3;
- (UIWindow)serviceSideWindow;
- (int64_t)state;
@end

@implementation BNPanGestureProxyAction

- (BNPanGestureProxyAction)initWithPanGestureProxy:(id)a3 hostSideWindow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _infoFromPanGestureProxy:v7 window:v6];

  v11.receiver = self;
  v11.super_class = BNPanGestureProxyAction;
  v9 = [(BNPanGestureProxyAction *)&v11 initWithInfo:v8 responder:0];

  return v9;
}

- (int64_t)state
{
  v2 = [(BNPanGestureProxyAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)didCrossDefaultThreshold
{
  v2 = [(BNPanGestureProxyAction *)self info];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(BNPanGestureProxyAction *)self info];
  v6 = [v5 objectForSetting:3];
  [v6 CGPointValue];
  [(BNPanGestureProxyAction *)self _convertPointInSceneReferenceSpace:v4 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)translationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(BNPanGestureProxyAction *)self info];
  v6 = [v5 objectForSetting:4];
  [v6 CGPointValue];
  [(BNPanGestureProxyAction *)self _convertPointInSceneReferenceSpace:v4 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(BNPanGestureProxyAction *)self info];
  v6 = [v5 objectForSetting:5];
  [v6 CGPointValue];
  [(BNPanGestureProxyAction *)self _convertPointInSceneReferenceSpace:v4 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)a3
{
  v3 = [(BNPanGestureProxyAction *)self info];
  v4 = [v3 objectForSetting:6];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (id)_infoFromPanGestureProxy:(id)a3 window:(id)a4
{
  v5 = MEMORY[0x1E698E700];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "state")}];
  [v8 setObject:v9 forSetting:1];

  [v8 setFlag:objc_msgSend(v7 forSetting:{"didCrossDefaultThreshold"), 2}];
  v10 = MEMORY[0x1E696B098];
  [v7 locationInCoordinateSpace:v6];
  [v6 _convertPointToSceneReferenceSpace:?];
  v32[0] = v11;
  v32[1] = v12;
  v13 = [v10 valueWithBytes:v32 objCType:"{CGPoint=dd}"];
  [v8 setObject:v13 forSetting:3];

  v14 = MEMORY[0x1E696B098];
  [v7 translationInCoordinateSpace:v6];
  [v6 _convertPointToSceneReferenceSpace:?];
  v31[0] = v15;
  v31[1] = v16;
  v17 = [v14 valueWithBytes:v31 objCType:"{CGPoint=dd}"];
  [v8 setObject:v17 forSetting:4];

  v18 = MEMORY[0x1E696B098];
  [v7 visualTranslationInCoordinateSpace:v6];
  [v6 _convertPointToSceneReferenceSpace:?];
  v30[0] = v19;
  v30[1] = v20;
  v21 = [v18 valueWithBytes:v30 objCType:"{CGPoint=dd}"];
  [v8 setObject:v21 forSetting:5];

  v22 = MEMORY[0x1E696B098];
  [v7 velocityInCoordinateSpace:v6];
  v24 = v23;
  v26 = v25;

  v29[0] = v24;
  v29[1] = v26;
  v27 = [v22 valueWithBytes:v29 objCType:"{CGPoint=dd}"];
  [v8 setObject:v27 forSetting:6];

  return v8;
}

- (CGPoint)_convertPointInSceneReferenceSpace:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceSideWindow);

  if (!WeakRetained)
  {
    [BNPanGestureProxyAction _convertPointInSceneReferenceSpace:a2 toCoordinateSpace:self];
  }

  v10 = objc_loadWeakRetained(&self->_serviceSideWindow);
  [v10 _convertPointFromSceneReferenceSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = objc_loadWeakRetained(&self->_serviceSideWindow);
  [v15 convertPoint:v8 toCoordinateSpace:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (UIWindow)serviceSideWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceSideWindow);

  return WeakRetained;
}

- (void)_convertPointInSceneReferenceSpace:(uint64_t)a1 toCoordinateSpace:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPanGestureProxyAction.m" lineNumber:77 description:@"service-side window hasn't been set"];
}

@end