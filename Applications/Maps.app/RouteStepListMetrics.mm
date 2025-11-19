@interface RouteStepListMetrics
+ (id)navSignMetrics;
+ (id)navigationMetrics;
+ (id)rapMetrics;
+ (id)routePlanningMetrics;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RouteStepListMetrics

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 2) = *&self->_primaryTextTopMargin;
  *(v4 + 3) = *&self->_primaryTextTrailingMargin;
  objc_storeStrong(v4 + 4, self->_primaryTextActiveTextColor);
  objc_storeStrong(v4 + 5, self->_primaryTextDisabledTextColor);
  objc_storeStrong(v4 + 6, self->_primaryTextFontStyle);
  *(v4 + 8) = *&self->_primaryTextFontWeight;
  *(v4 + 9) = *&self->_secondaryTextTopMargin;
  objc_storeStrong(v4 + 10, self->_secondaryTextActiveTextColor);
  objc_storeStrong(v4 + 11, self->_secondaryTextDisabledTextColor);
  objc_storeStrong(v4 + 12, self->_secondaryTextFontStyle);
  *(v4 + 14) = *&self->_secondaryTextFontWeight;
  *(v4 + 15) = *&self->_tertiaryTextTopMargin;
  objc_storeStrong(v4 + 16, self->_tertiaryTextActiveTextColor);
  objc_storeStrong(v4 + 17, self->_tertiaryTextDisabledTextColor);
  objc_storeStrong(v4 + 18, self->_tertiaryTextFontStyle);
  *(v4 + 20) = *&self->_tertiaryTextFontWeight;
  objc_storeStrong(v4 + 24, self->_highlightColor);
  *(v4 + 25) = *&self->_textTrailingMargin;
  *(v4 + 26) = *&self->_textBottomMargin;
  *(v4 + 27) = *&self->_imageAreaWidth;
  *(v4 + 28) = *&self->_imageTopMargin;
  *(v4 + 29) = *&self->_imageBottomMargin;
  *(v4 + 30) = *&self->_imageCenterXOffset;
  *(v4 + 31) = *&self->_waypointImageWidth;
  *(v4 + 32) = *&self->_waypointImageHeight;
  *(v4 + 33) = *&self->_stepImageWidth;
  *(v4 + 34) = *&self->_stepImageHeight;
  *(v4 + 35) = self->_shieldArtworkSize;
  *(v4 + 36) = self->_iconSize;
  memcpy(v4 + 336, &self->_arrowMetrics, 0x1F0uLL);
  memcpy(v4 + 832, &self->_junctionArrowMetrics, 0x1F0uLL);
  memcpy(v4 + 1328, &self->_secondaryArrowMetrics, 0x1F0uLL);
  memcpy(v4 + 1824, &self->_secondaryJunctionArrowMetrics, 0x1F0uLL);
  v4[11] = self->_useMarkerFallback;
  objc_storeStrong(v4 + 41, self->_hairlineColor);
  v4[12] = self->_shouldFlipPrimaryAndSecondaryText;
  return v4;
}

+ (id)rapMetrics
{
  if (qword_10195F560 != -1)
  {
    dispatch_once(&qword_10195F560, &stru_101657B30);
  }

  v3 = qword_10195F558;

  return v3;
}

+ (id)navSignMetrics
{
  if (qword_10195F550 != -1)
  {
    dispatch_once(&qword_10195F550, &stru_101657B10);
  }

  v3 = qword_10195F548;

  return v3;
}

+ (id)navigationMetrics
{
  if (qword_10195F540 != -1)
  {
    dispatch_once(&qword_10195F540, &stru_101657AF0);
  }

  v3 = qword_10195F538;

  return v3;
}

+ (id)routePlanningMetrics
{
  if (qword_10195F530 != -1)
  {
    dispatch_once(&qword_10195F530, &stru_101657A90);
  }

  v3 = qword_10195F528;

  return v3;
}

@end