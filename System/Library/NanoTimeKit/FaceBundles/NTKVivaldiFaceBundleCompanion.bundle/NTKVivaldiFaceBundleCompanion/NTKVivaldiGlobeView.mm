@interface NTKVivaldiGlobeView
- (NTKVivaldiGlobeView)initWithDevice:(id)device;
- (id)_displayDate;
- (id)_globeImageForSecond:(unint64_t)second;
- (unint64_t)_secondsFromDate:(id)date;
- (void)_displayCurrentGlobeImage:(BOOL)image;
- (void)_loadDefaultGlobe;
- (void)_startGlobeTimer;
- (void)_stopGlobeTimer;
- (void)_updateGlobeImage;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
- (void)setDate:(id)date;
- (void)setTritiumFraction:(double)fraction;
- (void)updateColorsForComplicationsEditingFraction:(double)fraction withColorPalette:(id)palette;
@end

@implementation NTKVivaldiGlobeView

- (NTKVivaldiGlobeView)initWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = NTKVivaldiGlobeView;
  v6 = [(NTKVivaldiGlobeView *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_imageLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_queue_create("com.apple.NanoTimeKit.NTKVivaldiGlobeImage", 0);
    imageQueue = v7->_imageQueue;
    v7->_imageQueue = v8;

    v7->_currentGlobeSecond = -1;
    v7->_nextGlobeSecond = -1;
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    globeView = v7->_globeView;
    v7->_globeView = v10;

    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    globeOutgoingView = v7->_globeOutgoingView;
    v7->_globeOutgoingView = v12;

    [(UIImageView *)v7->_globeOutgoingView setAlpha:0.0];
    v14 = objc_alloc_init(MEMORY[0x277D755E8]);
    globeTritiumView = v7->_globeTritiumView;
    v7->_globeTritiumView = v14;

    [(UIImageView *)v7->_globeTritiumView setAlpha:0.0];
    [(NTKVivaldiGlobeView *)v7 addSubview:v7->_globeView];
    [(NTKVivaldiGlobeView *)v7 addSubview:v7->_globeOutgoingView];
    [(NTKVivaldiGlobeView *)v7 addSubview:v7->_globeTritiumView];
    [(NTKVivaldiGlobeView *)v7 _loadDefaultGlobe];
  }

  return v7;
}

- (void)layoutSubviews
{
  v3 = sub_23C0AA3A4(self, self->_device);
  v5 = v4;
  [(NTKVivaldiGlobeView *)self bounds];
  v7 = v5 + (v6 - v3) * 0.5;
  v9 = v5 + (v8 - v3) * 0.5;
  v10 = v3 + v5 * -2.0;
  [(UIImageView *)self->_globeView setFrame:v7, v9, v10, v10];
  [(UIImageView *)self->_globeOutgoingView setFrame:v7, v9, v10, v10];
  globeTritiumView = self->_globeTritiumView;

  [(UIImageView *)globeTritiumView setFrame:v7, v9, v10, v10];
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (animating)
    {
      MEMORY[0x2821F9670](self, sel__startGlobeTimer);
    }

    else
    {
      MEMORY[0x2821F9670](self, sel__stopGlobeTimer);
    }
  }
}

- (void)_startGlobeTimer
{
  if (!self->_globeTimerToken)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23C0A937C;
    v6[3] = &unk_278BAECB0;
    objc_copyWeak(&v7, &location);
    v4 = [mEMORY[0x277CBB700] startUpdatesWithUpdateFrequency:1 withHandler:v6 identificationLog:&unk_284EDE428];
    globeTimerToken = self->_globeTimerToken;
    self->_globeTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_stopGlobeTimer
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_globeTimerToken)
  {
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    [mEMORY[0x277CBB700] stopUpdatesForToken:self->_globeTimerToken];

    globeTimerToken = self->_globeTimerToken;
    self->_globeTimerToken = 0;
  }
}

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);

  [(NTKVivaldiGlobeView *)self _updateGlobeImage];
}

- (id)_displayDate
{
  date = self->_date;
  if (date)
  {
    faceDate = date;
  }

  else
  {
    faceDate = [MEMORY[0x277D2BFD8] faceDate];
  }

  return faceDate;
}

- (unint64_t)_secondsFromDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:128 fromDate:dateCopy];

  second = [v6 second];
  return second;
}

- (void)_loadDefaultGlobe
{
  os_unfair_lock_lock(&self->_imageLock);
  if (self->_globeTritiumImage || self->_loadingTritiumImage)
  {

    os_unfair_lock_unlock(&self->_imageLock);
  }

  else
  {
    self->_loadingTritiumImage = 1;
    os_unfair_lock_unlock(&self->_imageLock);
    objc_initWeak(&location, self);
    imageQueue = self->_imageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C0A96F8;
    block[3] = &unk_278BAED20;
    objc_copyWeak(&v5, &location);
    block[4] = self;
    dispatch_async(imageQueue, block);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_updateGlobeImage
{
  _displayDate = [(NTKVivaldiGlobeView *)self _displayDate];
  v4 = [(NTKVivaldiGlobeView *)self _secondsFromDate:_displayDate];

  v5 = (v4 + 1) % 0x3C;
  if (v4)
  {
    v6 = v4 - 1;
  }

  else
  {
    v6 = 59;
  }

  os_unfair_lock_lock(&self->_imageLock);
  currentGlobeSecond = self->_currentGlobeSecond;
  nextGlobeSecond = self->_nextGlobeSecond;
  if (currentGlobeSecond == v4 && nextGlobeSecond == v5)
  {

    os_unfair_lock_unlock(&self->_imageLock);
  }

  else
  {
    v18 = currentGlobeSecond == v6;
    v10 = 0x27E1EE000;
    v11 = self->_currentGlobeSecond;
    if (nextGlobeSecond == v4)
    {
      self->_currentGlobeSecond = v4;
      objc_storeStrong(&self->_currentGlobeSecondImage, self->_nextGlobeSecondImage);
      self->_nextGlobeSecond = -1;
      nextGlobeSecondImage = self->_nextGlobeSecondImage;
      self->_nextGlobeSecondImage = 0;
      v10 = 0x27E1EE000uLL;

      v11 = self->_currentGlobeSecond;
    }

    if (v11 != v4)
    {
      self->_currentGlobeSecond = -1;
      currentGlobeSecondImage = self->_currentGlobeSecondImage;
      self->_currentGlobeSecondImage = 0;
    }

    if (self->_nextGlobeSecond != v5)
    {
      self->_nextGlobeSecond = -1;
      v14 = *(v10 + 1148);
      v15 = *(&self->super.super.super.isa + v14);
      *(&self->super.super.super.isa + v14) = 0;
    }

    if (!self->_loadingImages && (self->_nextGlobeSecond == -1 || self->_currentGlobeSecond == -1))
    {
      v16 = 1;
      self->_loadingImages = 1;
    }

    else
    {
      v16 = 0;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    if (nextGlobeSecond == v4)
    {
      [(NTKVivaldiGlobeView *)self _displayCurrentGlobeImage:currentGlobeSecond == v6];
    }

    if (v16)
    {
      objc_initWeak(&location, self);
      imageQueue = self->_imageQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23C0A9AE4;
      block[3] = &unk_278BAED70;
      objc_copyWeak(v20, &location);
      v20[1] = v4;
      v20[2] = ((v4 + 1) % 0x3C);
      block[4] = self;
      v21 = v18;
      dispatch_async(imageQueue, block);
      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_displayCurrentGlobeImage:(BOOL)image
{
  imageCopy = image;
  os_unfair_lock_lock(&self->_imageLock);
  image = [(UIImageView *)self->_globeView image];
  if (!image || self->_tritiumFraction > 0.0)
  {
    imageCopy = 0;
  }

  v6 = self->_currentGlobeSecondImage;
  os_unfair_lock_unlock(&self->_imageLock);
  if (imageCopy)
  {
    [(UIImageView *)self->_globeOutgoingView setImage:image];
    [(UIImageView *)self->_globeView setImage:v6];
    [(UIImageView *)self->_globeOutgoingView setAlpha:1.0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_23C0A9F98;
    v8[3] = &unk_278BAECF8;
    v8[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_23C0A9FB0;
    v7[3] = &unk_278BAED98;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7 completion:0.2];
  }

  else
  {
    [(UIImageView *)self->_globeView setImage:v6];
  }
}

- (void)updateColorsForComplicationsEditingFraction:(double)fraction withColorPalette:(id)palette
{
  v5 = MEMORY[0x277D75348];
  paletteCopy = palette;
  blackColor = [v5 blackColor];
  background = [paletteCopy background];
  v9 = *MEMORY[0x277D2BF18];
  v21 = CLKInterpolateBetweenColors();

  background2 = [paletteCopy background];
  v11 = CLKInterpolateBetweenColors();

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  globeGrid = [paletteCopy globeGrid];
  v14 = CLKInterpolateBetweenColors();

  globeGrid2 = [paletteCopy globeGrid];
  v16 = CLKInterpolateBetweenColors();

  [(UIImageView *)self->_globeView setTintColor:v16];
  [(UIImageView *)self->_globeOutgoingView setTintColor:v16];
  [(UIImageView *)self->_globeView setBackgroundColor:v11];
  [(UIImageView *)self->_globeOutgoingView setBackgroundColor:v11];
  globeTritiumView = self->_globeTritiumView;
  globeGrid_tritium = [paletteCopy globeGrid_tritium];
  [(UIImageView *)globeTritiumView setTintColor:globeGrid_tritium];

  v19 = self->_globeTritiumView;
  background3 = [paletteCopy background];

  [(UIImageView *)v19 setBackgroundColor:background3];
}

- (void)setTritiumFraction:(double)fraction
{
  self->_tritiumFraction = fraction;
  [(UIImageView *)self->_globeView setAlpha:1.0 - fraction];
  [(UIImageView *)self->_globeOutgoingView setAlpha:0.0];
  globeTritiumView = self->_globeTritiumView;

  [(UIImageView *)globeTritiumView setAlpha:fraction];
}

- (id)_globeImageForSecond:(unint64_t)second
{
  v3 = [(NTKVivaldiGlobeView *)self _assetNameForSecond:second];
  v4 = [(NTKFaceBundle *)NTKVivaldiFaceBundle imageWithName:v3];

  return v4;
}

@end