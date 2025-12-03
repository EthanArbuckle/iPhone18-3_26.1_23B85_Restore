@interface MTMacToolbarSlider
- (void)_installVisualElement:(id)element;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MTMacToolbarSlider

- (void)_installVisualElement:(id)element
{
  elementCopy = element;
  v20.receiver = self;
  v20.super_class = MTMacToolbarSlider;
  if ([(MTMacToolbarSlider *)&v20 respondsToSelector:a2])
  {
    v19.receiver = self;
    v19.super_class = MTMacToolbarSlider;
    [(MTMacToolbarSlider *)&v19 _installVisualElement:elementCopy];
    NSClassFromString(@"_UISliderMacVisualElement");
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      subviews = [elementCopy subviews];
      v7 = [subviews countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          NSClassFromString(@"_UINSView");
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [subviews countByEnumeratingWithState:&v15 objects:v21 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v12 = v11;

        if (v12)
        {
          if (objc_opt_respondsToSelector())
          {
            contentNSView = [v12 contentNSView];
            NSClassFromString(@"NSSlider");
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              subviews = [v12 contentNSView];
              [subviews setControlSize:2];
              [subviews _setSemanticContext:4];
              [(MTMacToolbarSlider *)self set_internalNSSlider:subviews];
              goto LABEL_12;
            }
          }
        }
      }

      else
      {
LABEL_11:
        v12 = 0;
LABEL_12:
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = MTMacToolbarSlider;
  [(MTMacToolbarSlider *)&v11 traitCollectionDidChange:change];
  _internalNSSlider = [(MTMacToolbarSlider *)self _internalNSSlider];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    traitCollection = [(MTMacToolbarSlider *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v8 = @"plusD";
    if (userInterfaceStyle == &dword_0 + 2)
    {
      v8 = @"plusL";
    }

    v9 = v8;

    _internalNSSlider2 = [(MTMacToolbarSlider *)self _internalNSSlider];
    [_internalNSSlider2 setCompositingFilter:v9];
  }
}

@end