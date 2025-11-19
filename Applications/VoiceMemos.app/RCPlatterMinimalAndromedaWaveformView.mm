@interface RCPlatterMinimalAndromedaWaveformView
- (void)_appendSlices:(unint64_t)a3;
- (void)updateSlicesAndFrames;
@end

@implementation RCPlatterMinimalAndromedaWaveformView

- (void)updateSlicesAndFrames
{
  v3 = [(RCPlatterMinimalWaveformView *)self numberOfSlices];
  v4 = [(RCPlatterWaveformView *)self activeSliceQueue];
  v5 = [v4 count];

  if (v3 == v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007CE18;
    v6[3] = &unk_10028B760;
    v6[4] = self;
    [(RCPlatterWaveformView *)self enumerateAllSlices:v6];
  }

  else
  {

    [(RCPlatterMinimalAndromedaWaveformView *)self _appendSlices:v3 - v5];
  }
}

- (void)_appendSlices:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    do
    {
      [(RCPlatterWaveformView *)self appendSliceWithType:0];
      --v4;
    }

    while (v4);
  }

  v5 = [(RCPlatterMinimalAndromedaWaveformView *)self _genericAmplitudes];
  v6 = [(RCPlatterWaveformView *)self activeSliceQueue];
  v7 = [v6 count];
  v8 = [v5 count];

  if (v7 == v8)
  {
    v9 = [(RCPlatterWaveformView *)self activeSliceQueue];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [(RCPlatterWaveformView *)self activeSliceQueue];
        v13 = [v12 objectAtIndexedSubscript:v11];

        v14 = [v5 objectAtIndexedSubscript:v11];
        [v14 floatValue];
        [v13 setAmplitude:v15];
        [v13 setAmplitudeNeedsUpdate:0];

        ++v11;
        v16 = [(RCPlatterWaveformView *)self activeSliceQueue];
        v17 = [v16 count];
      }

      while (v11 < v17);
    }
  }

  else
  {
    v18 = OSLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8F24(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }
}

@end