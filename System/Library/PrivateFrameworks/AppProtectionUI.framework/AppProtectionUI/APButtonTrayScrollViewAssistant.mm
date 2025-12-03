@interface APButtonTrayScrollViewAssistant
- (APButtonTrayScrollViewAssistant)initWithDelegate:(id)delegate;
- (APButtonTrayScrollViewAssistantDelegate)delegate;
- (void)performAdjustmentsForScrollView:(id)view;
@end

@implementation APButtonTrayScrollViewAssistant

- (APButtonTrayScrollViewAssistant)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = APButtonTrayScrollViewAssistant;
  v5 = [(APButtonTrayScrollViewAssistant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)performAdjustmentsForScrollView:(id)view
{
  viewCopy = view;
  delegate = [(APButtonTrayScrollViewAssistant *)self delegate];
  v5 = [delegate buttonTrayForAssistant:self];

  if (v5)
  {
    [v5 bounds];
    [v5 convertRect:viewCopy toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [viewCopy bounds];
    v26.origin.x = v14;
    v26.origin.y = v15;
    v26.size.width = v16;
    v26.size.height = v17;
    v24.origin.x = v7;
    v24.origin.y = v9;
    v24.size.width = v11;
    v24.size.height = v13;
    v25 = CGRectIntersection(v24, v26);
    height = v25.size.height;
    if (CGRectIsNull(v25))
    {
      v19 = *MEMORY[0x1E69DDCE0];
      v20 = *(MEMORY[0x1E69DDCE0] + 8);
      height = *(MEMORY[0x1E69DDCE0] + 16);
      v21 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
    }

    [viewCopy setContentInset:{v19, v20, height, v21}];
    [viewCopy setScrollIndicatorInsets:{v19, v20, height, v21}];
  }
}

- (APButtonTrayScrollViewAssistantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end