@interface WFImageContentItemCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (WFImageContentItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WFImageContentItemCellDelegate)delegate;
- (void)imageViewTapped:(id)a3;
- (void)layoutSubviews;
- (void)setItems:(id)a3;
- (void)setSelected:(BOOL)a3 atIndex:(unint64_t)a4;
@end

@implementation WFImageContentItemCell

- (WFImageContentItemCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = 0;
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)imageViewTapped:(id)a3
{
  imageViews = self->_imageViews;
  v5 = [a3 view];
  v6 = [(NSMutableArray *)imageViews indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(WFImageContentItemCell *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(WFImageContentItemCell *)self delegate];
      [v9 cell:self didSelectImageViewAtIndex:v6];
    }
  }
}

- (void)setSelected:(BOOL)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v7 = [(NSMutableArray *)self->_selectedImageViews objectAtIndex:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v12 = v8;

  if (v5)
  {
    if (!v12)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      [(WFImageContentItemCell *)self addSubview:v7];
    }

    [(NSMutableArray *)self->_selectedImageViews replaceObjectAtIndex:a4 withObject:v7];
    [(WFImageContentItemCell *)self setNeedsLayout];
    v9 = v7;
  }

  else
  {
    [v12 removeFromSuperview];
    selectedImageViews = self->_selectedImageViews;
    v11 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)selectedImageViews replaceObjectAtIndex:a4 withObject:v11];

    v9 = v12;
  }
}

- (void)setItems:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  items = self->_items;
  self->_items = v5;

  imageViews = self->_imageViews;
  if (imageViews)
  {
    while (1)
    {
      v8 = [(NSMutableArray *)imageViews count];
      if (v8 >= [v4 count])
      {
        break;
      }

      v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_imageViewTapped_];
      [v9 setDelegate:self];
      v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v10 stopAnimating];
      v11 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v11 setUserInteractionEnabled:1];
      [v11 setContentMode:2];
      [v11 setClipsToBounds:1];
      [v11 addGestureRecognizer:v9];
      [v11 addSubview:v10];
      [(WFImageContentItemCell *)self addSubview:v11];
      [(NSMutableArray *)self->_imageViews addObject:v11];
      [(NSMapTable *)self->_activityIndicators setObject:v10 forKey:v11];

      imageViews = self->_imageViews;
      if (!imageViews)
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      v14 = self->_imageViews;
      if (!v14)
      {
        break;
      }

      v12 = [(NSMutableArray *)v14 count];
      if (v12 <= [v4 count])
      {
        break;
      }

      v13 = [(NSMutableArray *)self->_imageViews lastObject];
      [v13 removeFromSuperview];
      [(NSMutableArray *)self->_imageViews removeObject:v13];
    }
  }

LABEL_8:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = self->_selectedImageViews;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v20 removeFromSuperview];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  [(NSMutableArray *)self->_selectedImageViews removeAllObjects];
  v21 = [(NSMutableArray *)self->_selectedImageViews count];
  if (v21 < [v4 count])
  {
    do
    {
      selectedImageViews = self->_selectedImageViews;
      v23 = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)selectedImageViews addObject:v23];

      v24 = [(NSMutableArray *)self->_selectedImageViews count];
    }

    while (v24 < [v4 count]);
  }

  v25 = [MEMORY[0x277D759A0] mainScreen];
  [v25 scale];
  v27 = v26;

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __35__WFImageContentItemCell_setItems___block_invoke;
  v29[3] = &unk_278C36E88;
  v29[4] = self;
  v29[5] = v27;
  [v4 enumerateObjectsUsingBlock:v29];
  [(WFImageContentItemCell *)self setNeedsLayout];

  v28 = *MEMORY[0x277D85DE8];
}

void __35__WFImageContentItemCell_setItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 1032) objectAtIndex:a3];
  v7 = [*(*(a1 + 32) + 1024) objectForKey:v6];
  [v6 setImage:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v7 startAnimating];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __35__WFImageContentItemCell_setItems___block_invoke_2;
      v26[3] = &unk_278C36E10;
      v26[4] = *(a1 + 32);
      v29[1] = a3;
      v8 = &v27;
      v9 = v5;
      v27 = v9;
      v10 = &v28;
      v28 = v6;
      v11 = v29;
      v29[0] = v7;
      [v9 getObjectRepresentation:v26 forClass:objc_opt_class()];
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) bounds];
      v15 = floor((CGRectGetWidth(v30) - [*(*(a1 + 32) + 1032) count] + 1.0) / objc_msgSend(*(*(a1 + 32) + 1032), "count"));
      CGAffineTransformMakeScale(&v25, *(a1 + 40), *(a1 + 40));
      v16 = vmlaq_n_f64(vmulq_n_f64(*&v25.c, v15), *&v25.a, v15);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __35__WFImageContentItemCell_setItems___block_invoke_4;
      v21[3] = &unk_278C36E38;
      v21[4] = *(a1 + 32);
      v24[1] = a3;
      v8 = &v22;
      v12 = v5;
      v22 = v12;
      v10 = &v23;
      v23 = v6;
      v11 = v24;
      v24[0] = v7;
      [v12 getThumbnail:v21 ofSize:*&v16];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __35__WFImageContentItemCell_setItems___block_invoke_6;
      v17[3] = &unk_278C36E60;
      v17[4] = *(a1 + 32);
      v20[1] = a3;
      v8 = &v18;
      v13 = v5;
      v18 = v13;
      v10 = &v19;
      v19 = v6;
      v11 = v20;
      v20[0] = v7;
      v14 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
      [v13 getFileRepresentation:v17 forType:v14];

      goto LABEL_8;
    }
  }

LABEL_9:
}

void __35__WFImageContentItemCell_setItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFImageContentItemCell_setItems___block_invoke_3;
  v7[3] = &unk_278C36DE8;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v12 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __35__WFImageContentItemCell_setItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFImageContentItemCell_setItems___block_invoke_5;
  v7[3] = &unk_278C36DE8;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v12 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __35__WFImageContentItemCell_setItems___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D79FC8];
  v4 = [a2 data];
  v5 = [v3 imageWithData:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__WFImageContentItemCell_setItems___block_invoke_7;
  v9[3] = &unk_278C36DE8;
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v14 = v6;
  v10 = v7;
  v11 = *(a1 + 48);
  v12 = v5;
  v13 = *(a1 + 56);
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __35__WFImageContentItemCell_setItems___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v3 = [v2 objectAtIndex:*(a1 + 72)];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 56) UIImage];
    [*(a1 + 48) setImage:v5];
  }

  v6 = *(a1 + 64);

  return [v6 stopAnimating];
}

uint64_t __35__WFImageContentItemCell_setItems___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v3 = [v2 objectAtIndex:*(a1 + 72)];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 56) UIImage];
    [*(a1 + 48) setImage:v5];
  }

  v6 = *(a1 + 64);

  return [v6 stopAnimating];
}

uint64_t __35__WFImageContentItemCell_setItems___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v3 = [v2 objectAtIndex:*(a1 + 72)];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 48) setImage:*(a1 + 56)];
  }

  v5 = *(a1 + 64);

  return [v5 stopAnimating];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = WFImageContentItemCell;
  [(WFImageContentItemCell *)&v10 layoutSubviews];
  if (layoutSubviews_onceToken != -1)
  {
    dispatch_once(&layoutSubviews_onceToken, &__block_literal_global_3173);
  }

  [(WFImageContentItemCell *)self bounds];
  Width = CGRectGetWidth(v11);
  v4 = Width - [(NSMutableArray *)self->_imageViews count]+ 1.0;
  v5 = v4 / [(NSMutableArray *)self->_imageViews count];
  imageViews = self->_imageViews;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__WFImageContentItemCell_layoutSubviews__block_invoke_2;
  v9[3] = &unk_278C36DC0;
  *&v9[5] = v5;
  v9[4] = self;
  [(NSMutableArray *)imageViews enumerateObjectsUsingBlock:v9];
  selectedImageViews = self->_selectedImageViews;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__WFImageContentItemCell_layoutSubviews__block_invoke_3;
  v8[3] = &unk_278C36DC0;
  *&v8[5] = v5;
  v8[4] = self;
  [(NSMutableArray *)selectedImageViews enumerateObjectsUsingBlock:v8];
}

void __40__WFImageContentItemCell_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = (v4 + 1.0) * a3;
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 bounds];
  [v7 setFrame:{v5, 0.0, v4, CGRectGetHeight(v19) + -1.0}];
  v17 = [*(*(a1 + 32) + 1024) objectForKey:v7];
  [v17 sizeToFit];
  [v7 bounds];
  MidX = CGRectGetMidX(v20);
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  [v17 setCenter:{MidX, CGRectGetMidY(v21)}];
}

void __40__WFImageContentItemCell_layoutSubviews__block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = *(a1 + 40);
    [*(a1 + 32) bounds];
    [v6 setFrame:{(v5 + 1.0) * a3, 0.0, v5, CGRectGetHeight(v8) + -1.0}];
    [v6 setImage:layoutSubviews_selectedImage];
  }
}

void __40__WFImageContentItemCell_layoutSubviews__block_invoke()
{
  v11.width = 38.0;
  v11.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v9 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, 38.0, 38.0}];
  v0 = MEMORY[0x277D75208];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 38.0;
  v12.size.height = 38.0;
  v13 = CGRectInset(v12, 7.0, 7.0);
  v1 = [v0 bezierPathWithOvalInRect:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
  v2 = [MEMORY[0x277D75208] bezierPath];
  [v2 moveToPoint:{13.0, 19.0}];
  [v2 addLineToPoint:{17.0, 23.0}];
  [v2 addLineToPoint:{25.0, 16.0}];
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.300000012];
  [v3 setFill];

  [v9 fill];
  v4 = [MEMORY[0x277D75348] colorWithRed:0.071 green:0.337 blue:0.843 alpha:1.0];
  [v4 setFill];

  [v1 fill];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [v5 setStroke];

  [v1 stroke];
  [v2 stroke];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  v7 = [v6 resizableImageWithCapInsets:{0.0, 0.0, 34.0, 34.0}];
  v8 = layoutSubviews_selectedImage;
  layoutSubviews_selectedImage = v7;

  UIGraphicsEndImageContext();
}

- (WFImageContentItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = WFImageContentItemCell;
  v4 = [(WFImageContentItemCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WFImageContentItemCell *)v4 setSelectionStyle:0];
    v6 = [(WFImageContentItemCell *)v5 textLabel];
    [v6 setHidden:1];

    v7 = [(WFImageContentItemCell *)v5 detailTextLabel];
    [v7 setHidden:1];

    v8 = [(WFImageContentItemCell *)v5 imageView];
    [v8 setHidden:1];

    v9 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    activityIndicators = v5->_activityIndicators;
    v5->_activityIndicators = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    imageViews = v5->_imageViews;
    v5->_imageViews = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    selectedImageViews = v5->_selectedImageViews;
    v5->_selectedImageViews = v13;
  }

  return v5;
}

@end