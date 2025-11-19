@interface HSPCPasscodeEntryView
+ (CGSize)preferredSizeForNumberOfDigits:(int64_t)a3;
+ (CGSize)wellSizeForNumberOfDigits:(int64_t)a3;
+ (double)interWellSpacingForNumberOfDigits:(int64_t)a3;
+ (id)fontForNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4;
- (BOOL)becomeFirstResponder;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (HSPCPasscodeEntryView)initWithNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4 delegate:(id)a5;
- (HSPCPasscodeEntryViewDelegate)delegate;
- (NSString)text;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateWells;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)setText:(id)a3;
- (void)tintColorDidChange;
@end

@implementation HSPCPasscodeEntryView

- (HSPCPasscodeEntryView)initWithNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4 delegate:(id)a5
{
  v8 = a5;
  [objc_opt_class() preferredSizeForNumberOfDigits:a3];
  v67.receiver = self;
  v67.super_class = HSPCPasscodeEntryView;
  v9 = [(HSPCPasscodeEntryView *)&v67 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10 = v9;
  if (v9)
  {
    v57 = v8;
    objc_storeWeak(&v9->_delegate, v8);
    v10->_keyboardType = 11;
    v10->_numberOfDigits = a3;
    v10->_useMonospacedFont = a4;
    v11 = +[NSMutableString string];
    text = v10->_text;
    v10->_text = v11;

    v13 = vcvtpd_u64_f64(vcvtd_n_f64_s64(a3, 3uLL));
    v63 = [[NSMutableArray alloc] initWithCapacity:v13];
    v14 = +[NSMutableArray array];
    v62 = v13;
    if (v13)
    {
      v15 = 0;
      v60 = v13 - 1;
      v61 = vcvtpd_u64_f64(a3 / v13);
      v59 = a3 - (v13 - 1) * v61;
      do
      {
        v16 = [objc_opt_class() fontForNumberOfDigits:v61 useMonospacedFont:v10->_useMonospacedFont];
        [objc_opt_class() interWellSpacingForNumberOfDigits:v61];
        v18 = v17;
        [objc_opt_class() wellCornerRadiusForNumberOfDigits:v61];
        v20 = v19;
        [objc_opt_class() wellSizeForNumberOfDigits:v61];
        v22 = v21;
        v64 = v15;
        v24 = ((v18 + v23) * (v61 - v59) * 0.5);
        if (v60 == v15)
        {
          v25 = v59;
        }

        else
        {
          v25 = v61;
        }

        if (v60 == v15)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0.0;
        }

        v27 = [[NSMutableArray alloc] initWithCapacity:v25];
        [v63 addObject:v27];
        if (v25)
        {
          v28 = v18 + v22;
          v29 = (v18 + v22) * v15;
          v30 = -(v28 * (v60 - v15));
          do
          {
            v31 = objc_alloc_init(HSPCPasscodeWell);
            [(HSPCPasscodeWell *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
            v32 = [(HSPCPasscodeWell *)v31 label];
            [v32 setFont:v16];

            [(HSPCPasscodeWell *)v31 _setContinuousCornerRadius:v20];
            [(HSPCPasscodeEntryView *)v10 addSubview:v31];
            v33 = [v27 lastObject];
            [v27 addObject:v31];
            if (v33)
            {
              v34 = [(HSPCPasscodeWell *)v31 widthAnchor];
              v35 = [v33 widthAnchor];
              v36 = [v34 constraintEqualToAnchor:v35];
              [v14 addObject:v36];

              v37 = [(HSPCPasscodeWell *)v31 leadingAnchor];
              v38 = [v33 trailingAnchor];
              v39 = v37;
              v40 = v38;
              v41 = v18;
            }

            else
            {
              v37 = [(HSPCPasscodeWell *)v31 leadingAnchor];
              v38 = [(HSPCPasscodeEntryView *)v10 leadingAnchor];
              v39 = v37;
              v40 = v38;
              v41 = v26;
            }

            v42 = [v39 constraintEqualToAnchor:v40 constant:{v41, v57}];
            [v14 addObject:v42];

            if (v25 == 1)
            {
              v43 = [(HSPCPasscodeEntryView *)v10 trailingAnchor];
              v44 = [(HSPCPasscodeWell *)v31 trailingAnchor];
              v45 = [v43 constraintEqualToAnchor:v44 constant:v26];
              [v14 addObject:v45];
            }

            v46 = [(HSPCPasscodeWell *)v31 topAnchor];
            v47 = [(HSPCPasscodeEntryView *)v10 topAnchor];
            v48 = [v46 constraintEqualToAnchor:v47 constant:v29];
            [v14 addObject:v48];

            v49 = [(HSPCPasscodeWell *)v31 bottomAnchor];
            v50 = [(HSPCPasscodeEntryView *)v10 bottomAnchor];
            v51 = [v49 constraintEqualToAnchor:v50 constant:v30];
            [v14 addObject:v51];

            --v25;
          }

          while (v25);
        }

        v15 = v64 + 1;
      }

      while (v64 + 1 != v62);
    }

    [NSLayoutConstraint activateConstraints:v14, v57];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000476CC;
    v65[3] = &unk_1000C7690;
    v66 = objc_alloc_init(NSMutableArray);
    v52 = v66;
    [v63 enumerateObjectsUsingBlock:v65];
    v53 = [v52 copy];
    wells = v10->_wells;
    v10->_wells = v53;

    [(HSPCPasscodeEntryView *)v10 _updateWells];
    v55 = v10;

    v8 = v58;
  }

  return v10;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HSPCPasscodeEntryView;
  [(HSPCPasscodeEntryView *)&v3 tintColorDidChange];
  [(HSPCPasscodeEntryView *)self _updateWells];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = HSPCPasscodeEntryView;
  [(HSPCPasscodeEntryView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(HSPCPasscodeEntryView *)self _updateWells];
}

- (NSString)text
{
  v2 = [(NSMutableString *)self->_text copy];

  return v2;
}

- (void)setText:(id)a3
{
  v12 = a3;
  if (([(NSMutableString *)self->_text isEqualToString:?]& 1) == 0)
  {
    v4 = [v12 length];
    numberOfDigits = self->_numberOfDigits;
    if (v4 > numberOfDigits)
    {
      v9 = [NSString stringWithFormat:@"'%@' is too long for %@ _numberOfDigits=%ld", v12, self, numberOfDigits];;
      v10 = [NSException exceptionWithName:NSInvalidArgumentException reason:v9 userInfo:0];
      v11 = v10;

      objc_exception_throw(v10);
    }

    v6 = [v12 uppercaseString];
    v7 = [v6 mutableCopy];
    text = self->_text;
    self->_text = v7;

    [(HSPCPasscodeEntryView *)self _updateWells];
  }
}

- (void)_updateWells
{
  v3 = [(NSMutableString *)self->_text length];
  v4 = [(HSPCPasscodeEntryView *)self traitCollection];
  [v4 displayScale];
  v6 = 1.0 / v5;

  wells = self->_wells;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000479DC;
  v8[3] = &unk_1000C76B8;
  v8[4] = self;
  v8[5] = v3;
  *&v8[6] = v6;
  [(NSArray *)wells enumerateObjectsUsingBlock:v8];
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  numberOfDigits = self->_numberOfDigits;

  [v3 preferredSizeForNumberOfDigits:numberOfDigits];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)wellSizeForNumberOfDigits:(int64_t)a3
{
  v3 = 8;
  if (a3 < 8)
  {
    v3 = a3;
  }

  v4 = vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmlaq_n_f64(xmmword_100092D90, xmmword_100092D80, (v3 - 4)))));
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

+ (double)interWellSpacingForNumberOfDigits:(int64_t)a3
{
  v3 = 8;
  if (a3 < 8)
  {
    v3 = a3;
  }

  v4 = (v3 - 4) * -0.5 + 8.0;
  return roundf(v4);
}

+ (CGSize)preferredSizeForNumberOfDigits:(int64_t)a3
{
  v4 = vcvtd_n_f64_s64(a3, 3uLL);
  v5 = vcvtpd_u64_f64(v4);
  v6 = ceil(v4);
  v7 = a3 / v6;
  v8 = ceil(v7);
  v9 = vcvtpd_u64_f64(v7);
  [a1 wellSizeForNumberOfDigits:v9];
  v11 = v10;
  v13 = v12;
  [a1 interWellSpacingForNumberOfDigits:v9];
  v15 = v14 * (v5 - 1) + v13 * v6;
  v16 = v14 * (v9 - 1) + v11 * v8;
  result.height = v15;
  result.width = v16;
  return result;
}

+ (id)fontForNumberOfDigits:(int64_t)a3 useMonospacedFont:(BOOL)a4
{
  v4 = 8;
  if (a3 < 8)
  {
    v4 = a3;
  }

  v5 = 28.0 - (v4 - 4);
  v6 = roundf(v5);
  if (a4)
  {
    [UIFont monospacedSystemFontOfSize:v6 weight:UIFontWeightSemibold];
  }

  else
  {
    [UIFont systemFontOfSize:v6 weight:UIFontWeightMedium];
  }
  v7 = ;

  return v7;
}

- (BOOL)becomeFirstResponder
{
  v7.receiver = self;
  v7.super_class = HSPCPasscodeEntryView;
  v3 = [(HSPCPasscodeEntryView *)&v7 becomeFirstResponder];
  if (v3)
  {
    [(HSPCPasscodeEntryView *)self _updateWells];
    v4 = [(HSPCPasscodeEntryView *)self delegate];

    if (v4)
    {
      v5 = [(HSPCPasscodeEntryView *)self delegate];
      [v5 passcodeEntryViewDidBecomeFirstResponder:self];
    }
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = HSPCPasscodeEntryView;
  v3 = [(HSPCPasscodeEntryView *)&v5 resignFirstResponder];
  if (v3)
  {
    [(HSPCPasscodeEntryView *)self _updateWells];
  }

  return v3;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = HSPCPasscodeEntryView;
  v5 = [(HSPCPasscodeEntryView *)&v7 beginTrackingWithTouch:a3 withEvent:a4];
  if (v5)
  {
    [(HSPCPasscodeEntryView *)self becomeFirstResponder];
  }

  return v5;
}

- (void)insertText:(id)a3
{
  v6 = a3;
  if ([(NSMutableString *)self->_text length]< self->_numberOfDigits)
  {
    text = self->_text;
    v5 = [v6 uppercaseString];
    [(NSMutableString *)text appendString:v5];

    [(HSPCPasscodeEntryView *)self _updateWells];
    [(HSPCPasscodeEntryView *)self sendActionsForControlEvents:4096];
  }
}

- (void)deleteBackward
{
  if ([(NSMutableString *)self->_text length])
  {
    [(NSMutableString *)self->_text replaceCharactersInRange:[(NSMutableString *)self->_text length]- 1 withString:1, &stru_1000C89F8];
    [(HSPCPasscodeEntryView *)self _updateWells];

    [(HSPCPasscodeEntryView *)self sendActionsForControlEvents:4096];
  }
}

- (HSPCPasscodeEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end