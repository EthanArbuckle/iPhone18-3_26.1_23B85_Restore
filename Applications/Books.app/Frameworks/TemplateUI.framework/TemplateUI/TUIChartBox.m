@interface TUIChartBox
- (id)description;
@end

@implementation TUIChartBox

- (id)description
{
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v18 = [(TUIChartBox *)self chartType];
  v17 = [(TUIChartBox *)self title];
  v15 = [(TUIChartBox *)self footer];
  v14 = [NSNumber numberWithInteger:[(TUIChartBox *)self columns]];
  [(TUIChartBox *)self cornerRadius];
  v4 = [NSNumber numberWithDouble:?];
  [(TUIChartBox *)self progress];
  v13 = [NSNumber numberWithDouble:?];
  [(TUIChartBox *)self spacing];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [(TUIChartBox *)self color];
  v7 = [(TUIChartBox *)self backgroundColor];
  v8 = [(TUIChartBox *)self shadowColor];
  v9 = [(TUIChartBox *)self fontSpec];
  v10 = [(TUIChartBox *)self fontAttributes];
  v11 = [NSString stringWithFormat:@"<%@(%p) type=%@ title=%@ footer=%@ columns=%@ cornerRadius=%@ progress=%@ spacing=%@ color=%@ backgroundColor=%@ shadowColor=%@ fontSpec=%@ fontAttributes=%@ >", v16, self, v18, v17, v15, v14, v4, v13, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end