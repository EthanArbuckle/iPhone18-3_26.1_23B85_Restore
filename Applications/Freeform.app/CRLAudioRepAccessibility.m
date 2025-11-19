@interface CRLAudioRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_isInQuickSelectMode;
- (BOOL)accessibilityActivate;
- (BOOL)crlaxCanPlay;
- (BOOL)crlaxIsPlaying;
- (CGPoint)_accessibilityVisiblePoint;
- (CGRect)_accessibilityFrameOfPlayPauseButton;
- (CRLAVPlayerControllerAccessibility)crlaxPlayerControllerForcingCreationIfNotPreExisting;
- (CRLMovieItemAccessibility)_crlaxMovieInfo;
- (NSString)crlaxLabel;
- (NSString)crlaxValue;
- (id)accessibilityHint;
- (id)accessibilityUserInputLabels;
- (id)crlaxDescriptionForConnections;
- (unint64_t)accessibilityTraits;
- (void)crlaxTogglePlayback;
@end

@implementation CRLAudioRepAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxLabel
{
  v3 = [(CRLAudioRepAccessibility *)self crlaxTarget];
  v4 = [v3 movieItem];

  v5 = [v4 accessibilityDescription];
  v6 = [v4 title];
  v7 = [v4 creator];
  v8 = [v4 localizedName];
  v9 = [(CRLAudioRepAccessibility *)self _crlaxMovieInfo];
  v10 = [v9 crlaxDurationDescription];

  if (![v6 length])
  {
    v17 = [v4 movieAssetPayload];
    v18 = [v17 filename];

    v6 = v18;
  }

  v19 = __CRLAccessibilityStringForVariables(1, v5, v11, v12, v13, v14, v15, v16, v6);

  return v19;
}

- (NSString)crlaxValue
{
  if ([(CRLAudioRepAccessibility *)self crlaxIsPlaying])
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

- (CRLAVPlayerControllerAccessibility)crlaxPlayerControllerForcingCreationIfNotPreExisting
{
  v8 = 0;
  v2 = [(CRLAudioRepAccessibility *)self crlaxTarget];
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

- (BOOL)crlaxCanPlay
{
  v2 = [(CRLAudioRepAccessibility *)self crlaxTarget];
  v3 = [v2 isPlayable];

  return v3;
}

- (BOOL)crlaxIsPlaying
{
  v2 = [(CRLAudioRepAccessibility *)self crlaxTarget];
  v3 = [v2 isPlaying];

  return v3;
}

- (void)crlaxTogglePlayback
{
  v2 = [(CRLAudioRepAccessibility *)self crlaxTarget];
  [v2 i_togglePlayback];
}

- (id)accessibilityUserInputLabels
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLAudioRepAccessibility *)self crlaxTarget];
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
  v3 = [(CRLAudioRepAccessibility *)self crlaxTarget];
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
  v2 = [(CRLAudioRepAccessibility *)self crlaxTarget];
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

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CRLAudioRepAccessibility;
  return UIAccessibilityTraitStartsMediaSession | [(CRLCanvasRepAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityHint
{
  v10.receiver = self;
  v10.super_class = CRLAudioRepAccessibility;
  v3 = [(CRLCanvasRepAccessibility *)&v10 accessibilityHint];
  if (![(CRLAudioRepAccessibility *)self _isInQuickSelectMode]&& [(CRLCanvasRepAccessibility *)self crlaxIsSelected])
  {
    v4 = [(CRLAudioRepAccessibility *)self crlaxTarget];
    v5 = [v4 i_playButtonFitsInFrame];

    if (!v5)
    {
      v6 = @"Double tap to show full-screen preview";
      goto LABEL_7;
    }

    if ([(CRLAudioRepAccessibility *)self crlaxIsPlaying])
    {
      v6 = @"Double tap to pause audio.";
LABEL_7:
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:v6 value:0 table:0];

      v3 = v8;
      goto LABEL_8;
    }

    if ([(CRLAudioRepAccessibility *)self crlaxCanPlay])
    {
      v6 = @"Double tap to play audio.";
      goto LABEL_7;
    }
  }

LABEL_8:

  return v3;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v4.receiver = self;
  v4.super_class = CRLAudioRepAccessibility;
  if ([(CRLCanvasRepAccessibility *)&v4 _accessibilitySupportsActivateAction])
  {
    return 1;
  }

  else
  {
    return [(CRLAudioRepAccessibility *)self crlaxCanPlay];
  }
}

- (BOOL)accessibilityActivate
{
  if (![(CRLAudioRepAccessibility *)self _isInQuickSelectMode])
  {
    v8.receiver = self;
    v8.super_class = CRLAudioRepAccessibility;
    if (![(CRLCanvasRepAccessibility *)&v8 accessibilityActivate])
    {
      v4 = [(CRLAudioRepAccessibility *)self crlaxTarget];
      v5 = [v4 i_playButtonFitsInFrame];

      if (v5)
      {
        v3 = [(CRLAudioRepAccessibility *)self crlaxCanPlay];
        if (!v3)
        {
          return v3;
        }

        [(CRLAudioRepAccessibility *)self crlaxTogglePlayback];
      }

      else
      {
        v6 = [(CRLAudioRepAccessibility *)self crlaxTarget];
        [v6 enterPreviewMode];
      }
    }

    LOBYTE(v3) = 1;
    return v3;
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (CGPoint)_accessibilityVisiblePoint
{
  [(CRLCanvasRepAccessibility *)self accessibilityActivationPoint];
  point.x = v3;
  v5 = v4;
  v6 = [(CRLAudioRepAccessibility *)self crlaxTarget];
  v7 = [v6 layout];
  v8 = [v7 geometry];
  [v8 size];
  v10 = v9;
  v12 = v11;

  v13 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
  v14 = [v13 crlaxTarget];
  if (([v14 isInGroup] & 1) != 0 || v12 == 0.0)
  {
LABEL_43:

    goto LABEL_44;
  }

  if (v10 != 0.0)
  {
    v13 = [(CRLCanvasRepAccessibility *)self crlaxLayout];
    v15 = [v13 crlaxInspectorGeometry];
    v14 = v15;
    if (v15)
    {
      log = v5;
      b = CGAffineTransformIdentity.b;
      c = CGAffineTransformIdentity.c;
      d = CGAffineTransformIdentity.d;
      tx = CGAffineTransformIdentity.tx;
      ty = CGAffineTransformIdentity.ty;
      [v15 crlaxAngleInRadians];
      v88 = b;
      v103.a = CGAffineTransformIdentity.a;
      v103.b = b;
      v86 = d;
      v87 = c;
      v103.c = c;
      v103.d = d;
      v84 = ty;
      v85 = tx;
      v103.tx = tx;
      v103.ty = ty;
      CGAffineTransformRotate(v104, &v103, -v21);
      v22 = *v104;
      v23 = *&v104[8];
      v24 = *&v104[16];
      v25 = *&v104[24];
      v27 = *&v104[32];
      v26 = *&v104[40];
      v28 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
      v29 = v28;
      if (v28)
      {
        v30 = v26 + v12 * 0.25 * v25 + v23 * (v10 * 0.5);
        v31 = v27 + v12 * 0.25 * v24 + v22 * (v10 * 0.5);
        [v28 crlaxViewScale];
        v103.a = CGAffineTransformIdentity.a;
        v103.b = v88;
        v103.c = v87;
        v103.d = v86;
        v103.tx = v85;
        v103.ty = v84;
        CGAffineTransformScale(v104, &v103, v32, v32);
        pointa = *&v104[32] + v30 * *&v104[16] + *v104 * v31;
        loga = *&v104[40] + v30 * *&v104[24] + *&v104[8] * v31;
        v33 = [v13 crlaxTarget];
        v34 = v33;
        if (v33)
        {
          [v33 transform];
          v35 = v102;
          [v34 transform];
          v36 = v101;
        }

        else
        {
          v36 = 0.0;
          v35 = 0.0;
        }

        v37 = [(CRLCanvasRepAccessibility *)self crlaxCanvas];
        [v37 crlaxScreenPointFromUnscaledCanvas:{v35, v36}];
        v39 = v38;
        v41 = v40;

        v103.a = CGAffineTransformIdentity.a;
        v103.b = v88;
        v103.c = v87;
        v103.d = v86;
        v103.tx = v85;
        v103.ty = v84;
        CGAffineTransformTranslate(v104, &v103, v39, v41);
        point = vaddq_f64(*&v104[32], vmlaq_n_f64(vmulq_n_f64(*&v104[16], loga), *v104, pointa));
        [(CRLCanvasRepAccessibility *)self accessibilityFrame];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;
        [(CRLCanvasRepAccessibility *)self accessibilityFrame];
        if (!CGRectContainsPoint(v106, point))
        {
          v50 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135CCF8();
          }

          v51 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            logc = v51;
            v91 = NSStringFromCGPoint(point);
            v110.origin.x = v43;
            v110.origin.y = v45;
            v110.size.width = v47;
            v110.size.height = v49;
            v89 = NSStringFromCGRect(v110);
            *v104 = 67110402;
            *&v104[4] = v50;
            *&v104[8] = 2082;
            *&v104[10] = "[CRLAudioRepAccessibility(iOS) _accessibilityVisiblePoint]";
            *&v104[18] = 2082;
            *&v104[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLAudioRepAccessibility+iOS.m";
            *&v104[28] = 1024;
            *&v104[30] = 143;
            *&v104[34] = 2112;
            *&v104[36] = v91;
            *&v104[44] = 2112;
            *&v104[46] = v89;
            _os_log_error_impl(&_mh_execute_header, logc, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to compute an accessibilityVisiblePoint but it was outside the accessibilityFrame. (Point: %@, frame: %@)", v104, 0x36u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135CD20();
          }

          v52 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130EFC0(v52);
          }

          v53 = [NSString stringWithUTF8String:"[CRLAudioRepAccessibility(iOS) _accessibilityVisiblePoint]"];
          v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLAudioRepAccessibility+iOS.m"];
          v55 = NSStringFromCGPoint(point);
          v107.origin.x = v43;
          v107.origin.y = v45;
          v107.size.width = v47;
          v107.size.height = v49;
          v56 = NSStringFromCGRect(v107);
          [CRLAssertionHandler handleFailureInFunction:v53 file:v54 lineNumber:143 isFatal:0 description:"Attempted to compute an accessibilityVisiblePoint but it was outside the accessibilityFrame. (Point: %@, frame: %@)", v55, v56];
        }

        v57 = [(CRLCanvasRepAccessibility *)self accessibilityPath];
        v58 = v57;
        if (v57 && ([v57 containsPoint:point] & 1) == 0)
        {
          logb = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10135CD48();
          }

          v59 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v83 = v59;
            v92 = NSStringFromCGPoint(point);
            *v104 = 67110402;
            *&v104[4] = logb;
            *&v104[8] = 2082;
            *&v104[10] = "[CRLAudioRepAccessibility(iOS) _accessibilityVisiblePoint]";
            *&v104[18] = 2082;
            *&v104[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLAudioRepAccessibility+iOS.m";
            *&v104[28] = 1024;
            *&v104[30] = 149;
            *&v104[34] = 2112;
            *&v104[36] = v92;
            *&v104[44] = 2112;
            *&v104[46] = v58;
            _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to compute an accessibilityVisiblePoint but it was outside the non-nil accessibilityPath. (Point: %@, path: %@)", v104, 0x36u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10135CD70();
          }

          v60 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130EFC0(v60);
          }

          v61 = [NSString stringWithUTF8String:"[CRLAudioRepAccessibility(iOS) _accessibilityVisiblePoint]"];
          v62 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLAudioRepAccessibility+iOS.m"];
          v63 = NSStringFromCGPoint(point);
          [CRLAssertionHandler handleFailureInFunction:v61 file:v62 lineNumber:149 isFatal:0 description:"Attempted to compute an accessibilityVisiblePoint but it was outside the non-nil accessibilityPath. (Point: %@, path: %@)", v63, v58];
        }

        v64 = [(CRLAudioRepAccessibility *)self crlaxTarget];
        v65 = [v64 i_playButtonFitsInFrame];

        if (v65)
        {
          [(CRLAudioRepAccessibility *)self _accessibilityFrameOfPlayPauseButton];
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          [(CRLAudioRepAccessibility *)self _accessibilityFrameOfPlayPauseButton];
          if (CGRectContainsPoint(v108, point))
          {
            v74 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10135CD98();
            }

            v75 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              logd = v75;
              v93 = NSStringFromCGPoint(point);
              v111.origin.x = v67;
              v111.origin.y = v69;
              v111.size.width = v71;
              v111.size.height = v73;
              v90 = NSStringFromCGRect(v111);
              *v104 = 67110402;
              *&v104[4] = v74;
              *&v104[8] = 2082;
              *&v104[10] = "[CRLAudioRepAccessibility(iOS) _accessibilityVisiblePoint]";
              *&v104[18] = 2082;
              *&v104[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLAudioRepAccessibility+iOS.m";
              *&v104[28] = 1024;
              *&v104[30] = 156;
              *&v104[34] = 2112;
              *&v104[36] = v93;
              *&v104[44] = 2112;
              *&v104[46] = v90;
              _os_log_error_impl(&_mh_execute_header, logd, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to compute an accessibilityVisiblePoint but it was inside of the play/pause button. (Point: %@, button frame: %@)", v104, 0x36u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10135CDC0();
            }

            v76 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130EFC0(v76);
            }

            v77 = [NSString stringWithUTF8String:"[CRLAudioRepAccessibility(iOS) _accessibilityVisiblePoint]"];
            v78 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAccessibility/Canvas/Accessibility/iOS/CRLAudioRepAccessibility+iOS.m"];
            v79 = NSStringFromCGPoint(point);
            v109.origin.x = v67;
            v109.origin.y = v69;
            v109.size.width = v71;
            v109.size.height = v73;
            v80 = NSStringFromCGRect(v109);
            [CRLAssertionHandler handleFailureInFunction:v77 file:v78 lineNumber:156 isFatal:0 description:"Attempted to compute an accessibilityVisiblePoint but it was inside of the play/pause button. (Point: %@, button frame: %@)", v79, v80];
          }
        }

        log = point.y;
      }

      v5 = log;
    }

    goto LABEL_43;
  }

LABEL_44:
  x = point.x;
  v82 = v5;
  result.y = v82;
  result.x = x;
  return result;
}

- (CGRect)_accessibilityFrameOfPlayPauseButton
{
  v2 = [(CRLAudioRepAccessibility *)self crlaxTarget];
  v3 = [v2 audioImageRenderable];
  v4 = [v3 layer];

  [v4 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_isInQuickSelectMode
{
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxTarget];
  v4 = [v3 layerHost];
  v5 = [v4 asiOSCVC];
  v6 = [v5 isCurrentlyInQuickSelectMode];

  return v6;
}

@end