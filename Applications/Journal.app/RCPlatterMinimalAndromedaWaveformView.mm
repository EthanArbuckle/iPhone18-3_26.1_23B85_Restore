@interface RCPlatterMinimalAndromedaWaveformView
- (void)_appendSlices:(unint64_t)slices;
- (void)updateSlicesAndFrames;
@end

@implementation RCPlatterMinimalAndromedaWaveformView

- (void)updateSlicesAndFrames
{
  numberOfSlices = [(RCPlatterMinimalWaveformView *)self numberOfSlices];
  activeSliceQueue = [(RCPlatterWaveformView *)self activeSliceQueue];
  v5 = [activeSliceQueue count];

  if (numberOfSlices == v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000E9A7C;
    v6[3] = &unk_100A559E0;
    v6[4] = self;
    [(RCPlatterWaveformView *)self enumerateAllSlices:v6];
  }

  else
  {

    [(RCPlatterMinimalAndromedaWaveformView *)self _appendSlices:numberOfSlices - v5];
  }
}

- (void)_appendSlices:(unint64_t)slices
{
  if (slices)
  {
    slicesCopy = slices;
    do
    {
      [(RCPlatterWaveformView *)self appendSliceWithType:0];
      --slicesCopy;
    }

    while (slicesCopy);
  }

  _genericAmplitudes = [(RCPlatterMinimalAndromedaWaveformView *)self _genericAmplitudes];
  activeSliceQueue = [(RCPlatterWaveformView *)self activeSliceQueue];
  v7 = [activeSliceQueue count];
  v8 = [_genericAmplitudes count];

  if (v7 == v8)
  {
    activeSliceQueue2 = [(RCPlatterWaveformView *)self activeSliceQueue];
    v10 = [activeSliceQueue2 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        activeSliceQueue3 = [(RCPlatterWaveformView *)self activeSliceQueue];
        v13 = [activeSliceQueue3 objectAtIndexedSubscript:v11];

        v14 = [_genericAmplitudes objectAtIndexedSubscript:v11];
        [v14 floatValue];
        [v13 setAmplitude:v15];
        [v13 setAmplitudeNeedsUpdate:0];

        ++v11;
        activeSliceQueue4 = [(RCPlatterWaveformView *)self activeSliceQueue];
        v17 = [activeSliceQueue4 count];
      }

      while (v11 < v17);
    }
  }

  else
  {
    v18 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1008C1CF8(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }
}

@end