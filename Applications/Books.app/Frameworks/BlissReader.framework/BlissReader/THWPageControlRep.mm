@interface THWPageControlRep
+ (id)dotLayerUsingColor:(id)color diameter:(double)diameter;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (THWPageControlRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)p_indicatorAtIndex:(unint64_t)index;
- (id)p_layerForState:(int)state pageIndex:(unint64_t)index;
- (id)p_nearestIndicatorToLocation:(CGPoint)location;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)p_changeToPageAtIndex:(unint64_t)index;
- (void)screenScaleDidChange;
- (void)setHighlightedPageIndex:(unint64_t)index;
- (void)updateFromLayout;
@end

@implementation THWPageControlRep

- (THWPageControlRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = THWPageControlRep;
  result = [(THWPageControlRep *)&v5 initWithLayout:layout canvas:canvas];
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

- (id)p_nearestIndicatorToLocation:(CGPoint)location
{
  x = location.x;
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
      layer = [v15 layer];
      v17 = layer;
      v18 = height;
      v19 = width;
      v20 = y;
      v21 = v31;
      if (layer)
      {
        [layer bounds];
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

- (id)p_indicatorAtIndex:(unint64_t)index
{
  if ([*(&self->_indicators + 1) count] <= index)
  {
    return 0;
  }

  v5 = *(&self->_indicators + 1);

  return [v5 objectAtIndex:index];
}

+ (id)dotLayerUsingColor:(id)color diameter:(double)diameter
{
  v6 = +[TSDNoDefaultImplicitActionLayer layer];
  [v6 setMasksToBounds:1];
  [v6 setBackgroundColor:{objc_msgSend(color, "CGColor")}];
  [v6 setCornerRadius:diameter * 0.5];
  [v6 setBounds:{0.0, 0.0, diameter, diameter}];
  return v6;
}

- (id)p_layerForState:(int)state pageIndex:(unint64_t)index
{
  v5 = *&state;
  v7 = *(&self->_cachedLayers + 1);
  if (!v7)
  {
    *(&self->_cachedLayers + 1) = objc_alloc_init(TSUIntegerKeyDictionary);
  }

  [(THWPageControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    [*(&self->_cachedLayers + 1) objectForKey:index];
    v7 = TSUDynamicCast();
    if (!v7)
    {
      v7 = objc_alloc_init(TSUIntegerKeyDictionary);
      [*(&self->_cachedLayers + 1) setObject:v7 forKey:index];
      v8 = v7;
    }

    v9 = v5;
    v10 = [v7 objectForKey:v5];
    if (!v10)
    {
      v11 = [(THWPageControlDelegate *)[(THWPageControlRep *)self delegate] pageControl:self layerForState:v5 pageIndex:index];
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
  layout = [(THWPageControlRep *)self layout];
  numberOfPages = [layout numberOfPages];
  if (numberOfPages > 0xA || [layout forceTextOnly])
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
      delegate = [(THWPageControlRep *)self delegate];
      v7 = [(THWPageControlDelegate *)delegate pageControlCreateFont:self];
      v8 = [(THWPageControlDelegate *)delegate pageControlTextColor:self];
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
    if ([v11 count] != numberOfPages)
    {
      [*(&self->_indicators + 1) removeAllObjects];
      *(&self->_currentPage + 1) = 0x7FFFFFFFFFFFFFFFLL;
      if (numberOfPages)
      {
        for (i = 0; i != numberOfPages; ++i)
        {
          v13 = [[THWPageIndicator alloc] initWithLayer:[(THWPageControlRep *)self p_layerForState:0 pageIndex:i]];
          [*(&self->_indicators + 1) addObject:v13];
        }
      }
    }

    currentPage = [layout currentPage];
    v15 = *(&self->_currentPage + 1);
    if (v15 != currentPage)
    {
      v16 = currentPage;
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
    currentPage2 = [layout currentPage];
    if (*(&self->_currentPage + 1) != currentPage2)
    {
      *(&self->_currentPage + 1) = currentPage2;
      [*(&self->_textIndicator + 1) setString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"%lu of %lu", &stru_471858, 0), *(&self->_currentPage + 1) + 1, numberOfPages)}];
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

- (void)addAdditionalChildLayersToArray:(id)array
{
  if (*(&self->_indicators + 1))
  {
    delegate = [(THWPageControlRep *)self delegate];
    v5 = objc_opt_respondsToSelector();
    layout = [(THWPageControlRep *)self layout];
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

    [layout spacing];
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
    [layout frame];
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

          layer = [*(*(&v53 + 1) + 8 * i) layer];
          [layer bounds];
          v36 = v35;
          TSDRoundedPointForScale();
          [layer setPosition:{v37 + v31 * 0.5, v38 + v32 * 0.5}];
          v52 = v57;
          [layer setTransform:&v52];
          if (layer)
          {
            if (v5)
            {
              [v50 pageControl:self updateLayer:layer forHighlight:v26 == *(&self->_highlightedPageIndex + 1)];
            }

            [array addObject:layer];
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
    [array addObject:*(&self->_textIndicator + 1)];
  }
}

- (BOOL)canHandleGesture:(id)gesture
{
  controlHostRep = [(THWControlRep *)self controlHostRep];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [controlHostRep control:-[THWPageControlRep layout](self isInteractionEnabledForRep:{"layout"), self}]) != 0)
  {
    LOBYTE(v6) = *(&self->_indicators + 1) && (v7 = [gesture gestureKind], v7 == TSWPImmediatePress) && objc_msgSend(-[THWPageControlRep layout](self, "layout"), "numberOfPages") != 0;
  }

  return v6;
}

- (BOOL)handleGesture:(id)gesture
{
  if (!*(&self->_indicators + 1) || (v5 = -[THWPageControlRep layout](self, "layout"), v6 = [gesture gestureKind], v6 != TSWPImmediatePress))
  {
    LOBYTE(numberOfPages) = 0;
    return numberOfPages;
  }

  numberOfPages = [v5 numberOfPages];
  if (!numberOfPages)
  {
    return numberOfPages;
  }

  [gesture naturalLocationForRep:self];
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

  gestureState = [gesture gestureState];
  if (gestureState - 1 < 2)
  {
    if (![objc_msgSend(-[THWPageControlRep interactiveCanvasController](self "interactiveCanvasController")])
    {
      selfCopy2 = self;
      v19 = v11;
      goto LABEL_23;
    }

    objc_opt_class();
    [TSUDynamicCast() cancel];
  }

  else if (gestureState - 4 >= 2)
  {
    if (gestureState == 3)
    {
      [(THWPageControlRep *)self setHighlightedPageIndex:0x7FFFFFFFFFFFFFFFLL];
      currentPage = [v5 currentPage];
      if (![(THWPageControlRep *)self pageDirectlyToIndex])
      {
        v14 = [(THWPageControlRep *)self p_indicatorAtIndex:*(&self->_currentPage + 1)];
        numberOfPages2 = [v5 numberOfPages];
        if (v14 && ([-[THWPageControlRep canvas](self "canvas")], v17 = v9 * v16, objc_msgSend(objc_msgSend(v14, "layer"), "frame"), v17 > CGRectGetMidX(v21)))
        {
          v11 = (currentPage + 1);
          if (currentPage + 1 == numberOfPages2)
          {
            if ([v5 wrapEnabled])
            {
              v11 = 0;
            }

            else
            {
              v11 = currentPage;
            }
          }
        }

        else if (![v5 wrapEnabled] || currentPage)
        {
          if (currentPage)
          {
            v11 = (currentPage - 1);
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = (numberOfPages2 - 1);
        }
      }

      [(THWPageControlRep *)self p_changeToPageAtIndex:v11];
    }

    goto LABEL_24;
  }

  selfCopy2 = self;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
  [(THWPageControlRep *)selfCopy2 setHighlightedPageIndex:v19];
LABEL_24:
  LOBYTE(numberOfPages) = 1;
  return numberOfPages;
}

- (void)p_changeToPageAtIndex:(unint64_t)index
{
  v5 = [-[THWPageControlRep layout](self "layout")];
  if (v5 != index)
  {
    v6 = v5;
    [-[THWPageControlRep layout](self "layout")];
    delegate = [(THWPageControlRep *)self delegate];

    [(THWPageControlDelegate *)delegate pageControl:self didChangeInteractivelyFromPageIndex:v6 toPageIndex:index];
  }
}

- (void)setHighlightedPageIndex:(unint64_t)index
{
  v3 = *(&self->_highlightedPageIndex + 1);
  if (v3 != index)
  {
    *(&self->_highlightedPageIndex + 1) = index;
    delegate = [(THWPageControlRep *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = *(&self->_highlightedPageIndex + 1);

      [(THWPageControlDelegate *)delegate pageControl:self didChangeHighlightedFromPageIndex:v3 toPageIndex:v6];
    }
  }
}

@end