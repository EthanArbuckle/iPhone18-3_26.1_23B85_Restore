@interface CRLMovieRepAccessibility
+ (id)crlaxCastFrom:(id)from;
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

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

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
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  movieItem = [crlaxTarget movieItem];

  accessibilityDescription = [movieItem accessibilityDescription];
  title = [movieItem title];
  _crlaxMovieInfo = [(CRLMovieRepAccessibility *)self _crlaxMovieInfo];
  crlaxDurationDescription = [_crlaxMovieInfo crlaxDurationDescription];

  localizedName = [movieItem localizedName];
  if (![title length])
  {
    movieAssetPayload = [movieItem movieAssetPayload];
    filename = [movieAssetPayload filename];

    title = filename;
  }

  v18 = __CRLAccessibilityStringForVariables(1, accessibilityDescription, v10, v11, v12, v13, v14, v15, title);

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
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  isPlayable = [crlaxTarget isPlayable];

  return isPlayable;
}

- (BOOL)crlaxIsPlaying
{
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  isPlaying = [crlaxTarget isPlaying];

  return isPlaying;
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
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  playerControllerForcingCreationIfNotPreExisting = [crlaxTarget playerControllerForcingCreationIfNotPreExisting];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, playerControllerForcingCreationIfNotPreExisting, 1, &v8);
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
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  movieItem = [crlaxTarget movieItem];

  accessibilityDescription = [movieItem accessibilityDescription];
  title = [movieItem title];
  if ([accessibilityDescription length])
  {
    [v3 addObject:accessibilityDescription];
  }

  if ([title length])
  {
    [v3 addObject:title];
  }

  v8 = [v3 copy];

  return v8;
}

- (id)crlaxDescriptionForConnections
{
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  movieItem = [crlaxTarget movieItem];
  movieAssetPayload = [movieItem movieAssetPayload];
  filename = [movieAssetPayload filename];
  crlaxDefaultDescriptionForConnections = [(CRLCanvasRepAccessibility *)self crlaxDefaultDescriptionForConnections];
  v8 = [(CRLCanvasRepAccessibility *)self crlaxRemoveExtensionFromFile:filename inString:crlaxDefaultDescriptionForConnections];

  return v8;
}

- (CRLMovieItemAccessibility)_crlaxMovieInfo
{
  v8 = 0;
  crlaxTarget = [(CRLMovieRepAccessibility *)self crlaxTarget];
  movieItem = [crlaxTarget movieItem];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, movieItem, 1, &v8);
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
  accessibilityHint = [(CRLCanvasRepAccessibility *)&v14 accessibilityHint];
  if ([(CRLCanvasRepAccessibility *)self crlaxIsSelected])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Double tap to play." value:0 table:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = __CRLAccessibilityStringForVariables(1, v11, v4, v5, v6, v7, v8, v9, accessibilityHint);

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
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxTarget = [crlaxInteractiveCanvasController crlaxTarget];
  layerHost = [crlaxTarget layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

  if (isCurrentlyInQuickSelectMode)
  {
    return 0;
  }

  crlaxRepForSelecting = [(CRLCanvasRepAccessibility *)self crlaxRepForSelecting];
  if ([crlaxRepForSelecting crlaxIsSelected])
  {
    crlaxIsPlayable = [(CRLMovieRepAccessibility *)self crlaxIsPlayable];

    if (crlaxIsPlayable)
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