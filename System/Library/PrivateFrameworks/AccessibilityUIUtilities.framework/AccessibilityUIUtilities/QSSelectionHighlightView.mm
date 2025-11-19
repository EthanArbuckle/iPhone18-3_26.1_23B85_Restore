@interface QSSelectionHighlightView
- (QSSelectionHighlightView)initWithFrame:(CGRect)a3;
- (UIColor)selectionColor;
- (UIColor)underlineColor;
- (void)_processSelectionRects;
- (void)setHighlightSelectionRects:(id)a3;
@end

@implementation QSSelectionHighlightView

- (QSSelectionHighlightView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = QSSelectionHighlightView;
  v3 = [(QSSelectionHighlightView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(QSSelectionHighlightView *)v3 setUserInteractionEnabled:0];
    v5 = [(QSSelectionHighlightView *)v4 layer];
    [v5 setAllowsHitTesting:0];

    [(QSSelectionHighlightView *)v4 setAutoresizingMask:18];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(QSSelectionHighlightView *)v4 setBackgroundColor:v6];

    v7 = [MEMORY[0x1E695DF70] array];
    viewCache = v4->_viewCache;
    v4->_viewCache = v7;

    v9 = v4;
  }

  return v4;
}

- (UIColor)selectionColor
{
  selectionColor = self->_selectionColor;
  if (selectionColor)
  {
    v3 = selectionColor;
  }

  else
  {
    v4 = [(QSSelectionHighlightView *)self traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 2)
    {
      v6 = 0.67;
      v7 = 0.35;
      v8 = 1.0;
    }

    else
    {
      v6 = 0.33;
      v7 = 0.65;
      v8 = 0.0;
    }

    v3 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v6 blue:v7 alpha:0.2];
  }

  return v3;
}

- (UIColor)underlineColor
{
  underlineColor = self->_underlineColor;
  if (underlineColor)
  {
    v3 = underlineColor;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

- (void)setHighlightSelectionRects:(id)a3
{
  objc_storeStrong(&self->_highlightSelectionRects, a3);

  [(QSSelectionHighlightView *)self _processSelectionRects];
}

- (void)_processSelectionRects
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = self->_highlightSelectionRects;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v32;
    v8 = *(MEMORY[0x1E695F058] + 8);
    v30 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v31 + 1) + 8 * i) rectValue];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [(QSSelectionHighlightView *)self frame];
        v39.origin.x = v20;
        v39.origin.y = v21;
        v39.size.width = v22;
        v39.size.height = v23;
        v37.origin.x = v13;
        v37.origin.y = v15;
        v37.size.width = v17;
        v37.size.height = v19;
        v38 = CGRectIntersection(v37, v39);
        if (fabs(v38.size.width) >= 0.001 && fabs(v38.size.height) >= 0.001 && v38.size.width > 0.0 && v38.size.height > 0.0)
        {
          if (v6 >= [(NSMutableArray *)self->_viewCache count])
          {
            v24 = [[QSSelectionHighlightDetailedView alloc] initWithFrame:v30, v8, v9, v10];
            v25 = [MEMORY[0x1E69DC888] clearColor];
            [(QSSelectionHighlightDetailedView *)v24 setBackgroundColor:v25];

            [(NSMutableArray *)self->_viewCache addObject:v24];
            [(QSSelectionHighlightView *)self addSubview:v24];
          }

          else
          {
            v24 = [(NSMutableArray *)self->_viewCache objectAtIndexedSubscript:v6];
          }

          [(QSSelectionHighlightDetailedView *)v24 setDisplayRect:v13, v15, v17, v19];
          v26 = [(QSSelectionHighlightView *)self underlineColor];
          [(QSSelectionHighlightDetailedView *)v24 setUnderlineColor:v26];

          [(QSSelectionHighlightDetailedView *)v24 setSentenceHighlight:[(QSSelectionHighlightView *)self sentenceHighlight]];
          v27 = [(QSSelectionHighlightView *)self selectionColor];
          [(QSSelectionHighlightDetailedView *)v24 setSelectionColor:v27];

          [(QSSelectionHighlightDetailedView *)v24 setHidden:0];
          ++v6;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  while (v6 < [(NSMutableArray *)self->_viewCache count])
  {
    v28 = [(NSMutableArray *)self->_viewCache objectAtIndexedSubscript:v6];
    [v28 setHidden:1];

    ++v6;
  }
}

@end