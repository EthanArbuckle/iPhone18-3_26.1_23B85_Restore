@interface TUIPageControlView
+ (id)renderModelWithStateToRenderModel:(id)a3 pressScale:(double)a4 touchInsets:(UIEdgeInsets)a5 identifier:(id)a6 pointer:(id)a7 scrollIdentifier:(id)a8 kind:(unint64_t)a9 hiddenWhenUnavailable:(BOOL)a10;
- (void)_buttonPressed:(id)a3;
- (void)_updateEnabled;
- (void)renderModelUpdated;
- (void)viewDidEndDisplay;
@end

@implementation TUIPageControlView

+ (id)renderModelWithStateToRenderModel:(id)a3 pressScale:(double)a4 touchInsets:(UIEdgeInsets)a5 identifier:(id)a6 pointer:(id)a7 scrollIdentifier:(id)a8 kind:(unint64_t)a9 hiddenWhenUnavailable:(BOOL)a10
{
  v10 = a10;
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a3;
  v24 = [[_TUIRenderModelPageControl alloc] initWithStateToRenderModel:v23 pressScale:v22 touchInsets:v21 identifier:v20 pointer:a9 scrollIdentifier:v10 kind:a4 hiddenWhenUnavailable:top, left, bottom, right];

  return v24;
}

- (void)renderModelUpdated
{
  v12.receiver = self;
  v12.super_class = TUIPageControlView;
  [(TUIControlView *)&v12 renderModelUpdated];
  v3 = [(TUIReusableBaseView *)self layoutAttributes];
  v4 = [v3 renderModel];

  v5 = [v4 scrollIdentifier];
  v6 = [(TUIReusableBaseView *)self tui_querySectionUUID];
  v7 = [v5 tui_identifierByPrependingUUID:v6];

  v8 = [(TUIReusableBaseView *)self feedControllerHost];
  v9 = [v8 pagedScrollableController];
  v10 = [v9 pagedScrollableWithIdentifier:v7];

  pagedScrollable = self->_pagedScrollable;
  if (v10 != pagedScrollable)
  {
    [(TUIPagedScrollable *)pagedScrollable removeObserver:self];
    objc_storeStrong(&self->_pagedScrollable, v10);
    [(TUIPagedScrollable *)self->_pagedScrollable addObserver:self];
    [(TUIPageControlView *)self _updateEnabled];
  }
}

- (void)viewDidEndDisplay
{
  v4.receiver = self;
  v4.super_class = TUIPageControlView;
  [(TUIControlView *)&v4 viewDidEndDisplay];
  [(TUIPagedScrollable *)self->_pagedScrollable removeObserver:self];
  pagedScrollable = self->_pagedScrollable;
  self->_pagedScrollable = 0;
}

- (void)_updateEnabled
{
  v3 = [(TUIReusableBaseView *)self layoutAttributes];
  v12 = [v3 renderModel];

  v4 = [(TUIPagedScrollable *)self->_pagedScrollable currentPageIndices];
  v6 = v5;
  if ([v12 actionKind] == &dword_0 + 2 && (!v4 ? (v7 = v6 > 1) : (v7 = 1), v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v12 actionKind] == &dword_0 + 1 && v4 + 1 < -[TUIPagedScrollable pageCount](self->_pagedScrollable, "pageCount");
  }

  if (self->_actionEnabled != v8)
  {
    self->_actionEnabled = v8;
    [(TUIInteractiveBaseView *)self setEnabled:v8];
  }

  v9 = [(TUIPagedScrollable *)self->_pagedScrollable pageCount];
  v10 = v9 >= 2;
  v11 = v9 < 2;
  if (!v8 && v10)
  {
    v11 = [v12 hiddenWhenUnavailable];
  }

  if (self->_showContents != (v11 ^ 1))
  {
    self->_showContents = v11 ^ 1;
    [(TUIInteractiveBaseView *)self invalidateShowContents];
  }
}

- (void)_buttonPressed:(id)a3
{
  v4 = [(TUIReusableBaseView *)self layoutAttributes];
  v9 = [v4 renderModel];

  v5 = [(TUIPagedScrollable *)self->_pagedScrollable currentPageIndices];
  v7 = v6;
  if ([v9 actionKind] == &dword_0 + 2)
  {
    if (v5)
    {
      v8 = v7 == 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      --v5;
    }

    else if (v7 <= 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ([v9 actionKind] != &dword_0 + 1)
    {
      goto LABEL_14;
    }

    if (++v5 >= [(TUIPagedScrollable *)self->_pagedScrollable pageCount])
    {
      goto LABEL_14;
    }
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TUIPagedScrollable *)self->_pagedScrollable pagedScrollableActionChangeToPageIndex:v5];
  }

LABEL_14:
}

@end