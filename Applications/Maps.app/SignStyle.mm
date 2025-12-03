@interface SignStyle
+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultArrowMetricsForStyle:(SEL)style;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultJunctionArrowMetricsForStyle:(SEL)style;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)_scaledMetricsForStyle:(SEL)style baseMetrics:(unsigned int)metrics;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size contentScale:(CGSize)scale;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size forView:(CGSize)view;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size contentScale:(CGSize)scale;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size forView:(CGSize)view;
+ (id)sharedSignStyle;
- (UIColor)foregroundColor;
@end

@implementation SignStyle

+ ($84D9B426F26CE1F36C5948DD9DEACC84)_scaledMetricsForStyle:(SEL)style baseMetrics:(unsigned int)metrics
{
  if (metrics == 1)
  {
    memcpy(v5, a5, sizeof(v5));
    return MKGuidanceManeuverArrowMetricsApplyScale();
  }

  else if (!metrics)
  {

    return memcpy(retstr, a5, sizeof($84D9B426F26CE1F36C5948DD9DEACC84));
  }

  return result;
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultJunctionArrowMetricsForStyle:(SEL)style
{
  v4 = *&a4;
  MKDefaultJunctionManeuverMetrics();
  return [a2 _scaledMetricsForStyle:v4 baseMetrics:&v7];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultArrowMetricsForStyle:(SEL)style
{
  v4 = *&a4;
  MKDefaultGuidanceManeuverMetrics();
  return [a2 _scaledMetricsForStyle:v4 baseMetrics:&v7];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size contentScale:(CGSize)scale
{
  height = scale.height;
  width = scale.width;
  v9 = *&size;
  [a2 _defaultArrowMetricsForStyle:?];
  return [a2 _metricsForStyle:v9 scaledToMatchReferenceSize:&v12 contentScale:width baseMetrics:{height, a6}];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size contentScale:(CGSize)scale
{
  height = scale.height;
  width = scale.width;
  v9 = *&size;
  [a2 _defaultJunctionArrowMetricsForStyle:?];
  return [a2 _metricsForStyle:v9 scaledToMatchReferenceSize:&v12 contentScale:width baseMetrics:{height, a6}];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size forView:(CGSize)view
{
  height = view.height;
  width = view.width;
  v8 = *&size;
  v17 = a6;
  window = [v17 window];
  screen = [window screen];
  if (screen)
  {
    window2 = [v17 window];
    screen2 = [window2 screen];
    [screen2 scale];
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  [a2 junctionArrowMetricsForStyle:v8 scaledToMatchReferenceSize:width contentScale:{height, v15}];

  return result;
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)style scaledToMatchReferenceSize:(unsigned int)size forView:(CGSize)view
{
  height = view.height;
  width = view.width;
  v8 = *&size;
  v17 = a6;
  window = [v17 window];
  screen = [window screen];
  if (screen)
  {
    window2 = [v17 window];
    screen2 = [window2 screen];
    [screen2 scale];
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  [a2 arrowMetricsForStyle:v8 scaledToMatchReferenceSize:width contentScale:{height, v15}];

  return result;
}

+ (id)sharedSignStyle
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A68C00;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195E330 != -1)
  {
    dispatch_once(&qword_10195E330, block);
  }

  v2 = qword_10195E328;

  return v2;
}

- (UIColor)foregroundColor
{
  if ([(SignStyle *)self isDimmed])
  {
    [(SignStyle *)self dimmedForegroundColor];
  }

  else
  {
    [UIColor colorWithWhite:0.200000003 alpha:1.0];
  }
  v3 = ;

  return v3;
}

@end