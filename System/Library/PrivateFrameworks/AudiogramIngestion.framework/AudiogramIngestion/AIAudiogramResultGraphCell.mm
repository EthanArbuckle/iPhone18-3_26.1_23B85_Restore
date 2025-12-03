@interface AIAudiogramResultGraphCell
- (AIAudiogramResultGraphCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setAudiogram:(id)audiogram;
@end

@implementation AIAudiogramResultGraphCell

- (AIAudiogramResultGraphCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v63[4] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = AIAudiogramResultGraphCell;
  identifierCopy = identifier;
  v5 = [(AIAudiogramResultGraphCell *)&v53 initWithStyle:style reuseIdentifier:?];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramResultGraphCell *)v5 setSelectionStyle:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(AIAudiogramResultGraphCell *)v6 setBackgroundColor:systemBackgroundColor];

    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v8 = getHKHealthStoreClass_softClass_2;
    v62 = getHKHealthStoreClass_softClass_2;
    if (!getHKHealthStoreClass_softClass_2)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __getHKHealthStoreClass_block_invoke_2;
      v57 = &unk_278CEC150;
      v58 = &v59;
      __getHKHealthStoreClass_block_invoke_2(&v54);
      v8 = v60[3];
    }

    v9 = v8;
    _Block_object_dispose(&v59, 8);
    v52 = objc_alloc_init(v8);
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v10 = getHKSampleTypeUpdateControllerClass_softClass_0;
    v62 = getHKSampleTypeUpdateControllerClass_softClass_0;
    if (!getHKSampleTypeUpdateControllerClass_softClass_0)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __getHKSampleTypeUpdateControllerClass_block_invoke_0;
      v57 = &unk_278CEC150;
      v58 = &v59;
      __getHKSampleTypeUpdateControllerClass_block_invoke_0(&v54);
      v10 = v60[3];
    }

    v11 = v10;
    _Block_object_dispose(&v59, 8);
    v50 = [[v10 alloc] initWithHealthStore:v52];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v12 = getHKUnitPreferenceControllerClass_softClass_0;
    v62 = getHKUnitPreferenceControllerClass_softClass_0;
    if (!getHKUnitPreferenceControllerClass_softClass_0)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __getHKUnitPreferenceControllerClass_block_invoke_0;
      v57 = &unk_278CEC150;
      v58 = &v59;
      __getHKUnitPreferenceControllerClass_block_invoke_0(&v54);
      v12 = v60[3];
    }

    v13 = v12;
    _Block_object_dispose(&v59, 8);
    v49 = [[v12 alloc] initWithHealthStore:v52];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v14 = getHKAudiogramChartViewControllerClass_softClass_0;
    v62 = getHKAudiogramChartViewControllerClass_softClass_0;
    if (!getHKAudiogramChartViewControllerClass_softClass_0)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __getHKAudiogramChartViewControllerClass_block_invoke_0;
      v57 = &unk_278CEC150;
      v58 = &v59;
      __getHKAudiogramChartViewControllerClass_block_invoke_0(&v54);
      v14 = v60[3];
    }

    v15 = v14;
    _Block_object_dispose(&v59, 8);
    v16 = [[v14 alloc] initWithUnitController:v49 sampleTypeUpdateController:v50 minimumAudiogramHeight:400.0];
    [(AIAudiogramResultGraphCell *)v6 setAudiogramChart:v16];

    audiogramChart = [(AIAudiogramResultGraphCell *)v6 audiogramChart];
    view = [audiogramChart view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramResultGraphCell *)v6 contentView];
    audiogramChart2 = [(AIAudiogramResultGraphCell *)v6 audiogramChart];
    view2 = [audiogramChart2 view];
    [contentView addSubview:view2];

    v32 = MEMORY[0x277CCAAD0];
    audiogramChart3 = [(AIAudiogramResultGraphCell *)v6 audiogramChart];
    view3 = [audiogramChart3 view];
    leadingAnchor = [view3 leadingAnchor];
    contentView2 = [(AIAudiogramResultGraphCell *)v6 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v63[0] = v43;
    audiogramChart4 = [(AIAudiogramResultGraphCell *)v6 audiogramChart];
    view4 = [audiogramChart4 view];
    trailingAnchor = [view4 trailingAnchor];
    contentView3 = [(AIAudiogramResultGraphCell *)v6 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v63[1] = v37;
    audiogramChart5 = [(AIAudiogramResultGraphCell *)v6 audiogramChart];
    view5 = [audiogramChart5 view];
    topAnchor = [view5 topAnchor];
    contentView4 = [(AIAudiogramResultGraphCell *)v6 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v63[2] = v23;
    audiogramChart6 = [(AIAudiogramResultGraphCell *)v6 audiogramChart];
    view6 = [audiogramChart6 view];
    bottomAnchor = [view6 bottomAnchor];
    contentView5 = [(AIAudiogramResultGraphCell *)v6 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v63[3] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    [v32 activateConstraints:v30];
  }

  return v6;
}

- (void)setAudiogram:(id)audiogram
{
  v17[1] = *MEMORY[0x277D85DE8];
  audiogramCopy = audiogram;
  objc_storeStrong(&self->_audiogram, audiogram);
  audiogramChart = [(AIAudiogramResultGraphCell *)self audiogramChart];
  v7 = audiogramChart;
  if (audiogramCopy)
  {
    v17[0] = audiogramCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v7 setAudiograms:v8];
  }

  else
  {
    [audiogramChart setAudiograms:MEMORY[0x277CBEBF8]];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__AIAudiogramResultGraphCell_setAudiogram___block_invoke;
  v11[3] = &unk_278CEC280;
  v11[4] = self;
  v9 = v11;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v10 = getAXPerformSafeBlockSymbolLoc_ptr;
  v16 = getAXPerformSafeBlockSymbolLoc_ptr;
  if (!getAXPerformSafeBlockSymbolLoc_ptr)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getAXPerformSafeBlockSymbolLoc_block_invoke;
    v12[3] = &unk_278CEC150;
    v12[4] = &v13;
    __getAXPerformSafeBlockSymbolLoc_block_invoke(v12);
    v10 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v10)
  {
    metadataForHKAudiogramSample_cold_1();
    __break(1u);
  }

  v10(v9);
}

void __43__AIAudiogramResultGraphCell_setAudiogram___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audiogramChart];
  [v2 _resetCurrentGraph];

  v3 = [*(a1 + 32) audiogramChart];
  [v3 _updateHeaderState];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(AIAudiogramResultGraphCell *)self pointInside:event withEvent:test.x, test.y])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end