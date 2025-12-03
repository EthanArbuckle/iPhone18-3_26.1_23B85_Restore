@interface AKStatistics
+ (id)nameForAnnotation:(id)annotation;
+ (id)nameForClassName:(id)name;
- (void)_logCoreAnalyticsAction:(id)action;
- (void)_logCoreAnalyticsAnnotationCreateActionForAnnotationType:(id)type count:(unint64_t)count;
- (void)_logCoreAnalyticsHUDPickActionForAnnotationType:(id)type;
- (void)logAnnotationAdded:(id)added;
- (void)logDocumentSaved;
- (void)logInkAnnotationStrokeAdded:(id)added;
- (void)logShapeDetectionHUDPickedShape:(id)shape;
- (void)logShapeDetectionHUDShown;
- (void)resetLogging;
@end

@implementation AKStatistics

- (void)resetLogging
{
  v3 = [MEMORY[0x277CCA940] set];
  [(AKStatistics *)self setAnnotationsCounts:v3];
}

- (void)logAnnotationAdded:(id)added
{
  addedCopy = added;
  annotationsCounts = [(AKStatistics *)self annotationsCounts];

  if (annotationsCounts)
  {
    clientPrefix = [(AKStatistics *)self clientPrefix];
    if (!clientPrefix || (v6 = clientPrefix, [(AKStatistics *)self documentType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      NSLog(&cfstr_WarningMissing.isa);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = [objc_opt_class() nameForAnnotation:addedCopy];
        annotationsCounts2 = [(AKStatistics *)self annotationsCounts];
        [annotationsCounts2 addObject:v8];
      }
    }
  }
}

- (void)logInkAnnotationStrokeAdded:(id)added
{
  addedCopy = added;
  clientPrefix = [(AKStatistics *)self clientPrefix];
  if (!clientPrefix || (v6 = clientPrefix, [(AKStatistics *)self documentType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  v9 = [objc_opt_class() nameForClassName:addedCopy];

  annotationsCounts = [(AKStatistics *)self annotationsCounts];
  [annotationsCounts addObject:v9];
}

- (void)_logCoreAnalyticsAction:(id)action
{
  actionCopy = action;
  v3 = actionCopy;
  AnalyticsSendEventLazy();
}

- (void)_logCoreAnalyticsHUDPickActionForAnnotationType:(id)type
{
  typeCopy = type;
  v3 = typeCopy;
  AnalyticsSendEventLazy();
}

- (void)_logCoreAnalyticsAnnotationCreateActionForAnnotationType:(id)type count:(unint64_t)count
{
  typeCopy = type;
  v4 = typeCopy;
  AnalyticsSendEventLazy();
}

- (void)logShapeDetectionHUDShown
{
  clientPrefix = [(AKStatistics *)self clientPrefix];
  if (!clientPrefix || (v4 = clientPrefix, [(AKStatistics *)self documentType], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  [(AKStatistics *)self _logCoreAnalyticsAction:@"shapeDetectionShown"];
}

- (void)logShapeDetectionHUDPickedShape:(id)shape
{
  shapeCopy = shape;
  v8 = [objc_opt_class() nameForAnnotation:shapeCopy];

  clientPrefix = [(AKStatistics *)self clientPrefix];
  if (!clientPrefix || (v6 = clientPrefix, [(AKStatistics *)self documentType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  [(AKStatistics *)self _logCoreAnalyticsHUDPickActionForAnnotationType:v8];
}

- (void)logDocumentSaved
{
  v19 = *MEMORY[0x277D85DE8];
  clientPrefix = [(AKStatistics *)self clientPrefix];
  if (!clientPrefix || (v4 = clientPrefix, [(AKStatistics *)self documentType], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  annotationsCounts = [(AKStatistics *)self annotationsCounts];
  v7 = [annotationsCounts countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(annotationsCounts);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        annotationsCounts2 = [(AKStatistics *)self annotationsCounts];
        v13 = [annotationsCounts2 countForObject:v11];

        [(AKStatistics *)self _logCoreAnalyticsAnnotationCreateActionForAnnotationType:v11 count:v13];
        ++v10;
      }

      while (v8 != v10);
      v8 = [annotationsCounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(AKStatistics *)self _logCoreAnalyticsAction:@"save"];
}

+ (id)nameForClassName:(id)name
{
  v3 = [name stringByReplacingOccurrencesOfString:@"AK" withString:&stru_28519E870];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"Annotation" withString:&stru_28519E870];

  return v4;
}

+ (id)nameForAnnotation:(id)annotation
{
  annotationCopy = annotation;
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

  v5 = annotationCopy;
  arrowHeadStyle = [v5 arrowHeadStyle];
  if ((arrowHeadStyle - 1) < 2)
  {
    v7 = @"SingleArrow";
  }

  else if (arrowHeadStyle)
  {
    if (arrowHeadStyle != 3)
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