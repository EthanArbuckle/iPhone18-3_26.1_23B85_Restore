@interface AEMarginNotesController
- (AEMarginNotesController)init;
- (BOOL)hasMarginNoteAtPoint:(CGPoint)a3;
- (CGRect)ownerFrame;
- (CGSize)ownerSize;
- (NSArray)layers;
- (id)marginNoteAtPoint:(CGPoint)a3;
- (id)p_marginNoteIntersectingRect:(CGRect)a3;
- (void)addMarginNote:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (void)highlightMarginNote:(id)a3;
- (void)p_updateLayerLayout;
- (void)removeMarginNote:(id)a3;
- (void)unhighlightAllMarginNotes;
- (void)unhighlightMarginNote:(id)a3;
@end

@implementation AEMarginNotesController

- (AEMarginNotesController)init
{
  v9.receiver = self;
  v9.super_class = AEMarginNotesController;
  v2 = [(AEMarginNotesController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_pageTheme = 4;
    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    marginNoteMarkers = v3->_marginNoteMarkers;
    v3->_marginNoteMarkers = v4;

    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    highlightedMarginNoteMarkers = v3->_highlightedMarginNoteMarkers;
    v3->_highlightedMarginNoteMarkers = v6;

    v3->_ownerScale = 1.0;
  }

  return v3;
}

- (CGSize)ownerSize
{
  [(AEMarginNotesController *)self ownerFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (NSArray)layers
{
  v2 = [(AEMarginNotesController *)self marginNoteMarkers];
  v3 = [v2 objectEnumerator];
  v4 = [v3 allObjects];

  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E2D10;
  v5 = v7[3] = &unk_2CD1D8;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

- (id)p_marginNoteIntersectingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGRectGetMidX(a3);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGRectGetMidY(v35);
  v8 = [(AEMarginNotesController *)self marginNoteMarkers];
  v9 = [v8 copy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v30;
    v28 = 1.79769313e308;
    v27 = x;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v10 objectForKey:{v16, *&v27}];
        v18 = [v17 layer];

        [v18 frame];
        v19 = v36.origin.x;
        v20 = v36.origin.y;
        v21 = v36.size.width;
        v22 = v36.size.height;
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        if (CGRectIntersectsRect(v36, v39))
        {
          v37.origin.x = v19;
          v37.origin.y = v20;
          v37.size.width = v21;
          v37.size.height = v22;
          CGRectGetMidX(v37);
          v38.origin.x = v19;
          v38.origin.y = v20;
          v38.size.width = v21;
          v38.size.height = v22;
          CGRectGetMidY(v38);
          CGPointSquaredDistanceFromPoint();
          v24 = v23;
          if (!v13 || v23 < v28)
          {
            v25 = v16;

            v28 = v24;
            v13 = v25;
          }

          x = v27;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)marginNoteAtPoint:(CGPoint)a3
{
  [(AEMarginNotesController *)self ownerScale];
  CGPointMultiply();
  v5 = v4;
  v7 = v6;
  isPad();
  CGSizeScale();
  v9 = v8;
  v11 = v10;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(AEMarginNotesController *)self marginNoteMarkers];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v29;
    v27 = 1.79769313e308;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [(AEMarginNotesController *)self marginNoteMarkers];
        v20 = [v19 objectForKey:v18];
        v21 = [v20 layer];

        [v21 frame];
        MidX = CGRectGetMidX(v35);
        [v21 frame];
        MidY = CGRectGetMidY(v36);
        v37.origin.x = MidX - v9 * 0.5;
        v37.origin.y = MidY - v11 * 0.5;
        v37.size.width = v9;
        v37.size.height = v11;
        v34.x = v5;
        v34.y = v7;
        if (CGRectContainsPoint(v37, v34))
        {
          v24 = (MidY - v7) * (MidY - v7) + (MidX - v5) * (MidX - v5);
          if (!v15 || v24 < v27)
          {
            v25 = v18;

            v27 = v24;
            v15 = v25;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)hasMarginNoteAtPoint:(CGPoint)a3
{
  v3 = [(AEMarginNotesController *)self marginNoteAtPoint:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (void)p_updateLayerLayout
{
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v3 = [(AEMarginNotesController *)self layers];
  v4 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v54 + 1) + 8 * i) setPosition:{-100.0, -100.0}];
      }

      v5 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v5);
  }

  v8 = [(AEMarginNotesController *)self marginNoteMarkers];
  v9 = [v8 keyEnumerator];
  v10 = [v9 allObjects];
  v11 = [v10 sortedArrayUsingComparator:&stru_2CD1F8];

  [(AEMarginNotesController *)self ownerScale];
  v50 = 0u;
  v51 = 0u;
  if (v12 <= 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v12;
  }

  v52 = 0uLL;
  v53 = 0uLL;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    v17 = -(v13 * 6.0 + -0.00000011920929);
    do
    {
      v18 = 0;
      do
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v50 + 1) + 8 * v18);
        v20 = [(AEMarginNotesController *)self marginNoteMarkers];
        v21 = [v20 objectForKey:v19];

        v22 = [v21 layer];
        [v21 imageSize];
        if ([v19 side])
        {
          [(AEMarginNotesController *)self ownerSize];
        }

        [v21 edgeInsets];
        [v19 xOffset];
        [(AEMarginNotesController *)self ownerFrame];
        [v19 yStart];
        [(AEMarginNotesController *)self ownerFrame];
        CGPointMultiply();
        v24 = v23;
        [v22 bounds];
        CGRectMakeWithOriginSize();
        width = v60.size.width;
        height = v60.size.height;
        v61 = CGRectInset(v60, v17, v17);
        v27 = [(AEMarginNotesController *)self p_marginNoteIntersectingRect:v61.origin.x, v61.origin.y, v61.size.width, v61.size.height];
        if (v27)
        {
          v28 = v27;
          while (1)
          {
            v29 = [(AEMarginNotesController *)self marginNoteMarkers];
            v30 = [v29 objectForKey:v28];
            v31 = [v30 layer];

            if (!v31)
            {
              break;
            }

            [v31 frame];
            v38 = v13 * 6.0 + CGRectGetMaxY(v62);
            v63.origin.x = v24;
            v63.origin.y = v38;
            v63.size.width = width;
            v63.size.height = height;
            v64 = CGRectInset(v63, v17, v17);
            v28 = [(AEMarginNotesController *)self p_marginNoteIntersectingRect:v64.origin.x, v64.origin.y, v64.size.width, v64.size.height];

            if (!v28)
            {
              goto LABEL_22;
            }
          }

          sub_1E9E4C(v28, 0, v32, v33, v34, v35, v36, v37);
        }

LABEL_22:
        [v22 frame];
        v40 = v39;
        v42 = v41;
        v43 = +[UIScreen mainScreen];
        [v43 scale];
        CGPointRoundForScale();
        v45 = v44;
        v47 = v46;

        [v22 setFrame:{v45, v47, v40, v42}];
        v18 = v18 + 1;
      }

      while (v18 != v15);
      v48 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v15 = v48;
    }

    while (v48);
  }
}

- (void)addMarginNote:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v16 = a3;
  v9 = [v16 theme];
  if ([v9 isUnderline])
  {
    v10 = &dword_4 + 2;
  }

  else
  {
    v11 = [v16 theme];
    v10 = [v11 annotationStyle];
  }

  v12 = [AEAnnotationMarker alloc];
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v14 = [(AEAnnotationMarker *)v12 initWithAnnotationStyle:v10 contentScale:?];

  [(AEAnnotationMarker *)v14 setPageTheme:[(AEMarginNotesController *)self pageTheme]];
  [(AEMarginNotesController *)self ownerScale];
  [(AEAnnotationMarker *)v14 setViewScale:?];
  [(AEAnnotationMarker *)v14 setEdgeInsets:top, left, bottom, right];
  v15 = [(AEMarginNotesController *)self marginNoteMarkers];
  [v15 setObject:v14 forKey:v16];

  [(AEMarginNotesController *)self p_updateLayerLayout];
}

- (void)removeMarginNote:(id)a3
{
  v4 = a3;
  v5 = [(AEMarginNotesController *)self marginNoteMarkers];
  [v5 removeObjectForKey:v4];

  v6 = [(AEMarginNotesController *)self highlightedMarginNoteMarkers];
  [v6 removeObjectForKey:v4];

  [(AEMarginNotesController *)self p_updateLayerLayout];
}

- (void)highlightMarginNote:(id)a3
{
  v4 = a3;
  v5 = [(AEMarginNotesController *)self marginNoteMarkers];
  v7 = [v5 objectForKey:v4];

  [v7 setEffect:1];
  v6 = [(AEMarginNotesController *)self highlightedMarginNoteMarkers];
  [v6 setObject:v7 forKey:v4];
}

- (void)unhighlightMarginNote:(id)a3
{
  v4 = a3;
  v5 = [(AEMarginNotesController *)self marginNoteMarkers];
  v7 = [v5 objectForKey:v4];

  [v7 setEffect:0];
  v6 = [(AEMarginNotesController *)self highlightedMarginNoteMarkers];
  [v6 removeObjectForKey:v4];
}

- (void)unhighlightAllMarginNotes
{
  v3 = [(AEMarginNotesController *)self highlightedMarginNoteMarkers];
  v4 = [v3 keyEnumerator];
  v5 = [v4 allObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AEMarginNotesController *)self unhighlightMarginNote:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (CGRect)ownerFrame
{
  x = self->_ownerFrame.origin.x;
  y = self->_ownerFrame.origin.y;
  width = self->_ownerFrame.size.width;
  height = self->_ownerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end