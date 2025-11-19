@interface RCApplicationWaveformRenderer
- (double)maximumDecibelDisplayRange;
- (double)verticalWaveformPadding;
- (double)waveformHorizontalSpacing;
- (double)waveformWaveWidth;
@end

@implementation RCApplicationWaveformRenderer

- (double)waveformWaveWidth
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([(RCWaveformRenderer *)self displayMode])
  {
    [v3 waveformWaveWidth];
  }

  else
  {
    [v3 overviewWaveformWaveWidth];
  }

  v5 = v4;

  return v5;
}

- (double)waveformHorizontalSpacing
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([(RCWaveformRenderer *)self displayMode])
  {
    [v3 waveformHorizontalSpacing];
  }

  else
  {
    [v3 overviewWaveformHorizontalSpacing];
  }

  v5 = v4;

  return v5;
}

- (double)maximumDecibelDisplayRange
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 maximumDecibelDisplayRange];
  v4 = v3;

  return v4;
}

- (double)verticalWaveformPadding
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 waveformWaveVerticalPadding];
  v5 = v4;
  if (![(RCWaveformRenderer *)self displayMode])
  {
    [v3 overviewWaveformWaveVerticalPadding];
    goto LABEL_5;
  }

  if ([(RCWaveformRenderer *)self isCompactView])
  {
    [v3 compactWaveformWaveVerticalPadding];
LABEL_5:
    v5 = v6;
  }

  return v5;
}

@end