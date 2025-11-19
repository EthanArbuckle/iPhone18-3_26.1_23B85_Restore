@interface AIAudiogramKeyboardToolbarForSensitivityPoint
- (AIAudiogramKeyboardToolbarForSensitivityPoint)initWithFrame:(CGRect)a3 target:(id)a4;
@end

@implementation AIAudiogramKeyboardToolbarForSensitivityPoint

- (AIAudiogramKeyboardToolbarForSensitivityPoint)initWithFrame:(CGRect)a3 target:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20[4] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v19.receiver = self;
  v19.super_class = AIAudiogramKeyboardToolbarForSensitivityPoint;
  v10 = [(AIAudiogramKeyboardToolbarForSensitivityPoint *)&v19 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:10.0];
    v12 = [MEMORY[0x277D751E0] flexibleSpaceItem];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_keyboardDoneTapped];
    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.slash.minus"];
    v16 = [v14 initWithImage:v15 style:0 target:v9 action:sel_keyboardNegationTapped];

    v20[0] = v11;
    v20[1] = v16;
    v20[2] = v12;
    v20[3] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    [(AIAudiogramKeyboardToolbarForSensitivityPoint *)v10 setItems:v17];
  }

  return v10;
}

@end