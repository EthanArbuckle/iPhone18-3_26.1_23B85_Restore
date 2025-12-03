@interface RCWaveformColorCalculator
- (RCWaveformColorCalculator)initWithDataProvider:(id)provider;
- (id)_color:(id)_color adjustedForDisplayMode:(int64_t)mode traitCollection:(id)collection;
- (id)_dynamicLiveWaveformColorForDisplayMode:(int64_t)mode traitCollection:(id)collection;
- (id)resolvedColorWithLiveWaveform:(BOOL)waveform selected:(BOOL)selected muted:(BOOL)muted trimMode:(BOOL)mode;
- (void)_resolveAndCacheColorsWithTraitCollection:(id)collection;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation RCWaveformColorCalculator

- (RCWaveformColorCalculator)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = RCWaveformColorCalculator;
  v5 = [(RCWaveformColorCalculator *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_new();
    resolvedColors = v5->_resolvedColors;
    v5->_resolvedColors = v6;

    v8 = objc_storeWeak(&v5->_dataProvider, providerCopy);
    traitChangeObservable = [providerCopy traitChangeObservable];
    v10 = objc_opt_self();
    v17 = v10;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [traitChangeObservable registerForTraitChanges:v11 withTarget:v5 action:"_traitCollectionDidChange:previousTraitCollection:"];

    traitEnvironment = [providerCopy traitEnvironment];
    traitCollection = [traitEnvironment traitCollection];
    [(RCWaveformColorCalculator *)v5 _resolveAndCacheColorsWithTraitCollection:traitCollection];
  }

  return v5;
}

- (id)resolvedColorWithLiveWaveform:(BOOL)waveform selected:(BOOL)selected muted:(BOOL)muted trimMode:(BOOL)mode
{
  if (waveform)
  {
    v7 = self->_resolvedLiveWaveformColor;
  }

  else
  {
    v8 = 2;
    if (!muted)
    {
      v8 = 0;
    }

    v9 = v8 | selected;
    v10 = 4;
    if (!mode)
    {
      v10 = 0;
    }

    v11 = v9 | v10;
    if ((v9 | v10) >= [(NSMutableArray *)self->_resolvedColors count])
    {
      v12 = OSLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001B7850(v12);
      }

      v7 = +[UIColor systemFillColor];
    }

    else
    {
      v7 = [(NSMutableArray *)self->_resolvedColors objectAtIndexedSubscript:v11];
    }
  }

  return v7;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  traitCollection = [change traitCollection];
  [(RCWaveformColorCalculator *)self _resolveAndCacheColorsWithTraitCollection:?];
}

- (void)_resolveAndCacheColorsWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(NSMutableArray *)self->_resolvedColors removeAllObjects];
  for (i = 0; i != 8; ++i)
  {
    v6 = [v4 waveformColorForSelected:i & 1 muted:(i >> 1) & 1 trimMode:i > 3];
    WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
    v8 = -[RCWaveformColorCalculator _color:adjustedForDisplayMode:traitCollection:](self, "_color:adjustedForDisplayMode:traitCollection:", v6, [WeakRetained waveformDisplayMode], collectionCopy);

    resolvedColors = self->_resolvedColors;
    v10 = [v8 resolvedColorWithTraitCollection:collectionCopy];
    [(NSMutableArray *)resolvedColors addObject:v10];
  }

  v11 = objc_loadWeakRetained(&self->_dataProvider);
  v12 = -[RCWaveformColorCalculator _dynamicLiveWaveformColorForDisplayMode:traitCollection:](self, "_dynamicLiveWaveformColorForDisplayMode:traitCollection:", [v11 waveformDisplayMode], collectionCopy);

  v13 = [v12 resolvedColorWithTraitCollection:collectionCopy];
  resolvedLiveWaveformColor = self->_resolvedLiveWaveformColor;
  self->_resolvedLiveWaveformColor = v13;
}

- (id)_color:(id)_color adjustedForDisplayMode:(int64_t)mode traitCollection:(id)collection
{
  _colorCopy = _color;
  collectionCopy = collection;
  v9 = _colorCopy;
  v10 = v9;
  if (!mode)
  {
    if ([collectionCopy isUserInterfaceStyleDark])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v11 = ;
    if (v9)
    {
      v12 = [v9 colorWithAlphaComponent:0.8];

      v10 = [UIColor color:v11 byAddingColor:v12];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_dynamicLiveWaveformColorForDisplayMode:(int64_t)mode traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  waveformRecordingColor = [v7 waveformRecordingColor];
  v9 = [(RCWaveformColorCalculator *)self _color:waveformRecordingColor adjustedForDisplayMode:mode traitCollection:collectionCopy];

  return v9;
}

@end