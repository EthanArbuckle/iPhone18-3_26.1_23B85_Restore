@interface NTKVivaldiTimeLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKVivaldiTimeLabel)initWithTimeComponent:(unint64_t)a3 color:(id)a4 font:(id)a5 fontSize:(double)a6 outline:(BOOL)a7;
- (id)_attributedString;
- (void)_updateLabelText;
- (void)_updateLocale;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDate:(id)a3;
- (void)updateColorsForComplicationsEditingFraction:(double)a3 withColorPalette:(id)a4;
@end

@implementation NTKVivaldiTimeLabel

- (NTKVivaldiTimeLabel)initWithTimeComponent:(unint64_t)a3 color:(id)a4 font:(id)a5 fontSize:(double)a6 outline:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v27.receiver = self;
  v27.super_class = NTKVivaldiTimeLabel;
  v15 = [(NTKVivaldiTimeLabel *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_outline = a7;
    v15->_timeComponent = a3;
    objc_storeStrong(&v15->_color, a4);
    v16->_fontSize = a6;
    v17 = [v14 fontWithSize:a6];
    font = v16->_font;
    v16->_font = v17;

    v19 = [MEMORY[0x277CFA760] labelWithOptions:0];
    label = v16->_label;
    v16->_label = v19;

    [(CLKUIColoringLabel *)v16->_label setFont:v16->_font];
    [(CLKUIColoringLabel *)v16->_label setTextColor:v16->_color];
    [(CLKUIColoringLabel *)v16->_label setLineBreakMode:2];
    [(NTKVivaldiTimeLabel *)v16 addSubview:v16->_label];
    v21 = objc_alloc_init(MEMORY[0x277CCA968]);
    formatter = v16->_formatter;
    v16->_formatter = v21;

    v23 = v16->_formatter;
    v24 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en"];
    [(NSDateFormatter *)v23 setLocale:v24];

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v16 selector:sel__updateLocale name:*MEMORY[0x277CBE620] object:0];

    [(NTKVivaldiTimeLabel *)v16 _updateLocale];
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = NTKVivaldiTimeLabel;
  [(NTKVivaldiTimeLabel *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKVivaldiTimeLabel;
  [(NTKVivaldiTimeLabel *)&v4 layoutSubviews];
  label = self->_label;
  [(NTKVivaldiTimeLabel *)self bounds];
  [(CLKUIColoringLabel *)label setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  MEMORY[0x2821F9670](self->_label, sel_sizeThatFits_);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setDate:(id)a3
{
  objc_storeStrong(&self->_date, a3);

  [(NTKVivaldiTimeLabel *)self _updateLabelText];
}

- (void)_updateLocale
{
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = CLKLocaleIs24HourMode();
  timeComponent = self->_timeComponent;
  if (timeComponent == 1)
  {
    formatter = self->_formatter;
    v6 = @"mm";
  }

  else
  {
    if (timeComponent)
    {
      goto LABEL_9;
    }

    v5 = self->_formatter;
    if (v3)
    {
      v6 = @"HH";
    }

    else
    {
      v6 = @"hh";
    }

    formatter = self->_formatter;
  }

  [(NSDateFormatter *)formatter setDateFormat:v6];
LABEL_9:
  [(NTKVivaldiTimeLabel *)self _updateLabelText];
}

- (id)_attributedString
{
  v2 = [(NSDateFormatter *)self->_formatter stringFromDate:self->_date];
  v3 = v2;
  v4 = &stru_284EDE7A8;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5];

  return v6;
}

- (void)_updateLabelText
{
  v3 = [(NTKVivaldiTimeLabel *)self _attributedString];
  [(CLKUIColoringLabel *)self->_label setAttributedText:v3];
  [(NTKVivaldiTimeLabel *)self setNeedsLayout];
}

- (void)updateColorsForComplicationsEditingFraction:(double)a3 withColorPalette:(id)a4
{
  if (self->_outline)
  {
    [a4 numeralsOutline];
  }

  else
  {
    [a4 numerals];
  }
  v9 = ;
  v5 = [MEMORY[0x277D75348] blackColor];
  v6 = *MEMORY[0x277D2BF18];
  v7 = CLKInterpolateBetweenColors();

  v8 = CLKInterpolateBetweenColors();
  [(CLKUIColoringLabel *)self->_label setTextColor:v8];
}

@end