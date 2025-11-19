@interface PKHashtagView
- (PKHashtagView)initWithHashtagItem:(id)a3 inDrawing:(id)a4;
- (PKHashtagViewDelegate)delegate;
- (id)_underlineColor;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)updateActivationState;
@end

@implementation PKHashtagView

- (PKHashtagView)initWithHashtagItem:(id)a3 inDrawing:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PKHashtagView;
  v7 = a4;
  v8 = [(PKDetectionView *)&v12 init];
  hashtagItem = v8->_hashtagItem;
  v8->_hashtagItem = v6;
  v10 = v6;

  [(PKDetectionItem *)v8->_hashtagItem setDrawing:v7, v12.receiver, v12.super_class];
  return v8;
}

- (id)_underlineColor
{
  v3 = [(PKHashtagView *)self hashtagItem];
  if ([v3 active])
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
  v3 = [(PKHashtagView *)self hashtagItem];
  v9 = [v3 hashtagUUID];

  v4 = [(PKHashtagView *)self hashtagItem];
  [v4 invalidateUUID];

  v5 = [(PKHashtagView *)self hashtagItem];
  v6 = [v5 hashtagUUID];

  if (v9 != v6 && ([v9 isEqual:v6] & 1) == 0)
  {
    v7 = [(PKHashtagView *)self delegate];
    v8 = v7;
    if (v6)
    {
      [v7 hashtagViewDidActivateHashtag:self];
    }

    else
    {
      [v7 hashtagViewWillDeactivateHashtag:self];
    }

    [(PKHashtagView *)self setNeedsDisplay];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [MEMORY[0x1E69DC728] bezierPath];
  [v6 setShadowPath:v8];

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

  v21 = [(PKHashtagView *)self blankPreviewView];
  [v21 setOpaque:0];

  v22 = [(PKHashtagView *)self superview];
  v23 = [(PKHashtagView *)self blankPreviewView];
  [v22 addSubview:v23];

  v24 = objc_alloc(MEMORY[0x1E69DD070]);
  v25 = [(PKHashtagView *)self blankPreviewView];
  v26 = [v24 initWithView:v25 parameters:v6];

  return v26;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKHashtagView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
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