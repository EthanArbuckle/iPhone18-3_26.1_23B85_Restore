@interface MTAWorldClockMapCityView
- (CGPoint)hotspotOffset;
- (CGPoint)hotspotOffsetForPlacement:(unint64_t)placement;
- (CGRect)dotImageFrameForPlacement:(unint64_t)placement;
- (CGSize)sizeForIntersectionWithCityView:(id)view atOrigin:(CGPoint)origin selfOrigin:(CGPoint)selfOrigin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTAWorldClockMapCityView)initWithCity:(id)city;
- (id)labelViews;
- (void)layoutIfNeeded;
- (void)layoutSubviews;
- (void)setCity:(id)city;
- (void)setIconPlacement:(unint64_t)placement;
- (void)setTimeFormatter:(id)formatter;
- (void)setTimeLabelWidth:(double)width;
- (void)start;
- (void)updateTime;
@end

@implementation MTAWorldClockMapCityView

- (MTAWorldClockMapCityView)initWithCity:(id)city
{
  cityCopy = city;
  v28.receiver = self;
  v28.super_class = MTAWorldClockMapCityView;
  v5 = [(MTAWorldClockMapCityView *)&v28 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = +[UIColor clearColor];
    [(MTAWorldClockMapCityView *)v5 setBackgroundColor:v6];

    v7 = objc_alloc_init(UILabel);
    timeLabel = v5->_timeLabel;
    v5->_timeLabel = v7;

    v9 = v5->_timeLabel;
    v10 = +[UIColor clearColor];
    [(UILabel *)v9 setBackgroundColor:v10];

    v11 = v5->_timeLabel;
    secondaryLabelFont = [objc_opt_class() secondaryLabelFont];
    [(UILabel *)v11 setFont:secondaryLabelFont];

    v13 = v5->_timeLabel;
    v14 = +[UIColor whiteColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v5->_timeLabel setAdjustsFontSizeToFitWidth:1];
    [(MTAWorldClockMapCityView *)v5 addSubview:v5->_timeLabel];
    v15 = objc_alloc_init(UILabel);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v15;

    v17 = v5->_nameLabel;
    v18 = +[UIColor clearColor];
    [(UILabel *)v17 setBackgroundColor:v18];

    v19 = v5->_nameLabel;
    v20 = [UIFont boldSystemFontOfSize:15.0];
    [(UILabel *)v19 setFont:v20];

    v21 = v5->_nameLabel;
    v22 = +[UIColor whiteColor];
    [(UILabel *)v21 setTextColor:v22];

    [(MTAWorldClockMapCityView *)v5 addSubview:v5->_nameLabel];
    v23 = [UIImageView alloc];
    v24 = sub_10004F080();
    v25 = [v23 initWithImage:v24];
    [(MTAWorldClockMapCityView *)v5 setDotImageView:v25];

    dotImageView = [(MTAWorldClockMapCityView *)v5 dotImageView];
    [(MTAWorldClockMapCityView *)v5 addSubview:dotImageView];

    [(MTAWorldClockMapCityView *)v5 setIconPlacement:1];
    [(MTAWorldClockMapCityView *)v5 setCity:cityCopy];
  }

  return v5;
}

- (void)setTimeFormatter:(id)formatter
{
  if (self->_timeFormatter != formatter)
  {
    v4 = [formatter copy];
    timeFormatter = self->_timeFormatter;
    self->_timeFormatter = v4;

    v6 = self->_timeFormatter;
    timeZone = [(WorldClockCity *)self->_city timeZone];
    v7 = [NSTimeZone timeZoneWithName:timeZone];
    [(NSDateFormatter *)v6 setTimeZone:v7];
  }
}

- (void)setTimeLabelWidth:(double)width
{
  timeLabel = self->_timeLabel;
  timeFormatter = self->_timeFormatter;
  v6 = +[NSDate date];
  v7 = [(NSDateFormatter *)timeFormatter stringFromDate:v6];
  [(UILabel *)timeLabel setText:v7];

  [(UILabel *)self->_timeLabel sizeToFit];
  [(UILabel *)self->_timeLabel frame];
  v8 = self->_timeLabel;

  [(UILabel *)v8 setFrame:?];
}

- (void)setCity:(id)city
{
  cityCopy = city;
  if (self->_city != cityCopy)
  {
    v11 = cityCopy;
    objc_storeStrong(&self->_city, city);
    timeFormatter = self->_timeFormatter;
    timeZone = [(WorldClockCity *)v11 timeZone];
    v8 = [NSTimeZone timeZoneWithName:timeZone];
    [(NSDateFormatter *)timeFormatter setTimeZone:v8];

    [(MTAWorldClockMapCityView *)self updateTime];
    nameLabel = self->_nameLabel;
    name = [(WorldClockCity *)v11 name];
    [(UILabel *)nameLabel setText:name];

    [(UILabel *)self->_nameLabel sizeToFit];
    [(MTAWorldClockMapCityView *)self setNeedsLayout];
    cityCopy = v11;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_timeLabel bounds:fits.width];
  v5 = v4;
  [(UILabel *)self->_nameLabel bounds];
  v7 = fmax(v5, v6);
  dotImageView = [(MTAWorldClockMapCityView *)self dotImageView];
  [dotImageView bounds];
  v10 = v7 + v9 + 4.0;

  v11 = 48.0;
  v12 = v10;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGRect)dotImageFrameForPlacement:(unint64_t)placement
{
  [(MTAWorldClockMapCityView *)self bounds];
  v6 = v5;
  v8 = v7;
  dotImageView = [(MTAWorldClockMapCityView *)self dotImageView];
  [dotImageView frame];
  v11 = v10;
  v13 = v12;

  v14 = v6 - v11;
  if (placement == 1)
  {
    v14 = 0.0;
  }

  v15 = (v8 - v13) * 0.5;
  v16 = floorf(v15);
  v17 = v11;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (id)labelViews
{
  nameLabel = self->_nameLabel;
  v5[0] = self->_timeLabel;
  v5[1] = nameLabel;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (CGSize)sizeForIntersectionWithCityView:(id)view atOrigin:(CGPoint)origin selfOrigin:(CGPoint)selfOrigin
{
  y = selfOrigin.y;
  x = selfOrigin.x;
  v7 = origin.y;
  v8 = origin.x;
  viewCopy = view;
  [(MTAWorldClockMapCityView *)self layoutIfNeeded];
  [viewCopy layoutIfNeeded];
  [(MTAWorldClockMapCityView *)self frame];
  v95 = CGRectOffset(v94, x, y);
  v11 = v95.origin.x;
  v12 = v95.origin.y;
  width = v95.size.width;
  height = v95.size.height;
  [(MTAWorldClockMapCityView *)self frame];
  v123 = CGRectOffset(v96, v8, v7);
  v97.origin.x = v11;
  v97.origin.y = v12;
  v97.size.width = width;
  v97.size.height = height;
  if (CGRectIntersectsRect(v97, v123))
  {
    labelViews = [(MTAWorldClockMapCityView *)self labelViews];
    v78 = viewCopy;
    labelViews2 = [viewCopy labelViews];
    v17 = [labelViews count];
    v77 = &v77;
    v18 = &v77 - 4 * v17;
    if (v17)
    {
      v19 = 0;
      v20 = v18 + 2;
      v21 = v18 + 2;
      do
      {
        v22 = [labelViews objectAtIndexedSubscript:{v19, v77}];
        [v22 frame];
        v99 = CGRectOffset(v98, x, y);
        *(v20 - 2) = CGRectInset(v99, 0.0, 2.0);
        v20 += 4;

        v23 = [labelViews2 objectAtIndexedSubscript:v19];
        [v23 frame];
        v101 = CGRectOffset(v100, v8, v7);
        *(v21 - 2) = CGRectInset(v101, 0.0, 2.0);
        v21 += 4;

        ++v19;
      }

      while (v17 != v19);
    }

    dotImageView = [(MTAWorldClockMapCityView *)self dotImageView];
    [dotImageView frame];
    v103 = CGRectOffset(v102, x, y);
    v104 = CGRectInset(v103, 1.0, 2.0);
    v25 = v104.origin.x;
    v85 = v104.origin.y;
    v86 = v104.origin.x;
    v26 = v104.origin.y;
    v27 = v104.size.width;
    v28 = v104.size.height;

    viewCopy = v78;
    dotImageView2 = [v78 dotImageView];
    [dotImageView2 frame];
    v106 = CGRectOffset(v105, v8, v7);
    v107 = CGRectInset(v106, 1.0, 2.0);
    v30 = v107.origin.x;
    v83 = v107.origin.y;
    v84 = v107.origin.x;
    v31 = v107.origin.y;
    v81 = v107.size.height;
    v82 = v107.size.width;

    v32 = CGSizeZero.height;
    v91 = CGSizeZero.width;
    v92 = v32;
    v108.origin.x = v25;
    v108.origin.y = v26;
    v108.size.width = v27;
    v108.size.height = v28;
    v109 = CGRectInset(v108, 1.0, 2.0);
    v33 = v109.origin.x;
    v34 = v109.origin.y;
    v35 = v109.size.width;
    v36 = v109.size.height;
    v109.origin.x = v30;
    v109.origin.y = v31;
    v37 = v81;
    v38 = v82;
    v109.size.width = v82;
    v109.size.height = v81;
    v124 = CGRectInset(v109, 1.0, 2.0);
    v110.origin.x = v33;
    v110.origin.y = v34;
    v110.size.width = v35;
    v110.size.height = v36;
    v111 = CGRectIntersection(v110, v124);
    v39 = v91 + v111.size.width;
    v111.origin.y = v85;
    v111.origin.x = v86;
    v80 = v27;
    v111.size.width = v27;
    v79 = v28;
    v111.size.height = v28;
    v112 = CGRectInset(v111, 1.0, 2.0);
    v40 = v112.origin.x;
    v41 = v112.origin.y;
    v42 = v112.size.width;
    v43 = v112.size.height;
    v112.origin.y = v83;
    v112.origin.x = v84;
    v112.size.width = v38;
    v112.size.height = v37;
    v125 = CGRectInset(v112, 1.0, 2.0);
    v113.origin.x = v40;
    v113.origin.y = v41;
    v113.size.width = v42;
    v113.size.height = v43;
    v114 = CGRectIntersection(v113, v125);
    v44 = v92 + v114.size.height;
    if (v17)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        v92 = v44;
        v46 = &v18[4 * i];
        v47 = *v46;
        v88 = v46[1];
        v89 = v47;
        v48 = v46[3];
        v90 = v46[2];
        v87 = v48;
        v49 = (v18 + 2);
        v50 = v17;
        v51 = v39;
        do
        {
          v52 = *(v49 - 2);
          v53 = *(v49 - 1);
          v126.size.width = *v49;
          v54 = v49[1];
          v49 += 4;
          v91 = v126.size.width;
          v55 = v88;
          v56 = v89;
          v115.origin.x = v89;
          v115.origin.y = v88;
          v57 = v90;
          v115.size.width = v90;
          v58 = v87;
          v115.size.height = v87;
          v126.origin.x = v52;
          v126.origin.y = v53;
          v126.size.height = v54;
          v116 = CGRectIntersection(v115, v126);
          v51 = v51 + v116.size.width;
          v116.origin.x = v56;
          v116.origin.y = v55;
          v116.size.width = v57;
          v116.size.height = v58;
          v127.origin.x = v52;
          v127.origin.y = v53;
          v127.size.width = v91;
          v127.size.height = v54;
          v117 = CGRectIntersection(v116, v127);
          v92 = v92 + v117.size.height;
          --v50;
        }

        while (v50);
        v60 = v88;
        v59 = v89;
        v118.origin.x = v89;
        v118.origin.y = v88;
        v118.size.width = v90;
        v61 = v87;
        v118.size.height = v87;
        v63 = v83;
        v62 = v84;
        v128.origin.x = v84;
        v128.origin.y = v83;
        v65 = v81;
        v64 = v82;
        v128.size.width = v82;
        v128.size.height = v81;
        v119 = CGRectIntersection(v118, v128);
        v91 = v51 + v119.size.width;
        v119.origin.x = v59;
        v119.origin.y = v60;
        v119.size.width = v90;
        v119.size.height = v61;
        v129.origin.x = v62;
        v129.origin.y = v63;
        v129.size.width = v64;
        v129.size.height = v65;
        v120 = CGRectIntersection(v119, v129);
        v92 = v92 + v120.size.height;
        v66 = &v18[4 * i];
        v68 = *v66;
        v67 = v66[1];
        v69 = v66[2];
        v70 = v66[3];
        v120.origin.x = *v66;
        v120.origin.y = v67;
        v120.size.width = v69;
        v120.size.height = v70;
        v72 = v85;
        v71 = v86;
        v130.origin.x = v86;
        v130.origin.y = v85;
        v73 = v80;
        v130.size.width = v80;
        v74 = v79;
        v130.size.height = v79;
        v121 = CGRectIntersection(v120, v130);
        v121.origin.x = v68;
        v39 = v91 + v121.size.width;
        v121.origin.y = v67;
        v121.size.width = v69;
        v121.size.height = v70;
        v131.origin.x = v71;
        v131.origin.y = v72;
        v131.size.width = v73;
        v131.size.height = v74;
        v122 = CGRectIntersection(v121, v131);
        v44 = v92 + v122.size.height;
      }
    }
  }

  else
  {
    v39 = CGSizeZero.width;
    v44 = CGSizeZero.height;
  }

  v75 = v39;
  v76 = v44;
  result.height = v76;
  result.width = v75;
  return result;
}

- (CGPoint)hotspotOffsetForPlacement:(unint64_t)placement
{
  [(MTAWorldClockMapCityView *)self dotImageFrameForPlacement:placement];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);
  v9 = MidX;
  result.y = MidY;
  result.x = v9;
  return result;
}

- (CGPoint)hotspotOffset
{
  [(MTAWorldClockMapCityView *)self hotspotOffsetForPlacement:self->_iconPlacement];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)layoutIfNeeded
{
  if (!self->_doneFirstLayout)
  {
    [(MTAWorldClockMapCityView *)self setNeedsLayout];
  }

  v3.receiver = self;
  v3.super_class = MTAWorldClockMapCityView;
  [(MTAWorldClockMapCityView *)&v3 layoutIfNeeded];
}

- (void)layoutSubviews
{
  self->_doneFirstLayout = 1;
  [(MTAWorldClockMapCityView *)self bounds];
  v28 = v3;
  [(MTAWorldClockMapCityView *)self dotImageFrameForPlacement:self->_iconPlacement];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dotImageView = [(MTAWorldClockMapCityView *)self dotImageView];
  [dotImageView setFrame:{v5, v7, v9, v11}];

  [(UILabel *)self->_timeLabel frame];
  v14 = v13;
  v16 = v15;
  [(UILabel *)self->_nameLabel frame];
  v18 = v17;
  v20 = v19;
  timeLabel = self->_timeLabel;
  if (self->_iconPlacement == 1)
  {
    [(UILabel *)timeLabel setTextAlignment:0];
    [(UILabel *)self->_nameLabel setTextAlignment:0];
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    v22 = CGRectGetMaxX(v30) + 4.0;
    v23 = v22;
  }

  else
  {
    [(UILabel *)timeLabel setTextAlignment:2];
    [(UILabel *)self->_nameLabel setTextAlignment:2];
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    v24 = CGRectGetMinX(v31) + -4.0;
    v22 = v24 - v14;
    v23 = v24 - v18;
  }

  v25 = (v28 - v20) * 0.5;
  v26 = floorf(v25);
  [(UILabel *)self->_timeLabel setFrame:v22, v28 - v16, v14, v16];
  nameLabel = self->_nameLabel;

  [(UILabel *)nameLabel setFrame:v23, v26, v18, v20];
}

- (void)setIconPlacement:(unint64_t)placement
{
  if (self->_iconPlacement != placement)
  {
    self->_iconPlacement = placement;
    [(MTAWorldClockMapCityView *)self setNeedsLayout];
  }
}

- (void)updateTime
{
  timeLabel = self->_timeLabel;
  timeFormatter = self->_timeFormatter;
  v5 = +[NSDate date];
  v4 = [(NSDateFormatter *)timeFormatter stringFromDate:v5];
  [(UILabel *)timeLabel setText:v4];
}

- (void)start
{
  [MTUIAnalogClockView registerClock:self];

  [(MTAWorldClockMapCityView *)self updateTime];
}

@end