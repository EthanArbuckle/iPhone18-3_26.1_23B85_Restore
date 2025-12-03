@interface PDFMarkupStyleView
- (PDFMarkupStyleView)initWithHandler:(id)handler;
@end

@implementation PDFMarkupStyleView

- (PDFMarkupStyleView)initWithHandler:(id)handler
{
  v40[4] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v39.receiver = self;
  v39.super_class = PDFMarkupStyleView;
  v4 = [(PDFMarkupStyleView *)&v39 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v34 = v4;
    array = [MEMORY[0x1E695DF70] array];
    for (i = 1; i != 8; ++i)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{0.0, 0.0, 33.0, 33.0}];
      v9 = PDFMarkupMenuColorMenuIconForMarkupStyle(i - 1);
      v10 = v9;
      if ((i - 1) >= 5)
      {
        if (i == 6)
        {
          [MEMORY[0x1E69DCAB8] largeUnderlinePot];
        }

        else
        {
          [MEMORY[0x1E69DCAB8] largeStrikeOutPot];
        }
        v13 = ;
      }

      else
      {
        v11 = MEMORY[0x1E69DCAB8];
        v12 = PDFMarkupMenuColorForMenuIcon(v9);
        v13 = [v11 largeColorPotForColor:v12];
      }

      [v8 setImage:v13 forState:0];
      v14 = PDFMarkupMenuString(v10);
      [v8 setAccessibilityLabel:v14];

      v15 = MEMORY[0x1E69DC628];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __38__PDFMarkupStyleView_initWithHandler___block_invoke;
      v36[3] = &unk_1E8150EE8;
      v37 = handlerCopy;
      v38 = i - 1;
      v16 = [v15 actionWithHandler:v36];
      [v8 addAction:v16 forControlEvents:64];
      [v8 setTag:i];
      [array addObject:v8];
    }

    v33 = array;
    v17 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
    [v17 setAxis:0];
    [v17 setAlignment:3];
    [v17 setDistribution:3];
    [v17 setSpacing:1.0];
    [v17 setLayoutMargins:{0.0, 4.0, 0.0, 4.0}];
    [v17 setLayoutMarginsRelativeArrangement:1];
    v5 = v34;
    [(PDFMarkupStyleView *)v34 addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v17 leadingAnchor];
    leadingAnchor2 = [(PDFMarkupStyleView *)v34 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v30;
    trailingAnchor = [v17 trailingAnchor];
    trailingAnchor2 = [(PDFMarkupStyleView *)v34 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[1] = v18;
    topAnchor = [v17 topAnchor];
    topAnchor2 = [(PDFMarkupStyleView *)v34 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[2] = v21;
    bottomAnchor = [v17 bottomAnchor];
    bottomAnchor2 = [(PDFMarkupStyleView *)v34 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
    [v27 activateConstraints:v25];
  }

  return v5;
}

@end