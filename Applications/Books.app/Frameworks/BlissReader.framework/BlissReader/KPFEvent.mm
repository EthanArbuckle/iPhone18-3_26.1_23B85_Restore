@interface KPFEvent
- (BOOL)isAutomatic;
- (BOOL)isMoviePlaying;
- (CATransform3D)p_transformFromArray:(SEL)a3;
- (CGAffineTransform)p_affineTransformFromArray:(SEL)a3;
- (CGRect)p_rectFromDictionary:(id)a3;
- (KPFEvent)initWithDictionary:(id)a3;
- (id)accessibilityArray;
- (id)hyperlinkAtLocation:(CGPoint)a3;
- (id)hyperlinksRectArray;
- (id)p_animationKeyPathForAction:(id)a3;
- (id)p_propertyValueFromDictionary:(id)a3 forLayer:(id)a4 forAction:(id)a5;
- (id)p_timingFunctionFromString:(id)a3 forActionDictionary:(id)a4;
- (void)animateEventWithSession:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)p_addAnimationFromAnimationDict:(id)a3 forLayer:(id)a4 withTextureName:(id)a5;
- (void)p_addPerspectiveTransform:(id)a3;
- (void)p_glAnimationEndCallback;
- (void)p_movieEndCallback:(id)a3;
- (void)p_setupAndAnimateGLAnimationsFromPluginArray:(id)a3 withEffect:(id)a4 session:(id)a5;
- (void)pauseMoviePlayback;
- (void)renderEventWithSession:(id)a3;
- (void)stopAllAnimations;
- (void)stopMoviePlayback;
- (void)tearDown;
@end

@implementation KPFEvent

- (KPFEvent)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = KPFEvent;
  v4 = [(KPFEvent *)&v6 init];
  if (v4)
  {
    v4->mEventDictionary = a3;
    v4->_animationDelegate = [[KPFEventAnimationDelegate alloc] initWithEvent:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(KPFEventAnimationDelegate *)self->_animationDelegate setWeakEvent:0];

  v3.receiver = self;
  v3.super_class = KPFEvent;
  [(KPFEvent *)&v3 dealloc];
}

- (void)renderEventWithSession:(id)a3
{
  v3 = a3;
  v5 = [a3 KPFDocument];
  v6 = CACurrentMediaTime();

  self->mLayers = objc_alloc_init(TSUNoCopyDictionary);
  self->mCanvasIDMap = objc_alloc_init(TSUNoCopyDictionary);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [objc_msgSend(v3 "showLayer")];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = [(KPFEvent *)self p_initialStatesArray];
  v82 = self;
  v83 = v3;
  v86 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
  if (v86)
  {
    v85 = *v116;
    y = CGPointZero.y;
    v81 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v116 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v88 = v8;
        v9 = *(*(&v115 + 1) + 8 * v8);
        v10 = [v9 objectForKey:@"texture"];
        v11 = objc_alloc_init(THImageLayer);
        -[THImageLayer setHidden:](v11, "setHidden:", [objc_msgSend(v9 objectForKey:{@"hidden", "BOOLValue"}]);
        [objc_msgSend(v9 objectForKey:{@"zIndex", "floatValue"}];
        [(THImageLayer *)v11 setZPosition:v12];
        [(THImageLayer *)v11 setDoubleSided:0];
        [(THImageLayer *)v11 setEdgeAntialiasingMask:0];
        [objc_msgSend(v9 objectForKey:{@"opacity", "floatValue"}];
        [(THImageLayer *)v11 setOpacity:?];
        v13 = [v9 objectForKey:@"opacityMultiplier"];
        if (v13)
        {
          v14 = v13;
          [(THImageLayer *)v11 opacity];
          v16 = v15;
          [v14 floatValue];
          *&v18 = v16 * v17;
          [(THImageLayer *)v11 setOpacity:v18];
        }

        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_10D340;
        v114[3] = &unk_45D998;
        v114[4] = v5;
        v114[5] = v10;
        [(THImageLayer *)v11 setImageProviderBlock:v114 setLayerBounds:0 maxSize:0 outNativeSize:1.79769313e308, 1.79769313e308];
        [v5 textureSizeForName:v10];
        [(THImageLayer *)v11 setBounds:CGPointZero.x, y, v19, v20];
        v90 = v10;
        [(THImageLayer *)v11 setName:v10];
        -[KPFEvent p_affineTransformFromArray:](self, "p_affineTransformFromArray:", [v9 objectForKey:@"affineTransform"]);
        [(THImageLayer *)v11 setAffineTransform:&v98];
        v21 = [v9 objectForKey:@"translationEmphasis"];
        if (v21)
        {
          v22 = v21;
          if ([v21 count] == &dword_0 + 3)
          {
            [objc_msgSend(v22 objectAtIndex:{0), "floatValue"}];
            v24 = v23;
            [objc_msgSend(v22 objectAtIndex:{1), "floatValue"}];
            [(THImageLayer *)v11 setValue:[NSValue forKey:"valueWithCGPoint:" valueWithCGPoint:v24, v25], @"translationEmphasis"];
          }
        }

        v26 = [v9 objectForKey:@"scaleEmphasis"];
        if (v26)
        {
          v27 = v26;
          if ([v26 count] == &dword_4 + 2)
          {
            [objc_msgSend(v27 objectAtIndex:{3), "floatValue"}];
            v29 = v28;
            [objc_msgSend(v27 objectAtIndex:{4), "floatValue"}];
            [(THImageLayer *)v11 setValue:[NSValue forKey:"valueWithCGSize:" valueWithCGSize:v29, v30], @"scaleEmphasis"];
            [objc_msgSend(v27 objectAtIndex:{0), "floatValue"}];
            v32 = v31;
            [objc_msgSend(v27 objectAtIndex:{1), "floatValue"}];
            [(THImageLayer *)v11 setValue:[NSValue forKey:"valueWithCGPoint:" valueWithCGPoint:v32, v33], @"centerOfEmphasis"];
          }
        }

        v87 = v9;
        v34 = [v9 objectForKey:@"rotationEmphasis"];
        if (v34)
        {
          v35 = v34;
          if ([v34 count] == &dword_4 + 3)
          {
            [objc_msgSend(v35 objectAtIndex:{6), "floatValue"}];
            [(THImageLayer *)v11 setValue:[NSNumber numberWithFloat:?], @"rotationEmphasis"];
            [objc_msgSend(v35 objectAtIndex:{0), "floatValue"}];
            v37 = v36;
            [objc_msgSend(v35 objectAtIndex:{1), "floatValue"}];
            [(THImageLayer *)v11 setValue:[NSValue forKey:"valueWithCGPoint:" valueWithCGPoint:v37, v38], @"centerOfEmphasis"];
          }
        }

        [objc_msgSend(v3 "showLayer")];
        v89 = v11;
        [(TSUNoCopyDictionary *)self->mLayers setObject:v11 forKey:v90];
        if (!self->mMovie)
        {
          if ([v5 movieURLForTextureName:v90])
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v40 = [(KPFEvent *)self p_animationsArray];
            v41 = [v40 countByEnumeratingWithState:&v110 objects:v120 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = 0;
              v44 = *v111;
              do
              {
                for (i = 0; i != v42; i = i + 1)
                {
                  if (*v111 != v44)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v46 = *(*(&v110 + 1) + 8 * i);
                  v47 = [v46 objectForKey:@"effect"];
                  if (([v47 isEqualToString:@"movieStart"] & 1) != 0 || objc_msgSend(v47, "isEqualToString:", @"apple:movie-start"))
                  {
                    v43 |= [objc_msgSend(v46 objectForKey:{@"animationType", "isEqualToString:", @"buildOut"}] ^ 1;
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v110 objects:v120 count:16];
              }

              while (v42);
              self = v82;
              v3 = v83;
              v5 = v81;
              if (v43)
              {
                v48 = [v81 newMovieForTextureName:v90];
                v82->mMovie = v48;
                if (v48)
                {
                  v49 = [(KPFMovie *)v48 playerLayer];
                  [v81 textureSizeForName:v90];
                  [(AVPlayerLayer *)v49 setBounds:0.0, 0.0, v50, v51];
                  [(AVPlayerLayer *)v49 setPosition:CGPointZero.x, y];
                  [(AVPlayerLayer *)v49 setHidden:1];
                  [(THImageLayer *)v89 zPosition];
                  [(AVPlayerLayer *)v49 setZPosition:?];
                  if (v89)
                  {
                    [(THImageLayer *)v89 transform];
                  }

                  else
                  {
                    v108 = 0u;
                    v109 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v105 = 0u;
                    memset(&v104, 0, sizeof(v104));
                  }

                  v100 = v106;
                  v101 = v107;
                  v102 = v108;
                  v103 = v109;
                  v98 = v104;
                  v99 = v105;
                  [(AVPlayerLayer *)v49 setTransform:&v98];
                  [(AVPlayerLayer *)v49 setValue:v89 forKey:@"textureLayer"];
                  [(THImageLayer *)v89 setValue:v49 forKey:@"movieLayer"];
                  [objc_msgSend(v83 "showLayer")];
                }
              }
            }
          }
        }

        v39 = [v87 objectForKey:@"canvasObjectID"];
        if (v39)
        {
          [(TSUNoCopyDictionary *)self->mCanvasIDMap setObject:v89 forKey:v39];
        }

        v8 = v88 + 1;
      }

      while ((v88 + 1) != v86);
      v52 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
      v86 = v52;
    }

    while (v52);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v53 = [(TSUNoCopyDictionary *)self->mLayers allValues];
  v54 = [v53 countByEnumeratingWithState:&v94 objects:v119 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v95;
    do
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v95 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v94 + 1) + 8 * j);
        memset(&v98, 0, sizeof(v98));
        if (v58)
        {
          [v58 affineTransform];
        }

        [v58 bounds];
        v60 = v59;
        [v58 bounds];
        v62 = v61;
        v63 = [v58 valueForKey:@"centerOfEmphasis"];
        if (v63)
        {
          [v63 CGPointValue];
          v65 = v64 + 1.0;
          v67 = v66 + 1.0;
        }

        else
        {
          v65 = v60 * 0.5;
          v67 = v62 * 0.5;
        }

        CGAffineTransformMakeTranslation(&t2, v65, v67);
        t1 = v98;
        CGAffineTransformConcat(&v93, &t1, &t2);
        v98 = v93;
        [v58 bounds];
        v69 = v65 / v68;
        [v58 bounds];
        [v58 setAnchorPoint:{v69, v67 / v70}];
        v71 = [v58 valueForKey:@"translationEmphasis"];
        if (v71)
        {
          [v71 CGPointValue];
          CGAffineTransformMakeTranslation(&t2, v72, v73);
          t1 = v98;
          CGAffineTransformConcat(&v93, &t2, &t1);
          v98 = v93;
        }

        v74 = [v58 valueForKey:@"scaleEmphasis"];
        if (v74)
        {
          [v74 CGSizeValue];
          CGAffineTransformMakeScale(&t2, v75, v76);
          t1 = v98;
          CGAffineTransformConcat(&v93, &t2, &t1);
          v98 = v93;
        }

        v77 = [v58 valueForKey:@"rotationEmphasis"];
        if (v77)
        {
          [v77 floatValue];
          CGAffineTransformMakeRotation(&t2, v78);
          t1 = v98;
          CGAffineTransformConcat(&v93, &t2, &t1);
          v98 = v93;
        }

        v93 = v98;
        [v58 setAffineTransform:&v93];
        v79 = [v58 valueForKey:@"movieLayer"];
        v93 = v98;
        [v79 setAffineTransform:&v93];
      }

      v55 = [v53 countByEnumeratingWithState:&v94 objects:v119 count:16];
    }

    while (v55);
  }

  +[CATransaction commit];
  v82->mAnimationsStarted = 0;
  if ([v83 isDebuggingEnabled])
  {
    v80 = CACurrentMediaTime();
    NSLog(@"Rendering time: %f", v80 - v6);
  }
}

- (void)p_movieEndCallback:(id)a3
{
  if (!self->mAnimationsStarted)
  {
    mAnimationEndHandler = self->mAnimationEndHandler;
    if (mAnimationEndHandler)
    {
      mAnimationEndHandler[2]();
    }
  }
}

- (void)p_glAnimationEndCallback
{
  mAnimationsStarted = self->mAnimationsStarted;
  if (!mAnimationsStarted || (v3 = mAnimationsStarted - 1, (self->mAnimationsStarted = v3) == 0))
  {
    mAnimationEndHandler = self->mAnimationEndHandler;
    if (mAnimationEndHandler)
    {
      mAnimationEndHandler[2]();
    }
  }
}

- (void)p_addAnimationFromAnimationDict:(id)a3 forLayer:(id)a4 withTextureName:(id)a5
{
  if (a4)
  {
    v30 = +[NSMutableArray array];
    v9 = [a3 objectForKey:@"actions"];
    if (!v9)
    {
      v9 = [a3 objectForKey:@"noPluginActions"];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = a3;
      v12 = 0;
      v13 = 0;
      v14 = *v32;
      obj = v9;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 objectForKey:@"texture"];
          if (!a5 || [v17 isEqualToString:a5])
          {
            v18 = [v16 objectForKey:@"action"];
            v19 = v18;
            if (v13)
            {
              v13 = 1;
            }

            else
            {
              v13 = [v18 isEqualToString:@"transform"];
            }

            v20 = [CABasicAnimation animationWithKeyPath:[(KPFEvent *)self p_animationKeyPathForAction:v19]];
            [objc_msgSend(v16 objectForKey:{@"beginTime", "floatValue"}];
            [(CABasicAnimation *)v20 setBeginTime:v21];
            [objc_msgSend(v16 objectForKey:{@"duration", "floatValue"}];
            [(CABasicAnimation *)v20 setDuration:v22];
            -[CABasicAnimation setFromValue:](v20, "setFromValue:", -[KPFEvent p_propertyValueFromDictionary:forLayer:forAction:](self, "p_propertyValueFromDictionary:forLayer:forAction:", [v16 objectForKey:@"from"], a4, v19));
            -[CABasicAnimation setToValue:](v20, "setToValue:", -[KPFEvent p_propertyValueFromDictionary:forLayer:forAction:](self, "p_propertyValueFromDictionary:forLayer:forAction:", [v16 objectForKey:@"to"], a4, v19));
            -[CABasicAnimation setTimingFunction:](v20, "setTimingFunction:", -[KPFEvent p_timingFunctionFromString:forActionDictionary:](self, "p_timingFunctionFromString:forActionDictionary:", [v16 objectForKey:@"timingFunction"], v16));
            [(CABasicAnimation *)v20 setFillMode:kCAFillModeForwards];
            [v30 addObject:v20];
            v12 = 1;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
      if (v12)
      {
        if (v13)
        {
          [(KPFEvent *)self p_addPerspectiveTransform:a4];
        }

        [objc_msgSend(v28 objectForKey:{@"beginTime", "floatValue"}];
        v24 = v23;
        v25 = +[CAAnimationGroup animation];
        [v25 setAnimations:v30];
        [objc_msgSend(v28 objectForKey:{@"duration", "floatValue"}];
        [v25 setDuration:v24 + v26];
        [v25 setDelegate:self->_animationDelegate];
        [v25 setRemovedOnCompletion:0];
        [v25 setFillMode:kCAFillModeForwards];
        [v25 setValue:a4 forKey:@"layer"];
        v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@-%@", [v28 objectForKey:@"effect"], objc_msgSend(v28, "objectForKey:", @"beginTime"), objc_msgSend(v28, "objectForKey:", @"duration"));
        if (![a4 animationForKey:v27])
        {
          ++self->mAnimationsStarted;
        }

        [a4 addAnimation:v25 forKey:v27];
      }
    }
  }
}

- (void)p_setupAndAnimateGLAnimationsFromPluginArray:(id)a3 withEffect:(id)a4 session:(id)a5
{
  v6 = [objc_msgSend(a5 "animationRegistry")];
  if (v6)
  {
    v7 = v6;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v23 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v11 objectForKey:@"animationAttributes"];
          v13 = [v11 objectForKey:@"duration"];
          v14 = [v12 objectForKey:@"animationDelay"];
          v15 = [v12 objectForKey:@"direction"];
          v26 = +[NSMutableDictionary dictionary];
          [v26 setObject:v15 forKey:@"KNTransitionAttributesDirection"];
          if ([v7 conformsToProtocol:&OBJC_PROTOCOL___KNAnimationPluginArchiving])
          {
            v16 = [v7 supportedTypes];
            v25 = 0;
            [v7 upgradeAttributes:&v26 animationName:0 warning:&v25 type:objc_msgSend(objc_msgSend(v16 isFromClassic:"objectAtIndex:" version:{0), "integerValue"), 1, 90000000000}];
          }

          v17 = [KPFMTLTransitionRenderer alloc];
          v18 = [objc_msgSend(v26 valueForKey:{@"KNTransitionAttributesDirection", "unsignedIntegerValue"}];
          [v13 doubleValue];
          v19 = [(KPFMTLTransitionRenderer *)v17 initWithEffectClass:v7 direction:v18 duration:a5 session:?];
          self->mRenderer = v19;
          [(KPFMTLTransitionRenderer *)v19 registerForTransitionEndCallback:"p_glAnimationEndCallback" target:self];
          ++self->mAnimationsStarted;
          mRenderer = self->mRenderer;
          [v14 floatValue];
          [(KPFMTLTransitionRenderer *)mRenderer animateWithDelay:v21];
        }

        v9 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }
  }
}

- (void)animateEventWithSession:(id)a3
{
  if (!self->mLayers)
  {
    return;
  }

  if ([-[KPFEvent p_animationsArray](self "p_animationsArray")] || (mAnimationEndHandler = self->mAnimationEndHandler) == 0)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(KPFEvent *)self p_animationsArray];
    v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v4)
    {
      goto LABEL_34;
    }

    v5 = v4;
    v6 = *v31;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"effect"];
        v10 = v9;
        if (self->mMovie)
        {
          if (([v9 isEqualToString:@"movieStart"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"apple:movie-start"))
          {
            [(KPFMovie *)self->mMovie registerForMovieEndCallback:"p_movieEndCallback:" target:self];
            [(AVPlayerLayer *)[(KPFMovie *)self->mMovie playerLayer] setHidden:0];
            mMovie = self->mMovie;
            [objc_msgSend(v8 objectForKey:{@"beginTime", "floatValue"}];
            [(KPFMovie *)mMovie playAfterDelay:v12];
            continue;
          }

          if (self->mMovie && [v10 isEqualToString:@"movieStop"])
          {
            [(KPFMovie *)self->mMovie stop];
            [(AVPlayerLayer *)[(KPFMovie *)self->mMovie playerLayer] setHidden:1];
            continue;
          }
        }

        self->mTextures = [v8 objectForKey:@"textures"];
        v13 = [v8 objectForKey:@"pluginActions"];
        v14 = [v8 objectForKey:@"animationType"];
        mTextures = self->mTextures;
        if (mTextures && v13)
        {
          v16 = v14;
          if ([objc_msgSend(a3 "animationRegistry")] && objc_msgSend(v16, "isEqualToString:", @"transition"))
          {
            [(KPFEvent *)self p_setupAndAnimateGLAnimationsFromPluginArray:v13 withEffect:v10 session:a3];
            continue;
          }

          mTextures = self->mTextures;
        }

        if (mTextures)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [(NSArray *)mTextures countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v27;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v27 != v19)
                {
                  objc_enumerationMutation(mTextures);
                }

                [(KPFEvent *)self p_addAnimationFromAnimationDict:v8 forLayer:[(TSUNoCopyDictionary *)self->mLayers objectForKey:*(*(&v26 + 1) + 8 * j)] withTextureName:*(*(&v26 + 1) + 8 * j)];
              }

              v18 = [(NSArray *)mTextures countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v18);
          }
        }

        else
        {
          v21 = [v8 objectForKey:@"canvasObjectID"];
          if (v21)
          {
            [(KPFEvent *)self p_addAnimationFromAnimationDict:v8 forLayer:[(TSUNoCopyDictionary *)self->mCanvasIDMap objectForKey:v21] withTextureName:0];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (!v5)
      {
LABEL_34:
        +[CATransaction commit];
        return;
      }
    }
  }

  v23 = *(mAnimationEndHandler + 2);

  v23();
}

- (BOOL)isMoviePlaying
{
  mMovie = self->mMovie;
  if (mMovie)
  {
    LOBYTE(mMovie) = [(KPFMovie *)mMovie isPlaying];
  }

  return mMovie;
}

- (void)stopAllAnimations
{
  [(KPFEvent *)self stopMoviePlayback];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(TSUNoCopyDictionary *)self->mLayers allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) removeAllAnimations];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)stopMoviePlayback
{
  mMovie = self->mMovie;
  if (mMovie)
  {
    [(KPFMovie *)mMovie stop];
    if (!self->mAnimationsStarted)
    {
      mAnimationEndHandler = self->mAnimationEndHandler;
      if (mAnimationEndHandler)
      {
        v5 = *(mAnimationEndHandler + 2);

        v5();
      }
    }
  }
}

- (void)pauseMoviePlayback
{
  if ([(KPFEvent *)self isMoviePlaying])
  {
    mMovie = self->mMovie;

    [(KPFMovie *)mMovie pause];
  }
}

- (BOOL)isAutomatic
{
  v2 = [(NSDictionary *)self->mEventDictionary objectForKey:@"automaticPlay"];

  return [v2 BOOLValue];
}

- (id)hyperlinksRectArray
{
  v3 = [(KPFEvent *)self p_hyperlinksArray];
  if (![v3 count])
  {
    return 0;
  }

  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[KPFEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [*(*(&v11 + 1) + 8 * i) objectForKey:@"targetRectangle"]);
        [v4 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)hyperlinkAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [-[KPFEvent p_hyperlinksArray](self "p_hyperlinksArray")];
  result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        -[KPFEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [v11 objectForKey:@"targetRectangle"]);
        v17.x = x;
        v17.y = y;
        if (CGRectContainsPoint(v18, v17))
        {
          return [v11 objectForKey:@"url"];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)accessibilityArray
{
  v3 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSDictionary *)self->mEventDictionary objectForKey:@"textRegions"];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v21[0] = @"targetRectangle";
        -[KPFEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [v8 objectForKey:@"targetRectangle"]);
        v16[0] = v9;
        v16[1] = v10;
        v16[2] = v11;
        v16[3] = v12;
        v13 = [NSValue valueWithBytes:v16 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v21[1] = @"text";
        v22[0] = v13;
        v22[1] = [v8 objectForKey:@"text"];
        [v3 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v22, v21, 2)}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  return [v3 copy];
}

- (void)tearDown
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TSUNoCopyDictionary *)self->mLayers allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) removeAllAnimations];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mAnimationEndHandler = 0;
  self->mMovie = 0;
}

- (CGRect)p_rectFromDictionary:(id)a3
{
  [objc_msgSend(a3 objectForKey:{@"x", "floatValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectForKey:{@"y", "floatValue"}];
  v7 = v6;
  [objc_msgSend(a3 objectForKey:{@"width", "floatValue"}];
  v9 = v8;
  [objc_msgSend(a3 objectForKey:{@"height", "floatValue"}];
  v11 = v10;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)p_propertyValueFromDictionary:(id)a3 forLayer:(id)a4 forAction:(id)a5
{
  if (([a5 isEqualToString:@"transform.rotation.x"] & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.rotation.y") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.rotation.z") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.x") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.y") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.z") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"hidden") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"zPosition") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"anchorPointZ") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"zOrderHint") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"isPlaying") & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"translation.z"))
  {

    return [a3 objectForKey:@"scalar"];
  }

  if ([a5 isEqualToString:@"transform.translation.x"])
  {
    [a4 frame];
    v11 = v10;
    [a4 frame];
    v13 = v12 * 0.5;
LABEL_21:
    v16 = v11 + v13;
    [objc_msgSend(a3 objectForKey:{@"scalar", "floatValue"}];
    v18 = v16 + v17;
    *&v18 = v18;
LABEL_22:

    return [NSNumber numberWithFloat:v18];
  }

  if ([a5 isEqualToString:@"transform.translation.y"])
  {
    [a4 frame];
    v11 = v14;
    [a4 frame];
    v13 = v15 * 0.5;
    goto LABEL_21;
  }

  if (([a5 isEqualToString:@"opacity"] & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"opacityMultiplier"))
  {
    [a4 opacity];
    v20 = v19;
    [objc_msgSend(a3 objectForKey:{@"scalar", "floatValue"}];
    *&v18 = v20 * *&v18;
    goto LABEL_22;
  }

  if ([a5 isEqualToString:@"translationEmphasis"])
  {
    v21 = [a3 objectForKey:@"translationEmphasis"];
    [a4 position];
    v23 = v22;
    v25 = v24;
    v26 = [a4 valueForKey:@"addtionalInitialTranslation"];
    if (v26)
    {
      [v26 CGPointValue];
      v23 = v23 - v27;
      v25 = v25 - v28;
    }

    [objc_msgSend(v21 objectAtIndex:{0), "floatValue"}];
    v30 = v23 + v29;
    [objc_msgSend(v21 objectAtIndex:{1), "floatValue"}];
    v32 = v25 + v31;
    v33 = v30;
LABEL_32:

    return [NSValue valueWithCGPoint:v33, v32];
  }

  if ([a5 isEqualToString:@"rotationEmphasis"])
  {
    v34 = [a3 objectForKey:@"rotationEmphasis"];
    v35 = 6;
  }

  else
  {
    if (![a5 isEqualToString:@"scaleEmphasis"])
    {
      if (([a5 isEqualToString:@"transform.translation"] & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"anchorPoint"))
      {
        [objc_msgSend(a3 objectForKey:{@"pointX", "floatValue"}];
        v37 = v36;
        [objc_msgSend(a3 objectForKey:{@"pointY", "floatValue"}];
        v32 = v38;
      }

      else
      {
        if (![a5 isEqualToString:@"position"])
        {
          if (![a5 isEqualToString:@"transform"])
          {
            return 0;
          }

          memset(&v49, 0, sizeof(v49));
          v45 = [a3 objectForKey:@"transform"];
          if (self)
          {
            [(KPFEvent *)self p_transformFromArray:v45];
          }

          else
          {
            memset(&v49, 0, sizeof(v49));
          }

          if (a4)
          {
            [a4 transform];
          }

          else
          {
            memset(&b, 0, sizeof(b));
          }

          v46 = v49;
          CATransform3DConcat(&v48, &v46, &b);
          v49 = v48;
          return [NSValue valueWithCATransform3D:&v48];
        }

        [objc_msgSend(a3 objectForKey:{@"pointX", "floatValue"}];
        v40 = v39;
        [a4 position];
        v37 = v41 + v40;
        [objc_msgSend(a3 objectForKey:{@"pointY", "floatValue"}];
        v43 = v42;
        [a4 position];
        v32 = v44 + v43;
      }

      v33 = v37;
      goto LABEL_32;
    }

    v34 = [a3 objectForKey:@"scaleEmphasis"];
    v35 = 3;
  }

  return [v34 objectAtIndex:v35];
}

- (id)p_timingFunctionFromString:(id)a3 forActionDictionary:(id)a4
{
  if ([a3 isEqualToString:@"easeOut"])
  {
    v6 = &kCAMediaTimingFunctionEaseOut;
LABEL_14:
    v18 = *v6;

    return [CAMediaTimingFunction functionWithName:v18];
  }

  if ([a3 isEqualToString:@"easeIn"])
  {
    v6 = &kCAMediaTimingFunctionEaseIn;
    goto LABEL_14;
  }

  if ([a3 isEqualToString:@"easeInEaseOut"])
  {
    v6 = &kCAMediaTimingFunctionEaseInEaseOut;
    goto LABEL_14;
  }

  if ([a3 isEqualToString:@"linear"])
  {
    v6 = &kCAMediaTimingFunctionLinear;
    goto LABEL_14;
  }

  if (![a3 isEqualToString:@"custom"])
  {
    v6 = &kCAMediaTimingFunctionDefault;
    goto LABEL_14;
  }

  [objc_msgSend(a4 objectForKey:{@"timingControlPoint1x", "floatValue"}];
  v8 = v7;
  [objc_msgSend(a4 objectForKey:{@"timingControlPoint1y", "floatValue"}];
  v10 = v9;
  [objc_msgSend(a4 objectForKey:{@"timingControlPoint2x", "floatValue"}];
  v12 = v11;
  [objc_msgSend(a4 objectForKey:{@"timingControlPoint2y", "floatValue"}];
  LODWORD(v13) = LODWORD(v14);
  LODWORD(v14) = v8;
  LODWORD(v15) = v10;
  LODWORD(v16) = v12;

  return [CAMediaTimingFunction functionWithControlPoints:v14];
}

- (CGAffineTransform)p_affineTransformFromArray:(SEL)a3
{
  [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
  v7 = v6;
  [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
  v9 = v8;
  [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
  v11 = v10;
  [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
  v13 = v12;
  [objc_msgSend(a4 objectAtIndex:{4), "floatValue"}];
  v15 = v14;
  result = [objc_msgSend(a4 objectAtIndex:{5), "floatValue"}];
  retstr->a = v7;
  retstr->b = v9;
  retstr->c = v11;
  retstr->d = v13;
  retstr->tx = v15;
  retstr->ty = v17;
  return result;
}

- (CATransform3D)p_transformFromArray:(SEL)a3
{
  v5 = *&CATransform3DIdentity.m33;
  *&retstr->m31 = *&CATransform3DIdentity.m31;
  *&retstr->m33 = v5;
  v6 = *&CATransform3DIdentity.m43;
  *&retstr->m41 = *&CATransform3DIdentity.m41;
  *&retstr->m43 = v6;
  v7 = *&CATransform3DIdentity.m13;
  *&retstr->m11 = *&CATransform3DIdentity.m11;
  *&retstr->m13 = v7;
  v8 = *&CATransform3DIdentity.m23;
  *&retstr->m21 = *&CATransform3DIdentity.m21;
  *&retstr->m23 = v8;
  if (a4)
  {
    self = [a4 count];
    if (self == &dword_10)
    {
      [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
      retstr->m11 = v10;
      [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
      retstr->m12 = v11;
      [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
      retstr->m13 = v12;
      [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
      retstr->m14 = v13;
      [objc_msgSend(a4 objectAtIndex:{4), "floatValue"}];
      retstr->m21 = v14;
      [objc_msgSend(a4 objectAtIndex:{5), "floatValue"}];
      retstr->m22 = v15;
      [objc_msgSend(a4 objectAtIndex:{6), "floatValue"}];
      retstr->m23 = v16;
      [objc_msgSend(a4 objectAtIndex:{7), "floatValue"}];
      retstr->m24 = v17;
      [objc_msgSend(a4 objectAtIndex:{8), "floatValue"}];
      retstr->m31 = v18;
      [objc_msgSend(a4 objectAtIndex:{9), "floatValue"}];
      retstr->m32 = v19;
      [objc_msgSend(a4 objectAtIndex:{10), "floatValue"}];
      retstr->m33 = v20;
      [objc_msgSend(a4 objectAtIndex:{11), "floatValue"}];
      retstr->m34 = v21;
      [objc_msgSend(a4 objectAtIndex:{12), "floatValue"}];
      retstr->m41 = v22;
      [objc_msgSend(a4 objectAtIndex:{13), "floatValue"}];
      retstr->m42 = v23;
      [objc_msgSend(a4 objectAtIndex:{14), "floatValue"}];
      retstr->m43 = v24;
      self = [objc_msgSend(a4 objectAtIndex:{15), "floatValue"}];
      retstr->m44 = v25;
    }
  }

  return self;
}

- (id)p_animationKeyPathForAction:(id)a3
{
  if ([a3 isEqualToString:@"opacityMultiplier"])
  {
    return @"opacity";
  }

  if ([a3 isEqualToString:@"translationEmphasis"])
  {
    return @"position";
  }

  if ([a3 isEqualToString:@"zOrderHint"])
  {
    return @"zPosition";
  }

  if ([a3 isEqualToString:@"rotationEmphasis"])
  {
    return @"transform.rotation.z";
  }

  if ([a3 isEqualToString:@"scaleEmphasis"])
  {
    return @"transform.scale.xy";
  }

  return a3;
}

- (void)p_addPerspectiveTransform:(id)a3
{
  v4 = [a3 superlayer];
  v5 = a3;
  v6 = objc_alloc_init(CALayer);
  [v4 bounds];
  [v6 setFrame:?];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (v6)
  {
    [v6 sublayerTransform];
  }

  v7 = tan(0.174532925);
  [v4 bounds];
  v9 = v8;
  [v4 bounds];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  *(&v18 + 1) = 1.0 / (v7 * -15.0 * v11);
  v12[4] = v17;
  v12[5] = v18;
  v12[6] = v19;
  v12[7] = v20;
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  [v6 setSublayerTransform:v12];
  [a3 zPosition];
  [v6 setZPosition:?];
  [v4 insertSublayer:v6 above:a3];
  [a3 removeFromSuperlayer];
  [v6 addSublayer:v5];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    mAnimationsStarted = self->mAnimationsStarted;
    if (!mAnimationsStarted || (v6 = mAnimationsStarted - 1, (self->mAnimationsStarted = v6) == 0))
    {
      mMovie = self->mMovie;
      if (!mMovie || ![(KPFMovie *)mMovie isPlaying])
      {
        mAnimationEndHandler = self->mAnimationEndHandler;
        if (mAnimationEndHandler)
        {
          v9 = *(mAnimationEndHandler + 2);

          v9();
        }
      }
    }
  }
}

@end