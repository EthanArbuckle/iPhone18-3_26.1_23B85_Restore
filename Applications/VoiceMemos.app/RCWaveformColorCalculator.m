@interface RCWaveformColorCalculator
- (RCWaveformColorCalculator)initWithDataProvider:(id)a3;
- (id)_color:(id)a3 adjustedForDisplayMode:(int64_t)a4 traitCollection:(id)a5;
- (id)_dynamicLiveWaveformColorForDisplayMode:(int64_t)a3 traitCollection:(id)a4;
- (id)resolvedColorWithLiveWaveform:(BOOL)a3 selected:(BOOL)a4 muted:(BOOL)a5 trimMode:(BOOL)a6;
- (void)_resolveAndCacheColorsWithTraitCollection:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation RCWaveformColorCalculator

- (RCWaveformColorCalculator)initWithDataProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RCWaveformColorCalculator;
  v5 = [(RCWaveformColorCalculator *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_new();
    resolvedColors = v5->_resolvedColors;
    v5->_resolvedColors = v6;

    v8 = objc_storeWeak(&v5->_dataProvider, v4);
    v9 = [v4 traitChangeObservable];
    v10 = objc_opt_self();
    v17 = v10;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [v9 registerForTraitChanges:v11 withTarget:v5 action:"_traitCollectionDidChange:previousTraitCollection:"];

    v13 = [v4 traitEnvironment];
    v14 = [v13 traitCollection];
    [(RCWaveformColorCalculator *)v5 _resolveAndCacheColorsWithTraitCollection:v14];
  }

  return v5;
}

- (id)resolvedColorWithLiveWaveform:(BOOL)a3 selected:(BOOL)a4 muted:(BOOL)a5 trimMode:(BOOL)a6
{
  if (a3)
  {
    v7 = self->_resolvedLiveWaveformColor;
  }

  else
  {
    v8 = 2;
    if (!a5)
    {
      v8 = 0;
    }

    v9 = v8 | a4;
    v10 = 4;
    if (!a6)
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

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a3 traitCollection];
  [(RCWaveformColorCalculator *)self _resolveAndCacheColorsWithTraitCollection:?];
}

- (void)_resolveAndCacheColorsWithTraitCollection:(id)a3
{
  v15 = a3;
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(NSMutableArray *)self->_resolvedColors removeAllObjects];
  for (i = 0; i != 8; ++i)
  {
    v6 = [v4 waveformColorForSelected:i & 1 muted:(i >> 1) & 1 trimMode:i > 3];
    WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
    v8 = -[RCWaveformColorCalculator _color:adjustedForDisplayMode:traitCollection:](self, "_color:adjustedForDisplayMode:traitCollection:", v6, [WeakRetained waveformDisplayMode], v15);

    resolvedColors = self->_resolvedColors;
    v10 = [v8 resolvedColorWithTraitCollection:v15];
    [(NSMutableArray *)resolvedColors addObject:v10];
  }

  v11 = objc_loadWeakRetained(&self->_dataProvider);
  v12 = -[RCWaveformColorCalculator _dynamicLiveWaveformColorForDisplayMode:traitCollection:](self, "_dynamicLiveWaveformColorForDisplayMode:traitCollection:", [v11 waveformDisplayMode], v15);

  v13 = [v12 resolvedColorWithTraitCollection:v15];
  resolvedLiveWaveformColor = self->_resolvedLiveWaveformColor;
  self->_resolvedLiveWaveformColor = v13;
}

- (id)_color:(id)a3 adjustedForDisplayMode:(int64_t)a4 traitCollection:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = v9;
  if (!a4)
  {
    if ([v8 isUserInterfaceStyleDark])
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

- (id)_dynamicLiveWaveformColorForDisplayMode:(int64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = [v7 waveformRecordingColor];
  v9 = [(RCWaveformColorCalculator *)self _color:v8 adjustedForDisplayMode:a3 traitCollection:v6];

  return v9;
}

@end