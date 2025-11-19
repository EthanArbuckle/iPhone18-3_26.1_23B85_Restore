@interface NTKSwissMoonPhaseDailyView
- (NTKSwissMoonPhaseDailyView)initWithFrame:(CGRect)a3;
@end

@implementation NTKSwissMoonPhaseDailyView

- (NTKSwissMoonPhaseDailyView)initWithFrame:(CGRect)a3
{
  v54.receiver = self;
  v54.super_class = NTKSwissMoonPhaseDailyView;
  v3 = [(NTKSwissMoonPhaseDailyView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CLKDevice currentDevice];
    sub_4748(v4, v4);
    v5 = *&qword_12020;
    v6 = *&qword_12028;
    v7 = *&qword_12030;
    v8 = *&qword_12038;
    v9 = *&qword_12040;

    v10 = objc_opt_new();
    v11 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v5 design:UIFontWeightSemibold];
    [(UILabel *)v10 setFont:v11];

    v12 = +[UIColor grayColor];
    [(UILabel *)v10 setTextColor:v12];

    [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1144750080;
    [(UILabel *)v10 setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1144750080;
    [(UILabel *)v10 setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v10 setContentCompressionResistancePriority:0 forAxis:v15];
    dayLabel = v3->_dayLabel;
    v3->_dayLabel = v10;

    [(NTKSwissMoonPhaseDailyView *)v3 addSubview:v3->_dayLabel];
    v17 = [NTKAstronomyRichComplicationContentView alloc];
    v18 = +[CLKDevice currentDevice];
    v19 = [(NTKAstronomyRichComplicationContentView *)v17 initForDevice:v18 family:10 diameter:v7];

    [(NTKAstronomyRichComplicationContentView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1132068864;
    [(NTKAstronomyRichComplicationContentView *)v19 setContentHuggingPriority:1 forAxis:v20];
    moonView = v3->_moonView;
    v3->_moonView = v19;

    [(NTKSwissMoonPhaseDailyView *)v3 addSubview:v3->_moonView];
    v22 = objc_opt_new();
    v23 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v8 design:UIFontWeightSemibold];
    [(UILabel *)v22 setFont:v23];

    [(UILabel *)v22 setTextAlignment:1];
    v24 = [UIColor colorWithWhite:1.0 alpha:0.7];
    [(UILabel *)v22 setTextColor:v24];

    [(UILabel *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1144750080;
    [(UILabel *)v22 setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1144750080;
    [(UILabel *)v22 setContentHuggingPriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [(UILabel *)v22 setContentCompressionResistancePriority:0 forAxis:v27];
    weekdayLabel = v3->_weekdayLabel;
    v3->_weekdayLabel = v22;

    [(NTKSwissMoonPhaseDailyView *)v3 addSubview:v3->_weekdayLabel];
    v29 = +[NSMutableArray array];
    v30 = [(UILabel *)v3->_dayLabel centerXAnchor];
    v31 = [(NTKSwissMoonPhaseDailyView *)v3 centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v29 addObject:v32];

    v33 = [(UILabel *)v3->_dayLabel firstBaselineAnchor];
    v34 = [(NTKSwissMoonPhaseDailyView *)v3 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v6];
    [v29 addObject:v35];

    v36 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView centerXAnchor];
    v37 = [(NTKSwissMoonPhaseDailyView *)v3 centerXAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v29 addObject:v38];

    v39 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView centerYAnchor];
    v40 = [(NTKSwissMoonPhaseDailyView *)v3 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v29 addObject:v41];

    v42 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView widthAnchor];
    v43 = [v42 constraintEqualToConstant:v7];
    [v29 addObject:v43];

    v44 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView heightAnchor];
    v45 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView widthAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    [v29 addObject:v46];

    v47 = [(UILabel *)v3->_weekdayLabel centerXAnchor];
    v48 = [(NTKSwissMoonPhaseDailyView *)v3 centerXAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v29 addObject:v49];

    v50 = [(NTKSwissMoonPhaseDailyView *)v3 bottomAnchor];
    v51 = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:v9];
    [v29 addObject:v52];

    [NSLayoutConstraint activateConstraints:v29];
  }

  return v3;
}

@end