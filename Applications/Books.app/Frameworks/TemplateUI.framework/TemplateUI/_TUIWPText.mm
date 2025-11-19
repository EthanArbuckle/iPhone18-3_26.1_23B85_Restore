@interface _TUIWPText
- (id)layoutForInlineDrawable:(id)a3;
- (void)positionAttachmentLayoutsWithOffset:(CGPoint)a3 truncatedCharIndex:(unint64_t)a4;
- (void)scaleTextPercentDidChange:(unint64_t)a3;
- (void)updateWithAttachmentLayouts:(id)a3;
@end

@implementation _TUIWPText

- (void)scaleTextPercentDidChange:(unint64_t)a3
{
  if (self->_useShrinkToFit)
  {
    [(NSMapTable *)self->_attachmentLayouts removeAllObjects];
    [(NSMutableArray *)self->_inlineLayouts removeAllObjects];
    if (a3 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    if (v6 >= 0x64)
    {
      v6 = 100;
    }

    layout = self->_layout;

    [(TUIWPLayout *)layout _wpText:self scaleFactorDidChange:v6 / 100.0];
  }
}

- (void)positionAttachmentLayoutsWithOffset:(CGPoint)a3 truncatedCharIndex:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(NSMapTable *)self->_attachmentLayouts objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 layout];
        v14 = [v12 geometry];
        [v14 frame];
        v16 = v15;
        v18 = v17;

        [v13 setComputedOrigin:{x + v16, y + v18}];
        [v13 setHidden:{objc_msgSend(v12, "charIndex") >= a4}];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)updateWithAttachmentLayouts:(id)a3
{
  v4 = a3;
  if ([v4 count])
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
    v11 = v4;
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

- (id)layoutForInlineDrawable:(id)a3
{
  v4 = a3;
  v5 = [v4 box];
  v6 = [(NSMapTable *)self->_attachmentLayouts objectForKey:v5];
  if (!v6)
  {
    v7 = [v4 owningAttachment];
    v8 = [v7 findCharIndex];

    v9 = [(NSMapTable *)self->_layouts objectForKey:v5];
    v10 = [_TUIWPAttachmentLayout alloc];
    [v4 baselineOffset];
    v6 = [(_TUIWPAttachmentLayout *)v10 initWithLayout:v9 baselineOffset:self->_computingIntrinsic intrinsic:v8 charIndex:?];
    attachmentLayouts = self->_attachmentLayouts;
    v12 = [v9 box];
    [(NSMapTable *)attachmentLayouts setObject:v6 forKey:v12];

    [(NSMutableArray *)self->_inlineLayouts addObject:v6];
  }

  return v6;
}

@end