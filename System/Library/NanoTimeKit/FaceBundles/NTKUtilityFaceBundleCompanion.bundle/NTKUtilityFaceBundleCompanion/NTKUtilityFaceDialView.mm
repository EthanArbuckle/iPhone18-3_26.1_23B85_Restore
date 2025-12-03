@interface NTKUtilityFaceDialView
- (NTKUtilityFaceDialView)initWithDevice:(id)device;
- (void)layoutSubviews;
- (void)setConfig:(id)config;
- (void)setStyle:(unint64_t)style;
- (void)transitionFromConfig:(id)config toConfig:(id)toConfig withFraction:(double)fraction;
@end

@implementation NTKUtilityFaceDialView

- (NTKUtilityFaceDialView)initWithDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy screenBounds];
  v20.receiver = self;
  v20.super_class = NTKUtilityFaceDialView;
  v6 = [(NTKUtilityFaceDialView *)&v20 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = [UIImageView alloc];
    [(CLKDevice *)v7->_device screenBounds];
    v9 = [v8 initWithFrame:?];
    numberImageView = v7->_numberImageView;
    v7->_numberImageView = v9;

    [(UIImageView *)v7->_numberImageView setContentMode:4];
    v11 = [UIImageView alloc];
    [(CLKDevice *)v7->_device screenBounds];
    v12 = [v11 initWithFrame:?];
    transitionNumberImageView = v7->_transitionNumberImageView;
    v7->_transitionNumberImageView = v12;

    [(UIImageView *)v7->_transitionNumberImageView setContentMode:4];
    v14 = [UIImageView alloc];
    [(CLKDevice *)v7->_device screenBounds];
    v15 = [v14 initWithFrame:?];
    dialImageView = v7->_dialImageView;
    v7->_dialImageView = v15;

    [(UIImageView *)v7->_dialImageView setContentMode:4];
    v17 = [NTKUtilityFaceDialFactory dialImageForDevice:deviceCopy];
    v18 = [v17 imageWithRenderingMode:2];
    [(UIImageView *)v7->_dialImageView setImage:v18];

    [(NTKUtilityFaceDialView *)v7 addSubview:v7->_numberImageView];
    [(NTKUtilityFaceDialView *)v7 addSubview:v7->_transitionNumberImageView];
    [(NTKUtilityFaceDialView *)v7 addSubview:v7->_dialImageView];
  }

  return v7;
}

- (void)layoutSubviews
{
  numberImageView = self->_numberImageView;
  [(CLKDevice *)self->_device screenBounds];
  [(UIImageView *)numberImageView setFrame:?];
  transitionNumberImageView = self->_transitionNumberImageView;
  [(CLKDevice *)self->_device screenBounds];
  [(UIImageView *)transitionNumberImageView setFrame:?];
  dialImageView = self->_dialImageView;
  [(CLKDevice *)self->_device screenBounds];

  [(UIImageView *)dialImageView setFrame:?];
}

- (void)setConfig:(id)config
{
  self->_transitionFrom = config;
  numberImageView = self->_numberImageView;
  device = self->_device;
  v6 = [NTKUtilityFaceDialFactory numbersImageForStyle:"numbersImageForStyle:typeface:device:" typeface:? device:?];
  [(UIImageView *)numberImageView setImage:v6];

  [(UIImageView *)self->_numberImageView setContentMode:4];
  [(UIImageView *)self->_numberImageView setAlpha:1.0];
  transitionNumberImageView = self->_transitionNumberImageView;

  [(UIImageView *)transitionNumberImageView setAlpha:0.0];
}

- (void)setStyle:(unint64_t)style
{
  self->_transitionFrom.style = style;
  language = self->_transitionFrom.language;
  [(NTKUtilityFaceDialView *)self setConfig:?];
}

- (void)transitionFromConfig:(id)config toConfig:(id)toConfig withFraction:(double)fraction
{
  var1 = toConfig.var1;
  var0 = toConfig.var0;
  if (fraction == 1.0)
  {

    [(NTKUtilityFaceDialView *)self setConfig:toConfig.var0, toConfig.var1];
  }

  else
  {
    if (self->_transitionFrom.style != config.var0 || self->_transitionFrom.language != config.var1)
    {
      self->_transitionFrom = config;
      numberImageView = self->_numberImageView;
      device = self->_device;
      v12 = [NTKUtilityFaceDialFactory numbersImageForStyle:"numbersImageForStyle:typeface:device:" typeface:? device:?];
      [(UIImageView *)numberImageView setImage:v12];

      [(UIImageView *)self->_numberImageView setContentMode:4];
    }

    if (self->_transitionTo.style != var0 || self->_transitionTo.language != var1)
    {
      self->_transitionTo.style = var0;
      self->_transitionTo.language = var1;
      transitionNumberImageView = self->_transitionNumberImageView;
      v15 = [NTKUtilityFaceDialFactory numbersImageForStyle:var0 typeface:var1 device:self->_device];
      [(UIImageView *)transitionNumberImageView setImage:v15];

      [(UIImageView *)self->_transitionNumberImageView setContentMode:4];
    }

    [(UIImageView *)self->_numberImageView setAlpha:1.0 - fraction];
    v16 = self->_transitionNumberImageView;

    [(UIImageView *)v16 setAlpha:fraction];
  }
}

@end