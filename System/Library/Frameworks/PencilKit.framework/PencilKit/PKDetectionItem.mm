@interface PKDetectionItem
- (BOOL)_hitTest:(CGPoint)test;
- (CGAffineTransform)drawingToItemTransform;
- (CGRect)_frame;
- (CGRect)strokeBounds;
- (PKDetectionItem)initWithSessionManager:(id)manager;
- (PKDrawing)drawing;
- (PKRecognitionSessionManager)sessionManager;
- (UIBezierPath)itemSpaceBaselinePath;
- (UIBezierPath)itemSpaceBoundsPath;
- (double)_strokeWidth;
- (id)UUID;
- (id)_strokes;
- (id)image;
- (id)setUUID:(id)d;
- (void)_generatePaths;
- (void)handleTapForMenuForInteraction:(id)interaction location:(CGPoint)location view:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform;
@end

@implementation PKDetectionItem

- (PKDetectionItem)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PKDetectionItem;
  v5 = [(PKDetectionItem *)&v13 init];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  identifier = v5->_identifier;
  v5->_identifier = uUIDString;

  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 16);
  v5->__frame.origin = *MEMORY[0x1E695F050];
  v5->__frame.size = v10;
  v5->_strokeBounds.origin = v9;
  v5->_strokeBounds.size = v10;
  inkColor = v5->_inkColor;
  v5->__strokeWidth = 0.0;
  v5->_inkColor = 0;

  objc_storeWeak(&v5->_sessionManager, managerCopy);
  return v5;
}

- (CGAffineTransform)drawingToItemTransform
{
  [(PKDetectionItem *)self _frame];
  v6 = -v5;
  [(PKDetectionItem *)self _frame];
  v8 = -v7;

  return CGAffineTransformMakeTranslation(retstr, v6, v8);
}

- (BOOL)_hitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  [(PKDetectionItem *)self _frame];
  v15.x = x;
  v15.y = y;
  if (!CGRectContainsPoint(v16, v15))
  {
    return 0;
  }

  [(PKDetectionItem *)self drawingToItemTransform];
  itemSpaceBoundsPath = [(PKDetectionItem *)self itemSpaceBoundsPath];
  v7 = [itemSpaceBoundsPath containsPoint:{v13 + y * v11 + v9 * x, v14 + y * v12 + v10 * x}];

  return v7;
}

- (id)_strokes
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  queryItem = [(PKDetectionItem *)self queryItem];
  strokeIdentifiers = [queryItem strokeIdentifiers];

  v6 = [strokeIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(strokeIdentifiers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        drawing = [(PKDetectionItem *)self drawing];
        strokeUUID = [v9 strokeUUID];
        v12 = [drawing _visibleStrokeForIdentifier:strokeUUID];

        if (v12)
        {
          [array addObject:v12];
        }
      }

      v6 = [strokeIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)_generatePaths
{
  v59 = *MEMORY[0x1E69E9840];
  [(PKDetectionItem *)self _strokes];
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = v54 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v4)
  {
    v5 = *v52;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v52 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v51 + 1) + 8 * i);
        [v7 _appendPointsOfInterestForSelection:&v55];
        strokeWidth = self->__strokeWidth;
        [v7 _maxWidthForStroke];
        if (strokeWidth >= v9)
        {
          v9 = strokeWidth;
        }

        self->__strokeWidth = v9;
        x = self->_strokeBounds.origin.x;
        y = self->_strokeBounds.origin.y;
        width = self->_strokeBounds.size.width;
        height = self->_strokeBounds.size.height;
        [v7 _bounds];
        v63.origin.x = v14;
        v63.origin.y = v15;
        v63.size.width = v16;
        v63.size.height = v17;
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        self->_strokeBounds = CGRectUnion(v60, v63);
        if (!self->_inkColor)
        {
          v18 = [v7 ink];
          sdrColor = [v18 sdrColor];
          inkColor = self->_inkColor;
          self->_inkColor = sdrColor;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v4);
  }

  if (v55 == v56)
  {
    v39 = *(MEMORY[0x1E695F050] + 16);
    self->__frame.origin = *MEMORY[0x1E695F050];
    self->__frame.size = v39;
    itemSpaceBoundsPath = self->_itemSpaceBoundsPath;
    self->_itemSpaceBoundsPath = 0;

    itemSpaceBaselinePath = self->_itemSpaceBaselinePath;
    self->_itemSpaceBaselinePath = 0;
  }

  else
  {
    __p = 0;
    v49 = 0;
    v50 = 0;
    [PKPathUtility convexHull:&__p forPoints:&v55];
    v21 = [PKPathUtility bezierPathFromPoints:&__p];
    v22 = self->_itemSpaceBoundsPath;
    self->_itemSpaceBoundsPath = v21;

    _baselinePath = [(PKDetectionItem *)self _baselinePath];
    v24 = self->_itemSpaceBaselinePath;
    self->_itemSpaceBaselinePath = _baselinePath;

    [(UIBezierPath *)self->_itemSpaceBoundsPath bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(UIBezierPath *)self->_itemSpaceBaselinePath bounds];
    v64.origin.x = v33;
    v64.origin.y = v34;
    v64.size.width = v35;
    v64.size.height = v36;
    v61.origin.x = v26;
    v61.origin.y = v28;
    v61.size.width = v30;
    v61.size.height = v32;
    v62 = CGRectUnion(v61, v64);
    self->__frame = CGRectInset(v62, 0.0, -self->__strokeWidth);
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    [(PKDetectionItem *)self drawingToItemTransform];
    v37 = self->_itemSpaceBoundsPath;
    v42 = v45;
    v43 = v46;
    v44 = v47;
    [(UIBezierPath *)v37 applyTransform:&v42];
    v38 = self->_itemSpaceBaselinePath;
    v42 = v45;
    v43 = v46;
    v44 = v47;
    [(UIBezierPath *)v38 applyTransform:&v42];
    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }
}

- (UIBezierPath)itemSpaceBaselinePath
{
  itemSpaceBaselinePath = self->_itemSpaceBaselinePath;
  if (!itemSpaceBaselinePath)
  {
    [(PKDetectionItem *)self _generatePaths];
    itemSpaceBaselinePath = self->_itemSpaceBaselinePath;
  }

  return itemSpaceBaselinePath;
}

- (UIBezierPath)itemSpaceBoundsPath
{
  itemSpaceBoundsPath = self->_itemSpaceBoundsPath;
  if (!itemSpaceBoundsPath)
  {
    [(PKDetectionItem *)self _generatePaths];
    itemSpaceBoundsPath = self->_itemSpaceBoundsPath;
  }

  return itemSpaceBoundsPath;
}

- (CGRect)_frame
{
  if (CGRectIsNull(self->__frame))
  {
    [(PKDetectionItem *)self _generatePaths];
  }

  x = self->__frame.origin.x;
  y = self->__frame.origin.y;
  width = self->__frame.size.width;
  height = self->__frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_strokeWidth
{
  result = self->__strokeWidth;
  if (result == 0.0)
  {
    [(PKDetectionItem *)self _generatePaths];
    return self->__strokeWidth;
  }

  return result;
}

- (id)image
{
  sessionManager = [(PKDetectionItem *)self sessionManager];
  drawing = [(PKRecognitionSessionManager *)sessionManager drawing];
  v5 = objc_opt_class();

  v6 = [v5 alloc];
  _strokes = [(PKDetectionItem *)self _strokes];
  sessionManager2 = [(PKDetectionItem *)self sessionManager];
  drawing2 = [(PKRecognitionSessionManager *)sessionManager2 drawing];
  v10 = [v6 initWithStrokes:_strokes fromDrawing:drawing2];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];

  [(PKDetectionItem *)self _frame];
  v12 = [v10 imageFromRect:? scale:?];

  return v12;
}

- (id)UUID
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_validCachedUUID)
  {
    _strokes = [(PKDetectionItem *)self _strokes];
    if ([_strokes count])
    {
      cachedUUID = self->_cachedUUID;
      self->_cachedUUID = 0;

      self->_validCachedUUID = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      queryItem = [(PKDetectionItem *)self queryItem];
      strokeIdentifiers = [queryItem strokeIdentifiers];

      v7 = [strokeIdentifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = *v21;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(strokeIdentifiers);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            drawing = [(PKDetectionItem *)self drawing];
            strokeUUID = [v10 strokeUUID];
            v13 = [drawing _visibleStrokeForIdentifier:strokeUUID];

            _groupID = [v13 _groupID];
            if (_groupID)
            {
              v15 = [v13 _shapeType] == 0;

              if (v15)
              {
                _groupID2 = [v13 _groupID];
                v17 = self->_cachedUUID;
                self->_cachedUUID = _groupID2;

                goto LABEL_14;
              }
            }
          }

          v7 = [strokeIdentifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  v18 = self->_cachedUUID;

  return v18;
}

- (id)setUUID:(id)d
{
  dCopy = d;
  uUID = [(PKDetectionItem *)self UUID];
  v7 = uUID;
  if (self->_validCachedUUID && (uUID == dCopy || ([dCopy isEqual:uUID] & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    objc_storeStrong(&self->_cachedUUID, d);
    self->_validCachedUUID = 1;
    v9 = [(PKDetectionItem *)self _actionNameForActivation:dCopy != 0];
    _strokes = [(PKDetectionItem *)self _strokes];
    drawing = [(PKDetectionItem *)self drawing];
    v12 = [PKModifyStrokesGroupIDCommand commandForModifyingStrokes:_strokes drawing:drawing groupID:dCopy actionName:v9];

    drawing2 = [(PKDetectionItem *)self drawing];
    [v12 applyToDrawing:drawing2];

    drawing3 = [(PKDetectionItem *)self drawing];
    v8 = [v12 invertedInDrawing:drawing3];
  }

  return v8;
}

- (PKDrawing)drawing
{
  WeakRetained = objc_loadWeakRetained(&self->_drawing);

  return WeakRetained;
}

- (CGRect)strokeBounds
{
  x = self->_strokeBounds.origin.x;
  y = self->_strokeBounds.origin.y;
  width = self->_strokeBounds.size.width;
  height = self->_strokeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PKRecognitionSessionManager)sessionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionManager);

  return WeakRetained;
}

- (void)handleTapForMenuForInteraction:(id)interaction location:(CGPoint)location view:(id)view viewTransform:(CGAffineTransform *)transform drawingTransform:(CGAffineTransform *)drawingTransform
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  [view convertPoint:0 toView:{x, y}];
  [interactionCopy _presentMenuAtLocation:?];
}

@end