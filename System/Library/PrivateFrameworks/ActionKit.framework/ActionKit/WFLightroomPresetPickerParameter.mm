@interface WFLightroomPresetPickerParameter
+ (id)presetsByGroup;
- (BOOL)isHidden;
- (NSArray)possibleStates;
- (WFAction)action;
- (id)localizedLabelForPossibleState:(id)a3;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)possibleStatesDidChange;
- (void)setAction:(id)a3;
@end

@implementation WFLightroomPresetPickerParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  v5 = a4;
  v6 = [(WFLightroomPresetPickerParameter *)self definition];
  v7 = [v6 objectForKey:@"PresetGroupKey"];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {

    [(WFLightroomPresetPickerParameter *)self possibleStatesDidChange];
  }
}

- (id)localizedLabelForPossibleState:(id)a3
{
  v3 = [a3 value];
  v4 = [v3 displayString];

  return v4;
}

- (NSArray)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = [(WFLightroomPresetPickerParameter *)self action];
    v5 = [(WFLightroomPresetPickerParameter *)self definition];
    v6 = [v5 objectForKey:@"PresetGroupKey"];
    v7 = [v4 parameterStateForKey:v6];

    v8 = [objc_opt_class() presetsByGroup];
    v9 = [v7 value];
    v10 = [v8 objectForKey:v9];

    v11 = [v10 if_compactMap:&__block_literal_global_1168];
    v12 = self->_possibleStates;
    self->_possibleStates = v11;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

id __50__WFLightroomPresetPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C510];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (BOOL)isHidden
{
  v2 = [(WFLightroomPresetPickerParameter *)self possibleStates];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)possibleStatesDidChange
{
  possibleStates = self->_possibleStates;
  self->_possibleStates = 0;

  v4.receiver = self;
  v4.super_class = WFLightroomPresetPickerParameter;
  [(WFLightroomPresetPickerParameter *)&v4 possibleStatesDidChange];
}

- (void)setAction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  objc_storeWeak(&self->_action, v4);
  [v4 addEventObserver:self];

  [(WFLightroomPresetPickerParameter *)self possibleStatesDidChange];
}

+ (id)presetsByGroup
{
  v63[7] = *MEMORY[0x277D85DE8];
  v62[0] = @"B&W";
  v54 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"19271F2DDD66BC545C6190F4B84A36F0" displayString:@"Punch"];
  v61[0] = v54;
  v53 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"1CFE55E8E69B5ACE9873EF4AA90E8B4D" displayString:@"High Contrast"];
  v61[1] = v53;
  v52 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"33C9D95D9699BFAFC894C2040B26F8D3" displayString:@"Sepia Tone"];
  v61[2] = v52;
  v51 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"4F0AAD59434D2B8A9A97FF18B7DA9A9F" displayString:@"Infrared"];
  v61[3] = v51;
  v50 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"A0E0A57F977717F5A5D58D93EEFCDE80" displayString:@"Selenium Tone"];
  v61[4] = v50;
  v49 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"ACA9F103CE197414B5D2FB044214A1F6" displayString:@"Split Tone"];
  v61[5] = v49;
  v48 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"BC40F013813101E79FA77C52AF2C24EA" displayString:@"Landscape"];
  v61[6] = v48;
  v47 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"D6FD323773F16CA6E39CD151831EDD57" displayString:@"Soft"];
  v61[7] = v47;
  v46 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"D858F1679E126E7B88F477259C932EE8" displayString:@"Flat"];
  v61[8] = v46;
  v45 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"F6E61E9487CF280BA0F78E85B8291EEE" displayString:@"Low Contrast"];
  v61[9] = v45;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:10];
  v63[0] = v44;
  v62[1] = @"Color";
  v43 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"24411B29DA6F03858BD4604A6772D3B7" displayString:@"High Contrast"];
  v60[0] = v43;
  v42 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"94A7B12F170D65F5F86DF16A8165EDB8" displayString:@"Matte"];
  v60[1] = v42;
  v41 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"A8400A4F84CEFC90DFDC3F0598A3E80F" displayString:@"Natural"];
  v60[2] = v41;
  v40 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"B4DF7CAAC3DC5851334749CD66C6E093" displayString:@"Vivid"];
  v60[3] = v40;
  v39 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"D7878D40EEE6081C516E9F49732DE1A3" displayString:@"High Contrast & Detail"];
  v60[4] = v39;
  v38 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"D9DBEEE928A264244D00B9960351DD85" displayString:@"Bright"];
  v60[5] = v38;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  v63[1] = v37;
  v62[2] = @"Creative";
  v36 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"0F011E395F1F535B9C22C9FD317FF541" displayString:@"Flat & Green"];
  v59[0] = v36;
  v35 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"1F87275D229A17F59AC6AEEB07740A8B" displayString:@"Warm Shadows"];
  v59[1] = v35;
  v34 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"4CE218B784FD9FA45A901D74AA9473B1" displayString:@"Cool Light"];
  v59[2] = v34;
  v33 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"62A3A4F10DEFAB5DB96E2E819695AE45" displayString:@"Turquoise & Red"];
  v59[3] = v33;
  v32 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"ACA35E0D0E9604A00E57A3DE7CC349D4" displayString:@"Red Lift Matte"];
  v59[4] = v32;
  v31 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"CED5E9863E3821FFE0A1B691A63A3D31" displayString:@"Warm Contrast"];
  v59[5] = v31;
  v30 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"CFB23A1F4CC9954DB4D5BABB76B1837A" displayString:@"Desaturated Contrast"];
  v59[6] = v30;
  v29 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"E28022BE507EB904FAC12AF4D9020EF2" displayString:@"Soft Mist"];
  v59[7] = v29;
  v28 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"E9F14D340EE517BAE40885B2C75179E3" displayString:@"Vintage Instant"];
  v59[8] = v28;
  v27 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"F2519E32E9412F082845648CCAE463EC" displayString:@"Aged Photo"];
  v59[9] = v27;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:10];
  v63[2] = v26;
  v62[3] = @"Curve";
  v25 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"34B01A80E7C1D5D9066012B6EF3FDC18" displayString:@"Flat"];
  v58[0] = v25;
  v24 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"63A97DC6094C1DA30C06339BABF88894" displayString:@"Strong S Curve"];
  v58[1] = v24;
  v23 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"69FE229AD75B5BB3A8579C3B854C5B48" displayString:@"None"];
  v58[2] = v23;
  v22 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"7B538D900711C300BE09C022DABF1363" displayString:@"Lift Shadows"];
  v58[3] = v22;
  v21 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"BD3BD3746830FD852159955AB11EEE21" displayString:@"Cross Process"];
  v58[4] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
  v63[3] = v20;
  v62[4] = @"Grain";
  v19 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"26974227534FC2BE01BA2FEA23B0B1CA" displayString:@"Medium"];
  v57[0] = v19;
  v18 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"54E8B33AF99FF270CA5063C498BD3C90" displayString:@"Heavy"];
  v57[1] = v18;
  v17 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"65099705565294D471733DF04B6EFF81" displayString:@"None"];
  v57[2] = v17;
  v16 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"95FB372852D2646A914E82BAF810A621" displayString:@"Light"];
  v57[3] = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  v63[4] = v15;
  v62[5] = @"Sharpening";
  v2 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"1A5330A7529B1FDCB1B2747AD29A7D37" displayString:@"Medium"];
  v56[0] = v2;
  v3 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"606E77E300EA35C7C7F54A0D01217A3C" displayString:@"None"];
  v56[1] = v3;
  v4 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"B9F499526A62395B4B74670B1A42F1C9" displayString:@"Heavy"];
  v56[2] = v4;
  v5 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"DAEFD428A1FABB512C2FC55653E43823" displayString:@"Light"];
  v56[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
  v63[5] = v6;
  v62[6] = @"Vignetting";
  v7 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"3E6450B5D15D661006AD72C79EC6FB6E" displayString:@"Medium"];
  v55[0] = v7;
  v8 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"B10E60EFE17E2A501068449B3374EED4" displayString:@"Heavy"];
  v55[1] = v8;
  v9 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"B172B4349A640AD8EFFCF1747FF1D96F" displayString:@"None"];
  v55[2] = v9;
  v10 = [objc_alloc(MEMORY[0x277CD3E20]) initWithIdentifier:@"BC38A4949BDF6AD56FD42D6E5563C9C3" displayString:@"Light"];
  v55[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
  v63[6] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:7];

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

@end