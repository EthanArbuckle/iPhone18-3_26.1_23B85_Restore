@interface UIView
+ (Class)be_wkContentViewClass;
+ (Class)bepageCurlViewClass;
+ (void)be_enablePageCurlHacks;
+ (void)be_enableWKContentViewOverrides;
- (BEUIWKTextInteractionAssistantDelegate)be_textInteractionAssistantDelegate;
- (BOOL)be_curlContentViewPointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)be_constraintsToFillSuperview;
- (id)be_addDebugOverlayWithColor:(id)a3;
- (id)be_ancestorViewOfClass:(Class)a3;
- (id)be_passthroughViewDelegate;
- (void)be_continueContextMenuInteraction:(id)a3;
- (void)be_setUpTextSelectionAssistant;
@end

@implementation UIView

- (BOOL)be_curlContentViewPointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self be_passthroughViewDelegate];
  v9 = v8;
  if (v8)
  {
    LODWORD(self) = [v8 passThroughView:self shouldPassthroughHitAtPoint:{x, y}] ^ 1;
  }

  else
  {
    LOBYTE(self) = [(UIView *)self be_curlContentViewPointInside:v7 withEvent:x, y];
  }

  return self;
}

+ (Class)bepageCurlViewClass
{
  if (qword_36AA98 != -1)
  {
    sub_263988();
  }

  v3 = qword_36AA90;

  return v3;
}

+ (void)be_enablePageCurlHacks
{
  if (qword_36AAA0 != -1)
  {
    sub_26399C();
  }
}

+ (void)be_enableWKContentViewOverrides
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11FF0;
  block[3] = &unk_328680;
  block[4] = a1;
  if (qword_36AAE8 != -1)
  {
    dispatch_once(&qword_36AAE8, block);
  }
}

+ (Class)be_wkContentViewClass
{
  if (qword_36AAF8 != -1)
  {
    sub_263A5C();
  }

  v3 = qword_36AAF0;

  return v3;
}

- (BEUIWKTextInteractionAssistantDelegate)be_textInteractionAssistantDelegate
{
  v2 = [(UIView *)self be_ancestorViewOfClass:objc_opt_class()];
  v3 = [v2 be_textInteractionAssistantDelegate];

  return v3;
}

- (void)be_setUpTextSelectionAssistant
{
  [(UIView *)self be_setUpTextSelectionAssistant];
  v3 = [(UIView *)self be_ancestorViewOfClass:objc_opt_class()];
  v4 = [v3 be_textInteractionDelegate];
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v5 = [v3 be_textInputChild];
    v6 = [v5 interactions];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          objc_opt_class();
          v11 = BUDynamicCast();
          if (v11)
          {
            v12 = v11;
            v13 = [v11 root];
            [v13 setDelegate:v4];

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)be_continueContextMenuInteraction:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_12354;
  v5[3] = &unk_328718;
  v6 = a3;
  v4 = v6;
  [(UIView *)self be_continueContextMenuInteraction:v5];
}

- (NSArray)be_constraintsToFillSuperview
{
  v3 = [(UIView *)self superview];
  v17 = [(UIView *)self leadingAnchor];
  v16 = [v3 leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v4 = [(UIView *)self trailingAnchor];
  v5 = [v3 trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v18[1] = v6;
  v7 = [(UIView *)self topAnchor];
  v8 = [v3 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v18[2] = v9;
  v10 = [(UIView *)self bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v18[3] = v12;
  v14 = [NSArray arrayWithObjects:v18 count:4];

  return v14;
}

- (id)be_ancestorViewOfClass:(Class)a3
{
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 superview];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)be_passthroughViewDelegate
{
  v2 = objc_getAssociatedObject(self, off_35E448);
  v3 = BUProtocolCast();

  return v3;
}

- (id)be_addDebugOverlayWithColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[UIColor redColor];
  }

  v7 = v6;
  v8 = [UIView alloc];
  [(UIView *)self bounds];
  v9 = [v8 initWithFrame:?];
  v10 = [v7 colorWithAlphaComponent:0.3];
  [v9 setBackgroundColor:v10];

  [v9 setUserInteractionEnabled:0];
  [v9 setAutoresizingMask:18];
  [(UIView *)self addSubview:v9];

  return v9;
}

@end