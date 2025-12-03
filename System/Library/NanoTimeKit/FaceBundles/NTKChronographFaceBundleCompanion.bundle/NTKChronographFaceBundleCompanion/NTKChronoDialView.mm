@interface NTKChronoDialView
+ (id)createClockDialViewForDevice:(id)device;
+ (id)createClockSubdialViewForDevice:(id)device;
+ (id)createDialViewForTimescale:(unint64_t)timescale device:(id)device;
+ (id)createSubdialViewForTimescale:(unint64_t)timescale device:(id)device;
+ (id)sharedCache;
- (CGRect)_boundsForText:(id)text font:(id)font;
- (NTKChronoDialView)initWithTimescale:(unint64_t)timescale device:(id)device;
- (id)cacheIdentifierForClockComponent:(int)component;
- (id)cacheIdentifierForComponent:(int)component;
- (id)initClockSubdialWithDevice:(id)device;
- (id)initClockWithDevice:(id)device;
- (id)initSubdialWithTimescale:(unint64_t)timescale device:(id)device;
- (void)applyPalette:(id)palette;
- (void)create30SecondsSubdialText;
- (void)create30SecondsText;
- (void)create3SecondsSubdialText;
- (void)create3SecondsText;
- (void)create60SecondsSubdialText;
- (void)create60SecondsText;
- (void)create6SecondsSubdialText;
- (void)create6SecondsText;
- (void)createClockSubdialText;
- (void)createClockText;
- (void)createSubdialText;
- (void)createText;
- (void)createTicks;
- (void)createTimescaleLabel;
- (void)setMajorTickColor:(id)color;
- (void)setMinorTickColor:(id)color;
- (void)setTextColor:(id)color;
@end

@implementation NTKChronoDialView

+ (id)createDialViewForTimescale:(unint64_t)timescale device:(id)device
{
  deviceCopy = device;
  v6 = [[NTKChronoDialView alloc] initWithTimescale:timescale device:deviceCopy];

  return v6;
}

+ (id)createSubdialViewForTimescale:(unint64_t)timescale device:(id)device
{
  deviceCopy = device;
  v6 = [[NTKChronoDialView alloc] initSubdialWithTimescale:timescale device:deviceCopy];

  return v6;
}

+ (id)createClockDialViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKChronoDialView alloc] initClockWithDevice:deviceCopy];

  return v4;
}

+ (id)createClockSubdialViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKChronoDialView alloc] initClockSubdialWithDevice:deviceCopy];

  return v4;
}

+ (id)sharedCache
{
  if (qword_233D0 != -1)
  {
    sub_FCC0();
  }

  v3 = qword_233C8;

  return v3;
}

- (id)cacheIdentifierForComponent:(int)component
{
  v3 = *&component;
  v5 = objc_opt_class();
  timescale = [(NTKChronoDialView *)self timescale];
  subdial = [(NTKChronoDialView *)self subdial];
  device = [(NTKChronoDialView *)self device];
  v9 = [v5 cacheIdentifierForTimescale:timescale subdial:subdial device:objc_msgSend(device component:{"sizeClass"), v3}];

  return v9;
}

- (id)cacheIdentifierForClockComponent:(int)component
{
  v3 = *&component;
  v5 = objc_opt_class();
  subdial = [(NTKChronoDialView *)self subdial];
  device = [(NTKChronoDialView *)self device];
  v8 = [v5 cacheIdentifierForClockSubdial:subdial device:objc_msgSend(device component:{"sizeClass"), v3}];

  return v8;
}

- (NTKChronoDialView)initWithTimescale:(unint64_t)timescale device:(id)device
{
  deviceCopy = device;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_5D64(deviceCopy, v14);
  timescale = [NSString stringWithFormat:@"dial-%i", timescale];
  v9 = *v14;
  v10 = +[NTKChronoDialView sharedCache];
  v13.receiver = self;
  v13.super_class = NTKChronoDialView;
  v11 = [(NTKChronoDialView *)&v13 initWithDialDiameter:deviceCopy device:v10 cache:timescale key:v9];

  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    v11->_timescale = timescale;
    v11->_subdial = 0;
    [(NTKChronoDialView *)v11 createTicks];
    [(NTKChronoDialView *)v11 createText];
    [(NTKChronoDialView *)v11 createTimescaleLabel];
  }

  return v11;
}

- (id)initSubdialWithTimescale:(unint64_t)timescale device:(id)device
{
  deviceCopy = device;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_5D64(deviceCopy, v14);
  timescale = [NSString stringWithFormat:@"subdial-%i", timescale];
  v9 = *(v14 + 1);
  v10 = +[NTKChronoDialView sharedCache];
  v13.receiver = self;
  v13.super_class = NTKChronoDialView;
  v11 = [(NTKChronoDialView *)&v13 initWithDialDiameter:deviceCopy device:v10 cache:timescale key:v9];

  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    v11->_timescale = timescale;
    v11->_subdial = 1;
    [(NTKChronoDialView *)v11 createTicks];
    [(NTKChronoDialView *)v11 createSubdialText];
  }

  return v11;
}

- (id)initClockWithDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_5D64(deviceCopy, v11);
  v6 = *v11;
  v7 = +[NTKChronoDialView sharedCache];
  v10.receiver = self;
  v10.super_class = NTKChronoDialView;
  v8 = [(NTKChronoDialView *)&v10 initWithDialDiameter:deviceCopy device:v7 cache:@"clock" key:v6];

  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v8->_timescale = 0;
    v8->_subdial = 0;
    [(NTKChronoDialView *)v8 createTicks];
    [(NTKChronoDialView *)v8 createClockText];
  }

  return v8;
}

- (id)initClockSubdialWithDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_5D64(deviceCopy, v11);
  v6 = *(v11 + 1);
  v7 = +[NTKChronoDialView sharedCache];
  v10.receiver = self;
  v10.super_class = NTKChronoDialView;
  v8 = [(NTKChronoDialView *)&v10 initWithDialDiameter:deviceCopy device:v7 cache:@"subclock" key:v6];

  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v8->_timescale = 3;
    v8->_subdial = 1;
    [(NTKChronoDialView *)v8 createTicks];
    [(NTKChronoDialView *)v8 createClockSubdialText];
  }

  return v8;
}

- (void)createTicks
{
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, v43);

  subdial = [(NTKChronoDialView *)self subdial];
  v5 = 88;
  if (subdial)
  {
    v5 = 136;
  }

  v42 = *(v43 + v5);
  subdial2 = [(NTKChronoDialView *)self subdial];
  v7 = 104;
  if (subdial2)
  {
    v7 = 152;
  }

  v41 = *(v43 + v7);
  subdial3 = [(NTKChronoDialView *)self subdial];
  v9 = 120;
  if (subdial3)
  {
    v9 = 168;
  }

  v40 = *(v43 + v9);
  subdial4 = [(NTKChronoDialView *)self subdial];
  timescale = [(NTKChronoDialView *)self timescale];
  if ((subdial4 & 1) == 0)
  {
    if ((timescale - 2) >= 2)
    {
      if (timescale == 1)
      {
        v36 = v42;
        v12 = [NSValue valueWithBytes:&v36 objCType:"{CGSize=dd}"];
        v50[0] = v12;
        v35 = v41;
        v13 = [NSValue valueWithBytes:&v35 objCType:"{CGSize=dd}"];
        v50[1] = v13;
        v34 = v40;
        v14 = [NSValue valueWithBytes:&v34 objCType:"{CGSize=dd}"];
        v50[2] = v14;
        v15 = [NSArray arrayWithObjects:v50 count:3];
        v16 = &off_1DF18;
        selfCopy5 = self;
        v18 = 120;
      }

      else
      {
        if (timescale)
        {
          return;
        }

        v39 = v42;
        v12 = [NSValue valueWithBytes:&v39 objCType:"{CGSize=dd}"];
        v51[0] = v12;
        v38 = v41;
        v13 = [NSValue valueWithBytes:&v38 objCType:"{CGSize=dd}"];
        v51[1] = v13;
        v37 = v40;
        v14 = [NSValue valueWithBytes:&v37 objCType:"{CGSize=dd}"];
        v51[2] = v14;
        v15 = [NSArray arrayWithObjects:v51 count:3];
        v16 = &off_1DF00;
        selfCopy5 = self;
        v18 = 240;
      }

      goto LABEL_23;
    }

    v33 = v42;
    v12 = [NSValue valueWithBytes:&v33 objCType:"{CGSize=dd}"];
    v49[0] = v12;
    v32 = v40;
    v13 = [NSValue valueWithBytes:&v32 objCType:"{CGSize=dd}"];
    v49[1] = v13;
    v14 = [NSArray arrayWithObjects:v49 count:2];
    v19 = &off_1DF30;
    selfCopy4 = self;
    v21 = 300;
LABEL_26:
    [(NTKChronoDialView *)selfCopy4 addTicksWithCount:v21 moduloGroups:v19 sizes:v14 roundedCorners:0];
    goto LABEL_27;
  }

  if (timescale > 1)
  {
    if (timescale == 2)
    {
      v25 = v42;
      v12 = [NSValue valueWithBytes:&v25 objCType:"{CGSize=dd}"];
      v46[0] = v12;
      v24 = v40;
      v13 = [NSValue valueWithBytes:&v24 objCType:"{CGSize=dd}"];
      v46[1] = v13;
      v14 = [NSArray arrayWithObjects:v46 count:2];
      v19 = &off_1DF78;
    }

    else
    {
      if (timescale != 3)
      {
        return;
      }

      v23 = v42;
      v12 = [NSValue valueWithBytes:&v23 objCType:"{CGSize=dd}"];
      v45[0] = v12;
      v22 = v40;
      v13 = [NSValue valueWithBytes:&v22 objCType:"{CGSize=dd}"];
      v45[1] = v13;
      v14 = [NSArray arrayWithObjects:v45 count:2];
      v19 = &off_1DF90;
    }

    selfCopy4 = self;
    v21 = 60;
    goto LABEL_26;
  }

  if (timescale)
  {
    if (timescale != 1)
    {
      return;
    }

    v28 = v42;
    v12 = [NSValue valueWithBytes:&v28 objCType:"{CGSize=dd}"];
    v47[0] = v12;
    v27 = v41;
    v13 = [NSValue valueWithBytes:&v27 objCType:"{CGSize=dd}"];
    v47[1] = v13;
    v26 = v40;
    v14 = [NSValue valueWithBytes:&v26 objCType:"{CGSize=dd}"];
    v47[2] = v14;
    v15 = [NSArray arrayWithObjects:v47 count:3];
    v16 = &off_1DF60;
  }

  else
  {
    v31 = v42;
    v12 = [NSValue valueWithBytes:&v31 objCType:"{CGSize=dd}"];
    v48[0] = v12;
    v30 = v41;
    v13 = [NSValue valueWithBytes:&v30 objCType:"{CGSize=dd}"];
    v48[1] = v13;
    v29 = v40;
    v14 = [NSValue valueWithBytes:&v29 objCType:"{CGSize=dd}"];
    v48[2] = v14;
    v15 = [NSArray arrayWithObjects:v48 count:3];
    v16 = &off_1DF48;
  }

  selfCopy5 = self;
  v18 = 60;
LABEL_23:
  [(NTKChronoDialView *)selfCopy5 addTicksWithCount:v18 moduloGroups:v16 sizes:v15 roundedCorners:0];

LABEL_27:
}

- (void)createTimescaleLabel
{
  timescale = self->_timescale;
  if (timescale > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_14300[timescale];
  }

  v19 = [NTKChronographFaceBundle localizedStringForKey:@"CHRONO_SECONDS_CAPS" table:@"Formats" comment:@"n-SECOND"];
  v5 = [NSString localizedStringWithFormat:v19, v4];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, v20);

  v7 = objc_alloc_init(UILabel);
  timeLabel = self->_timeLabel;
  self->_timeLabel = v7;

  [(UILabel *)self->_timeLabel setText:v5];
  v9 = [CLKFont systemFontOfSize:v21 weight:?];
  [(UILabel *)self->_timeLabel setFont:v9];

  v10 = +[UIColor systemTealColor];
  [(UILabel *)self->_timeLabel setTextColor:v10];

  [(UILabel *)self->_timeLabel sizeToFit];
  [(NTKChronoDialView *)self bounds];
  v12 = v11 * 0.5 - *&v22;
  [(NTKChronoDialView *)self bounds];
  v14 = v13 * 0.5;
  [(UILabel *)self->_timeLabel bounds];
  v16 = v14 - v15 * 0.5;
  [(UILabel *)self->_timeLabel bounds];
  v18 = v17;
  [(UILabel *)self->_timeLabel bounds];
  [(UILabel *)self->_timeLabel setFrame:v12, v16, v18];
  [(NTKChronoDialView *)self addSubview:self->_timeLabel];
}

- (void)setMajorTickColor:(id)color
{
  objc_storeStrong(&self->_majorTickColor, color);
  colorCopy = color;
  [(NTKChronoDialView *)self applyTickColor:colorCopy toGroupIndex:0];
}

- (void)setMinorTickColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_minorTickColor, color);
  timeLabel = [(NTKChronoDialView *)self timeLabel];
  [timeLabel setTextColor:colorCopy];

  tickGroups = [(NTKChronoDialView *)self tickGroups];
  v7 = [tickGroups count];

  if (v7 >= 2)
  {
    v8 = 1;
    do
    {
      [(NTKChronoDialView *)self applyTickColor:colorCopy toGroupIndex:v8++];
      tickGroups2 = [(NTKChronoDialView *)self tickGroups];
      v10 = [tickGroups2 count];
    }

    while (v8 < v10);
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_textColor, color);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3E44;
  v7[3] = &unk_1C700;
  v8 = colorCopy;
  v6 = colorCopy;
  [(NTKChronoDialView *)self enumerateTextLayersWithBlock:v7];
}

- (void)applyPalette:(id)palette
{
  paletteCopy = palette;
  alternativeTickColor = [paletteCopy alternativeTickColor];
  [paletteCopy largeTickValue];
  v6 = NTKColorByPremultiplyingAlpha();
  [(NTKChronoDialView *)self setMajorTickColor:v6];

  tickColor = [paletteCopy tickColor];
  [paletteCopy smallTickValue];
  v8 = NTKColorByPremultiplyingAlpha();
  [(NTKChronoDialView *)self setMinorTickColor:v8];

  labelColor = [paletteCopy labelColor];

  [(NTKChronoDialView *)self setTextColor:labelColor];
}

- (void)createText
{
  timescale = [(NTKChronoDialView *)self timescale];
  if (timescale > 1)
  {
    if (timescale == 2)
    {

      [(NTKChronoDialView *)self create6SecondsText];
    }

    else if (timescale == 3)
    {

      [(NTKChronoDialView *)self create3SecondsText];
    }
  }

  else if (timescale)
  {
    if (timescale == 1)
    {

      [(NTKChronoDialView *)self create30SecondsText];
    }
  }

  else
  {

    [(NTKChronoDialView *)self create60SecondsText];
  }
}

- (void)createSubdialText
{
  timescale = [(NTKChronoDialView *)self timescale];
  if (timescale > 1)
  {
    if (timescale == 2)
    {

      [(NTKChronoDialView *)self create6SecondsSubdialText];
    }

    else if (timescale == 3)
    {

      [(NTKChronoDialView *)self create3SecondsSubdialText];
    }
  }

  else if (timescale)
  {
    if (timescale == 1)
    {

      [(NTKChronoDialView *)self create30SecondsSubdialText];
    }
  }

  else
  {

    [(NTKChronoDialView *)self create60SecondsSubdialText];
  }
}

- (void)createClockText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v25 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v25 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_42AC;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:12 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)createClockSubdialText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v26 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v26 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4530;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:4 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)create60SecondsText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v25 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v25 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4798;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:12 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)create60SecondsSubdialText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v26 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v26 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4A20;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:6 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)create30SecondsText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v25 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v25 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4C84;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:15 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)create30SecondsSubdialText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v26 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v26 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4F0C;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:5 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)create6SecondsText
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v28);

  v5 = *(&v30 + 1);
  v4 = v31;
  v6 = [CLKFont systemFontOfSize:*(&v30 + 1)];
  v7 = [CLKFont systemFontOfSize:*&v4];
  v8 = [v7 CLKFontWithStylisticSet:1];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_51BC;
  v11[3] = &unk_1C750;
  objc_copyWeak(v14, &location);
  v9 = v6;
  v12 = v9;
  v14[1] = v5;
  v10 = v8;
  v14[2] = v4;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v13 = v10;
  v26 = v39;
  [(NTKChronoDialView *)self addTextWithCount:30 configurationBlock:v11];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)create6SecondsSubdialText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v26 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v26 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_54B4;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:3 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)create3SecondsText
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v28);

  v5 = *(&v30 + 1);
  v4 = v31;
  v6 = [CLKFont systemFontOfSize:*(&v30 + 1)];
  v7 = [CLKFont systemFontOfSize:*&v4];
  v8 = [v7 CLKFontWithStylisticSet:1];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5760;
  v11[3] = &unk_1C750;
  objc_copyWeak(v14, &location);
  v9 = v6;
  v12 = v9;
  v14[1] = v5;
  v10 = v8;
  v14[2] = v4;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v13 = v10;
  v26 = v39;
  [(NTKChronoDialView *)self addTextWithCount:30 configurationBlock:v11];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)create3SecondsSubdialText
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKChronoDialView *)self device];
  sub_5D64(device, &v23);

  v4 = *(&v26 + 1);
  v5 = [CLKFont systemFontOfSize:*(&v26 + 1)];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5A54;
  v7[3] = &unk_1C728;
  objc_copyWeak(v9, &location);
  v6 = v5;
  v9[1] = v4;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v8 = v6;
  v21 = v34;
  v13 = v26;
  v14 = v27;
  [(NTKChronoDialView *)self addTextWithCount:2 configurationBlock:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (CGRect)_boundsForText:(id)text font:(id)font
{
  fontCopy = font;
  textCopy = text;
  v7 = CLKLocaleCurrentNumberSystem();
  [fontCopy capHeight];
  v9 = v8;
  if (v7 == 2)
  {
    [fontCopy descender];
    v11 = v9 - v10;
  }

  else
  {
    v11 = v8 + 1.0;
  }

  v23 = NSFontAttributeName;
  v24 = fontCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [textCopy boundingRectWithSize:3 options:v12 attributes:0 context:{CGSizeZero.width, CGSizeZero.height}];
  v14 = v13;

  [fontCopy ascender];
  v16 = v15;
  [fontCopy capHeight];
  v18 = v17;

  v19 = v16 - v18 + -1.0;
  v20 = ceil(v11);
  v21 = 0.0;
  v22 = v14;
  result.size.height = v20;
  result.size.width = v22;
  result.origin.y = v19;
  result.origin.x = v21;
  return result;
}

@end