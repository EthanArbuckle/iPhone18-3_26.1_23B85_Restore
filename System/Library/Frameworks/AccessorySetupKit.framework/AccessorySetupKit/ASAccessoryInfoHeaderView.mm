@interface ASAccessoryInfoHeaderView
- (ASAccessoryInfoHeaderView)initWithDevice:(id)a3 insets:(UIEdgeInsets)a4;
@end

@implementation ASAccessoryInfoHeaderView

- (ASAccessoryInfoHeaderView)initWithDevice:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v59[5] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = ASAccessoryInfoHeaderView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = a3;
  v13 = [(ASAccessoryInfoHeaderView *)&v58 initWithFrame:v8, v9, v10, v11];
  [(ASAccessoryInfoHeaderView *)v13 setLayoutMargins:top, left, bottom, right];
  v14 = [MEMORY[0x277D75348] clearColor];
  [(ASAccessoryInfoHeaderView *)v13 setBackgroundColor:v14];

  v15 = [v12 displayImageFileURL];

  v16 = container_system_group_path_for_identifier();
  if (v16)
  {
    v17 = v16;
    v18 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v16 isDirectory:1 relativeToURL:0];
    free(v17);
  }

  else
  {
    v18 = 0;
  }

  v56 = v18;
  v55 = [v18 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v54 = [v55 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  v19 = [v54 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
  v57 = v15;
  v52 = [v15 lastPathComponent];
  v53 = v19;
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v19, v52];
  v50 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v20 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
  v49 = v20;
  if (v20 && ([MEMORY[0x277D755B8] imageWithData:v20], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
    imageView = v13->_imageView;
    v13->_imageView = v23;

    [(UIImageView *)v13->_imageView setContentMode:1];
    v25 = [(UIImageView *)v13->_imageView layer];
    [v25 setAllowsEdgeAntialiasing:1];
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277D755E8]);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"dot.radiowaves.left.and.right"];
    v28 = [v26 initWithImage:v27];
    v29 = v13->_imageView;
    v13->_imageView = v28;

    v30 = [MEMORY[0x277D755D0] configurationWithPointSize:150.0];
    [(UIImageView *)v13->_imageView setPreferredSymbolConfiguration:v30];

    v22 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIImageView *)v13->_imageView setTintColor:v22];
  }

  [(UIImageView *)v13->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ASAccessoryInfoHeaderView *)v13 addSubview:v13->_imageView];
  v43 = MEMORY[0x277CCAAD0];
  v48 = [(UIImageView *)v13->_imageView topAnchor];
  v47 = [(ASAccessoryInfoHeaderView *)v13 topAnchor];
  [(ASAccessoryInfoHeaderView *)v13 layoutMargins];
  v46 = [v48 constraintEqualToAnchor:v47 constant:?];
  v59[0] = v46;
  v45 = [(UIImageView *)v13->_imageView centerXAnchor];
  v44 = [(ASAccessoryInfoHeaderView *)v13 centerXAnchor];
  v31 = [v45 constraintEqualToAnchor:v44];
  v59[1] = v31;
  v32 = [(UIImageView *)v13->_imageView heightAnchor];
  v33 = [v32 constraintEqualToConstant:150.0];
  v59[2] = v33;
  v34 = [(UIImageView *)v13->_imageView widthAnchor];
  v35 = [v34 constraintEqualToConstant:230.0];
  v59[3] = v35;
  v36 = [(UIImageView *)v13->_imageView bottomAnchor];
  v37 = [(ASAccessoryInfoHeaderView *)v13 bottomAnchor];
  [(ASAccessoryInfoHeaderView *)v13 layoutMargins];
  v39 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:-v38];
  v59[4] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:5];
  [v43 activateConstraints:v40];

  v41 = *MEMORY[0x277D85DE8];
  return v13;
}

@end