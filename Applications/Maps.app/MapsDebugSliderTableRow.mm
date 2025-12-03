@interface MapsDebugSliderTableRow
- (MapsDebugSliderTableRow)init;
- (id)_createSliderForIdiom:(int64_t)idiom;
- (int64_t)cellStyle;
- (void)_sliderDidChangeValue:(id)value;
- (void)_updateSecondaryText:(float)text;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)invalidate;
- (void)setMaximum:(float)maximum;
- (void)setMinimum:(float)minimum;
@end

@implementation MapsDebugSliderTableRow

- (void)invalidate
{
  [(MapsDebugSliderTableRow *)self setGet:0];
  [(MapsDebugSliderTableRow *)self setSet:0];
  v3.receiver = self;
  v3.super_class = MapsDebugSliderTableRow;
  [(MapsDebugTableRow *)&v3 invalidate];
}

- (MapsDebugSliderTableRow)init
{
  v5.receiver = self;
  v5.super_class = MapsDebugSliderTableRow;
  v2 = [(MapsDebugTableRow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MapsDebugSliderTableRow *)v2 setSubtitleFormatString:@"%f"];
    v3->_minimum = 0.0;
    v3->_maximum = 100.0;
  }

  return v3;
}

- (void)_updateSecondaryText:(float)text
{
  subtitleHandler = [(MapsDebugSliderTableRow *)self subtitleHandler];

  if (subtitleHandler)
  {
    currentCell = [(MapsDebugTableRow *)self currentCell];
    contentConfiguration = [currentCell contentConfiguration];

    subtitleHandler2 = [(MapsDebugSliderTableRow *)self subtitleHandler];
    v8 = subtitleHandler2[2](text);
    [contentConfiguration setSecondaryText:v8];
  }

  else
  {
    subtitleFormatString = [(MapsDebugSliderTableRow *)self subtitleFormatString];

    if (!subtitleFormatString)
    {
      return;
    }

    currentCell2 = [(MapsDebugTableRow *)self currentCell];
    contentConfiguration = [currentCell2 contentConfiguration];

    subtitleHandler2 = [(MapsDebugSliderTableRow *)self subtitleFormatString];
    *&v11 = text;
    v8 = [NSNumber numberWithFloat:v11];
    stringValue = [v8 stringValue];
    v13 = [subtitleHandler2 stringByReplacingOccurrencesOfString:@"%f" withString:stringValue];
    [contentConfiguration setSecondaryText:v13];
  }

  currentCell3 = [(MapsDebugTableRow *)self currentCell];
  [currentCell3 setContentConfiguration:contentConfiguration];
}

- (void)_sliderDidChangeValue:(id)value
{
  [value value];
  v5 = v4;
  validate = [(MapsDebugSliderTableRow *)self validate];

  if (validate)
  {
    validate2 = [(MapsDebugSliderTableRow *)self validate];
    v5 = validate2[2](v5);
  }

  v8 = [(MapsDebugSliderTableRow *)self set];

  if (v8)
  {
    v10 = [(MapsDebugSliderTableRow *)self set];
    v10[2](v5);
  }

  *&v9 = v5;

  [(MapsDebugSliderTableRow *)self _updateSecondaryText:v9];
}

- (void)setMaximum:(float)maximum
{
  if (self->_maximum != maximum)
  {
    self->_maximum = maximum;
    currentCell = [(MapsDebugTableRow *)self currentCell];
    accessoryView = [currentCell accessoryView];
    *&v5 = maximum;
    [accessoryView setMaximumValue:v5];
  }
}

- (void)setMinimum:(float)minimum
{
  if (self->_minimum != minimum)
  {
    self->_minimum = minimum;
    currentCell = [(MapsDebugTableRow *)self currentCell];
    accessoryView = [currentCell accessoryView];
    *&v5 = minimum;
    [accessoryView setMinimumValue:v5];
  }
}

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = MapsDebugSliderTableRow;
  [(MapsDebugTableRow *)&v10 configureCollectionViewCell:cellCopy];
  v5 = cellCopy;
  traitCollection = [v5 traitCollection];
  v7 = -[MapsDebugSliderTableRow _createSliderForIdiom:](self, "_createSliderForIdiom:", [traitCollection userInterfaceIdiom]);

  [v7 value];
  [(MapsDebugSliderTableRow *)self _updateSecondaryText:?];
  v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v7];
  [v8 setMaintainsFixedSize:1];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v5 setTrailingAccessoryConfigurations:v9];
}

- (void)configureCell:(id)cell
{
  v7.receiver = self;
  v7.super_class = MapsDebugSliderTableRow;
  cellCopy = cell;
  [(MapsDebugTableRow *)&v7 configureCell:cellCopy];
  traitCollection = [cellCopy traitCollection];
  v6 = -[MapsDebugSliderTableRow _createSliderForIdiom:](self, "_createSliderForIdiom:", [traitCollection userInterfaceIdiom]);

  [v6 value];
  [(MapsDebugSliderTableRow *)self _updateSecondaryText:?];
  [cellCopy setAccessoryView:v6];
}

- (id)_createSliderForIdiom:(int64_t)idiom
{
  v4 = [[UISlider alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MapsDebugSliderTableRow *)self minimum];
  [v4 setMinimumValue:?];
  [(MapsDebugSliderTableRow *)self maximum];
  [v4 setMaximumValue:?];
  [v4 addTarget:self action:"_sliderDidChangeValue:" forControlEvents:4096];
  v5 = [(MapsDebugSliderTableRow *)self get];

  if (v5)
  {
    v6 = [(MapsDebugSliderTableRow *)self get];
    v7 = v6[2]();

    [(MapsDebugSliderTableRow *)self maximum];
    if (v7 >= v8)
    {
      [(MapsDebugSliderTableRow *)self maximum];
      v7 = v9;
    }

    [(MapsDebugSliderTableRow *)self minimum];
    if (v7 <= *&v10)
    {
      [(MapsDebugSliderTableRow *)self minimum];
      v7 = *&v10;
    }

    *&v10 = v7;
    [v4 setValue:v10];
  }

  [v4 sizeToFit];
  [v4 frame];
  [v4 setFrame:?];
  [v4 setAccessibilityIdentifier:@"MapsDebugSlider"];

  return v4;
}

- (int64_t)cellStyle
{
  subtitleFormatString = [(MapsDebugSliderTableRow *)self subtitleFormatString];
  v4 = [subtitleFormatString length];

  if (v4)
  {
    return 3;
  }

  v6.receiver = self;
  v6.super_class = MapsDebugSliderTableRow;
  return [(MapsDebugTableRow *)&v6 cellStyle];
}

@end