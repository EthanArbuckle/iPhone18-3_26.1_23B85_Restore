@interface NTKSwissMoonPhaseDailyView
- (NTKSwissMoonPhaseDailyView)initWithFrame:(CGRect)frame;
@end

@implementation NTKSwissMoonPhaseDailyView

- (NTKSwissMoonPhaseDailyView)initWithFrame:(CGRect)frame
{
  v54.receiver = self;
  v54.super_class = NTKSwissMoonPhaseDailyView;
  v3 = [(NTKSwissMoonPhaseDailyView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    centerXAnchor = [(UILabel *)v3->_dayLabel centerXAnchor];
    centerXAnchor2 = [(NTKSwissMoonPhaseDailyView *)v3 centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v29 addObject:v32];

    firstBaselineAnchor = [(UILabel *)v3->_dayLabel firstBaselineAnchor];
    topAnchor = [(NTKSwissMoonPhaseDailyView *)v3 topAnchor];
    v35 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v6];
    [v29 addObject:v35];

    centerXAnchor3 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView centerXAnchor];
    centerXAnchor4 = [(NTKSwissMoonPhaseDailyView *)v3 centerXAnchor];
    v38 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v29 addObject:v38];

    centerYAnchor = [(NTKAstronomyRichComplicationContentView *)v3->_moonView centerYAnchor];
    centerYAnchor2 = [(NTKSwissMoonPhaseDailyView *)v3 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v29 addObject:v41];

    widthAnchor = [(NTKAstronomyRichComplicationContentView *)v3->_moonView widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:v7];
    [v29 addObject:v43];

    heightAnchor = [(NTKAstronomyRichComplicationContentView *)v3->_moonView heightAnchor];
    widthAnchor2 = [(NTKAstronomyRichComplicationContentView *)v3->_moonView widthAnchor];
    v46 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    [v29 addObject:v46];

    centerXAnchor5 = [(UILabel *)v3->_weekdayLabel centerXAnchor];
    centerXAnchor6 = [(NTKSwissMoonPhaseDailyView *)v3 centerXAnchor];
    v49 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v29 addObject:v49];

    bottomAnchor = [(NTKSwissMoonPhaseDailyView *)v3 bottomAnchor];
    firstBaselineAnchor2 = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:v9];
    [v29 addObject:v52];

    [NSLayoutConstraint activateConstraints:v29];
  }

  return v3;
}

@end