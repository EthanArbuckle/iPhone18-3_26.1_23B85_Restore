@interface _SCNSnapshotWindow
- (CGPoint)_warpPoint:(CGPoint)point outOfBounds:(BOOL *)bounds;
- (CGPoint)warpPoint:(CGPoint)point;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (void)dealloc;
@end

@implementation _SCNSnapshotWindow

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _SCNSnapshotWindow;
  [(_SCNSnapshotWindow *)&v2 dealloc];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  if ([(_SCNSnapshotWindow *)self scnView:event])
  {
    [-[_SCNSnapshotWindow layer](self "layer")];
    v13 = 0;
    [(_SCNSnapshotWindow *)self _warpPoint:&v13 outOfBounds:?];
    result = 0;
    if ((v13 & 1) == 0)
    {
      v12.receiver = self;
      v12.super_class = _SCNSnapshotWindow;
      for (i = [(_SCNSnapshotWindow *)&v12 hitTest:event withEvent:?]; i; i = [(_SCNSnapshotWindow *)i superview])
      {
        if ([-[_SCNSnapshotWindow gestureRecognizers](i "gestureRecognizers")])
        {
          break;
        }

        if (([(_SCNSnapshotWindow *)i isMultipleTouchEnabled]& 1) != 0)
        {
          break;
        }

        if (([(_SCNSnapshotWindow *)i canBecomeFirstResponder]& 1) != 0)
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (i == self)
      {
        return 0;
      }

      else
      {
        return i;
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _SCNSnapshotWindow;
    return [(_SCNSnapshotWindow *)&v11 hitTest:event withEvent:x, y];
  }

  return result;
}

- (CGPoint)_warpPoint:(CGPoint)point outOfBounds:(BOOL *)bounds
{
  y = point.y;
  x = point.x;
  scnView = [(_SCNSnapshotWindow *)self scnView];
  if (scnView)
  {
    v9 = scnView;
    [scnView convertPoint:0 fromView:{x, y}];
    v10 = [v9 hitTest:0 options:?];
    if ([v10 count] && ((v11 = objc_msgSend(v10, "objectAtIndexedSubscript:", 0), v12 = objc_msgSend(objc_msgSend(v11, "node"), "geometry"), !objc_msgSend(objc_msgSend(v12, "materials"), "count")) ? (v13 = 0) : (v13 = objc_msgSend(objc_msgSend(v12, "materials"), "objectAtIndexedSubscript:", objc_msgSend(v11, "geometryIndex") % objc_msgSend(objc_msgSend(v12, "materials"), "count"))), objc_msgSend(-[_SCNSnapshotWindow subviews](self, "subviews"), "count") && (v14 = objc_msgSend(objc_msgSend(v13, "diffuse"), "contents"), v14 == objc_msgSend(-[_SCNSnapshotWindow subviews](self, "subviews"), "objectAtIndexedSubscript:", 0))))
    {
      [v11 textureCoordinatesWithMappingChannel:0];
      v16 = v15;
      v18 = v17;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      diffuse = [v13 diffuse];
      if (diffuse)
      {
        [diffuse contentsTransform];
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
      }

      *&v27.m11 = v28;
      *&v27.m21 = v29;
      *&v27.m31 = v30;
      *&v27.m41 = v31;
      if (!SCNMatrix4IsIdentity(&v27))
      {
        v20 = v16;
        v21 = v18;
        v22 = vaddq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v28, v20), v29, v21), 0, v30), v31).u64[0];
        v16 = *&v22;
        v18 = *(&v22 + 1);
      }

      [(_SCNSnapshotWindow *)self bounds];
      x = v16 * v23;
      [(_SCNSnapshotWindow *)self bounds];
      y = v18 * v24;
    }

    else if (bounds)
    {
      *bounds = 1;
    }
  }

  v25 = x;
  v26 = y;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)warpPoint:(CGPoint)point
{
  [-[_SCNSnapshotWindow layer](self "layer")];

  [(_SCNSnapshotWindow *)self _warpPoint:0 outOfBounds:?];
  result.y = v5;
  result.x = v4;
  return result;
}

@end