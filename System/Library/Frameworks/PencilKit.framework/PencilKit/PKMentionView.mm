@interface PKMentionView
- (PKMentionView)initWithMentionItem:(id)a3 possibleParticipants:(id)a4 inDrawing:(id)a5;
- (PKMentionViewDelegate)delegate;
- (id)_underlineColor;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)setMentionColor:(id)a3;
- (void)updateActivationState;
@end

@implementation PKMentionView

- (PKMentionView)initWithMentionItem:(id)a3 possibleParticipants:(id)a4 inDrawing:(id)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = PKMentionView;
  v9 = a5;
  v10 = a4;
  v11 = [(PKDetectionView *)&v17 init];
  mentionItem = v11->_mentionItem;
  v11->_mentionItem = v8;
  v13 = v8;

  [(PKDetectionItem *)v11->_mentionItem setDrawing:v9, v17.receiver, v17.super_class];
  v14 = [v10 copy];

  possibleParticipants = v11->_possibleParticipants;
  v11->_possibleParticipants = v14;

  return v11;
}

- (void)setMentionColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_mentionColor] & 1) == 0)
  {
    objc_storeStrong(&self->_mentionColor, a3);
    [(PKMentionView *)self setNeedsDisplay];
  }
}

- (id)_underlineColor
{
  if ([(PKMentionItem *)self->_mentionItem active]&& (mentionColor = self->_mentionColor) != 0)
  {
    v4 = mentionColor;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] separatorColor];
  }

  return v4;
}

- (void)updateActivationState
{
  v3 = [(PKMentionView *)self mentionItem];
  v9 = [v3 mentionUUID];

  v4 = [(PKMentionView *)self mentionItem];
  [v4 invalidateUUID];

  v5 = [(PKMentionView *)self mentionItem];
  v6 = [v5 mentionUUID];

  if (v9 != v6 && ([v9 isEqual:v6] & 1) == 0)
  {
    v7 = [(PKMentionView *)self delegate];
    v8 = v7;
    if (v6)
    {
      [v7 mentionViewDidActivateMention:self withParticpant:0];
    }

    else
    {
      [v7 mentionViewWillDeactivateMention:self];
    }

    [(PKMentionView *)self setNeedsDisplay];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKMentionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E82D9C40;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __71__PKMentionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) mentionItem];
  v4 = [v3 mentionUUID];

  if (v4)
  {
    v5 = _PencilKitBundle();
    v6 = [v5 localizedStringForKey:@"Convert to text" value:@"Convert to text" table:@"Localizable"];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat"];
    v8 = MEMORY[0x1E69DC628];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __71__PKMentionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v36[3] = &unk_1E82D7DB0;
    v36[4] = *(a1 + 32);
    v37 = v6;
    v9 = v6;
    v10 = [v8 actionWithTitle:v9 image:v7 identifier:0 handler:v36];
    [v2 addObject:v10];
    v11 = [*(a1 + 32) mentionItem];
    v12 = [v11 mentionResult];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [*(a1 + 32) possibleParticipants];
    v13 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          v17 = v2;
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = MEMORY[0x1E69DC628];
          v20 = [v18 displayName];
          v21 = [v18 color];
          v22 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v22 scale];
          v24 = v23;
          v41.width = 24.0;
          v41.height = 24.0;
          UIGraphicsBeginImageContextWithOptions(v41, 0, v24);

          v25 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{4.0, 4.0, 16.0, 16.0}];
          [v25 addClip];

          [v21 set];
          v42.origin.x = 4.0;
          v42.origin.y = 4.0;
          v42.size.width = 16.0;
          v42.size.height = 16.0;
          UIRectFill(v42);
          v26 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __71__PKMentionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
          v31[3] = &unk_1E82D7DB0;
          v31[4] = *(a1 + 32);
          v31[5] = v18;
          v27 = [v19 actionWithTitle:v20 image:v26 identifier:0 handler:v31];

          v2 = v17;
          [v17 addObject:v27];
        }

        v14 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v14);
    }

    v7 = _PencilKitBundle();
    v12 = [v7 localizedStringForKey:@"Participants to mention" value:@"Participants to mention" table:@"Localizable"];
  }

  v28 = [MEMORY[0x1E69DCC60] menuWithTitle:v12 children:v2];

  return v28;
}

void __71__PKMentionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMentionColor:0];
  v2 = [*(a1 + 32) delegate];
  [v2 mentionViewWillDeactivateMention:*(a1 + 32)];

  v3 = [*(a1 + 32) mentionItem];
  v6 = [v3 setActive:0];

  v4 = [*(a1 + 32) delegate];
  [v4 mentionViewDidDeactivateMention:*(a1 + 32)];

  [v6 setActionName:*(a1 + 40)];
  v5 = [*(a1 + 32) delegate];
  [v5 mentionView:*(a1 + 32) registerCommand:v6];

  [*(a1 + 32) setNeedsDisplay];
}

void __71__PKMentionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) color];
  [*(a1 + 32) setMentionColor:v2];

  v3 = [*(a1 + 32) mentionItem];
  v8 = [v3 setActive:1];

  v4 = [*(a1 + 32) delegate];
  [v4 mentionViewDidActivateMention:*(a1 + 32) withParticpant:*(a1 + 40)];

  v5 = _PencilKitBundle();
  v6 = [v5 localizedStringForKey:@"Convert to mention" value:@"Convert to mention" table:@"Localizable"];
  [v8 setActionName:v6];

  v7 = [*(a1 + 32) delegate];
  [v7 mentionView:*(a1 + 32) registerCommand:v8];

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
  [(PKMentionView *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(PKMentionView *)self frame];
  v19 = v18 * 0.5;
  v29.origin.x = v11;
  v29.origin.y = v13;
  v29.size.width = v15;
  v29.size.height = v17;
  v30 = CGRectInset(v29, 0.0, v19);
  v20 = [v9 initWithFrame:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
  [(PKMentionView *)self setBlankPreviewView:v20];

  v21 = [(PKMentionView *)self blankPreviewView];
  [v21 setOpaque:0];

  v22 = [(PKMentionView *)self superview];
  v23 = [(PKMentionView *)self blankPreviewView];
  [v22 addSubview:v23];

  v24 = objc_alloc(MEMORY[0x1E69DD070]);
  v25 = [(PKMentionView *)self blankPreviewView];
  v26 = [v24 initWithView:v25 parameters:v6];

  return v26;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKMentionView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

uint64_t __73__PKMentionView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) blankPreviewView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setBlankPreviewView:0];
}

- (PKMentionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end