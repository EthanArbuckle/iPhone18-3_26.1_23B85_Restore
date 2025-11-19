@interface SignStyle
+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultArrowMetricsForStyle:(SEL)a3;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultJunctionArrowMetricsForStyle:(SEL)a3;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)_scaledMetricsForStyle:(SEL)a3 baseMetrics:(unsigned int)a4;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 contentScale:(CGSize)a5;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 forView:(CGSize)a5;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 contentScale:(CGSize)a5;
+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 forView:(CGSize)a5;
+ (id)sharedSignStyle;
- (UIColor)foregroundColor;
@end

@implementation SignStyle

+ ($84D9B426F26CE1F36C5948DD9DEACC84)_scaledMetricsForStyle:(SEL)a3 baseMetrics:(unsigned int)a4
{
  if (a4 == 1)
  {
    memcpy(v5, a5, sizeof(v5));
    return MKGuidanceManeuverArrowMetricsApplyScale();
  }

  else if (!a4)
  {

    return memcpy(retstr, a5, sizeof($84D9B426F26CE1F36C5948DD9DEACC84));
  }

  return result;
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultJunctionArrowMetricsForStyle:(SEL)a3
{
  v4 = *&a4;
  MKDefaultJunctionManeuverMetrics();
  return [a2 _scaledMetricsForStyle:v4 baseMetrics:&v7];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)_defaultArrowMetricsForStyle:(SEL)a3
{
  v4 = *&a4;
  MKDefaultGuidanceManeuverMetrics();
  return [a2 _scaledMetricsForStyle:v4 baseMetrics:&v7];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 contentScale:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = *&a4;
  [a2 _defaultArrowMetricsForStyle:?];
  return [a2 _metricsForStyle:v9 scaledToMatchReferenceSize:&v12 contentScale:width baseMetrics:{height, a6}];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 contentScale:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = *&a4;
  [a2 _defaultJunctionArrowMetricsForStyle:?];
  return [a2 _metricsForStyle:v9 scaledToMatchReferenceSize:&v12 contentScale:width baseMetrics:{height, a6}];
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)junctionArrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 forView:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = *&a4;
  v17 = a6;
  v10 = [v17 window];
  v11 = [v10 screen];
  if (v11)
  {
    v12 = [v17 window];
    v13 = [v12 screen];
    [v13 scale];
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  [a2 junctionArrowMetricsForStyle:v8 scaledToMatchReferenceSize:width contentScale:{height, v15}];

  return result;
}

+ ($84D9B426F26CE1F36C5948DD9DEACC84)arrowMetricsForStyle:(SEL)a3 scaledToMatchReferenceSize:(unsigned int)a4 forView:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = *&a4;
  v17 = a6;
  v10 = [v17 window];
  v11 = [v10 screen];
  if (v11)
  {
    v12 = [v17 window];
    v13 = [v12 screen];
    [v13 scale];
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
  block[4] = a1;
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