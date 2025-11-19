@interface RCChronologicalAnnotationView
- ($F24F406B2B787EFB06265DBA3D28CBD5)markerClippingRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- (CGSize)labelsSize;
- (RCChronologicalAnnotationView)initWithFrame:(CGRect)a3;
- (double)timeLabelsMajorInterval;
- (id)_timeLabelAttributesWithFont:(id)a3;
- (id)description;
- (int64_t)tickMarksForMajorInterval:(double)a3;
- (void)drawRect:(CGRect)a3;
- (void)setContentDuration:(double)a3;
- (void)setVisibleTimeRange:(id)a3;
@end

@implementation RCChronologicalAnnotationView

- (RCChronologicalAnnotationView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = RCChronologicalAnnotationView;
  v3 = [(RCChronologicalAnnotationView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 56) = RCTimeRangeZero;
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 timeLineLabelFont];
    timeLabelFont = v4->_timeLabelFont;
    v4->_timeLabelFont = v6;

    v8 = [(RCChronologicalAnnotationView *)v4 layer];
    [v8 removeAllAnimations];
  }

  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RCChronologicalAnnotationView;
  v3 = [(RCChronologicalAnnotationView *)&v8 description];
  v4 = NSStringFromRCTimeRange(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime);
  [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [NSString stringWithFormat:@"%@: visibleTimeRange = %@, self.timeLabelsMajorInterval = %@", v3, v4, v5];

  return v6;
}

- (void)setVisibleTimeRange:(id)a3
{
  self->_visibleTimeRange = a3;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [(RCChronologicalAnnotationView *)self traitCollection];
  v5 = [v4 isUserInterfaceStyleDark];

  v6 = [v7 timelinePlaybackBackgroundColor:v5];
  [(RCChronologicalAnnotationView *)self setBackgroundColor:v6];

  [(RCChronologicalAnnotationView *)self setNeedsDisplay];
}

- (void)setContentDuration:(double)a3
{
  if (self->_contentDuration != a3)
  {
    self->_contentDuration = a3;
  }
}

- (CGSize)labelsSize
{
  v3 = RCLocalizedDurationWithStyle(1, 0.0);
  v4 = [(RCChronologicalAnnotationView *)self _timeLabelAttributes];
  [v3 sizeWithAttributes:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)timeLabelsMajorInterval
{
  [(RCChronologicalAnnotationView *)self frame];
  v4 = 100.0 / (v3 / RCTimeRangeDeltaWithExactPrecision(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime));
  if (v4 >= 1.0)
  {
    v7 = 60.0;
    if (v4 < 60.0)
    {
      v7 = 30.0;
      if (v4 < 30.0)
      {
        v7 = 15.0;
        if (v4 < 9.0)
        {
          v7 = 5.0;
          if (v4 < 2.0)
          {
            v7 = v4;
            if (v4 >= 1.0)
            {
              return 1.0;
            }
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v5 = round(log2(v4));

    return exp2(v5);
  }
}

- (int64_t)tickMarksForMajorInterval:(double)a3
{
  if (a3 == 60.0 || a3 == 1.0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(RCChronologicalAnnotationView *)self superview];
  v9 = [v8 isHidden];

  if ((v9 & 1) == 0)
  {
    p_visibleTimeRange = &self->_visibleTimeRange;
    v11 = RCTimeRangeDeltaWithExactPrecision(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime);
    if (v11 >= 2.22044605e-16)
    {
      v12 = RCTimeRangeIntersectTimeRange(self->_markerClippingRange.beginTime, self->_markerClippingRange.endTime, p_visibleTimeRange->beginTime, self->_visibleTimeRange.endTime);
      if (!RCTimeRangeEqualToTimeRange(1.79769313e308, -1.79769313e308, v12, v13))
      {
        [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
        v15 = v14;
        v16 = [(RCChronologicalAnnotationView *)self tickMarksForMajorInterval:?];
        v17 = &OBJC_IVAR___RCWaveformSelectionOverlay__enablePlayBarTracking;
        v78 = +[RCRecorderStyleProvider sharedStyleProvider];
        v18 = [(RCChronologicalAnnotationView *)self traitCollection];
        v19 = [v18 isUserInterfaceStyleDark];

        v75 = +[UIApplication shouldMakeUIForDefaultPNG];
        v81.origin.x = x;
        v81.origin.y = y;
        v81.size.width = width;
        v81.size.height = height;
        v76 = CGRectGetWidth(v81);
        [v78 timeLineTickWidth];
        v70 = v11 / v15;
        v72 = v15;
        v20 = v11 / v15 * v16;
        v21 = v15 / v16;
        v23 = v22;
        beginTime = p_visibleTimeRange->beginTime;
        __y[0] = 0.0;
        v25 = modf(fabs(beginTime / v21), __y);
        if (beginTime >= 0.0)
        {
          v25 = -v25;
        }

        v68 = v25;
        if (beginTime >= 0.0)
        {
          v26 = __y[0];
        }

        else
        {
          v26 = -__y[0];
        }

        v74 = [(RCChronologicalAnnotationView *)self _timeLabelAttributes];
        CurrentContext = UIGraphicsGetCurrentContext();
        v82.origin.x = x;
        v82.origin.y = y;
        v82.size.width = width;
        v82.size.height = height;
        CGContextClearRect(CurrentContext, v82);
        CGContextSetLineWidth(CurrentContext, v23);
        v28 = [v78 timelinePlaybackBackgroundColor:v19];
        CGContextSetFillColorWithColor(CurrentContext, [v28 CGColor]);

        v83.origin.x = x;
        v29 = v21;
        v83.origin.y = y;
        v83.size.width = width;
        v83.size.height = height;
        CGContextFillRect(CurrentContext, v83);
        v30 = (v20 + 1.0);
        if (v30 >= -1)
        {
          v31 = v76 / v20;
          v64 = v76 / v70;
          v65 = v23 + v23;
          v32 = v26;
          v33 = v23 * 0.5;
          v77 = v76 / v20 * v68;
          v34 = v30 + 2;
          v35 = -1;
          v67 = v23;
          v69 = 1.0 / v72;
          v66 = v23 * 0.5;
          v73 = v31;
          do
          {
            v36 = v29 * (v32 + v35);
            if (v36 >= -0.0001 && v36 >= self->_markerClippingRange.beginTime + -0.0001)
            {
              if (v36 >= self->_markerClippingRange.endTime + -0.0001)
              {
                break;
              }

              v38 = v77 + v31 * v35;
              v39 = RCRoundCoord(v38 - v33);
              if ((v32 + v35) % v16)
              {
                v40 = [v78 timeLineMinorPlaybackMarkerColor];
                [v78 timeLineMinorTickHeight];
                v42 = v41;
                CGContextSetFillColorWithColor(CurrentContext, [v40 CGColor]);
                v84.origin.y = 0.0;
                v84.origin.x = v39;
                v84.size.width = v23;
                v84.size.height = v42;
                CGContextFillRect(CurrentContext, v84);
              }

              else
              {
                v40 = [v78 timeLineMajorPlaybackMarkerColor];
                v43 = [v17 + 480 sharedStyleProvider];
                [v43 timeLineMajorTickHeight];
                v45 = v44;

                CGContextSetFillColorWithColor(CurrentContext, [v40 CGColor]);
                v85.origin.y = 0.0;
                v85.origin.x = v39;
                v85.size.width = v23;
                v85.size.height = v45;
                CGContextFillRect(CurrentContext, v85);
                if (!((v36 < 0.0) | v75 & 1))
                {
                  v46 = RCRoundCoord(v38 - v65);
                  v47 = [v17 + 480 sharedStyleProvider];
                  [v47 timeLineMajorTickHeight];
                  v49 = v48;

                  v50 = [(RCChronologicalAnnotationView *)self window];
                  v71 = v46;
                  [(RCChronologicalAnnotationView *)self convertRect:v50 toView:v46, v49, v64, 1.0];
                  v51 = v29;
                  v53 = v52;
                  v55 = v54;
                  v57 = v56;
                  v59 = v58;
                  [v50 bounds];
                  v87.origin.x = v53;
                  v29 = v51;
                  v87.origin.y = v55;
                  v87.size.width = v57;
                  v87.size.height = v59;
                  v60 = CGRectIntersectsRect(v86, v87);
                  if (![(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]|| [(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]&& v60)
                  {
                    v61 = v69 * fabs(v36);
                    v62 = floorf(v61) / v69;
                    if (v72 < 1.0)
                    {
                      RCLocalizedPlaybackTimeWithMinimumComponents(2uLL, v62, v62);
                    }

                    else
                    {
                      RCLocalizedDurationWithStyle(1, v62);
                    }
                    v63 = ;
                    [v63 drawAtPoint:v74 withAttributes:{v71, v49, *&v64}];
                  }

                  v17 = &OBJC_IVAR___RCWaveformSelectionOverlay__enablePlayBarTracking;
                  v33 = v66;
                  v23 = v67;
                }

                v31 = v73;
              }
            }

            ++v35;
            --v34;
          }

          while (v34);
        }
      }
    }
  }
}

- (id)_timeLabelAttributesWithFont:(id)a3
{
  v3 = a3;
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  v5 = [v4 timelinePlaybackTimeColor];
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:v3, NSFontAttributeName, v5, NSForegroundColorAttributeName, 0];

  return v6;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange
{
  beginTime = self->_visibleTimeRange.beginTime;
  endTime = self->_visibleTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)markerClippingRange
{
  beginTime = self->_markerClippingRange.beginTime;
  endTime = self->_markerClippingRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end