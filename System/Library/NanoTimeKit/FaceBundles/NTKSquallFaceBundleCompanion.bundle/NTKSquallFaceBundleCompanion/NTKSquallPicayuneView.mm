@interface NTKSquallPicayuneView
- (NTKSquallPicayuneView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation NTKSquallPicayuneView

- (NTKSquallPicayuneView)initWithDevice:(id)device clockTimer:(id)timer
{
  v11.receiver = self;
  v11.super_class = NTKSquallPicayuneView;
  v4 = [(NTKSquallPicayuneView *)&v11 initWithDevice:device clockTimer:timer];
  v5 = v4;
  if (v4)
  {
    hourLabel = [(NTKSquallPicayuneView *)v4 hourLabel];
    timeFormatter = [hourLabel timeFormatter];
    [timeFormatter setZeroPadTimeSubstringToSeparatorText:1];

    inactiveHourLabel = [(NTKSquallPicayuneView *)v5 inactiveHourLabel];
    timeFormatter2 = [inactiveHourLabel timeFormatter];
    [timeFormatter2 setZeroPadTimeSubstringToSeparatorText:1];

    [(NTKSquallPicayuneView *)v5 enumerateLabelsWithBlock:&stru_10468];
  }

  return v5;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = NTKSquallPicayuneView;
  [(NTKSquallPicayuneView *)&v51 layoutSubviews];
  device = [(NTKSquallPicayuneView *)self device];
  v50 = sub_3DEC(device, device);
  v5 = v4;

  [(NTKSquallPicayuneView *)self bounds];
  Width = CGRectGetWidth(v52);
  v49 = Width;
  [(NTKSquallPicayuneView *)self bounds];
  Height = CGRectGetHeight(v53);
  minuteLabel = [(NTKSquallPicayuneView *)self minuteLabel];
  [minuteLabel frame];
  v10 = v9;

  hourLabel = [(NTKSquallPicayuneView *)self hourLabel];
  [hourLabel frame];
  v13 = v12;

  if (v10 >= v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  minuteLabel2 = [(NTKSquallPicayuneView *)self minuteLabel];
  [minuteLabel2 opticalInsets];
  v17 = v16;

  hourLabel2 = [(NTKSquallPicayuneView *)self hourLabel];
  [hourLabel2 opticalInsets];
  v20 = v19;

  if (v17 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  [(NTKSquallPicayuneView *)self paddingInsets];
  v23 = v5 - v22;
  minuteLabel3 = [(NTKSquallPicayuneView *)self minuteLabel];
  [minuteLabel3 frame];
  v26 = v25;
  v28 = v27;

  [(NTKSquallPicayuneView *)self paddingInsets];
  v30 = v21 + Width - v29 - v14;
  minuteLabel4 = [(NTKSquallPicayuneView *)self minuteLabel];
  [minuteLabel4 _lastLineBaseline];
  v33 = Height - v32 - v23;

  minuteLabel5 = [(NTKSquallPicayuneView *)self minuteLabel];
  [minuteLabel5 setFrame:{v30, v33, v26, v28}];

  inactiveMinuteLabel = [(NTKSquallPicayuneView *)self inactiveMinuteLabel];
  [inactiveMinuteLabel setFrame:{v30, v33, v26, v28}];

  v36 = v50 + v23;
  hourLabel3 = [(NTKSquallPicayuneView *)self hourLabel];
  [hourLabel3 frame];
  v39 = v38;
  v41 = v40;

  [(NTKSquallPicayuneView *)self paddingInsets];
  v43 = v21 + v49 - v42 - v14;
  hourLabel4 = [(NTKSquallPicayuneView *)self hourLabel];
  [hourLabel4 _lastLineBaseline];
  v46 = Height - v45 - v36;

  hourLabel5 = [(NTKSquallPicayuneView *)self hourLabel];
  [hourLabel5 setFrame:{v43, v46, v39, v41}];

  inactiveHourLabel = [(NTKSquallPicayuneView *)self inactiveHourLabel];
  [inactiveHourLabel setFrame:{v43, v46, v39, v41}];
}

- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(NTKSquallPicayuneView *)self traitCollection];
  activeAppearance = [traitCollection activeAppearance];
  activeAppearance2 = [collectionCopy activeAppearance];

  if (activeAppearance != activeAppearance2)
  {
    traitCollection2 = [(NTKSquallPicayuneView *)self traitCollection];
    if ([traitCollection2 activeAppearance])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    hourLabel = [(NTKSquallPicayuneView *)self hourLabel];
    [hourLabel setAlpha:v10];

    minuteLabel = [(NTKSquallPicayuneView *)self minuteLabel];
    [minuteLabel setAlpha:v10];

    v13 = 1.0 - v10;
    inactiveHourLabel = [(NTKSquallPicayuneView *)self inactiveHourLabel];
    [inactiveHourLabel setAlpha:v13];

    inactiveMinuteLabel = [(NTKSquallPicayuneView *)self inactiveMinuteLabel];
    [inactiveMinuteLabel setAlpha:v13];
  }
}

@end