@interface PKHashtagView
- (PKHashtagView)initWithHashtagItem:(id)item inDrawing:(id)drawing;
- (PKHashtagViewDelegate)delegate;
- (id)_underlineColor;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)updateActivationState;
@end

@implementation PKHashtagView

- (PKHashtagView)initWithHashtagItem:(id)item inDrawing:(id)drawing
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = PKHashtagView;
  drawingCopy = drawing;
  v8 = [(PKDetectionView *)&v12 init];
  hashtagItem = v8->_hashtagItem;
  v8->_hashtagItem = itemCopy;
  v10 = itemCopy;

  [(PKDetectionItem *)v8->_hashtagItem setDrawing:drawingCopy, v12.receiver, v12.super_class];
  return v8;
}

- (id)_underlineColor
{
  hashtagItem = [(PKHashtagView *)self hashtagItem];
  if ([hashtagItem active])
  {
    [(PKHashtagView *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }
  v4 = ;

  return v4;
}

- (void)updateActivationState
{
  hashtagItem = [(PKHashtagView *)self hashtagItem];
  hashtagUUID = [hashtagItem hashtagUUID];

  hashtagItem2 = [(PKHashtagView *)self hashtagItem];
  [hashtagItem2 invalidateUUID];

  hashtagItem3 = [(PKHashtagView *)self hashtagItem];
  hashtagUUID2 = [hashtagItem3 hashtagUUID];

  if (hashtagUUID != hashtagUUID2 && ([hashtagUUID isEqual:hashtagUUID2] & 1) == 0)
  {
    delegate = [(PKHashtagView *)self delegate];
    v8 = delegate;
    if (hashtagUUID2)
    {
      [delegate hashtagViewDidActivateHashtag:self];
    }

    else
    {
      [delegate hashtagViewWillDeactivateHashtag:self];
    }

    [(PKHashtagView *)self setNeedsDisplay];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKHashtagView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E82D9C40;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __71__PKHashtagView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hashtagItem];
  v3 = [v2 active];
  v4 = _PencilKitBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"Convert to text";
  }

  else
  {
    v6 = @"Convert to tag";
  }

  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  v8 = MEMORY[0x1E69DCAB8];
  v9 = [*(a1 + 32) hashtagItem];
  if ([v9 active])
  {
    v10 = @"textformat";
  }

  else
  {
    v10 = @"number";
  }

  v11 = [v8 systemImageNamed:v10];

  v12 = MEMORY[0x1E69DC628];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __71__PKHashtagView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v24 = &unk_1E82D7DB0;
  v25 = *(a1 + 32);
  v26 = v7;
  v13 = v7;
  v14 = [v12 actionWithTitle:v13 image:v11 identifier:0 handler:&v21];
  v15 = MEMORY[0x1E69DCC60];
  v16 = [*(a1 + 32) hashtagItem];
  v17 = [v16 hashtagResult];
  v27[0] = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v19 = [v15 menuWithTitle:v17 children:v18];

  return v19;
}

void __71__PKHashtagView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hashtagItem];
  v3 = [v2 active];

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 hashtagViewWillDeactivateHashtag:*(a1 + 32)];
  }

  v5 = [*(a1 + 32) hashtagItem];
  v6 = [*(a1 + 32) hashtagItem];
  v12 = [v5 setActive:{objc_msgSend(v6, "active") ^ 1}];

  v7 = [*(a1 + 32) hashtagItem];
  LODWORD(v6) = [v7 active];

  v8 = [*(a1 + 32) delegate];
  v9 = v8;
  v10 = *(a1 + 32);
  if (v6)
  {
    [v8 hashtagViewDidActivateHashtag:v10];
  }

  else
  {
    [v8 hashtagViewDidDeactivateHashtag:v10];
  }

  [v12 setActionName:*(a1 + 40)];
  v11 = [*(a1 + 32) delegate];
  [v11 hashtagView:*(a1 + 32) registerCommand:v12];

  [*(a1 + 32) setNeedsDisplay];
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v6 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [v6 setShadowPath:bezierPath];

  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  [(PKHashtagView *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(PKHashtagView *)self frame];
  v19 = v18 * 0.5;
  v29.origin.x = v11;
  v29.origin.y = v13;
  v29.size.width = v15;
  v29.size.height = v17;
  v30 = CGRectInset(v29, 0.0, v19);
  v20 = [v9 initWithFrame:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
  [(PKHashtagView *)self setBlankPreviewView:v20];

  blankPreviewView = [(PKHashtagView *)self blankPreviewView];
  [blankPreviewView setOpaque:0];

  superview = [(PKHashtagView *)self superview];
  blankPreviewView2 = [(PKHashtagView *)self blankPreviewView];
  [superview addSubview:blankPreviewView2];

  v24 = objc_alloc(MEMORY[0x1E69DD070]);
  blankPreviewView3 = [(PKHashtagView *)self blankPreviewView];
  v26 = [v24 initWithView:blankPreviewView3 parameters:v6];

  return v26;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKHashtagView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [animator addCompletion:{v5, configuration}];
}

uint64_t __73__PKHashtagView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) blankPreviewView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setBlankPreviewView:0];
}

- (PKHashtagViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end