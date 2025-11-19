@interface MFBarButtonItem
- (MFBarButtonItem)initWithImage:(id)a3 disabledImage:(id)a4 style:(int64_t)a5 target:(id)a6 action:(SEL)a7;
- (void)setEnabled:(BOOL)a3;
@end

@implementation MFBarButtonItem

- (MFBarButtonItem)initWithImage:(id)a3 disabledImage:(id)a4 style:(int64_t)a5 target:(id)a6 action:(SEL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = MFBarButtonItem;
  v15 = [(MFBarButtonItem *)&v18 initWithImage:v13 style:a5 target:a6 action:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_enabledImage, a3);
    objc_storeStrong(&v16->_disabledImage, a4);
  }

  return v16;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MFBarButtonItem;
  [(MFBarButtonItem *)&v7 setEnabled:?];
  v5 = [(MFBarButtonItem *)self disabledImage];

  if (v5)
  {
    if (v3)
    {
      [(MFBarButtonItem *)self enabledImage];
    }

    else
    {
      [(MFBarButtonItem *)self disabledImage];
    }
    v6 = ;
    [(MFBarButtonItem *)self setImage:v6];
  }
}

@end