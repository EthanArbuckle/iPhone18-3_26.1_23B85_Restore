@interface THWWidgetAdornmentInfo
- (BOOL)panelContentProviderHasContentForPanel:(int)a3;
- (id)bottomPanelInfos;
- (id)childEnumerator;
- (id)interleavedInfosWithInfos:(id)a3;
- (id)p_colorForStorage:(id)a3;
- (id)panelContentProviderChildInfosForPanel:(int)a3;
- (id)titleColor;
- (id)topPanelInfos;
- (void)dealloc;
- (void)updateParentInfo:(id)a3;
@end

@implementation THWWidgetAdornmentInfo

- (void)dealloc
{
  [(THWWidgetAdornmentInfo *)self setExteriorTextWrap:0];
  [(THWWidgetAdornmentInfo *)self setInsertionOrder:0];
  [(THWWidgetAdornmentInfo *)self setBackground:0];
  [(THWWidgetAdornmentInfo *)self setTitle:0];
  [(THWWidgetAdornmentInfo *)self setCaption:0];
  v3.receiver = self;
  v3.super_class = THWWidgetAdornmentInfo;
  [(THWWidgetAdornmentInfo *)&v3 dealloc];
}

- (id)interleavedInfosWithInfos:(id)a3
{
  if (![(THWWidgetAdornmentInfo *)self insertionOrder])
  {
    v5 = +[NSMutableDictionary dictionary];
    if ([(THWWidgetAdornmentInfo *)self background])
    {
      [v5 setObject:-[THWWidgetAdornmentInfo background](self forKey:{"background"), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    if ([(THWWidgetAdornmentInfo *)self title])
    {
      [v5 setObject:-[THWWidgetAdornmentInfo title](self forKey:{"title"), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v6++)}];
    }

    if ([(THWWidgetAdornmentInfo *)self caption])
    {
      [v5 setObject:-[THWWidgetAdornmentInfo caption](self forKey:{"caption"), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v6)}];
    }

    [(THWWidgetAdornmentInfo *)self setInsertionOrder:v5];
  }

  v7 = [(NSArray *)[(NSDictionary *)[(THWWidgetAdornmentInfo *)self insertionOrder] allKeys] sortedArrayUsingComparator:&stru_45DED0];
  if (a3)
  {
    v8 = [a3 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableArray array];
  }

  v9 = v8;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 integerValue];
        if (v15 <= [v9 count])
        {
          [v9 insertObject:-[NSDictionary objectForKey:](-[THWWidgetAdornmentInfo insertionOrder](self atIndex:{"insertionOrder"), "objectForKey:", v14), objc_msgSend(v14, "integerValue")}];
        }
      }

      v11 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v9;
}

- (void)updateParentInfo:(id)a3
{
  [(TSWPShapeInfo *)self->_title setParentInfo:?];
  [(TSWPShapeInfo *)self->_caption setParentInfo:a3];
  background = self->_background;

  [(THWWidgetBackgroundInfo *)background setParentInfo:a3];
}

- (id)p_colorForStorage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_msgSend(a3 characterStyleAtCharIndex:0 effectiveRange:{0), "valueForProperty:", 18}];
  if (!v4)
  {
    v4 = [objc_msgSend(a3 paragraphStyleAtCharIndex:0 effectiveRange:{0), "valueForProperty:", 18}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v4;
}

- (id)titleColor
{
  v3 = [(TSWPShapeInfo *)self->_title containedStorage];

  return [(THWWidgetAdornmentInfo *)self p_colorForStorage:v3];
}

- (BOOL)panelContentProviderHasContentForPanel:(int)a3
{
  if (a3 == 1)
  {
    v3 = [(THWWidgetAdornmentInfo *)self captionStorage];
    return v3 != 0;
  }

  if (!a3)
  {
    v3 = [(THWWidgetAdornmentInfo *)self titleStorage];
    return v3 != 0;
  }

  return 0;
}

- (id)topPanelInfos
{
  v3 = +[NSMutableArray array];
  if ((![(THWWidgetAdornmentInfo *)self layoutMode]|| [(THWWidgetAdornmentInfo *)self layoutMode]== 1) && [(THWWidgetAdornmentInfo *)self titleStorage])
  {
    [v3 addObject:{-[THWWidgetAdornmentInfo titleStorage](self, "titleStorage")}];
  }

  if ([(THWWidgetAdornmentInfo *)self layoutMode]== 1 && [(THWWidgetAdornmentInfo *)self captionStorage])
  {
    [v3 addObject:{-[THWWidgetAdornmentInfo captionStorage](self, "captionStorage")}];
  }

  return v3;
}

- (id)bottomPanelInfos
{
  v3 = +[NSMutableArray array];
  if ([(THWWidgetAdornmentInfo *)self layoutMode]== 2 && [(THWWidgetAdornmentInfo *)self titleStorage])
  {
    [v3 addObject:{-[THWWidgetAdornmentInfo titleStorage](self, "titleStorage")}];
  }

  if (![(THWWidgetAdornmentInfo *)self layoutMode]|| [(THWWidgetAdornmentInfo *)self layoutMode]== 2)
  {
    if ([(THWWidgetAdornmentInfo *)self captionStorage])
    {
      [v3 addObject:{-[THWWidgetAdornmentInfo captionStorage](self, "captionStorage")}];
    }
  }

  return v3;
}

- (id)panelContentProviderChildInfosForPanel:(int)a3
{
  if (a3 == 1)
  {
    result = [(THWWidgetAdornmentInfo *)self captionStorage];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a3)
  {
    return 0;
  }

  result = [(THWWidgetAdornmentInfo *)self titleStorage];
  if (result)
  {
LABEL_6:
    v4 = result;
    return [NSArray arrayWithObjects:&v4 count:1];
  }

  return result;
}

- (id)childEnumerator
{
  v3 = +[NSMutableArray array];
  if ([(THWWidgetAdornmentInfo *)self background])
  {
    [v3 addObject:{-[THWWidgetAdornmentInfo background](self, "background")}];
  }

  if ([(THWWidgetAdornmentInfo *)self title])
  {
    [v3 addObject:{-[THWWidgetAdornmentInfo title](self, "title")}];
  }

  if ([(THWWidgetAdornmentInfo *)self caption])
  {
    [v3 addObject:{-[THWWidgetAdornmentInfo caption](self, "caption")}];
  }

  return [v3 objectEnumerator];
}

@end