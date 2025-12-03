@interface SmallButtonOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (SmallButtonOutlineCellDelegate)delegate;
- (SmallButtonOutlineCellModel)initWithStyle:(int64_t)style title:(id)title image:(id)image hoverImage:(id)hoverImage delegate:(id)delegate;
@end

@implementation SmallButtonOutlineCellModel

- (SmallButtonOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if ([(SmallButtonOutlineCellModel *)v6 style]== self->_style)
    {
      title = [(SmallButtonOutlineCellModel *)v6 title];
      v8 = title;
      if (title == self->_title || [(NSString *)title isEqual:?])
      {
        image = [(SmallButtonOutlineCellModel *)v6 image];
        v10 = image;
        if (image == self->_image || [(UIImage *)image isEqual:?])
        {
          hoverImage = [(SmallButtonOutlineCellModel *)v6 hoverImage];
          v12 = hoverImage;
          if (hoverImage == self->_hoverImage || [(UIImage *)hoverImage isEqual:?])
          {
            delegate = [(SmallButtonOutlineCellModel *)v6 delegate];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            if (delegate == WeakRetained)
            {
              v15 = 1;
            }

            else
            {
              v15 = [delegate isEqual:WeakRetained];
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

- (SmallButtonOutlineCellModel)initWithStyle:(int64_t)style title:(id)title image:(id)image hoverImage:(id)hoverImage delegate:(id)delegate
{
  titleCopy = title;
  imageCopy = image;
  hoverImageCopy = hoverImage;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = SmallButtonOutlineCellModel;
  v16 = [(SmallButtonOutlineCellModel *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_style = style;
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    objc_storeStrong(&v17->_image, image);
    objc_storeStrong(&v17->_hoverImage, hoverImage);
    objc_storeWeak(&v17->_delegate, delegateCopy);
  }

  return v17;
}

@end