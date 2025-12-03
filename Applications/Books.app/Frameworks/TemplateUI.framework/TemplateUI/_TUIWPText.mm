@interface _TUIWPText
- (id)layoutForInlineDrawable:(id)drawable;
- (void)positionAttachmentLayoutsWithOffset:(CGPoint)offset truncatedCharIndex:(unint64_t)index;
- (void)scaleTextPercentDidChange:(unint64_t)change;
- (void)updateWithAttachmentLayouts:(id)layouts;
@end

@implementation _TUIWPText

- (void)scaleTextPercentDidChange:(unint64_t)change
{
  if (self->_useShrinkToFit)
  {
    [(NSMapTable *)self->_attachmentLayouts removeAllObjects];
    [(NSMutableArray *)self->_inlineLayouts removeAllObjects];
    if (change <= 1)
    {
      changeCopy = 1;
    }

    else
    {
      changeCopy = change;
    }

    if (changeCopy >= 0x64)
    {
      changeCopy = 100;
    }

    layout = self->_layout;

    [(TUIWPLayout *)layout _wpText:self scaleFactorDidChange:changeCopy / 100.0];
  }
}

- (void)positionAttachmentLayoutsWithOffset:(CGPoint)offset truncatedCharIndex:(unint64_t)index
{
  y = offset.y;
  x = offset.x;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  objectEnumerator = [(NSMapTable *)self->_attachmentLayouts objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        layout = [v12 layout];
        geometry = [v12 geometry];
        [geometry frame];
        v16 = v15;
        v18 = v17;

        [layout setComputedOrigin:{x + v16, y + v18}];
        [layout setHidden:{objc_msgSend(v12, "charIndex") >= index}];
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)updateWithAttachmentLayouts:(id)layouts
{
  layoutsCopy = layouts;
  if ([layoutsCopy count])
  {
    v5 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    layouts = self->_layouts;
    self->_layouts = v5;

    v7 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    attachmentLayouts = self->_attachmentLayouts;
    self->_attachmentLayouts = v7;

    v9 = objc_opt_new();
    inlineLayouts = self->_inlineLayouts;
    self->_inlineLayouts = v9;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = layoutsCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = self->_layouts;
          v18 = [v16 box];
          [(NSMapTable *)v17 setObject:v16 forKey:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v19 = self->_layouts;
    self->_layouts = 0;

    v20 = self->_attachmentLayouts;
    self->_attachmentLayouts = 0;

    v21 = self->_inlineLayouts;
    self->_inlineLayouts = 0;
  }
}

- (id)layoutForInlineDrawable:(id)drawable
{
  drawableCopy = drawable;
  v5 = [drawableCopy box];
  v6 = [(NSMapTable *)self->_attachmentLayouts objectForKey:v5];
  if (!v6)
  {
    owningAttachment = [drawableCopy owningAttachment];
    findCharIndex = [owningAttachment findCharIndex];

    v9 = [(NSMapTable *)self->_layouts objectForKey:v5];
    v10 = [_TUIWPAttachmentLayout alloc];
    [drawableCopy baselineOffset];
    v6 = [(_TUIWPAttachmentLayout *)v10 initWithLayout:v9 baselineOffset:self->_computingIntrinsic intrinsic:findCharIndex charIndex:?];
    attachmentLayouts = self->_attachmentLayouts;
    v12 = [v9 box];
    [(NSMapTable *)attachmentLayouts setObject:v6 forKey:v12];

    [(NSMutableArray *)self->_inlineLayouts addObject:v6];
  }

  return v6;
}

@end