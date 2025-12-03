@interface TUIChartBox
- (id)description;
@end

@implementation TUIChartBox

- (id)description
{
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  chartType = [(TUIChartBox *)self chartType];
  title = [(TUIChartBox *)self title];
  footer = [(TUIChartBox *)self footer];
  v14 = [NSNumber numberWithInteger:[(TUIChartBox *)self columns]];
  [(TUIChartBox *)self cornerRadius];
  v4 = [NSNumber numberWithDouble:?];
  [(TUIChartBox *)self progress];
  v13 = [NSNumber numberWithDouble:?];
  [(TUIChartBox *)self spacing];
  v5 = [NSNumber numberWithDouble:?];
  color = [(TUIChartBox *)self color];
  backgroundColor = [(TUIChartBox *)self backgroundColor];
  shadowColor = [(TUIChartBox *)self shadowColor];
  fontSpec = [(TUIChartBox *)self fontSpec];
  fontAttributes = [(TUIChartBox *)self fontAttributes];
  v11 = [NSString stringWithFormat:@"<%@(%p) type=%@ title=%@ footer=%@ columns=%@ cornerRadius=%@ progress=%@ spacing=%@ color=%@ backgroundColor=%@ shadowColor=%@ fontSpec=%@ fontAttributes=%@ >", v16, self, chartType, title, footer, v14, v4, v13, v5, color, backgroundColor, shadowColor, fontSpec, fontAttributes];

  return v11;
}

@end