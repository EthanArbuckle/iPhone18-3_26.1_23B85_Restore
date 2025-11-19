@interface ASCMiniProductPageTitleView
- (ASCMiniProductPageTitleView)initWithFrame:(CGRect)a3;
- (CGRect)lastLineFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (unint64_t)displayedNumberOfLines;
- (void)layoutSubviews;
@end

@implementation ASCMiniProductPageTitleView

- (ASCMiniProductPageTitleView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = ASCMiniProductPageTitleView;
  v3 = [(ASCMiniProductPageTitleView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [ASCAgeRatingView alloc];
    v5 = [(ASCAgeRatingView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    ageRatingView = v3->_ageRatingView;
    v3->_ageRatingView = v5;

    v7 = ASCAXIdentifierWithSuffix(@"Lockup.AgeRating");
    [(ASCAgeRatingView *)v3->_ageRatingView setAccessibilityIdentifier:v7];

    v8 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v10 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
    [(ASCMiniProductPageTitleView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], v9, v10, v11];
    [(ASCMiniProductPageTitleView *)v3 setTextContainerInset:v8, v9, v10, v11];
    [(ASCMiniProductPageTitleView *)v3 setEditable:0];
    [(ASCMiniProductPageTitleView *)v3 setSelectable:0];
    [(ASCMiniProductPageTitleView *)v3 setScrollEnabled:0];
    [(ASCMiniProductPageTitleView *)v3 setBorderStyle:0];
    v12 = [(ASCMiniProductPageTitleView *)v3 textContainer];
    [v12 setLineFragmentPadding:0.0];

    v13 = [(ASCMiniProductPageTitleView *)v3 textContainer];
    [v13 setLineBreakMode:4];

    v14 = [(ASCMiniProductPageTitleView *)v3 textContainer];
    [v14 setWidthTracksTextView:1];

    v15 = [(ASCMiniProductPageTitleView *)v3 textContainer];
    [v15 setHeightTracksTextView:1];

    [(ASCMiniProductPageTitleView *)v3 addSubview:v3->_ageRatingView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCMiniProductPageTitleView *)self textContainer];
  [v6 setSize:{width, height}];

  v7 = [(ASCMiniProductPageTitleView *)self textContainer];
  [v7 setExclusionPaths:MEMORY[0x277CBEBF8]];

  v27.receiver = self;
  v27.super_class = ASCMiniProductPageTitleView;
  [(ASCSkeletonTextView *)&v27 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  v12 = [(ASCMiniProductPageTitleView *)self ageRatingView];
  [v12 sizeThatFits:{width, height}];
  v14 = v13;

  [(ASCMiniProductPageTitleView *)self lastLineFrame];
  v16 = v15;
  v17 = [(ASCMiniProductPageTitleView *)self displayedNumberOfLines];
  v18 = v14 + 6.0;
  if (width - v16 >= v18)
  {
    if (v18 + v16 >= v9)
    {
      v9 = v18 + v16;
    }
  }

  else
  {
    v19 = v17;
    v20 = [(ASCMiniProductPageTitleView *)self textContainer];
    if (v19 < [v20 maximumNumberOfLines])
    {

LABEL_11:
      v23 = [(ASCMiniProductPageTitleView *)self font];
      [v23 lineHeight];
      v11 = v11 + v24;

      goto LABEL_12;
    }

    v21 = [(ASCMiniProductPageTitleView *)self textContainer];
    v22 = [v21 maximumNumberOfLines];

    if (!v22)
    {
      goto LABEL_11;
    }

    if (v18 + v16 < v9)
    {
      v9 = v18 + v16;
    }
  }

LABEL_12:
  v25 = v9;
  v26 = v11;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)layoutSubviews
{
  v50[1] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = ASCMiniProductPageTitleView;
  [(ASCMiniProductPageTitleView *)&v49 layoutSubviews];
  v3 = [(ASCMiniProductPageTitleView *)self textContainer];
  [v3 setExclusionPaths:MEMORY[0x277CBEBF8]];

  [(ASCMiniProductPageTitleView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(ASCMiniProductPageTitleView *)self ageRatingView];
  [v8 sizeThatFits:{v5, v7}];
  v10 = v9;
  v12 = v11;

  [(ASCMiniProductPageTitleView *)self lastLineFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(ASCMiniProductPageTitleView *)self displayedNumberOfLines];
  if (v10 != 0.0)
  {
    if (v5 - v18 < v10 + 6.0)
    {
      v48 = v12;
      v22 = v21;
      v23 = [(ASCMiniProductPageTitleView *)self textContainer];
      if (v22 < [v23 maximumNumberOfLines])
      {

        v12 = v48;
      }

      else
      {
        v24 = [(ASCMiniProductPageTitleView *)self textContainer];
        v25 = [v24 maximumNumberOfLines];

        v12 = v48;
        if (v25)
        {
          [(ASCMiniProductPageTitleView *)self bounds];
          [__ASCLayoutProxy rectWithLayoutDirectionForRect:self inTraitEnvironment:v5 - (v10 + 6.0) relativeTo:v16, v10 + 6.0, v20, v26, v27, v28, v29];
          v30 = [MEMORY[0x277D75208] bezierPathWithRect:?];
          v50[0] = v30;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
          v32 = [(ASCMiniProductPageTitleView *)self textContainer];
          [v32 setExclusionPaths:v31];

          [(ASCMiniProductPageTitleView *)self lastLineFrame];
          v14 = v33;
          v16 = v34;
          v18 = v35;
          v20 = v36;
          v37 = v33 + v35 + 6.0;
          v38 = v34 + (v36 - v48) * 0.5;

LABEL_9:
          [__ASCLayoutProxy rectWithLayoutDirectionForRect:self inTraitEnvironment:v37 relativeTo:v38, v10, v12, v14, v16, v18, v20];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v47 = [(ASCMiniProductPageTitleView *)self ageRatingView];
          [v47 setFrame:{v40, v42, v44, v46}];

          return;
        }
      }

      v38 = v16 + v20 + (v20 - v12) * 0.5;
      v37 = 0.0;
      goto LABEL_9;
    }

    v37 = v14 + v18 + 6.0;
    v38 = v16 + (v20 - v12) * 0.5;
    goto LABEL_9;
  }
}

- (CGRect)lastLineFrame
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_2157C0E4B;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *MEMORY[0x277CBF3A0];
  v21 = v3;
  v4 = [(ASCMiniProductPageTitleView *)self textLayoutManager];
  v5 = [(ASCMiniProductPageTitleView *)self textLayoutManager];
  v6 = [v5 documentRange];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__ASCMiniProductPageTitleView_lastLineFrame__block_invoke;
  v15[3] = &unk_2781CCA48;
  v15[4] = &v16;
  [v4 enumerateTextSegmentsInRange:v6 type:0 options:1 usingBlock:v15];

  v7 = v17[4];
  v8 = v17[5];
  v9 = v17[6];
  v10 = v17[7];
  _Block_object_dispose(&v16, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

uint64_t __44__ASCMiniProductPageTitleView_lastLineFrame__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return 1;
}

- (unint64_t)displayedNumberOfLines
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(ASCMiniProductPageTitleView *)self textLayoutManager];
  v4 = [(ASCMiniProductPageTitleView *)self textLayoutManager];
  v5 = [v4 documentRange];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ASCMiniProductPageTitleView_displayedNumberOfLines__block_invoke;
  v8[3] = &unk_2781CCA48;
  v8[4] = &v9;
  [v3 enumerateTextSegmentsInRange:v5 type:0 options:1 usingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

@end