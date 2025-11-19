@interface CRLGradientFillAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSArray)_crlaxGradientStops;
- (NSArray)crlaxApproximateColorStopNames;
- (NSString)crlaxGradientTypeDescription;
- (NSString)crlaxStyleInfoDescription;
- (unint64_t)_crlaxGradientType;
@end

@implementation CRLGradientFillAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxGradientTypeDescription
{
  v2 = [(CRLGradientFillAccessibility *)self _crlaxGradientType];
  if (!v2)
  {
    v3 = @"Linear gradient";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = @"Radial gradient";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (NSArray)crlaxApproximateColorStopNames
{
  v3 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(CRLGradientFillAccessibility *)self _crlaxGradientStops];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v10 = v9;
        v11 = objc_opt_class();
        v12 = __CRLAccessibilityCastAsSafeCategory(v11, v10, 1, &v17);
        if (v17 == 1)
        {
          abort();
        }

        v13 = v12;

        v14 = [v13 crlaxColor];
        v15 = [v14 crlaxStyleInfoDescription];

        if ([v15 length])
        {
          [v3 addObject:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)crlaxStyleInfoDescription
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"to" value:0 table:0];

  v5 = [(CRLGradientFillAccessibility *)self crlaxApproximateColorStopNames];
  v6 = [NSString stringWithFormat:@" %@ ", v4];
  v7 = [v5 componentsJoinedByString:v6];

  v8 = [(CRLGradientFillAccessibility *)self crlaxGradientTypeDescription];
  v15 = __CRLAccessibilityStringForVariables(1, v8, v9, v10, v11, v12, v13, v14, v7);

  return v15;
}

- (NSArray)_crlaxGradientStops
{
  v2 = [(CRLGradientFillAccessibility *)self crlaxTarget];
  v3 = [v2 gradientStops];

  return v3;
}

- (unint64_t)_crlaxGradientType
{
  v2 = [(CRLGradientFillAccessibility *)self crlaxTarget];
  v3 = [v2 gradientType];

  return v3;
}

@end