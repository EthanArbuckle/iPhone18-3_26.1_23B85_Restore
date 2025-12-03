@interface BNPanGestureProxyAction
+ (id)_infoFromPanGestureProxy:(id)proxy window:(id)window;
- (BNPanGestureProxyAction)initWithPanGestureProxy:(id)proxy hostSideWindow:(id)window;
- (BOOL)didCrossDefaultThreshold;
- (CGPoint)_convertPointInSceneReferenceSpace:(CGPoint)space toCoordinateSpace:(id)coordinateSpace;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (CGPoint)translationInCoordinateSpace:(id)space;
- (CGPoint)velocityInCoordinateSpace:(id)space;
- (CGPoint)visualTranslationInCoordinateSpace:(id)space;
- (UIWindow)serviceSideWindow;
- (int64_t)state;
@end

@implementation BNPanGestureProxyAction

- (BNPanGestureProxyAction)initWithPanGestureProxy:(id)proxy hostSideWindow:(id)window
{
  windowCopy = window;
  proxyCopy = proxy;
  v8 = [objc_opt_class() _infoFromPanGestureProxy:proxyCopy window:windowCopy];

  v11.receiver = self;
  v11.super_class = BNPanGestureProxyAction;
  v9 = [(BNPanGestureProxyAction *)&v11 initWithInfo:v8 responder:0];

  return v9;
}

- (int64_t)state
{
  info = [(BNPanGestureProxyAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)didCrossDefaultThreshold
{
  info = [(BNPanGestureProxyAction *)self info];
  v3 = [info BOOLForSetting:2];

  return v3;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  info = [(BNPanGestureProxyAction *)self info];
  v6 = [info objectForSetting:3];
  [v6 CGPointValue];
  [(BNPanGestureProxyAction *)self _convertPointInSceneReferenceSpace:spaceCopy toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)translationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  info = [(BNPanGestureProxyAction *)self info];
  v6 = [info objectForSetting:4];
  [v6 CGPointValue];
  [(BNPanGestureProxyAction *)self _convertPointInSceneReferenceSpace:spaceCopy toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  info = [(BNPanGestureProxyAction *)self info];
  v6 = [info objectForSetting:5];
  [v6 CGPointValue];
  [(BNPanGestureProxyAction *)self _convertPointInSceneReferenceSpace:spaceCopy toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)space
{
  info = [(BNPanGestureProxyAction *)self info];
  v4 = [info objectForSetting:6];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (id)_infoFromPanGestureProxy:(id)proxy window:(id)window
{
  v5 = MEMORY[0x1E698E700];
  windowCopy = window;
  proxyCopy = proxy;
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(proxyCopy, "state")}];
  [v8 setObject:v9 forSetting:1];

  [v8 setFlag:objc_msgSend(proxyCopy forSetting:{"didCrossDefaultThreshold"), 2}];
  v10 = MEMORY[0x1E696B098];
  [proxyCopy locationInCoordinateSpace:windowCopy];
  [windowCopy _convertPointToSceneReferenceSpace:?];
  v32[0] = v11;
  v32[1] = v12;
  v13 = [v10 valueWithBytes:v32 objCType:"{CGPoint=dd}"];
  [v8 setObject:v13 forSetting:3];

  v14 = MEMORY[0x1E696B098];
  [proxyCopy translationInCoordinateSpace:windowCopy];
  [windowCopy _convertPointToSceneReferenceSpace:?];
  v31[0] = v15;
  v31[1] = v16;
  v17 = [v14 valueWithBytes:v31 objCType:"{CGPoint=dd}"];
  [v8 setObject:v17 forSetting:4];

  v18 = MEMORY[0x1E696B098];
  [proxyCopy visualTranslationInCoordinateSpace:windowCopy];
  [windowCopy _convertPointToSceneReferenceSpace:?];
  v30[0] = v19;
  v30[1] = v20;
  v21 = [v18 valueWithBytes:v30 objCType:"{CGPoint=dd}"];
  [v8 setObject:v21 forSetting:5];

  v22 = MEMORY[0x1E696B098];
  [proxyCopy velocityInCoordinateSpace:windowCopy];
  v24 = v23;
  v26 = v25;

  v29[0] = v24;
  v29[1] = v26;
  v27 = [v22 valueWithBytes:v29 objCType:"{CGPoint=dd}"];
  [v8 setObject:v27 forSetting:6];

  return v8;
}

- (CGPoint)_convertPointInSceneReferenceSpace:(CGPoint)space toCoordinateSpace:(id)coordinateSpace
{
  y = space.y;
  x = space.x;
  coordinateSpaceCopy = coordinateSpace;
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
  [v15 convertPoint:coordinateSpaceCopy toCoordinateSpace:{v12, v14}];
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