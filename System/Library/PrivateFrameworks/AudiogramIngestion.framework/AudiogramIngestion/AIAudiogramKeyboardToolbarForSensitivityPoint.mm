@interface AIAudiogramKeyboardToolbarForSensitivityPoint
- (AIAudiogramKeyboardToolbarForSensitivityPoint)initWithFrame:(CGRect)frame target:(id)target;
@end

@implementation AIAudiogramKeyboardToolbarForSensitivityPoint

- (AIAudiogramKeyboardToolbarForSensitivityPoint)initWithFrame:(CGRect)frame target:(id)target
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v20[4] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v19.receiver = self;
  v19.super_class = AIAudiogramKeyboardToolbarForSensitivityPoint;
  height = [(AIAudiogramKeyboardToolbarForSensitivityPoint *)&v19 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:10.0];
    flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:targetCopy action:sel_keyboardDoneTapped];
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.slash.minus"];
    v16 = [v14 initWithImage:v15 style:0 target:targetCopy action:sel_keyboardNegationTapped];

    v20[0] = v11;
    v20[1] = v16;
    v20[2] = flexibleSpaceItem;
    v20[3] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    [(AIAudiogramKeyboardToolbarForSensitivityPoint *)height setItems:v17];
  }

  return height;
}

@end