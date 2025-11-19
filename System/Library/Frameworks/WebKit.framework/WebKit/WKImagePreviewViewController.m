@interface WKImagePreviewViewController
- (WKImagePreviewViewController)initWithCGImage:(RetainPtr<CGImage *>)a3 defaultActions:(RetainPtr<NSArray>)a4 elementInfo:(RetainPtr<_WKActivatedElementInfo>)a5;
- (id).cxx_construct;
- (id)previewActionItems;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation WKImagePreviewViewController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = WKImagePreviewViewController;
  [(WKImagePreviewViewController *)&v3 loadView];
  [-[WKImagePreviewViewController view](self "view")];
  [-[WKImagePreviewViewController view](self "view")];
}

- (WKImagePreviewViewController)initWithCGImage:(RetainPtr<CGImage *>)a3 defaultActions:(RetainPtr<NSArray>)a4 elementInfo:(RetainPtr<_WKActivatedElementInfo>)a5
{
  v34.receiver = self;
  v34.super_class = WKImagePreviewViewController;
  v8 = [(WKImagePreviewViewController *)&v34 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = *a3.m_ptr;
    if (v9)
    {
      CFRetain(v9);
    }

    m_ptr = v8->_image.m_ptr;
    v8->_image.m_ptr = v9;
    if (m_ptr)
    {
      CFRelease(m_ptr);
    }

    v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v13 = v8->_imageView.m_ptr;
    v8->_imageView.m_ptr = v12;
    if (v13)
    {

      v12 = v8->_imageView.m_ptr;
    }

    [(UIImageView *)v12 setContentMode:2];
    v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v8->_image.m_ptr];
    [(UIImageView *)v8->_imageView.m_ptr setImage:v14];
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v16 = v15;
    v18 = v17;
    Width = CGImageGetWidth(v8->_image.m_ptr);
    Height = CGImageGetHeight(v8->_image.m_ptr);
    v21 = Width;
    v22 = Height;
    v23 = Width / Height;
    if (v23 <= v16 / v18)
    {
      if (v23 < v16 / v18)
      {
        v16 = v18 / v22 * v21;
      }
    }

    else
    {
      v18 = v16 / v21 * v22;
    }

    v24 = v8->_imageView.m_ptr;
    [(UIImageView *)v24 frame];
    v26 = v25;
    [(UIImageView *)v8->_imageView.m_ptr frame];
    [(UIImageView *)v24 setFrame:v26];
    [(WKImagePreviewViewController *)v8 setPreferredContentSize:v16, v18];
    isa = a4.m_ptr->super.isa;
    if (isa)
    {
      v28 = isa;
    }

    v29 = v8->_imageActions.m_ptr;
    v8->_imageActions.m_ptr = isa;
    if (v29)
    {
    }

    v30 = a5.m_ptr->super.isa;
    if (v30)
    {
      v31 = v30;
    }

    v32 = v8->_activatedElementInfo.m_ptr;
    v8->_activatedElementInfo.m_ptr = v30;
    if (v32)
    {
    }

    if (v14)
    {
    }
  }

  return v8;
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = WKImagePreviewViewController;
  [(WKImagePreviewViewController *)&v4 viewDidLayoutSubviews];
  m_ptr = self->_imageView.m_ptr;
  [-[WKImagePreviewViewController view](self "view")];
  [(UIImageView *)m_ptr setFrame:?];
}

- (id)previewActionItems
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_imageActions.m_ptr;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = MEMORY[0x1E69DCE00];
        v10 = [v8 title];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __50__WKImagePreviewViewController_previewActionItems__block_invoke;
        v14[3] = &unk_1E7631018;
        v14[4] = v8;
        v14[5] = self;
        v11 = [v9 actionWithTitle:v10 style:0 handler:v14];
        [v11 setImage:{+[_WKElementAction imageForElementActionType:](_WKElementAction, "imageForElementActionType:", objc_msgSend(v8, "type"))}];
        [v3 addObject:v11];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 124) = 0;
  *(self + 125) = 0;
  *(self + 126) = 0;
  *(self + 127) = 0;
  return self;
}

@end