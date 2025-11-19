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

    [(RCChronologicalAnnotationView *)v4 setOpaque:0];
  }

  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RCChronologicalAnnotationView;
  v3 = [(RCChronologicalAnnotationView *)&v8 description];
  v4 = NSStringFromRCTimeRange();
  [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [NSString stringWithFormat:@"%@: visibleTimeRange = %@, self.timeLabelsMajorInterval = %@", v3, v4, v5];

  return v6;
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
  v3 = RCLocalizedDuration();
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
  v3 = v2;
  RCTimeRangeDeltaWithExactPrecision();
  v5 = 100.0 / (v3 / v4);
  if (v5 >= 1.0)
  {
    v8 = 60.0;
    if (v5 < 60.0)
    {
      v8 = 30.0;
      if (v5 < 30.0)
      {
        v8 = 15.0;
        if (v5 < 9.0)
        {
          v8 = 5.0;
          if (v5 < 2.0)
          {
            v8 = v5;
            if (v5 >= 1.0)
            {
              return 1.0;
            }
          }
        }
      }
    }

    return v8;
  }

  else
  {
    v6 = round(log2(v5));

    return exp2(v6);
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
    RCTimeRangeDeltaWithExactPrecision();
    v11 = v10;
    if (v10 >= 2.22044605e-16)
    {
      RCTimeRangeIntersectTimeRange();
      if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
      {
        [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
        v13 = v12;
        v14 = [(RCChronologicalAnnotationView *)self tickMarksForMajorInterval:?];
        v15 = &OBJC_IVAR___VMSilenceRemover__state;
        v70 = +[RCRecorderStyleProvider sharedStyleProvider];
        v67 = +[UIApplication shouldMakeUIForDefaultPNG];
        v73.origin.x = x;
        v73.origin.y = y;
        v73.size.width = width;
        v73.size.height = height;
        v68 = CGRectGetWidth(v73);
        [v70 timeLineTickWidth];
        v17 = v16;
        v62 = v11 / v13;
        v64 = v13;
        v18 = v11 / v13 * v14;
        v19 = v13 / v14;
        beginTime = self->_visibleTimeRange.beginTime;
        __y[0] = 0.0;
        v21 = modf(fabs(beginTime / v19), __y);
        if (beginTime >= 0.0)
        {
          v21 = -v21;
        }

        v61 = v21;
        if (beginTime >= 0.0)
        {
          v22 = __y[0];
        }

        else
        {
          v22 = -__y[0];
        }

        v66 = [(RCChronologicalAnnotationView *)self _timeLabelAttributes];
        CurrentContext = UIGraphicsGetCurrentContext();
        v74.origin.x = x;
        v24 = v17;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        CGContextClearRect(CurrentContext, v74);
        CGContextSetLineWidth(CurrentContext, v17);
        v25 = (v18 + 1.0);
        if (v25 >= -1)
        {
          v26 = v68 / v18;
          v57 = v68 / v62;
          v58 = v17 + v17;
          v27 = v22;
          v28 = v17 * 0.5;
          v69 = v68 / v18 * v61;
          v29 = v25 + 2;
          v30 = -1;
          v60 = v17;
          v59 = v17 * 0.5;
          v65 = v26;
          do
          {
            v31 = v19 * (v27 + v30);
            if (v31 >= -0.0001 && v31 >= self->_markerClippingRange.beginTime + -0.0001)
            {
              if (v31 >= self->_markerClippingRange.endTime + -0.0001)
              {
                break;
              }

              v33 = v69 + v26 * v30;
              v34 = RCRoundCoord(v33 - v28);
              if ((v27 + v30) % v14)
              {
                v35 = [v70 timeLineMinorPlaybackMarkerColor];
                [v70 timeLineMinorTickHeight];
                v37 = v36;
                CGContextSetFillColorWithColor(CurrentContext, [v35 CGColor]);
                v75.origin.y = 0.0;
                v75.origin.x = v34;
                v75.size.width = v24;
                v75.size.height = v37;
                CGContextFillRect(CurrentContext, v75);
              }

              else
              {
                v35 = [v70 timeLineMajorPlaybackMarkerColor];
                v38 = [v15 + 406 sharedStyleProvider];
                [v38 timeLineMajorTickHeight];
                v40 = v39;

                CGContextSetFillColorWithColor(CurrentContext, [v35 CGColor]);
                v76.origin.y = 0.0;
                v76.origin.x = v34;
                v76.size.width = v24;
                v76.size.height = v40;
                CGContextFillRect(CurrentContext, v76);
                if (!((v31 < 0.0) | v67 & 1))
                {
                  v41 = RCRoundCoord(v33 - v58);
                  v42 = [v15 + 406 sharedStyleProvider];
                  [v42 timeLineMajorTickHeight];
                  v44 = v43;

                  v45 = [(RCChronologicalAnnotationView *)self window];
                  v63 = v41;
                  [(RCChronologicalAnnotationView *)self convertRect:v45 toView:v41, v44, v57, 1.0];
                  v47 = v46;
                  v49 = v48;
                  v50 = v19;
                  v52 = v51;
                  v54 = v53;
                  [v45 bounds];
                  v78.origin.x = v47;
                  v78.origin.y = v49;
                  v78.size.width = v52;
                  v19 = v50;
                  v78.size.height = v54;
                  v55 = CGRectIntersectsRect(v77, v78);
                  if (![(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]|| [(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]&& v55)
                  {
                    if (v64 < 1.0)
                    {
                      RCLocalizedPlaybackTimeWithMinimumComponents();
                    }

                    else
                    {
                      RCLocalizedDuration();
                    }
                    v56 = ;
                    [v56 drawAtPoint:v66 withAttributes:{v63, v44, *&v57}];
                  }

                  v15 = &OBJC_IVAR___VMSilenceRemover__state;
                  v28 = v59;
                  v24 = v60;
                }

                v26 = v65;
              }
            }

            ++v30;
            --v29;
          }

          while (v29);
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