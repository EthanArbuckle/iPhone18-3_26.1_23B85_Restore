@interface SmallButtonOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (SmallButtonOutlineCellDelegate)delegate;
- (SmallButtonOutlineCellModel)initWithStyle:(int64_t)a3 title:(id)a4 image:(id)a5 hoverImage:(id)a6 delegate:(id)a7;
@end

@implementation SmallButtonOutlineCellModel

- (SmallButtonOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if ([(SmallButtonOutlineCellModel *)v6 style]== self->_style)
    {
      v7 = [(SmallButtonOutlineCellModel *)v6 title];
      v8 = v7;
      if (v7 == self->_title || [(NSString *)v7 isEqual:?])
      {
        v9 = [(SmallButtonOutlineCellModel *)v6 image];
        v10 = v9;
        if (v9 == self->_image || [(UIImage *)v9 isEqual:?])
        {
          v11 = [(SmallButtonOutlineCellModel *)v6 hoverImage];
          v12 = v11;
          if (v11 == self->_hoverImage || [(UIImage *)v11 isEqual:?])
          {
            v13 = [(SmallButtonOutlineCellModel *)v6 delegate];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            if (v13 == WeakRetained)
            {
              v15 = 1;
            }

            else
            {
              v15 = [v13 isEqual:WeakRetained];
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SmallButtonOutlineCellModel)initWithStyle:(int64_t)a3 title:(id)a4 image:(id)a5 hoverImage:(id)a6 delegate:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = SmallButtonOutlineCellModel;
  v16 = [(SmallButtonOutlineCellModel *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_style = a3;
    v18 = [v12 copy];
    title = v17->_title;
    v17->_title = v18;

    objc_storeStrong(&v17->_image, a5);
    objc_storeStrong(&v17->_hoverImage, a6);
    objc_storeWeak(&v17->_delegate, v15);
  }

  return v17;
}

@end