@interface NTKVivaldiTimeLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKVivaldiTimeLabel)initWithTimeComponent:(unint64_t)component color:(id)color font:(id)font fontSize:(double)size outline:(BOOL)outline;
- (id)_attributedString;
- (void)_updateLabelText;
- (void)_updateLocale;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDate:(id)date;
- (void)updateColorsForComplicationsEditingFraction:(double)fraction withColorPalette:(id)palette;
@end

@implementation NTKVivaldiTimeLabel

- (NTKVivaldiTimeLabel)initWithTimeComponent:(unint64_t)component color:(id)color font:(id)font fontSize:(double)size outline:(BOOL)outline
{
  colorCopy = color;
  fontCopy = font;
  v27.receiver = self;
  v27.super_class = NTKVivaldiTimeLabel;
  v15 = [(NTKVivaldiTimeLabel *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_outline = outline;
    v15->_timeComponent = component;
    objc_storeStrong(&v15->_color, color);
    v16->_fontSize = size;
    v17 = [fontCopy fontWithSize:size];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__updateLocale name:*MEMORY[0x277CBE620] object:0];

    [(NTKVivaldiTimeLabel *)v16 _updateLocale];
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  MEMORY[0x2821F9670](self->_label, sel_sizeThatFits_);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);

  [(NTKVivaldiTimeLabel *)self _updateLabelText];
}

- (void)_updateLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
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
  _attributedString = [(NTKVivaldiTimeLabel *)self _attributedString];
  [(CLKUIColoringLabel *)self->_label setAttributedText:_attributedString];
  [(NTKVivaldiTimeLabel *)self setNeedsLayout];
}

- (void)updateColorsForComplicationsEditingFraction:(double)fraction withColorPalette:(id)palette
{
  if (self->_outline)
  {
    [palette numeralsOutline];
  }

  else
  {
    [palette numerals];
  }
  v9 = ;
  blackColor = [MEMORY[0x277D75348] blackColor];
  v6 = *MEMORY[0x277D2BF18];
  v7 = CLKInterpolateBetweenColors();

  v8 = CLKInterpolateBetweenColors();
  [(CLKUIColoringLabel *)self->_label setTextColor:v8];
}

@end