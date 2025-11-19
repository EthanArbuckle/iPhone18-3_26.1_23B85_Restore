@interface AIAudiogramKeyboardToolbar
- (AIAudiogramKeyboardToolbar)initWithFrame:(CGRect)a3 target:(id)a4;
@end

@implementation AIAudiogramKeyboardToolbar

- (AIAudiogramKeyboardToolbar)initWithFrame:(CGRect)a3 target:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29[7] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v28.receiver = self;
  v28.super_class = AIAudiogramKeyboardToolbar;
  v10 = [(AIAudiogramKeyboardToolbar *)&v28 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:10.0];
    v12 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_keyboardDoneTapped];
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.slash.minus"];
    v16 = [v14 initWithImage:v15 style:0 target:v9 action:sel_keyboardNegationTapped];

    v17 = aiLocString(@"AudiogramIngestionResultsNegateDecibel");
    [v16 setAccessibilityLabel:v17];

    v18 = objc_alloc(MEMORY[0x277D751E0]);
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.up"];
    v20 = [v18 initWithImage:v19 style:0 target:v9 action:sel_keyboardPreviousTapped];
    [(AIAudiogramKeyboardToolbar *)v10 setPreviousItemButton:v20];

    v21 = objc_alloc(MEMORY[0x277D751E0]);
    v22 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
    v23 = [v21 initWithImage:v22 style:0 target:v9 action:sel_keyboardNextTapped];
    [(AIAudiogramKeyboardToolbar *)v10 setNextItemButton:v23];

    v24 = [(AIAudiogramKeyboardToolbar *)v10 previousItemButton];
    v29[0] = v24;
    v29[1] = v11;
    v25 = [(AIAudiogramKeyboardToolbar *)v10 nextItemButton];
    v29[2] = v25;
    v29[3] = v11;
    v29[4] = v16;
    v29[5] = v12;
    v29[6] = v13;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];
    [(AIAudiogramKeyboardToolbar *)v10 setItems:v26];
  }

  return v10;
}

@end