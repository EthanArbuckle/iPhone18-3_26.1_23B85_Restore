@interface MapsDebugSliderTableRow
- (MapsDebugSliderTableRow)init;
- (id)_createSliderForIdiom:(int64_t)a3;
- (int64_t)cellStyle;
- (void)_sliderDidChangeValue:(id)a3;
- (void)_updateSecondaryText:(float)a3;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)invalidate;
- (void)setMaximum:(float)a3;
- (void)setMinimum:(float)a3;
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

- (void)_updateSecondaryText:(float)a3
{
  v5 = [(MapsDebugSliderTableRow *)self subtitleHandler];

  if (v5)
  {
    v6 = [(MapsDebugTableRow *)self currentCell];
    v15 = [v6 contentConfiguration];

    v7 = [(MapsDebugSliderTableRow *)self subtitleHandler];
    v8 = v7[2](a3);
    [v15 setSecondaryText:v8];
  }

  else
  {
    v9 = [(MapsDebugSliderTableRow *)self subtitleFormatString];

    if (!v9)
    {
      return;
    }

    v10 = [(MapsDebugTableRow *)self currentCell];
    v15 = [v10 contentConfiguration];

    v7 = [(MapsDebugSliderTableRow *)self subtitleFormatString];
    *&v11 = a3;
    v8 = [NSNumber numberWithFloat:v11];
    v12 = [v8 stringValue];
    v13 = [v7 stringByReplacingOccurrencesOfString:@"%f" withString:v12];
    [v15 setSecondaryText:v13];
  }

  v14 = [(MapsDebugTableRow *)self currentCell];
  [v14 setContentConfiguration:v15];
}

- (void)_sliderDidChangeValue:(id)a3
{
  [a3 value];
  v5 = v4;
  v6 = [(MapsDebugSliderTableRow *)self validate];

  if (v6)
  {
    v7 = [(MapsDebugSliderTableRow *)self validate];
    v5 = v7[2](v5);
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

- (void)setMaximum:(float)a3
{
  if (self->_maximum != a3)
  {
    self->_maximum = a3;
    v6 = [(MapsDebugTableRow *)self currentCell];
    v4 = [v6 accessoryView];
    *&v5 = a3;
    [v4 setMaximumValue:v5];
  }
}

- (void)setMinimum:(float)a3
{
  if (self->_minimum != a3)
  {
    self->_minimum = a3;
    v6 = [(MapsDebugTableRow *)self currentCell];
    v4 = [v6 accessoryView];
    *&v5 = a3;
    [v4 setMinimumValue:v5];
  }
}

- (void)configureCollectionViewCell:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MapsDebugSliderTableRow;
  [(MapsDebugTableRow *)&v10 configureCollectionViewCell:v4];
  v5 = v4;
  v6 = [v5 traitCollection];
  v7 = -[MapsDebugSliderTableRow _createSliderForIdiom:](self, "_createSliderForIdiom:", [v6 userInterfaceIdiom]);

  [v7 value];
  [(MapsDebugSliderTableRow *)self _updateSecondaryText:?];
  v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v7];
  [v8 setMaintainsFixedSize:1];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v5 setTrailingAccessoryConfigurations:v9];
}

- (void)configureCell:(id)a3
{
  v7.receiver = self;
  v7.super_class = MapsDebugSliderTableRow;
  v4 = a3;
  [(MapsDebugTableRow *)&v7 configureCell:v4];
  v5 = [v4 traitCollection];
  v6 = -[MapsDebugSliderTableRow _createSliderForIdiom:](self, "_createSliderForIdiom:", [v5 userInterfaceIdiom]);

  [v6 value];
  [(MapsDebugSliderTableRow *)self _updateSecondaryText:?];
  [v4 setAccessoryView:v6];
}

- (id)_createSliderForIdiom:(int64_t)a3
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
  v3 = [(MapsDebugSliderTableRow *)self subtitleFormatString];
  v4 = [v3 length];

  if (v4)
  {
    return 3;
  }

  v6.receiver = self;
  v6.super_class = MapsDebugSliderTableRow;
  return [(MapsDebugTableRow *)&v6 cellStyle];
}

@end