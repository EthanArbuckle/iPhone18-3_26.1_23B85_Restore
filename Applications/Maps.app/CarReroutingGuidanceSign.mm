@interface CarReroutingGuidanceSign
- (CarReroutingGuidanceSign)initWithDestination:(unint64_t)a3;
@end

@implementation CarReroutingGuidanceSign

- (CarReroutingGuidanceSign)initWithDestination:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = CarReroutingGuidanceSign;
  v3 = [(CarSpinnerGuidanceSign *)&v9 initWithDestination:a3];
  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Rerouting... [CarPlay]" value:@"localized string not found" table:0];
    [(CarSpinnerGuidanceSign *)v3 setPrimaryString:v5];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Data connection required [CarPlay]" value:@"localized string not found" table:0];
    [(CarSpinnerGuidanceSign *)v3 setMessageString:v7];
  }

  return v3;
}

@end