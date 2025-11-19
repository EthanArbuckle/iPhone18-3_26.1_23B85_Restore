@interface UIButton(AuthKitUI)
+ (id)ak_passwordRecoveryButton;
- (void)_ak_passwordRecoveryButtonTapped:()AuthKitUI;
@end

@implementation UIButton(AuthKitUI)

+ (id)ak_passwordRecoveryButton
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[2] = a1;
  v24[1] = a2;
  v24[0] = [MEMORY[0x277D75210] effectWithStyle:?];
  v23 = [MEMORY[0x277D75D00] effectForBlurEffect:v24[0]];
  v2 = objc_alloc(MEMORY[0x277D75D68]);
  v22 = [v2 initWithEffect:v23];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setUserInteractionEnabled:0];
  v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v20 = [MEMORY[0x277D755B8] imageNamed:@"iforgot" inBundle:v21 compatibleWithTraitCollection:?];
  v19 = [MEMORY[0x277D75220] buttonWithType:0];
  [v19 addSubview:v22];
  [v19 setContentMode:?];
  [v19 setFrame:{0.0, 0.0, 18.0, 18.0}];
  [v19 setImage:v20 forState:0];
  [v19 addTarget:v19 action:sel__ak_passwordRecoveryButtonTapped_ forControlEvents:64];
  v4 = MEMORY[0x277CCAAD0];
  v17 = [v22 topAnchor];
  v16 = [v19 topAnchor];
  v15 = [v17 constraintEqualToAnchor:?];
  v25[0] = v15;
  v14 = [v22 bottomAnchor];
  v13 = [v19 bottomAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v25[1] = v12;
  v11 = [v22 leadingAnchor];
  v10 = [v19 leadingAnchor];
  v9 = [v11 constraintEqualToAnchor:?];
  v25[2] = v9;
  v8 = [v22 trailingAnchor];
  v7 = [v19 trailingAnchor];
  v6 = [v8 constraintEqualToAnchor:?];
  v25[3] = v6;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [v4 activateConstraints:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v18 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
  *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_ak_passwordRecoveryButtonTapped:()AuthKitUI
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_async(v3, &__block_literal_global_0);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

@end