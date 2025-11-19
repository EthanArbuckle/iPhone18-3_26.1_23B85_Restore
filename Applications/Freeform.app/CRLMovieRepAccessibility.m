@interface CRLMovieRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)crlaxIsPlayable;
- (BOOL)crlaxIsPlaying;
- (CRLAVPlayerControllerAccessibility)crlaxPlayerControllerForcingCreationIfNotPreExisting;
- (CRLMovieItemAccessibility)_crlaxMovieInfo;
- (NSString)crlaxMovieLabel;
- (NSString)crlaxValue;
- (id)accessibilityHint;
- (id)accessibilityUserInputLabels;
- (id)crlaxDescriptionForConnections;
- (id)crlaxKnobLabel;
- (void)crlaxTogglePlayback;
@end

@implementation CRLMovieRepAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)crlaxTogglePlayback
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F6694;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  if (__CRLAccessibilityPerformSafeBlock(v2))
  {
    abort();
  }
}

- (NSString)crlaxMovieLabel
{
  v3 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v4 = [v3 movieItem];

  v5 = [v4 accessibilityDescription];
  v6 = [v4 title];
  v7 = [(CRLMovieRepAccessibility *)self _crlaxMovieInfo];
  v8 = [v7 crlaxDurationDescription];

  v9 = [v4 localizedName];
  if (![v6 length])
  {
    v16 = [v4 movieAssetPayload];
    v17 = [v16 filename];

    v6 = v17;
  }

  v18 = __CRLAccessibilityStringForVariables(1, v5, v10, v11, v12, v13, v14, v15, v6);

  return v18;
}

- (NSString)crlaxValue
{
  if ([(CRLMovieRepAccessibility *)self crlaxIsPlaying])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"playing" value:0 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)crlaxIsPlayable
{
  v2 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v3 = [v2 isPlayable];

  return v3;
}

- (BOOL)crlaxIsPlaying
{
  v2 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v3 = [v2 isPlaying];

  return v3;
}

- (id)crlaxKnobLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Movie" value:0 table:0];

  return v3;
}

- (CRLAVPlayerControllerAccessibility)crlaxPlayerControllerForcingCreationIfNotPreExisting
{
  v8 = 0;
  v2 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v3 = [v2 playerControllerForcingCreationIfNotPreExisting];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v5 = [v4 movieItem];

  v6 = [v5 accessibilityDescription];
  v7 = [v5 title];
  if ([v6 length])
  {
    [v3 addObject:v6];
  }

  if ([v7 length])
  {
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (id)crlaxDescriptionForConnections
{
  v3 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v4 = [v3 movieItem];
  v5 = [v4 movieAssetPayload];
  v6 = [v5 filename];
  v7 = [(CRLCanvasRepAccessibility *)self crlaxDefaultDescriptionForConnections];
  v8 = [(CRLCanvasRepAccessibility *)self crlaxRemoveExtensionFromFile:v6 inString:v7];

  return v8;
}

- (CRLMovieItemAccessibility)_crlaxMovieInfo
{
  v8 = 0;
  v2 = [(CRLMovieRepAccessibility *)self crlaxTarget];
  v3 = [v2 movieItem];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityHint
{
  v14.receiver = self;
  v14.super_class = CRLMovieRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v14 accessibilityHint];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Double tap to play." value:0 table:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = __CRLAccessibilityStringForVariables(1, v11, v4, v5, v6, v7, v8, v9, v3);

  return v12;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v4.receiver = self;
  v4.super_class = CRLMovieRepAccessibility;
  if ([(CRLCanvasRepAccessibility *)&v4 _accessibilitySupportsActivateAction])
  {
    return 1;
  }

  else
  {
    return [(CRLMovieRepAccessibility *)self crlaxIsPlayable];
  }
}

- (BOOL)accessibilityActivate
{
  v3 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxTarget];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];
  v7 = [v6 isCurrentlyInQuickSelectMode];

  if (v7)
  {
    return 0;
  }

  v9 = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  if ([v9 crlaxIsSelected])
  {
    v10 = [(CRLMovieRepAccessibility *)self crlaxIsPlayable];

    if (v10)
    {
      [(CRLMovieRepAccessibility *)self crlaxTogglePlayback];
      return 1;
    }
  }

  else
  {
  }

  v11.receiver = self;
  v11.super_class = CRLMovieRepAccessibility;
  return [(CRLCanvasRepAccessibility *)&v11 accessibilityActivate];
}

@end