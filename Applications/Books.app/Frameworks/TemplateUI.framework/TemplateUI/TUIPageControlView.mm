@interface TUIPageControlView
+ (id)renderModelWithStateToRenderModel:(id)model pressScale:(double)scale touchInsets:(UIEdgeInsets)insets identifier:(id)identifier pointer:(id)pointer scrollIdentifier:(id)scrollIdentifier kind:(unint64_t)kind hiddenWhenUnavailable:(BOOL)self0;
- (void)_buttonPressed:(id)pressed;
- (void)_updateEnabled;
- (void)renderModelUpdated;
- (void)viewDidEndDisplay;
@end

@implementation TUIPageControlView

+ (id)renderModelWithStateToRenderModel:(id)model pressScale:(double)scale touchInsets:(UIEdgeInsets)insets identifier:(id)identifier pointer:(id)pointer scrollIdentifier:(id)scrollIdentifier kind:(unint64_t)kind hiddenWhenUnavailable:(BOOL)self0
{
  unavailableCopy = unavailable;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  scrollIdentifierCopy = scrollIdentifier;
  pointerCopy = pointer;
  identifierCopy = identifier;
  modelCopy = model;
  right = [[_TUIRenderModelPageControl alloc] initWithStateToRenderModel:modelCopy pressScale:identifierCopy touchInsets:pointerCopy identifier:scrollIdentifierCopy pointer:kind scrollIdentifier:unavailableCopy kind:scale hiddenWhenUnavailable:top, left, bottom, right];

  return right;
}

- (void)renderModelUpdated
{
  v12.receiver = self;
  v12.super_class = TUIPageControlView;
  [(TUIControlView *)&v12 renderModelUpdated];
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  scrollIdentifier = [renderModel scrollIdentifier];
  tui_querySectionUUID = [(TUIReusableBaseView *)self tui_querySectionUUID];
  v7 = [scrollIdentifier tui_identifierByPrependingUUID:tui_querySectionUUID];

  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  pagedScrollableController = [feedControllerHost pagedScrollableController];
  v10 = [pagedScrollableController pagedScrollableWithIdentifier:v7];

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
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  currentPageIndices = [(TUIPagedScrollable *)self->_pagedScrollable currentPageIndices];
  v6 = v5;
  if ([renderModel actionKind] == &dword_0 + 2 && (!currentPageIndices ? (v7 = v6 > 1) : (v7 = 1), v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = [renderModel actionKind] == &dword_0 + 1 && currentPageIndices + 1 < -[TUIPagedScrollable pageCount](self->_pagedScrollable, "pageCount");
  }

  if (self->_actionEnabled != v8)
  {
    self->_actionEnabled = v8;
    [(TUIInteractiveBaseView *)self setEnabled:v8];
  }

  pageCount = [(TUIPagedScrollable *)self->_pagedScrollable pageCount];
  v10 = pageCount >= 2;
  hiddenWhenUnavailable = pageCount < 2;
  if (!v8 && v10)
  {
    hiddenWhenUnavailable = [renderModel hiddenWhenUnavailable];
  }

  if (self->_showContents != (hiddenWhenUnavailable ^ 1))
  {
    self->_showContents = hiddenWhenUnavailable ^ 1;
    [(TUIInteractiveBaseView *)self invalidateShowContents];
  }
}

- (void)_buttonPressed:(id)pressed
{
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  currentPageIndices = [(TUIPagedScrollable *)self->_pagedScrollable currentPageIndices];
  v7 = v6;
  if ([renderModel actionKind] == &dword_0 + 2)
  {
    if (currentPageIndices)
    {
      v8 = v7 == 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      --currentPageIndices;
    }

    else if (v7 <= 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ([renderModel actionKind] != &dword_0 + 1)
    {
      goto LABEL_14;
    }

    if (++currentPageIndices >= [(TUIPagedScrollable *)self->_pagedScrollable pageCount])
    {
      goto LABEL_14;
    }
  }

  if (currentPageIndices != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TUIPagedScrollable *)self->_pagedScrollable pagedScrollableActionChangeToPageIndex:currentPageIndices];
  }

LABEL_14:
}

@end