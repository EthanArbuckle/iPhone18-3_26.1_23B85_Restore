@interface AIAudiogramKeyboardToolbar
- (AIAudiogramKeyboardToolbar)initWithFrame:(CGRect)frame target:(id)target;
@end

@implementation AIAudiogramKeyboardToolbar

- (AIAudiogramKeyboardToolbar)initWithFrame:(CGRect)frame target:(id)target
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v29[7] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v28.receiver = self;
  v28.super_class = AIAudiogramKeyboardToolbar;
  height = [(AIAudiogramKeyboardToolbar *)&v28 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:10.0];
    flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:targetCopy action:sel_keyboardDoneTapped];
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.slash.minus"];
    v16 = [v14 initWithImage:v15 style:0 target:targetCopy action:sel_keyboardNegationTapped];

    v17 = aiLocString(@"AudiogramIngestionResultsNegateDecibel");
    [v16 setAccessibilityLabel:v17];

    v18 = objc_alloc(MEMORY[0x277D751E0]);
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.up"];
    v20 = [v18 initWithImage:v19 style:0 target:targetCopy action:sel_keyboardPreviousTapped];
    [(AIAudiogramKeyboardToolbar *)height setPreviousItemButton:v20];

    v21 = objc_alloc(MEMORY[0x277D751E0]);
    v22 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
    v23 = [v21 initWithImage:v22 style:0 target:targetCopy action:sel_keyboardNextTapped];
    [(AIAudiogramKeyboardToolbar *)height setNextItemButton:v23];

    previousItemButton = [(AIAudiogramKeyboardToolbar *)height previousItemButton];
    v29[0] = previousItemButton;
    v29[1] = v11;
    nextItemButton = [(AIAudiogramKeyboardToolbar *)height nextItemButton];
    v29[2] = nextItemButton;
    v29[3] = v11;
    v29[4] = v16;
    v29[5] = flexibleSpaceItem;
    v29[6] = v13;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];
    [(AIAudiogramKeyboardToolbar *)height setItems:v26];
  }

  return height;
}

@end