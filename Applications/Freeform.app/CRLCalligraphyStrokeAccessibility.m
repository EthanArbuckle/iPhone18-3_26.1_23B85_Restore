@interface CRLCalligraphyStrokeAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)crlaxKnownStrokePatternLocalizationStrings;
@end

@implementation CRLCalligraphyStrokeAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)crlaxKnownStrokePatternLocalizationStrings
{
  v2 = qword_101A351B0;
  if (!qword_101A351B0)
  {
    v8 = @"Calligraphy";
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Calligraphy" value:0 table:0];
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = qword_101A351B0;
    qword_101A351B0 = v5;

    v2 = qword_101A351B0;
  }

  return v2;
}

@end