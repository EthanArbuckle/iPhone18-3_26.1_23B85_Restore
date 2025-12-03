@interface UIView
+ (Class)be_wkContentViewClass;
+ (Class)bepageCurlViewClass;
+ (void)be_enablePageCurlHacks;
+ (void)be_enableWKContentViewOverrides;
- (BEUIWKTextInteractionAssistantDelegate)be_textInteractionAssistantDelegate;
- (BOOL)be_curlContentViewPointInside:(CGPoint)inside withEvent:(id)event;
- (NSArray)be_constraintsToFillSuperview;
- (id)be_addDebugOverlayWithColor:(id)color;
- (id)be_ancestorViewOfClass:(Class)class;
- (id)be_passthroughViewDelegate;
- (void)be_continueContextMenuInteraction:(id)interaction;
- (void)be_setUpTextSelectionAssistant;
@end

@implementation UIView

- (BOOL)be_curlContentViewPointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  be_passthroughViewDelegate = [(UIView *)self be_passthroughViewDelegate];
  v9 = be_passthroughViewDelegate;
  if (be_passthroughViewDelegate)
  {
    LODWORD(self) = [be_passthroughViewDelegate passThroughView:self shouldPassthroughHitAtPoint:{x, y}] ^ 1;
  }

  else
  {
    LOBYTE(self) = [(UIView *)self be_curlContentViewPointInside:eventCopy withEvent:x, y];
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
  block[4] = self;
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
  be_textInteractionAssistantDelegate = [v2 be_textInteractionAssistantDelegate];

  return be_textInteractionAssistantDelegate;
}

- (void)be_setUpTextSelectionAssistant
{
  [(UIView *)self be_setUpTextSelectionAssistant];
  v3 = [(UIView *)self be_ancestorViewOfClass:objc_opt_class()];
  be_textInteractionDelegate = [v3 be_textInteractionDelegate];
  if (be_textInteractionDelegate)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    be_textInputChild = [v3 be_textInputChild];
    interactions = [be_textInputChild interactions];

    v7 = [interactions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(interactions);
          }

          objc_opt_class();
          v11 = BUDynamicCast();
          if (v11)
          {
            v12 = v11;
            root = [v11 root];
            [root setDelegate:be_textInteractionDelegate];

            goto LABEL_12;
          }
        }

        v8 = [interactions countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)be_continueContextMenuInteraction:(id)interaction
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_12354;
  v5[3] = &unk_328718;
  interactionCopy = interaction;
  v4 = interactionCopy;
  [(UIView *)self be_continueContextMenuInteraction:v5];
}

- (NSArray)be_constraintsToFillSuperview
{
  superview = [(UIView *)self superview];
  leadingAnchor = [(UIView *)self leadingAnchor];
  leadingAnchor2 = [superview leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v15;
  trailingAnchor = [(UIView *)self trailingAnchor];
  trailingAnchor2 = [superview trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v6;
  topAnchor = [(UIView *)self topAnchor];
  topAnchor2 = [superview topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[2] = v9;
  bottomAnchor = [(UIView *)self bottomAnchor];
  bottomAnchor2 = [superview bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[3] = v12;
  v14 = [NSArray arrayWithObjects:v18 count:4];

  return v14;
}

- (id)be_ancestorViewOfClass:(Class)class
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      superview2 = [v4 superview];

      v4 = superview2;
      if (!superview2)
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

- (id)be_addDebugOverlayWithColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (colorCopy)
  {
    v6 = colorCopy;
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