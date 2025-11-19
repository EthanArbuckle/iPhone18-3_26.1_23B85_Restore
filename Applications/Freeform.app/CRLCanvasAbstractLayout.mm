@interface CRLCanvasAbstractLayout
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformInParent;
- (CGAffineTransform)transformInRoot;
- (CGPoint)lastInterimPosition;
- (CGPoint)offsetToApplyWhenComputingLayoutGeometryOfChild:(id)a3;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInParent;
- (CGRect)alignmentFrameInRoot;
- (CGRect)clipRect;
- (CGRect)clippedRectInRoot:(CGRect)a3;
- (CGRect)frame;
- (CGRect)frameForCullingInRoot;
- (CGRect)frameInParent;
- (CGRect)frameInRoot;
- (CGRect)rectInParent:(CGRect)a3;
- (CGRect)rectInRoot:(CGRect)a3;
- (CRLCanvasAbstractLayout)init;
- (CRLCanvasAbstractLayout)parent;
- (CRLCanvasAbstractLayout)parentLayoutForProvidingGuides;
- (CRLCanvasAbstractLayout)root;
- (CRLCanvasLayoutGeometry)geometryInParent;
- (CRLCanvasLayoutGeometry)geometryInRoot;
- (NSArray)layoutsForProvidingGuidesForChildLayouts;
- (NSArray)visibleGeometries;
- (id)childLayoutContainingPossibleDescendentLayout:(id)a3;
- (id)geometryInRoot:(id)a3;
- (void)addChild:(id)a3;
- (void)addLayoutsInRect:(CGRect)a3 toArray:(id)a4 deep:(BOOL)a5;
- (void)exchangeChildAtIndex:(unint64_t)a3 withChildAtIndex:(unint64_t)a4;
- (void)fixTransformFromInterimPosition;
- (void)insertChild:(id)a3 above:(id)a4;
- (void)insertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChild:(id)a3 below:(id)a4;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_fixTransformFromInterimPosition:(CGPoint)a3 interimPositionXSet:(BOOL)a4 interimPositionYSet:(BOOL)a5;
- (void)removeFromParent;
- (void)replaceChild:(id)a3 with:(id)a4;
- (void)setChildren:(id)a3;
@end

@implementation CRLCanvasAbstractLayout

- (CRLCanvasAbstractLayout)init
{
  v8.receiver = self;
  v8.super_class = CRLCanvasAbstractLayout;
  v2 = [(CRLCanvasAbstractLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRLCanvasLayoutGeometry);
    geometry = v2->_geometry;
    v2->_geometry = v3;

    v5 = objc_alloc_init(NSMutableArray);
    children = v2->_children;
    v2->_children = v5;
  }

  return v2;
}

- (CRLCanvasLayoutGeometry)geometryInParent
{
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained)
  {
    v5 = [v3 mutableCopy];
    v6 = objc_loadWeakRetained(&self->_parent);
    v7 = [v6 geometry];
    v8 = v7;
    if (v7)
    {
      [v7 transform];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    [v5 transformBy:v10];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (CRLCanvasLayoutGeometry)geometryInRoot
{
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  v4 = [(CRLCanvasAbstractLayout *)self geometryInRoot:v3];

  return v4;
}

- (id)geometryInRoot:(id)a3
{
  v4 = [a3 mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    do
    {
      v7 = [v6 geometry];
      v8 = v7;
      if (v7)
      {
        [v7 transform];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
        v11 = 0u;
      }

      [v4 transformBy:&v11];

      v9 = [v6 parent];

      v6 = v9;
    }

    while (v9);
  }

  return v4;
}

- (NSArray)visibleGeometries
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (CGAffineTransform)transform
{
  v4 = [(CRLCanvasAbstractLayout *)self geometry];
  if (v4)
  {
    v6 = v4;
    [v4 transform];
    v4 = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGAffineTransform)transformInParent
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_parent);
    v10 = [v9 geometry];
    v11 = v10;
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v12 = *&retstr->c;
    *&v14.a = *&retstr->a;
    *&v14.c = v12;
    *&v14.tx = *&retstr->tx;
    CGAffineTransformConcat(&v16, &v14, &t2);
    v13 = *&v16.c;
    *&retstr->a = *&v16.a;
    *&retstr->c = v13;
    *&retstr->tx = *&v16.tx;
  }

  return result;
}

- (CGAffineTransform)transformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(CRLCanvasAbstractLayout *)self geometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = objc_loadWeakRetained(&self->_parent);
  if (result)
  {
    v8 = result;
    do
    {
      v9 = [(CGAffineTransform *)v8 geometry];
      v10 = v9;
      if (v9)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [v9 transformByConcatenatingTransformTo:v14];
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
      }

      v12 = v16;
      *&retstr->a = v15;
      *&retstr->c = v12;
      *&retstr->tx = v17;

      v13 = [(CGAffineTransform *)v8 parent];

      v8 = v13;
    }

    while (v13);
  }

  return result;
}

- (CGRect)frame
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)frameInParent
{
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  [v3 size];
  [(CRLCanvasAbstractLayout *)self rectInParent:sub_10011ECB4()];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameInRoot
{
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  [v3 size];
  [(CRLCanvasAbstractLayout *)self rectInRoot:sub_10011ECB4()];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)rectInParent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasAbstractLayout *)self transformInParent];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)rectInRoot:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)clipRect
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 size];
  v3 = sub_10011ECB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)clippedRectInRoot:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsNull(a3))
  {
    [(CRLCanvasAbstractLayout *)self clipRect];
    v33.origin.x = v8;
    v33.origin.y = v9;
    v33.size.width = v10;
    v33.size.height = v11;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectIntersection(v27, v33);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    if (WeakRetained)
    {
      v13 = WeakRetained;
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      IsNull = CGRectIsNull(v29);

      if (!IsNull)
      {
        v15 = objc_loadWeakRetained(&self->_parent);
        v16 = [(CRLCanvasAbstractLayout *)self geometry];
        v17 = v16;
        if (v16)
        {
          [v16 transform];
        }

        else
        {
          memset(&v26, 0, sizeof(v26));
        }

        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v31 = CGRectApplyAffineTransform(v30, &v26);
        [v15 clippedRectInRoot:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
        x = v18;
        y = v19;
        width = v20;
        height = v21;
      }
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CRLCanvasAbstractLayout)parentLayoutForProvidingGuides
{
  v2 = [(CRLCanvasAbstractLayout *)self parent];
  if ([v2 providesGuidesForChildLayouts])
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 parentLayoutForProvidingGuides];
  }

  v4 = v3;

  return v4;
}

- (NSArray)layoutsForProvidingGuidesForChildLayouts
{
  if (![(CRLCanvasAbstractLayout *)self providesGuidesForChildLayouts])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386360();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386374();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386408();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v2);
    }

    v3 = [NSString stringWithUTF8String:"[CRLCanvasAbstractLayout layoutsForProvidingGuidesForChildLayouts]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:177 isFatal:0 description:"This method should never be called on a layout which returns NO for providesGuidesForChildLayouts."];
  }

  return 0;
}

- (CRLCanvasAbstractLayout)root
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_parent);
    v5 = [v4 root];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (void)setChildren:(id)a3
{
  v4 = a3;
  children = self->_children;
  if (children != v4 && ([(NSMutableArray *)children isEqual:v4]& 1) == 0)
  {
    if (v4)
    {
      v6 = [[NSSet alloc] initWithArray:v4];
    }

    else
    {
      v6 = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = self->_children;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            [v12 setParent:0];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    if (self->_children)
    {
      v13 = [[NSSet alloc] initWithArray:self->_children];
    }

    else
    {
      v13 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v4;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          if (([v13 containsObject:{v19, v22}] & 1) == 0)
          {
            [v19 removeFromParent];
            [v19 setParent:self];
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    if (v4)
    {
      v4 = v14;
    }

    else
    {
      v4 = &__NSArray0__struct;
    }

    v20 = [(NSMutableArray *)v4 mutableCopy];
    v21 = self->_children;
    self->_children = v20;
  }
}

- (void)removeFromParent
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self);
  if (v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    [WeakRetained replaceChild:v6 with:0];

    v4 = v6;
  }
}

- (void)addChild:(id)a3
{
  v6 = a3;
  children = self->_children;
  if (children)
  {
    v5 = [(NSMutableArray *)children count];
  }

  else
  {
    v5 = 0;
  }

  [(CRLCanvasAbstractLayout *)self insertChild:v6 atIndex:v5];
}

- (void)insertChild:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v11 = v6;
    v7 = [v6 parent];

    if (v7)
    {
      [v11 removeFromParent];
    }

    children = self->_children;
    if (!children)
    {
      v9 = objc_alloc_init(NSMutableArray);
      v10 = self->_children;
      self->_children = v9;

      children = self->_children;
    }

    [(NSMutableArray *)children insertObject:v11 atIndex:a4];
    [v11 setParent:self];
    v6 = v11;
  }
}

- (void)insertChild:(id)a3 below:(id)a4
{
  v9 = a3;
  v6 = a4;
  children = self->_children;
  if (children)
  {
    v8 = [(NSMutableArray *)children indexOfObjectIdenticalTo:v6];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CRLCanvasAbstractLayout *)self insertChild:v9 atIndex:v8];
    }
  }
}

- (void)insertChild:(id)a3 above:(id)a4
{
  v9 = a3;
  v6 = a4;
  children = self->_children;
  if (children)
  {
    v8 = [(NSMutableArray *)children indexOfObjectIdenticalTo:v6];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CRLCanvasAbstractLayout *)self insertChild:v9 atIndex:v8 + 1];
    }
  }
}

- (void)replaceChild:(id)a3 with:(id)a4
{
  v10 = a3;
  v6 = a4;
  children = self->_children;
  if (children)
  {
    v8 = [(NSMutableArray *)children indexOfObjectIdenticalTo:v10];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [(NSMutableArray *)self->_children removeObjectAtIndex:v8];
      [v10 setParent:0];
      if (v6)
      {
        [(CRLCanvasAbstractLayout *)self insertChild:v6 atIndex:v9];
      }
    }
  }
}

- (void)exchangeChildAtIndex:(unint64_t)a3 withChildAtIndex:(unint64_t)a4
{
  children = self->_children;
  if (!children)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386430();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386444();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013864F4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLCanvasAbstractLayout exchangeChildAtIndex:withChildAtIndex:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAbstractLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:276 isFatal:0 description:"invalid nil value for '%{public}s'", "_children"];

    children = self->_children;
  }

  if (a3 != a4 && children)
  {
    v11 = [(NSMutableArray *)children count];
    if (v11 > a3 && v11 > a4)
    {
      [(NSMutableArray *)self->_children exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138651C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101386544();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013865D8();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLCanvasAbstractLayout exchangeChildAtIndex:withChildAtIndex:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAbstractLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:279 isFatal:0 description:"bad index"];
    }
  }
}

- (void)addLayoutsInRect:(CGRect)a3 toArray:(id)a4 deep:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  [(CRLCanvasAbstractLayout *)self frameForCulling];
  if (sub_10011FF38(v12, v13, v14, v15, x, y, width, height))
  {
    [v11 addObject:self];
    if (v5)
    {
      [(CRLCanvasAbstractLayout *)self frameForCulling];
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v39 = CGRectIntersection(v38, v42);
      v16 = v39.origin.x;
      v17 = v39.origin.y;
      v18 = v39.size.width;
      v19 = v39.size.height;
      memset(&v36, 0, sizeof(v36));
      v20 = [(CRLCanvasAbstractLayout *)self geometry];
      v21 = v20;
      if (v20)
      {
        [v20 transform];
      }

      else
      {
        memset(&v35, 0, sizeof(v35));
      }

      CGAffineTransformInvert(&v36, &v35);

      v35 = v36;
      v40.origin.x = v16;
      v40.origin.y = v17;
      v40.size.width = v18;
      v40.size.height = v19;
      v41 = CGRectApplyAffineTransform(v40, &v35);
      v22 = v41.origin.x;
      v23 = v41.origin.y;
      v24 = v41.size.width;
      v25 = v41.size.height;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = [(CRLCanvasAbstractLayout *)self children];
      v27 = [v26 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v32;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v32 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v31 + 1) + 8 * i) addLayoutsInRect:v11 toArray:1 deep:{v22, v23, v24, v25}];
          }

          v28 = [v26 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v28);
      }
    }
  }
}

- (CGRect)frameForCullingInRoot
{
  [(CRLCanvasAbstractLayout *)self frameForCulling];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(CRLCanvasAbstractLayout *)self parent];
  v12 = v11;
  if (v11)
  {
    [v11 transformInRoot];
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectApplyAffineTransform(v18, &v17);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)alignmentFrame
{
  v2 = [(CRLCanvasAbstractLayout *)self geometry];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)alignmentFrameInParent
{
  v2 = [(CRLCanvasAbstractLayout *)self geometryInParent];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v3 = [(CRLCanvasAbstractLayout *)self parent];

  [(CRLCanvasAbstractLayout *)self alignmentFrame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (v3)
  {
    v12 = [(CRLCanvasAbstractLayout *)self parent];
    v13 = v12;
    if (v12)
    {
      [v12 transformInRoot];
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectApplyAffineTransform(v19, &v18);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)shouldSnapWhileResizing
{
  [(CRLCanvasAbstractLayout *)self transformInRoot];
  v3 = [(CRLCanvasAbstractLayout *)self geometry];
  [v3 size];
  v6 = sub_100139A98(&v8, v4, v5);

  return v6;
}

- (void)fixTransformFromInterimPosition
{
  [(CRLCanvasAbstractLayout *)self p_fixTransformFromInterimPosition:self->_interimPositionXSet interimPositionXSet:self->_interimPositionYSet interimPositionYSet:self->_interimPosition.x, self->_interimPosition.y];
  self->_lastInterimPosition = self->_interimPosition;
  *&self->_lastInterimPositionXSet = *&self->_interimPositionXSet;
  self->_interimPosition = CGPointZero;
  *&self->_interimPositionXSet = 0;
}

- (void)p_fixTransformFromInterimPosition:(CGPoint)a3 interimPositionXSet:(BOOL)a4 interimPositionYSet:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  v8 = 0.0;
  v9 = 0.0;
  if (a4)
  {
    x = a3.x;
    [(CRLCanvasAbstractLayout *)self alignmentFrameOriginForFixingInterimPosition];
    v9 = x - a3.x;
  }

  if (v5)
  {
    [(CRLCanvasAbstractLayout *)self alignmentFrameOriginForFixingInterimPosition];
    v8 = y - v11;
  }

  [(CRLCanvasAbstractLayout *)self offsetGeometryBy:v9, v8];
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != CGPointZero.x || a3.y != CGPointZero.y)
  {
    v8 = [(CRLCanvasAbstractLayout *)self geometry];
    v7 = [v8 geometryByTranslatingBy:{x, y}];
    [(CRLCanvasAbstractLayout *)self setGeometry:v7];
  }
}

- (CGPoint)offsetToApplyWhenComputingLayoutGeometryOfChild:(id)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)childLayoutContainingPossibleDescendentLayout:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = [v6 parent];

      if (v7 == self)
      {
        break;
      }

      v8 = [v6 parent];

      v6 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = [v6 parent];

  if (v9 == self)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CRLCanvasAbstractLayout)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (CGPoint)lastInterimPosition
{
  x = self->_lastInterimPosition.x;
  y = self->_lastInterimPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end