@interface NLActivityRichComplicationBaseRingsView
- (BOOL)_ringsShouldAdoptAccentColor;
- (CLKMonochromeFilterProvider)filterProvider;
- (NLActivityRichComplicationBaseRingsView)initWithFrame:(CGRect)a3;
- (int64_t)family;
- (void)_showEmptyViews;
- (void)_updateRingWithTemplate:(id)a3;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setFilterProvider:(id)a3;
@end

@implementation NLActivityRichComplicationBaseRingsView

- (NLActivityRichComplicationBaseRingsView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = NLActivityRichComplicationBaseRingsView;
  v3 = [(NLActivityRichComplicationBaseRingsView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!v3)
  {
    return v3;
  }

  v4 = +[CLKDevice currentDevice];
  v5 = [(NLActivityRichComplicationBaseRingsView *)v3 family];
  sub_5964(v5, v4);
  if (v5 == &dword_8)
  {
    v6 = &qword_167A0;
    v7 = &qword_167A8;
    v8 = &qword_167B0;
    v9 = &qword_167B8;
  }

  else
  {
    v6 = &xmmword_16760;
    if (v5 != (&dword_8 + 2))
    {
      if (v5 != &dword_C)
      {
        _HKInitializeLogging();
        v10 = HKLogActivity;
        v7 = &xmmword_16760 + 1;
        v8 = &qword_16770;
        v9 = &qword_16778;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
        {
          sub_9574(v5, v10);
        }

        goto LABEL_10;
      }

      v6 = &xmmword_16780;
    }

    v7 = v6 + 1;
    v8 = (v6 + 1);
    v9 = v6 + 3;
  }

LABEL_10:
  v11 = *v6;
  v12 = *v7;
  v13 = *v8;
  v14 = *v9;

  v15 = [[NTKRingsAndDotsView alloc] initWithFrame:CGRectZero.origin.x diameter:CGRectZero.origin.y ringWidth:CGRectZero.size.width ringGapWidth:CGRectZero.size.height overlapStrokeWidth:{v13, v11, v12, v14}];
  ringsView = v3->_ringsView;
  v3->_ringsView = v15;

  if ([(NLActivityRichComplicationBaseRingsView *)v3 _ringsShouldAdoptAccentColor])
  {
    [(NTKRingsAndDotsView *)v3->_ringsView setShouldUseMonochromeAccentColor:1];
  }

  v17 = v3->_ringsView;
  v18 = NTKMoveNonGradientTextColor();
  v24[0] = v18;
  v19 = NTKExerciseNonGradientTextColor();
  v24[1] = v19;
  v20 = NTKStandNonGradientTextColor();
  v24[2] = v20;
  v21 = [NSArray arrayWithObjects:v24 count:3];
  [(NTKRingsAndDotsView *)v17 setRingColors:v21];

  [(NLActivityRichComplicationBaseRingsView *)v3 _showEmptyViews];
  [(NLActivityRichComplicationBaseRingsView *)v3 addSubview:v3->_ringsView];
  return v3;
}

- (BOOL)_ringsShouldAdoptAccentColor
{
  v3 = +[CLKDevice currentDevice];
  v4 = NTKShowGossamerUI();

  return v4 && (([(NLActivityRichComplicationBaseRingsView *)self family]- 10) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NLActivityRichComplicationBaseRingsView;
  [(NLActivityRichComplicationBaseRingsView *)&v11 layoutSubviews];
  [(NLActivityRichComplicationBaseRingsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  if (!CGRectEqualToRect(self->_prevLayoutBounds, v12))
  {
    [(NTKRingsAndDotsView *)self->_ringsView setFrame:v4, v6, v8, v10];
    self->_prevLayoutBounds.origin.x = v4;
    self->_prevLayoutBounds.origin.y = v6;
    self->_prevLayoutBounds.size.width = v8;
    self->_prevLayoutBounds.size.height = v10;
  }
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v6 = [v5 objectForKeyedSubscript:@"NLActivityRichComplicationActivityTemplateKey"];

  if ([v6 dotsAreHidden])
  {
    [(NLActivityRichComplicationBaseRingsView *)self _showEmptyViews];
  }

  else
  {
    [(NLActivityRichComplicationBaseRingsView *)self _updateRingWithTemplate:v6];
  }
}

- (void)setFilterProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_filterProvider, v4);
  [(NTKRingsAndDotsView *)self->_ringsView setFilterProvider:v4];
}

- (void)_showEmptyViews
{
  v3 = +[NTKRingsAndDotsView emptyFillFractions];
  v4 = [v3 mutableCopy];
  ringsFillFractions = self->_ringsFillFractions;
  self->_ringsFillFractions = v4;

  ringsView = self->_ringsView;
  v7 = self->_ringsFillFractions;

  [(NTKRingsAndDotsView *)ringsView setRingsFillFractions:v7];
}

- (void)_updateRingWithTemplate:(id)a3
{
  v17 = a3;
  [v17 movePercentComplete];
  if (v4 < 0.00000011920929)
  {
    v4 = 0.00000011920929;
  }

  v5 = [NSNumber numberWithDouble:v4];
  v6 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:0];
  v7 = [v5 isEqualToNumber:v6];

  if ((v7 & 1) == 0)
  {
    [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:0 withObject:v5];
  }

  [v17 exercisePercentComplete];
  if (v8 < 0.00000011920929)
  {
    v8 = 0.00000011920929;
  }

  v9 = [NSNumber numberWithDouble:v8];
  v10 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:1];
  v11 = [v9 isEqualToNumber:v10];

  if (v11)
  {
    v12 = v7 ^ 1;
  }

  else
  {
    v12 = 1;
    [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:1 withObject:v9];
  }

  [v17 standPercentComplete];
  if (v13 < 0.00000011920929)
  {
    v13 = 0.00000011920929;
  }

  v14 = [NSNumber numberWithDouble:v13];
  v15 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:2];
  v16 = [v14 isEqualToNumber:v15];

  if ((v16 & 1) == 0)
  {
    [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:2 withObject:v14];
    goto LABEL_16;
  }

  if (v12)
  {
LABEL_16:
    [(NTKRingsAndDotsView *)self->_ringsView setRingsFillFractions:self->_ringsFillFractions];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (int64_t)family
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

@end