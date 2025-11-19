@interface AKStatistics
+ (id)nameForAnnotation:(id)a3;
+ (id)nameForClassName:(id)a3;
- (void)_logCoreAnalyticsAction:(id)a3;
- (void)_logCoreAnalyticsAnnotationCreateActionForAnnotationType:(id)a3 count:(unint64_t)a4;
- (void)_logCoreAnalyticsHUDPickActionForAnnotationType:(id)a3;
- (void)logAnnotationAdded:(id)a3;
- (void)logDocumentSaved;
- (void)logInkAnnotationStrokeAdded:(id)a3;
- (void)logShapeDetectionHUDPickedShape:(id)a3;
- (void)logShapeDetectionHUDShown;
- (void)resetLogging;
@end

@implementation AKStatistics

- (void)resetLogging
{
  v3 = [MEMORY[0x277CCA940] set];
  [(AKStatistics *)self setAnnotationsCounts:v3];
}

- (void)logAnnotationAdded:(id)a3
{
  v10 = a3;
  v4 = [(AKStatistics *)self annotationsCounts];

  if (v4)
  {
    v5 = [(AKStatistics *)self clientPrefix];
    if (!v5 || (v6 = v5, [(AKStatistics *)self documentType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      NSLog(&cfstr_WarningMissing.isa);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = [objc_opt_class() nameForAnnotation:v10];
        v9 = [(AKStatistics *)self annotationsCounts];
        [v9 addObject:v8];
      }
    }
  }
}

- (void)logInkAnnotationStrokeAdded:(id)a3
{
  v4 = a3;
  v5 = [(AKStatistics *)self clientPrefix];
  if (!v5 || (v6 = v5, [(AKStatistics *)self documentType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  v9 = [objc_opt_class() nameForClassName:v4];

  v8 = [(AKStatistics *)self annotationsCounts];
  [v8 addObject:v9];
}

- (void)_logCoreAnalyticsAction:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)_logCoreAnalyticsHUDPickActionForAnnotationType:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)_logCoreAnalyticsAnnotationCreateActionForAnnotationType:(id)a3 count:(unint64_t)a4
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (void)logShapeDetectionHUDShown
{
  v3 = [(AKStatistics *)self clientPrefix];
  if (!v3 || (v4 = v3, [(AKStatistics *)self documentType], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  [(AKStatistics *)self _logCoreAnalyticsAction:@"shapeDetectionShown"];
}

- (void)logShapeDetectionHUDPickedShape:(id)a3
{
  v4 = a3;
  v8 = [objc_opt_class() nameForAnnotation:v4];

  v5 = [(AKStatistics *)self clientPrefix];
  if (!v5 || (v6 = v5, [(AKStatistics *)self documentType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  [(AKStatistics *)self _logCoreAnalyticsHUDPickActionForAnnotationType:v8];
}

- (void)logDocumentSaved
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(AKStatistics *)self clientPrefix];
  if (!v3 || (v4 = v3, [(AKStatistics *)self documentType], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(AKStatistics *)self annotationsCounts];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(AKStatistics *)self annotationsCounts];
        v13 = [v12 countForObject:v11];

        [(AKStatistics *)self _logCoreAnalyticsAnnotationCreateActionForAnnotationType:v11 count:v13];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(AKStatistics *)self _logCoreAnalyticsAction:@"save"];
}

+ (id)nameForClassName:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"AK" withString:&stru_28519E870];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"Annotation" withString:&stru_28519E870];

  return v4;
}

+ (id)nameForAnnotation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [objc_opt_class() nameForClassName:v5];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  v5 = v3;
  v9 = [v5 arrowHeadStyle];
  if ((v9 - 1) < 2)
  {
    v7 = @"SingleArrow";
  }

  else if (v9)
  {
    if (v9 != 3)
    {
      v10 = objc_opt_class();
      v6 = NSStringFromClass(v10);
      goto LABEL_4;
    }

    v7 = @"DoubleArrow";
  }

  else
  {
    v7 = @"Line";
  }

LABEL_5:

  return v7;
}

@end