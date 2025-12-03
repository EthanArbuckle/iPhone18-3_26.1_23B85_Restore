@interface NTKExtragalacticContentView
- (NTKExtragalacticContentView)initWithFrame:(CGRect)frame device:(id)device palette:(id)palette;
- (id)_digitNumbersFromFormatter:(id)formatter;
- (void)_applyPalette;
- (void)_setupTimeFormatter;
- (void)_setupViews;
- (void)_updateTimeDigits;
- (void)setPalette:(id)palette;
@end

@implementation NTKExtragalacticContentView

- (NTKExtragalacticContentView)initWithFrame:(CGRect)frame device:(id)device palette:(id)palette
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  paletteCopy = palette;
  v18.receiver = self;
  v18.super_class = NTKExtragalacticContentView;
  height = [(NTKExtragalacticContentView *)&v18 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v15->_backgroundAlpha = 1.0;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(NTKExtragalacticContentView *)v15 setBackgroundColor:blackColor];

    [(NTKExtragalacticContentView *)v15 _setupTimeFormatter];
    [(NTKExtragalacticContentView *)v15 _setupViews];
    objc_storeStrong(&v15->_palette, palette);
    [(NTKExtragalacticContentView *)v15 _applyPalette];
  }

  return v15;
}

- (void)_setupViews
{
  v3 = [NTKExtragalacticBackgroundView alloc];
  [(NTKExtragalacticContentView *)self bounds];
  v4 = [(NTKExtragalacticBackgroundView *)v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(NTKExtragalacticContentView *)self addSubview:self->_backgroundView];
  v6 = [NTKExtragalacticDigitsView alloc];
  [(NTKExtragalacticContentView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  device = self->_device;
  v16 = [(NTKExtragalacticContentView *)self _digitNumbersFromFormatter:self->_timeFormatter];
  v17 = [(NTKExtragalacticDigitsView *)v6 initWithFrame:device device:v16 digitNumbers:v8, v10, v12, v14];
  digitsView = self->_digitsView;
  self->_digitsView = v17;

  v19 = self->_digitsView;

  [(NTKExtragalacticContentView *)self addSubview:v19];
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);

  [(NTKExtragalacticContentView *)self _applyPalette];
}

- (void)_applyPalette
{
  v3 = [NTKExtragalacticColors lutFilterFromPalette:self->_palette];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BE54E60;
  v8[3] = &unk_278B9B728;
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x23EEBF4B0](v8);
  layer = [(NTKExtragalacticBackgroundView *)self->_backgroundView layer];
  (v5)[2](v5, layer);

  layer2 = [(NTKExtragalacticDigitsView *)self->_digitsView layer];
  (v5)[2](v5, layer2);
}

- (void)_setupTimeFormatter
{
  v3 = [objc_alloc(MEMORY[0x277CBBBA8]) initWithForcesLatinNumbers:1];
  timeFormatter = self->_timeFormatter;
  self->_timeFormatter = v3;

  [(CLKTimeFormatter *)self->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
  [(NTKExtragalacticContentView *)self _updateTimeDigits];
  v5 = self->_timeFormatter;

  MEMORY[0x2821F9670](v5, sel_addObserver_);
}

- (void)_updateTimeDigits
{
  digitsView = self->_digitsView;
  v3 = [(NTKExtragalacticContentView *)self _digitNumbersFromFormatter:self->_timeFormatter];
  [(NTKExtragalacticDigitsView *)digitsView setDigitNumbers:v3];
}

- (id)_digitNumbersFromFormatter:(id)formatter
{
  v22[4] = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  timeSubstringToSeparatorText = [formatterCopy timeSubstringToSeparatorText];
  timeSubstringFromSeparatorText = [formatterCopy timeSubstringFromSeparatorText];

  if ([timeSubstringToSeparatorText length] == 1)
  {
    intValue = [timeSubstringToSeparatorText intValue];
    intValue2 = 0;
  }

  else
  {
    v8 = [timeSubstringToSeparatorText substringWithRange:{0, 1}];
    intValue2 = [v8 intValue];

    v9 = [timeSubstringToSeparatorText substringWithRange:{1, 1}];
    intValue = [v9 intValue];
  }

  v10 = [timeSubstringFromSeparatorText substringWithRange:{0, 1}];
  intValue3 = [v10 intValue];

  v12 = [timeSubstringFromSeparatorText substringWithRange:{1, 1}];
  intValue4 = [v12 intValue];

  v21[0] = &unk_284E9BB00;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue2];
  v22[0] = v14;
  v21[1] = &unk_284E9BB18;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue];
  v22[1] = v15;
  v21[2] = &unk_284E9BB30;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue3];
  v22[2] = v16;
  v21[3] = &unk_284E9BB48;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue4];
  v22[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end