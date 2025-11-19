@interface NTKExtragalacticContentView
- (NTKExtragalacticContentView)initWithFrame:(CGRect)a3 device:(id)a4 palette:(id)a5;
- (id)_digitNumbersFromFormatter:(id)a3;
- (void)_applyPalette;
- (void)_setupTimeFormatter;
- (void)_setupViews;
- (void)_updateTimeDigits;
- (void)setPalette:(id)a3;
@end

@implementation NTKExtragalacticContentView

- (NTKExtragalacticContentView)initWithFrame:(CGRect)a3 device:(id)a4 palette:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = NTKExtragalacticContentView;
  v14 = [(NTKExtragalacticContentView *)&v18 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_device, a4);
    v15->_backgroundAlpha = 1.0;
    v16 = [MEMORY[0x277D75348] blackColor];
    [(NTKExtragalacticContentView *)v15 setBackgroundColor:v16];

    [(NTKExtragalacticContentView *)v15 _setupTimeFormatter];
    [(NTKExtragalacticContentView *)v15 _setupViews];
    objc_storeStrong(&v15->_palette, a5);
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

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);

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
  v6 = [(NTKExtragalacticBackgroundView *)self->_backgroundView layer];
  (v5)[2](v5, v6);

  v7 = [(NTKExtragalacticDigitsView *)self->_digitsView layer];
  (v5)[2](v5, v7);
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

- (id)_digitNumbersFromFormatter:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 timeSubstringToSeparatorText];
  v5 = [v3 timeSubstringFromSeparatorText];

  if ([v4 length] == 1)
  {
    v6 = [v4 intValue];
    v7 = 0;
  }

  else
  {
    v8 = [v4 substringWithRange:{0, 1}];
    v7 = [v8 intValue];

    v9 = [v4 substringWithRange:{1, 1}];
    v6 = [v9 intValue];
  }

  v10 = [v5 substringWithRange:{0, 1}];
  v11 = [v10 intValue];

  v12 = [v5 substringWithRange:{1, 1}];
  v13 = [v12 intValue];

  v21[0] = &unk_284E9BB00;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v22[0] = v14;
  v21[1] = &unk_284E9BB18;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v22[1] = v15;
  v21[2] = &unk_284E9BB30;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v22[2] = v16;
  v21[3] = &unk_284E9BB48;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v22[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end