@interface NTKSquallPicayuneView
- (NTKSquallPicayuneView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation NTKSquallPicayuneView

- (NTKSquallPicayuneView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v11.receiver = self;
  v11.super_class = NTKSquallPicayuneView;
  v4 = [(NTKSquallPicayuneView *)&v11 initWithDevice:a3 clockTimer:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(NTKSquallPicayuneView *)v4 hourLabel];
    v7 = [v6 timeFormatter];
    [v7 setZeroPadTimeSubstringToSeparatorText:1];

    v8 = [(NTKSquallPicayuneView *)v5 inactiveHourLabel];
    v9 = [v8 timeFormatter];
    [v9 setZeroPadTimeSubstringToSeparatorText:1];

    [(NTKSquallPicayuneView *)v5 enumerateLabelsWithBlock:&stru_10468];
  }

  return v5;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = NTKSquallPicayuneView;
  [(NTKSquallPicayuneView *)&v51 layoutSubviews];
  v3 = [(NTKSquallPicayuneView *)self device];
  v50 = sub_3DEC(v3, v3);
  v5 = v4;

  [(NTKSquallPicayuneView *)self bounds];
  Width = CGRectGetWidth(v52);
  v49 = Width;
  [(NTKSquallPicayuneView *)self bounds];
  Height = CGRectGetHeight(v53);
  v8 = [(NTKSquallPicayuneView *)self minuteLabel];
  [v8 frame];
  v10 = v9;

  v11 = [(NTKSquallPicayuneView *)self hourLabel];
  [v11 frame];
  v13 = v12;

  if (v10 >= v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = [(NTKSquallPicayuneView *)self minuteLabel];
  [v15 opticalInsets];
  v17 = v16;

  v18 = [(NTKSquallPicayuneView *)self hourLabel];
  [v18 opticalInsets];
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
  v24 = [(NTKSquallPicayuneView *)self minuteLabel];
  [v24 frame];
  v26 = v25;
  v28 = v27;

  [(NTKSquallPicayuneView *)self paddingInsets];
  v30 = v21 + Width - v29 - v14;
  v31 = [(NTKSquallPicayuneView *)self minuteLabel];
  [v31 _lastLineBaseline];
  v33 = Height - v32 - v23;

  v34 = [(NTKSquallPicayuneView *)self minuteLabel];
  [v34 setFrame:{v30, v33, v26, v28}];

  v35 = [(NTKSquallPicayuneView *)self inactiveMinuteLabel];
  [v35 setFrame:{v30, v33, v26, v28}];

  v36 = v50 + v23;
  v37 = [(NTKSquallPicayuneView *)self hourLabel];
  [v37 frame];
  v39 = v38;
  v41 = v40;

  [(NTKSquallPicayuneView *)self paddingInsets];
  v43 = v21 + v49 - v42 - v14;
  v44 = [(NTKSquallPicayuneView *)self hourLabel];
  [v44 _lastLineBaseline];
  v46 = Height - v45 - v36;

  v47 = [(NTKSquallPicayuneView *)self hourLabel];
  [v47 setFrame:{v43, v46, v39, v41}];

  v48 = [(NTKSquallPicayuneView *)self inactiveHourLabel];
  [v48 setFrame:{v43, v46, v39, v41}];
}

- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(NTKSquallPicayuneView *)self traitCollection];
  v7 = [v6 activeAppearance];
  v8 = [v5 activeAppearance];

  if (v7 != v8)
  {
    v9 = [(NTKSquallPicayuneView *)self traitCollection];
    if ([v9 activeAppearance])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [(NTKSquallPicayuneView *)self hourLabel];
    [v11 setAlpha:v10];

    v12 = [(NTKSquallPicayuneView *)self minuteLabel];
    [v12 setAlpha:v10];

    v13 = 1.0 - v10;
    v14 = [(NTKSquallPicayuneView *)self inactiveHourLabel];
    [v14 setAlpha:v13];

    v15 = [(NTKSquallPicayuneView *)self inactiveMinuteLabel];
    [v15 setAlpha:v13];
  }
}

@end