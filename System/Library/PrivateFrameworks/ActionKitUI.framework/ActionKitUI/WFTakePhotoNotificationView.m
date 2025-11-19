@interface WFTakePhotoNotificationView
- (WFTakePhotoNotificationView)initWithFrame:(CGRect)a3 shortcutAttribution:(id)a4;
@end

@implementation WFTakePhotoNotificationView

- (WFTakePhotoNotificationView)initWithFrame:(CGRect)a3 shortcutAttribution:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42[5] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v41.receiver = self;
  v41.super_class = WFTakePhotoNotificationView;
  v10 = [(WFTakePhotoNotificationView *)&v41 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    v40 = v9;
    if (v9)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = WFLocalizedString(@"“%@” is taking a photo...");
      v14 = [v12 localizedStringWithFormat:v13, v9];
      [v11 setText:v14];
    }

    else
    {
      v13 = WFLocalizedString(@"A shortcut is taking a photo...");
      [v11 setText:v13];
    }

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setAdjustsFontForContentSizeCategory:1];
    [v11 setNumberOfLines:0];
    [(WFTakePhotoNotificationView *)v10 addSubview:v11];
    v15 = *MEMORY[0x277D76918];
    v39 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v16 = [MEMORY[0x277D74300] fontWithDescriptor:v39 size:0.0];
    [v11 setFont:v16];

    v17 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v15 weight:*MEMORY[0x277D74410]];
    [v11 setFont:v17];

    LODWORD(v18) = 1144750080;
    [v11 setContentHuggingPriority:1 forAxis:v18];
    LODWORD(v19) = 1144750080;
    [v11 setContentCompressionResistancePriority:1 forAxis:v19];
    v33 = MEMORY[0x277CCAAD0];
    v38 = [(WFTakePhotoNotificationView *)v10 heightAnchor];
    v37 = [v38 constraintGreaterThanOrEqualToConstant:84.0];
    v42[0] = v37;
    v36 = [v11 leadingAnchor];
    v35 = [(WFTakePhotoNotificationView *)v10 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:18.0];
    v42[1] = v34;
    v32 = [v11 trailingAnchor];
    v31 = [(WFTakePhotoNotificationView *)v10 trailingAnchor];
    v20 = [v32 constraintEqualToAnchor:v31 constant:-18.0];
    v42[2] = v20;
    v21 = [v11 centerYAnchor];
    v22 = [(WFTakePhotoNotificationView *)v10 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v42[3] = v23;
    v24 = [v11 topAnchor];
    v25 = [(WFTakePhotoNotificationView *)v10 topAnchor];
    v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25 constant:21.0];
    v42[4] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];
    [v33 activateConstraints:v27];

    v28 = v10;
    v9 = v40;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

@end