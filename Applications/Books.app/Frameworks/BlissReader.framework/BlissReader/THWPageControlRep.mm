@interface THWPageControlRep
+ (id)dotLayerUsingColor:(id)a3 diameter:(double)a4;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (THWPageControlRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)p_indicatorAtIndex:(unint64_t)a3;
- (id)p_layerForState:(int)a3 pageIndex:(unint64_t)a4;
- (id)p_nearestIndicatorToLocation:(CGPoint)a3;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)dealloc;
- (void)p_changeToPageAtIndex:(unint64_t)a3;
- (void)screenScaleDidChange;
- (void)setHighlightedPageIndex:(unint64_t)a3;
- (void)updateFromLayout;
@end

@implementation THWPageControlRep

- (THWPageControlRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = THWPageControlRep;
  result = [(THWPageControlRep *)&v5 initWithLayout:a3 canvas:a4];
  if (result)
  {
    *(&result->_highlightedPageIndex + 1) = 0x7FFFFFFFFFFFFFFFLL;
    *(&result->_currentPage + 1) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWPageControlRep;
  [(THWPageControlRep *)&v3 dealloc];
}

- (id)p_nearestIndicatorToLocation:(CGPoint)a3
{
  x = a3.x;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = *(&self->_indicators + 1);
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v33;
  y = CGRectZero.origin.y;
  v31 = CGRectZero.origin.x;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = 1.79769313e308;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v32 + 1) + 8 * i);
      v16 = [v15 layer];
      v17 = v16;
      v18 = height;
      v19 = width;
      v20 = y;
      v21 = v31;
      if (v16)
      {
        [v16 bounds];
      }

      v22 = CGRectGetWidth(*&v21);
      [-[THWPageControlRep layout](self "layout")];
      v24 = v23;
      [v17 frame];
      TSDCenterOfRect();
      v26 = v25;
      TSDDistanceSquared();
      v28 = vabdd_f64(v26, x);
      if (v27 < v13 && v28 <= (v22 + v24) * 0.5)
      {
        v8 = v15;
        v13 = v27;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v7);
  return v8;
}

- (id)p_indicatorAtIndex:(unint64_t)a3
{
  if ([*(&self->_indicators + 1) count] <= a3)
  {
    return 0;
  }

  v5 = *(&self->_indicators + 1);

  return [v5 objectAtIndex:a3];
}

+ (id)dotLayerUsingColor:(id)a3 diameter:(double)a4
{
  v6 = +[TSDNoDefaultImplicitActionLayer layer];
  [v6 setMasksToBounds:1];
  [v6 setBackgroundColor:{objc_msgSend(a3, "CGColor")}];
  [v6 setCornerRadius:a4 * 0.5];
  [v6 setBounds:{0.0, 0.0, a4, a4}];
  return v6;
}

- (id)p_layerForState:(int)a3 pageIndex:(unint64_t)a4
{
  v5 = *&a3;
  v7 = *(&self->_cachedLayers + 1);
  if (!v7)
  {
    *(&self->_cachedLayers + 1) = objc_alloc_init(TSUIntegerKeyDictionary);
  }

  [(THWPageControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    [*(&self->_cachedLayers + 1) objectForKey:a4];
    v7 = TSUDynamicCast();
    if (!v7)
    {
      v7 = objc_alloc_init(TSUIntegerKeyDictionary);
      [*(&self->_cachedLayers + 1) setObject:v7 forKey:a4];
      v8 = v7;
    }

    v9 = v5;
    v10 = [v7 objectForKey:v5];
    if (!v10)
    {
      v11 = [(THWPageControlDelegate *)[(THWPageControlRep *)self delegate] pageControl:self layerForState:v5 pageIndex:a4];
      goto LABEL_11;
    }

    return v10;
  }

  v9 = v5;
  v10 = [v7 objectForKey:v5];
  if (v10)
  {
    return v10;
  }

  v11 = [(THWPageControlDelegate *)[(THWPageControlRep *)self delegate] pageControl:self layerForState:v5];
LABEL_11:
  v12 = v11;
  if (v11)
  {
    [v7 setObject:v11 forKey:v9];
  }

  return v12;
}

- (void)updateFromLayout
{
  v18.receiver = self;
  v18.super_class = THWPageControlRep;
  [(THWPageControlRep *)&v18 updateFromLayout];
  v3 = [(THWPageControlRep *)self layout];
  v4 = [v3 numberOfPages];
  if (v4 > 0xA || [v3 forceTextOnly])
  {
    v5 = *(&self->_indicators + 1);
    if (v5)
    {
      *(&self->_currentPage + 1) = 0x7FFFFFFFFFFFFFFFLL;
      v5 = *(&self->_indicators + 1);
    }

    *(&self->_indicators + 1) = 0;
    if (!*(&self->_textIndicator + 1))
    {
      *(&self->_textIndicator + 1) = objc_alloc_init(THWLabelLayer);
      [*(&self->_textIndicator + 1) setDelegate:{+[THNoAnimationLayerDelegate sharedInstance](THNoAnimationLayerDelegate, "sharedInstance")}];
      [-[THWPageControlRep canvas](self "canvas")];
      [*(&self->_textIndicator + 1) setContentsScale:?];
      v6 = [(THWPageControlRep *)self delegate];
      v7 = [(THWPageControlDelegate *)v6 pageControlCreateFont:self];
      v8 = [(THWPageControlDelegate *)v6 pageControlTextColor:self];
      v9 = CTFontCopyPostScriptName(v7);
      [*(&self->_textIndicator + 1) setFontName:v9];
      [*(&self->_textIndicator + 1) setFontSize:14.0];
      [*(&self->_textIndicator + 1) setTextColor:v8];
      [*(&self->_textIndicator + 1) setVerticalAlignment:1];
      [*(&self->_textIndicator + 1) setHorizontalAlignment:1];
      [*(&self->_textIndicator + 1) setVerticalAlignmentRule:1];
      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    v10 = *(&self->_textIndicator + 1);
    if (v10)
    {
      *(&self->_currentPage + 1) = 0x7FFFFFFFFFFFFFFFLL;
      v10 = *(&self->_textIndicator + 1);
    }

    *(&self->_textIndicator + 1) = 0;
    if (!*(&self->_indicators + 1))
    {
      *(&self->_indicators + 1) = objc_alloc_init(NSMutableArray);
    }
  }

  v11 = *(&self->_indicators + 1);
  if (v11)
  {
    if ([v11 count] != v4)
    {
      [*(&self->_indicators + 1) removeAllObjects];
      *(&self->_currentPage + 1) = 0x7FFFFFFFFFFFFFFFLL;
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v13 = [[THWPageIndicator alloc] initWithLayer:[(THWPageControlRep *)self p_layerForState:0 pageIndex:i]];
          [*(&self->_indicators + 1) addObject:v13];
        }
      }
    }

    v14 = [v3 currentPage];
    v15 = *(&self->_currentPage + 1);
    if (v15 != v14)
    {
      v16 = v14;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [-[THWPageControlRep p_indicatorAtIndex:](self "p_indicatorAtIndex:{"setLayer:", -[THWPageControlRep p_layerForState:pageIndex:](self, "p_layerForState:pageIndex:", 0, *(&self->_currentPage + 1))}")];
      }

      *(&self->_currentPage + 1) = v16;
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [-[THWPageControlRep p_indicatorAtIndex:](self p_indicatorAtIndex:{v16), "setLayer:", -[THWPageControlRep p_layerForState:pageIndex:](self, "p_layerForState:pageIndex:", 1, *(&self->_currentPage + 1))}];
      }
    }
  }

  if (*(&self->_textIndicator + 1))
  {
    v17 = [v3 currentPage];
    if (*(&self->_currentPage + 1) != v17)
    {
      *(&self->_currentPage + 1) = v17;
      [*(&self->_textIndicator + 1) setString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"%lu of %lu", &stru_471858, 0), *(&self->_currentPage + 1) + 1, v4)}];
    }
  }
}

- (void)screenScaleDidChange
{
  v5.receiver = self;
  v5.super_class = THWPageControlRep;
  [(THWPageControlRep *)&v5 screenScaleDidChange];
  [-[THWPageControlRep canvas](self "canvas")];
  [*(&self->_textIndicator + 1) setContentsScale:?];
  [*(&self->_cachedLayers + 1) removeAllObjects];
  v3 = *(&self->_indicators + 1);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_160DC0;
  v4[3] = &unk_45DFC0;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  if (*(&self->_indicators + 1))
  {
    v49 = [(THWPageControlRep *)self delegate];
    v5 = objc_opt_respondsToSelector();
    v6 = [(THWPageControlRep *)self layout];
    v7 = [(THWPageControlRep *)self p_layerForState:0 pageIndex:0];
    if (v7)
    {
      [v7 bounds];
      width = v8;
      height = v10;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }

    [v6 spacing];
    v13 = v12;
    v14 = [*(&self->_indicators + 1) count];
    v51 = v13;
    v15 = v13 * (v14 - 1);
    if (v14 <= 1)
    {
      v15 = 0.0;
    }

    v16 = v15 + width * v14;
    if (v14 && *(&self->_currentPage + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [(THWPageControlRep *)self p_layerForState:1 pageIndex:0];
      if (v17)
      {
        [v17 bounds];
      }

      else
      {
        v18 = CGSizeZero.width;
      }

      v16 = v16 + v18 - width;
    }

    [-[THWPageControlRep canvas](self "canvas")];
    [-[THWPageControlRep canvas](self "canvas")];
    v20 = v19;
    memset(&v57, 0, sizeof(v57));
    CATransform3DMakeScale(&v57, v19, v19, 1.0);
    [v6 frame];
    v22 = v21;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = *(&self->_indicators + 1);
    v24 = [v23 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = (v22 - v16) * 0.5;
      v28 = floorf(v27);
      v29 = *v54;
      v30 = height;
      v31 = width * v20;
      v32 = v30 * v20;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v54 != v29)
          {
            objc_enumerationMutation(v23);
          }

          v34 = [*(*(&v53 + 1) + 8 * i) layer];
          [v34 bounds];
          v36 = v35;
          TSDRoundedPointForScale();
          [v34 setPosition:{v37 + v31 * 0.5, v38 + v32 * 0.5}];
          v52 = v57;
          [v34 setTransform:&v52];
          if (v34)
          {
            if (v5)
            {
              [v50 pageControl:self updateLayer:v34 forHighlight:v26 == *(&self->_highlightedPageIndex + 1)];
            }

            [a3 addObject:v34];
          }

          v28 = v28 + v51 + v36;
          ++v26;
        }

        v25 = [v23 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v25);
    }
  }

  if (*(&self->_textIndicator + 1))
  {
    [(THWPageControlRep *)self layerFrameInScaledCanvas];
    TSDRectWithSize();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [-[THWPageControlRep canvas](self "canvas")];
    v48 = v47;
    [*(&self->_textIndicator + 1) setFrame:{v40, v42, v44, v46}];
    [*(&self->_textIndicator + 1) setFontSize:v48 * 14.0];
    [a3 addObject:*(&self->_textIndicator + 1)];
  }
}

- (BOOL)canHandleGesture:(id)a3
{
  v5 = [(THWControlRep *)self controlHostRep];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [v5 control:-[THWPageControlRep layout](self isInteractionEnabledForRep:{"layout"), self}]) != 0)
  {
    LOBYTE(v6) = *(&self->_indicators + 1) && (v7 = [a3 gestureKind], v7 == TSWPImmediatePress) && objc_msgSend(-[THWPageControlRep layout](self, "layout"), "numberOfPages") != 0;
  }

  return v6;
}

- (BOOL)handleGesture:(id)a3
{
  if (!*(&self->_indicators + 1) || (v5 = -[THWPageControlRep layout](self, "layout"), v6 = [a3 gestureKind], v6 != TSWPImmediatePress))
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = [v5 numberOfPages];
  if (!v7)
  {
    return v7;
  }

  [a3 naturalLocationForRep:self];
  v9 = v8;
  [(THWPageControlRep *)self convertNaturalPointToLayerRelative:?];
  v10 = [(THWPageControlRep *)self p_nearestIndicatorToLocation:?];
  if (v10)
  {
    v11 = [*(&self->_indicators + 1) indexOfObject:v10];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [a3 gestureState];
  if (v12 - 1 < 2)
  {
    if (![objc_msgSend(-[THWPageControlRep interactiveCanvasController](self "interactiveCanvasController")])
    {
      v18 = self;
      v19 = v11;
      goto LABEL_23;
    }

    objc_opt_class();
    [TSUDynamicCast() cancel];
  }

  else if (v12 - 4 >= 2)
  {
    if (v12 == 3)
    {
      [(THWPageControlRep *)self setHighlightedPageIndex:0x7FFFFFFFFFFFFFFFLL];
      v13 = [v5 currentPage];
      if (![(THWPageControlRep *)self pageDirectlyToIndex])
      {
        v14 = [(THWPageControlRep *)self p_indicatorAtIndex:*(&self->_currentPage + 1)];
        v15 = [v5 numberOfPages];
        if (v14 && ([-[THWPageControlRep canvas](self "canvas")], v17 = v9 * v16, objc_msgSend(objc_msgSend(v14, "layer"), "frame"), v17 > CGRectGetMidX(v21)))
        {
          v11 = (v13 + 1);
          if (v13 + 1 == v15)
          {
            if ([v5 wrapEnabled])
            {
              v11 = 0;
            }

            else
            {
              v11 = v13;
            }
          }
        }

        else if (![v5 wrapEnabled] || v13)
        {
          if (v13)
          {
            v11 = (v13 - 1);
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = (v15 - 1);
        }
      }

      [(THWPageControlRep *)self p_changeToPageAtIndex:v11];
    }

    goto LABEL_24;
  }

  v18 = self;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
  [(THWPageControlRep *)v18 setHighlightedPageIndex:v19];
LABEL_24:
  LOBYTE(v7) = 1;
  return v7;
}

- (void)p_changeToPageAtIndex:(unint64_t)a3
{
  v5 = [-[THWPageControlRep layout](self "layout")];
  if (v5 != a3)
  {
    v6 = v5;
    [-[THWPageControlRep layout](self "layout")];
    v7 = [(THWPageControlRep *)self delegate];

    [(THWPageControlDelegate *)v7 pageControl:self didChangeInteractivelyFromPageIndex:v6 toPageIndex:a3];
  }
}

- (void)setHighlightedPageIndex:(unint64_t)a3
{
  v3 = *(&self->_highlightedPageIndex + 1);
  if (v3 != a3)
  {
    *(&self->_highlightedPageIndex + 1) = a3;
    v5 = [(THWPageControlRep *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = *(&self->_highlightedPageIndex + 1);

      [(THWPageControlDelegate *)v5 pageControl:self didChangeHighlightedFromPageIndex:v3 toPageIndex:v6];
    }
  }
}

@end