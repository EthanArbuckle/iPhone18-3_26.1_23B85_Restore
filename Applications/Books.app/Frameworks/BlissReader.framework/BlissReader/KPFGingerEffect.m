@interface KPFGingerEffect
- (BOOL)containsMovie;
- (BOOL)isMoviePlaying;
- (CATransform3D)p_transformFromArray:(SEL)a3;
- (CGAffineTransform)p_affineTransformFromArray:(SEL)a3;
- (CGColor)p_colorFromArray:(id)a3;
- (CGPath)p_newPathFromArray:(id)a3;
- (CGRect)p_rectFromDictionary:(id)a3;
- (KPFGingerEffect)initWithEffectDict:(id)a3;
- (id)p_basicAnimationFromAnimationDict:(id)a3 forLayer:(id)a4;
- (id)p_fillModefromDictionary:(id)a3;
- (id)p_groupedlLayerAnimationsFromAnimationDictionary:(id)a3 forLayer:(id)a4;
- (id)p_keyframeAnimationFromAnimationDict:(id)a3 forLayer:(id)a4;
- (id)p_newLayerFromDict:(id)a3;
- (id)p_propertyValueFromDictionary:(id)a3 forLayer:(id)a4 forAction:(id)a5;
- (id)p_timingFunctionFromString:(id)a3 forActionDictionary:(id)a4;
- (void)animateWithSession:(id)a3;
- (void)animationDidEnd;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)p_animateSubEffect:(id)a3;
- (void)p_createSubEffectsFromDict:(id)a3;
- (void)p_glAnimationEndCallback;
- (void)p_setupAndAnimateGLAnimationsFromAttributesDict:(id)a3;
- (void)p_subAnimationEnded;
- (void)pauseMoviePlayback;
- (void)renderEffectWithSession:(id)a3 withSwappableLayersDict:(id)a4;
- (void)resumeMoviePlayback;
- (void)stopMoviePlayback;
- (void)tearDown;
@end

@implementation KPFGingerEffect

- (KPFGingerEffect)initWithEffectDict:(id)a3
{
  v17.receiver = self;
  v17.super_class = KPFGingerEffect;
  v4 = [(KPFGingerEffect *)&v17 init];
  if (v4)
  {
    v4->mEffectDict = a3;
    v4->mChildren = objc_alloc_init(NSMutableArray);
    v4->mBaseLayerDict = [a3 objectForKey:@"baseLayer"];
    v4->mName = [a3 objectForKey:@"name"];
    v4->mType = [a3 objectForKey:@"type"];
    [objc_msgSend(a3 objectForKey:{@"beginTime", "floatValue"}];
    v4->mBeginTime = v5;
    [objc_msgSend(a3 objectForKey:{@"duration", "floatValue"}];
    v4->mDuration = v6;
    v4->mChildrenArray = [a3 objectForKey:@"effects"];
    v4->mMovieDict = [a3 objectForKey:@"movie"];
    v4->mObjectID = [a3 objectForKey:@"objectID"];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    mChildrenArray = v4->mChildrenArray;
    v8 = [(NSArray *)mChildrenArray countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mChildrenArray);
          }

          [(KPFGingerEffect *)v4 p_createSubEffectsFromDict:*(*(&v13 + 1) + 8 * i)];
        }

        v9 = [(NSArray *)mChildrenArray countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v4;
}

- (void)dealloc
{
  self->mBuildRenderer = 0;

  self->mTransitionRenderer = 0;
  v3.receiver = self;
  v3.super_class = KPFGingerEffect;
  [(KPFGingerEffect *)&v3 dealloc];
}

- (void)p_createSubEffectsFromDict:(id)a3
{
  if (a3)
  {
    v4 = [[KPFGingerEffect alloc] initWithEffectDict:a3];
    [(NSMutableArray *)self->mChildren addObject:v4];
  }
}

- (void)renderEffectWithSession:(id)a3 withSwappableLayersDict:(id)a4
{
  self->mKPFSession = a3;
  self->mSwappableLayersDict = a4;
  self->mAnimationDict = objc_alloc_init(TSURetainedPointerKeyDictionary);

  self->mTextures = objc_alloc_init(NSMutableArray);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (self->mMovieDict && !self->mBaseLayerDict)
  {
    [(KPFGingerSlide *)[self->mKPFSession currentSlide] newMovieForTextureName:0 movieDict:self->mMovieDict withObjectID:[(KPFGingerEffect *)self objectID]];
    goto LABEL_14;
  }

  self->_baseLayer = [(KPFGingerEffect *)self p_newLayerFromDict:[(KPFGingerEffect *)self baseLayerDict]];
  if (![(KPFGingerEffect *)self objectID])
  {
    goto LABEL_11;
  }

  if (!self->mMovieDict)
  {
    v5 = [(KPFGingerSlide *)[self->mKPFSession currentSlide] movieForObjectID:[(KPFGingerEffect *)self objectID]];
    if (v5)
    {
      v6 = v5;
      v7 = [(NSArray *)[(CALayer *)self->_baseLayer sublayers] objectAtIndexedSubscript:0];
      v8 = v7;
      if (v7)
      {
        [v7 affineTransform];
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
      }

      v9 = [v6 playerLayer];
      v13[0] = v14;
      v13[1] = v15;
      v13[2] = v16;
      [v9 setAffineTransform:v13];
      [v8 anchorPoint];
      [objc_msgSend(v6 "playerLayer")];
      -[CALayer insertSublayer:atIndex:](self->_baseLayer, "insertSublayer:atIndex:", [v6 playerLayer], 1);
    }

LABEL_11:
    if (!self->mMovieDict)
    {
      goto LABEL_14;
    }
  }

  v12 = [(KPFGingerSlide *)[self->mKPFSession currentSlide] movieForObjectID:[(KPFGingerEffect *)self objectID]];
  if (v12)
  {
    -[CALayer insertSublayer:atIndex:](self->_baseLayer, "insertSublayer:atIndex:", [v12 playerLayer], 1);
  }

LABEL_14:
  +[CATransaction commit];
  self->mAnimationsStarted = 0;
}

- (id)p_newLayerFromDict:(id)a3
{
  v5 = +[CALayer layer];
  v6 = [a3 objectForKey:@"texture"];
  v7 = [a3 objectForKey:@"initialState"];
  v8 = [a3 objectForKey:@"layers"];
  v9 = [a3 objectForKey:@"objectID"];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->mSwappableLayersDict objectForKey:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 superlayer];
      v13 = [v11 superlayer];
      if (v12)
      {
        [v13 replaceSublayer:v11 with:v5];
      }
    }

    [(NSMutableDictionary *)self->mSwappableLayersDict setObject:v5 forKey:v9];
  }

  -[CALayer setMasksToBounds:](v5, "setMasksToBounds:", [objc_msgSend(v7 objectForKey:{@"masksToBounds", "BOOLValue"}]);
  -[CALayer setHidden:](v5, "setHidden:", [objc_msgSend(v7 objectForKey:{@"hidden", "BOOLValue"}]);
  [objc_msgSend(v7 objectForKey:{@"zIndex", "floatValue"}];
  [(CALayer *)v5 setZPosition:v14];
  [(CALayer *)v5 setDoubleSided:0];
  [(CALayer *)v5 setEdgeAntialiasingMask:0];
  v15 = [v7 objectForKey:@"anchorPoint"];
  [objc_msgSend(v15 objectForKey:{@"pointX", "floatValue"}];
  v17 = v16;
  [objc_msgSend(v15 objectForKey:{@"pointY", "floatValue"}];
  [(CALayer *)v5 setAnchorPoint:v17, v18];
  v19 = [v7 objectForKey:@"position"];
  [objc_msgSend(v19 objectForKey:{@"pointX", "floatValue"}];
  v21 = v20;
  [objc_msgSend(v19 objectForKey:{@"pointY", "floatValue"}];
  [(CALayer *)v5 setPosition:v21, v22];
  [objc_msgSend(v7 objectForKey:{@"width", "floatValue"}];
  v24 = v23;
  [objc_msgSend(v7 objectForKey:{@"height", "floatValue"}];
  [(CALayer *)v5 setBounds:0.0, 0.0, v24, v25];
  v26 = [v7 objectForKey:@"sublayerTransform"];
  if (self)
  {
    [(KPFGingerEffect *)self p_transformFromArray:v26];
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
  }

  v71 = v79;
  v72 = v80;
  v73 = v81;
  v74 = v82;
  v67 = v75;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  [(CALayer *)v5 setSublayerTransform:&v67];
  v27 = [v7 objectForKey:@"affineTransform"];
  if (self)
  {
    [(KPFGingerEffect *)self p_affineTransformFromArray:v27];
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
  }

  [(CALayer *)v5 setAffineTransform:&v67];
  -[KPFGingerEffect p_rectFromDictionary:](self, "p_rectFromDictionary:", [v7 objectForKey:@"contentsRect"]);
  [(CALayer *)v5 setContentsRect:?];
  [objc_msgSend(v7 objectForKey:{@"opacity", "floatValue"}];
  [(CALayer *)v5 setOpacity:?];
  v28 = [v7 objectForKey:@"backgroundColor"];
  if (v28)
  {
    [(CALayer *)v5 setBackgroundColor:[(KPFGingerEffect *)self p_colorFromArray:v28]];
  }

  v29 = [v7 objectForKey:@"opacityMultiplier"];
  if (v29)
  {
    v30 = v29;
    [(CALayer *)v5 opacity];
    v32 = v31;
    [v30 floatValue];
    *&v34 = v32 * v33;
    [(CALayer *)v5 setOpacity:v34];
  }

  mKPFSession = self->mKPFSession;
  if (mKPFSession && v6)
  {
    [(CALayer *)v5 setContents:[mKPFSession CGImageForTextureName:v6]];
    [(CALayer *)v5 setName:v6];
    [(NSMutableArray *)self->mTextures addObject:v6];
  }

  if (v9)
  {
    [(CALayer *)v5 setName:v9];
  }

  v36 = [a3 objectForKey:@"animations"];
  v37 = self->mKPFSession;
  if (v37)
  {
    if (!self->mMovie)
    {
      if (self->mMovieDict)
      {
        if (v6)
        {
          if ([(KPFSession *)v37 movieNameForTextureName:v6])
          {
            if ([(NSString *)[(KPFGingerEffect *)self name] isEqualToString:@"renderMovie"])
            {
              if (![(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"buildOut"])
              {
                [(KPFGingerSlide *)[self->mKPFSession currentSlide] newMovieForTextureName:v6 movieDict:self->mMovieDict withObjectID:[(KPFGingerEffect *)self objectID]];
                v43 = [(KPFGingerSlide *)[self->mKPFSession currentSlide] movieForObjectID:[(KPFGingerEffect *)self objectID]];
                if (v43)
                {
                  v44 = [v43 playerLayer];
                  [self->mKPFSession textureSizeForName:v6];
                  [v44 setBounds:{0.0, 0.0, v45, v46}];
                  [(CALayer *)v5 anchorPoint];
                  [v44 setAnchorPoint:?];
                  [(CALayer *)v5 position];
                  [v44 setPosition:?];
                  if (v5)
                  {
                    [(CALayer *)v5 sublayerTransform];
                  }

                  else
                  {
                    v65 = 0u;
                    v66 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    v61 = 0u;
                    v62 = 0u;
                    v59 = 0u;
                    v60 = 0u;
                  }

                  v71 = v63;
                  v72 = v64;
                  v73 = v65;
                  v74 = v66;
                  v67 = v59;
                  v68 = v60;
                  v69 = v61;
                  v70 = v62;
                  [v44 setSublayerTransform:&v67];
                  [(CALayer *)v5 opacity];
                  [v44 setOpacity:?];
                  [(CALayer *)v5 zPosition];
                  [v44 setZPosition:?];
                  if (v5)
                  {
                    [(CALayer *)v5 transform];
                  }

                  else
                  {
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                  }

                  v71 = v55;
                  v72 = v56;
                  v73 = v57;
                  v74 = v58;
                  v67 = v51;
                  v68 = v52;
                  v69 = v53;
                  v70 = v54;
                  [v44 setTransform:&v67];
                  [v44 setValue:v5 forKey:@"textureLayer"];
                  [(CALayer *)v5 setValue:v44 forKey:@"movieLayer"];
                  [(CALayer *)v5 setHidden:0];
                }
              }
            }
          }
        }
      }
    }
  }

  if ([v36 count])
  {
    [(TSURetainedPointerKeyDictionary *)self->mAnimationDict setObject:v36 forUncopiedKey:v5];
    self->_layer = v5;
    self->_textureToBeAnimated = v6;
  }

  if ([v8 count])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = [v8 countByEnumeratingWithState:&v47 objects:v83 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v48;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(v8);
          }

          [(CALayer *)v5 addSublayer:[(KPFGingerEffect *)self p_newLayerFromDict:*(*(&v47 + 1) + 8 * i)]];
        }

        v39 = [v8 countByEnumeratingWithState:&v47 objects:v83 count:16];
      }

      while (v39);
    }
  }

  return v5;
}

- (id)p_basicAnimationFromAnimationDict:(id)a3 forLayer:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v7 = [a3 objectForKey:@"property"];
  if (([v7 isEqualToString:@"transform.rotation.y"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"transform.translation.z"))
  {
    self->mRequiresPerspectiveTransform = 0;
  }

  v8 = [CABasicAnimation animationWithKeyPath:v7];
  [objc_msgSend(a3 objectForKey:{@"beginTime", "floatValue"}];
  [(CABasicAnimation *)v8 setBeginTime:v9];
  if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"transition"])
  {
    [(CABasicAnimation *)v8 beginTime];
    [(CABasicAnimation *)v8 setBeginTime:v10 + self->mBeginTime];
  }

  [objc_msgSend(a3 objectForKey:{@"duration", "floatValue"}];
  [(CABasicAnimation *)v8 setDuration:v11];
  -[CABasicAnimation setFromValue:](v8, "setFromValue:", -[KPFGingerEffect p_propertyValueFromDictionary:forLayer:forAction:](self, "p_propertyValueFromDictionary:forLayer:forAction:", [a3 objectForKey:@"from"], a4, v7));
  -[CABasicAnimation setToValue:](v8, "setToValue:", -[KPFGingerEffect p_propertyValueFromDictionary:forLayer:forAction:](self, "p_propertyValueFromDictionary:forLayer:forAction:", [a3 objectForKey:@"to"], a4, v7));
  if ([a3 objectForKey:@"timingFunction"])
  {
    -[CABasicAnimation setTimingFunction:](v8, "setTimingFunction:", -[KPFGingerEffect p_timingFunctionFromString:forActionDictionary:](self, "p_timingFunctionFromString:forActionDictionary:", [a3 objectForKey:@"timingFunction"], a3));
  }

  [(CABasicAnimation *)v8 setFillMode:[(KPFGingerEffect *)self p_fillModefromDictionary:a3]];
  [objc_msgSend(a3 objectForKey:{@"repeatCount", "floatValue"}];
  [(CABasicAnimation *)v8 setRepeatCount:?];
  return v8;
}

- (id)p_keyframeAnimationFromAnimationDict:(id)a3 forLayer:(id)a4
{
  v7 = [a3 objectForKey:@"property"];
  v8 = [CAKeyframeAnimation animationWithKeyPath:v7];
  [objc_msgSend(a3 objectForKey:{@"beginTime", "floatValue"}];
  [(CAKeyframeAnimation *)v8 setBeginTime:v9];
  if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"transition"])
  {
    [(CAKeyframeAnimation *)v8 beginTime];
    [(CAKeyframeAnimation *)v8 setBeginTime:v10 + self->mBeginTime];
  }

  [objc_msgSend(a3 objectForKey:{@"duration", "floatValue"}];
  [(CAKeyframeAnimation *)v8 setDuration:v11];
  [(CAKeyframeAnimation *)v8 setFillMode:[(KPFGingerEffect *)self p_fillModefromDictionary:a3]];
  v12 = [a3 objectForKey:@"path"];
  if (v12)
  {
    v13 = v12;
    if ([v12 count])
    {
      v14 = [(KPFGingerEffect *)self p_newPathFromArray:v13];
      [(CAKeyframeAnimation *)v8 setPath:v14];
      CGPathRelease(v14);
    }
  }

  v15 = [a3 objectForKey:@"keyTimes"];
  if (v15)
  {
    v16 = v15;
    if ([v15 count])
    {
      v30 = v8;
      v31 = a3;
      v17 = [a3 objectForKey:@"timingFunctions"];
      v18 = +[NSMutableArray array];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v19 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v17);
            }

            [v18 addObject:{-[KPFGingerEffect p_timingFunctionFromString:forActionDictionary:](self, "p_timingFunctionFromString:forActionDictionary:", objc_msgSend(*(*(&v36 + 1) + 8 * i), "objectForKey:", @"timingFunction", *(*(&v36 + 1) + 8 * i))}];
          }

          v20 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v20);
      }

      v23 = [v31 objectForKey:@"values"];
      v24 = +[NSMutableArray array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v33;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v33 != v27)
            {
              objc_enumerationMutation(v23);
            }

            [v24 addObject:{-[KPFGingerEffect p_propertyValueFromDictionary:forLayer:forAction:](self, "p_propertyValueFromDictionary:forLayer:forAction:", *(*(&v32 + 1) + 8 * j), a4, v7)}];
          }

          v26 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v26);
      }

      v8 = v30;
      [(CAKeyframeAnimation *)v30 setKeyTimes:v16];
      [(CAKeyframeAnimation *)v30 setTimingFunctions:v18];
      [(CAKeyframeAnimation *)v30 setValues:v24];
      [objc_msgSend(v31 objectForKey:{@"repeatCount", "floatValue"}];
      [(CAKeyframeAnimation *)v30 setRepeatCount:?];
    }
  }

  return v8;
}

- (id)p_groupedlLayerAnimationsFromAnimationDictionary:(id)a3 forLayer:(id)a4
{
  if ([a3 objectForKey:@"keyTimes"] || objc_msgSend(a3, "objectForKey:", @"path"))
  {

    return [(KPFGingerEffect *)self p_keyframeAnimationFromAnimationDict:a3 forLayer:a4];
  }

  else
  {

    return [(KPFGingerEffect *)self p_basicAnimationFromAnimationDict:a3 forLayer:a4];
  }
}

- (void)p_setupAndAnimateGLAnimationsFromAttributesDict:(id)a3
{
  v5 = [self->mKPFSession animationRegistry];
  if ([(KPFGingerAnimationRegistry *)v5 containsEffect:[(KPFGingerEffect *)self name] ofType:[(KPFGingerEffect *)self type]])
  {
    v6 = [(KPFGingerAnimationRegistry *)v5 effectClassWithName:[(KPFGingerEffect *)self name] andType:[(KPFGingerEffect *)self type]];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_msgSend(a3 objectForKey:{@"direction", "unsignedIntegerValue"}];
      mBeginTime = self->mBeginTime;
      mDuration = self->mDuration;
      if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"transition"])
      {
        v11 = [[KPFMTLTransitionRenderer alloc] initWithEffectClass:v7 direction:v8 duration:self effect:self->mKPFSession session:mDuration];
        self->mTransitionRenderer = v11;
        [(KPFMTLTransitionRenderer *)v11 registerForTransitionEndCallback:"p_glAnimationEndCallback" target:self];
        ++self->mAnimationsStarted;
        mTransitionRenderer = self->mTransitionRenderer;

        [(KPFTransitionProtocol *)mTransitionRenderer animateWithDelay:mBeginTime];
      }

      else if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"buildIn"]|| [(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"buildOut"])
      {
        if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"buildIn"])
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        self->mTransitionRenderer = 0;
        LOWORD(v18) = 0;
        LOBYTE(v17) = 0;
        v14 = [KNAnimatedBuild createWithBuildType:v13 attributes:a3 direction:v8 effect:[(KPFGingerEffect *)self name] deliveryStyle:0 stageCount:0 eventIndex:mBeginTime stageIndex:mBeginTime startTime:mDuration eventStartTime:0 duration:0 automatic:v17 renderer:0 animateAtEndOfPreviousBuild:v18 isEmphasisBuild:?];
        v15 = [[KPFMTLBuildRenderer alloc] initWithEffectClass:v7 direction:v8 duration:self effect:self->mKPFSession session:mDuration];
        self->mBuildRenderer = v15;
        [(KPFMTLBuildRenderer *)v15 setAnimatedBuild:v14];
        [(KPFBuildProtocol *)self->mBuildRenderer registerForBuildEndCallback:"p_glAnimationEndCallback" target:self];
        ++self->mAnimationsStarted;
        mBuildRenderer = self->mBuildRenderer;

        [(KPFBuildProtocol *)mBuildRenderer animateAfterDelay:mBeginTime];
      }
    }
  }
}

- (void)animateWithSession:(id)a3
{
  self->mKPFSession = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5 = [(NSDictionary *)self->mEffectDict objectForKey:@"attributes"];
  v6 = [self->mKPFSession animationRegistry];
  mMovieDict = self->mMovieDict;
  v8 = [(KPFGingerEffect *)self name];
  if (mMovieDict)
  {
    if ([(NSString *)v8 isEqualToString:@"renderMovie"])
    {
      v9 = [a3 currentSlide];
      v10 = [(KPFGingerEffect *)self objectID];
      [-[NSDictionary objectForKeyedSubscript:](self->mEffectDict objectForKeyedSubscript:{@"beginTime", "floatValue"}];
      [v9 playMovieForObjectID:v10 afterDelay:v11];
    }
  }

  else if (([(NSString *)v8 isEqualToString:@"apple:movie-start"]|| [(NSString *)[(KPFGingerEffect *)self name] isEqualToString:@"apple:audio-start"]) && [(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"buildOut"])
  {
    [objc_msgSend(a3 "currentSlide")];
  }

  else if (![(NSString *)[(KPFGingerEffect *)self name] isEqualToString:@"apple:audio-start"]|| ![(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"buildIn"])
  {
    if ([(KPFGingerAnimationRegistry *)v6 containsEffect:[(KPFGingerEffect *)self name] ofType:[(KPFGingerEffect *)self type]]&& v5 && [(NSMutableArray *)self->mTextures count])
    {
      v12 = [-[NSMutableArray reverseObjectEnumerator](self->mTextures "reverseObjectEnumerator")];
      [(NSMutableArray *)self->mTextures removeAllObjects];
      [(NSMutableArray *)self->mTextures addObjectsFromArray:v12];
      [(KPFGingerEffect *)self p_setupAndAnimateGLAnimationsFromAttributesDict:v5];
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [(TSURetainedPointerKeyDictionary *)self->mAnimationDict allKeys];
      v36 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v36)
      {
        v35 = *v50;
        do
        {
          v13 = 0;
          do
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = v13;
            v14 = *(*(&v49 + 1) + 8 * v13);
            v15 = [(TSURetainedPointerKeyDictionary *)self->mAnimationDict objectForKey:v14];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v38 = v15;
            v40 = [v15 countByEnumeratingWithState:&v45 objects:v54 count:16];
            if (v40)
            {
              v39 = *v46;
              do
              {
                for (i = 0; i != v40; i = i + 1)
                {
                  if (*v46 != v39)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v17 = *(*(&v45 + 1) + 8 * i);
                  self->mRequiresPerspectiveTransform = 0;
                  v18 = [v17 objectForKey:@"animations"];
                  v19 = [v18 count];
                  v20 = +[NSMutableArray array];
                  if (v19)
                  {
                    v43 = 0u;
                    v44 = 0u;
                    v41 = 0u;
                    v42 = 0u;
                    v21 = [v18 countByEnumeratingWithState:&v41 objects:v53 count:16];
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *v42;
                      do
                      {
                        for (j = 0; j != v22; j = j + 1)
                        {
                          if (*v42 != v23)
                          {
                            objc_enumerationMutation(v18);
                          }

                          [v20 addObject:{-[KPFGingerEffect p_groupedlLayerAnimationsFromAnimationDictionary:forLayer:](self, "p_groupedlLayerAnimationsFromAnimationDictionary:forLayer:", *(*(&v41 + 1) + 8 * j), v14)}];
                        }

                        v22 = [v18 countByEnumeratingWithState:&v41 objects:v53 count:16];
                      }

                      while (v22);
                    }

                    [objc_msgSend(v17 objectForKey:{@"beginTime", "floatValue"}];
                    v26 = v25;
                    if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"transition"])
                    {
                      v26 = self->mBeginTime + v26;
                    }

                    v27 = +[CAAnimationGroup animation];
                    [v27 setAnimations:v20];
                    [objc_msgSend(v17 objectForKey:{@"duration", "floatValue"}];
                    [v27 setDuration:v26 + v28];
                    [v27 setFillMode:kCAFillModeForwards];
                    [objc_msgSend(v17 objectForKey:{@"repeatCount", "floatValue"}];
                    [v27 setRepeatCount:?];
                    if ([v17 objectForKey:@"timingFunction"])
                    {
                      [v27 setTimingFunction:{-[KPFGingerEffect p_timingFunctionFromString:forActionDictionary:](self, "p_timingFunctionFromString:forActionDictionary:", objc_msgSend(v17, "objectForKey:", @"timingFunction", v17)}];
                    }

                    [v27 setDelegate:self];
                    [v27 setRemovedOnCompletion:0];
                    [v27 setValue:v14 forKey:@"layer"];
                    v29 = [objc_msgSend(v20 objectAtIndex:{0), "keyPath"}];
                  }

                  else
                  {
                    [v20 addObject:{-[KPFGingerEffect p_groupedlLayerAnimationsFromAnimationDictionary:forLayer:](self, "p_groupedlLayerAnimationsFromAnimationDictionary:forLayer:", v17, v14)}];
                    [objc_msgSend(v17 objectForKey:{@"beginTime", "floatValue"}];
                    v31 = v30;
                    if ([(NSString *)[(KPFGingerEffect *)self type] isEqualToString:@"transition"])
                    {
                      v31 = self->mBeginTime + v31;
                    }

                    v27 = +[CAAnimationGroup animation];
                    [v27 setAnimations:v20];
                    [objc_msgSend(v17 objectForKey:{@"duration", "floatValue"}];
                    [v27 setDuration:v31 + v32];
                    [objc_msgSend(v17 objectForKey:{@"repeatCount", "floatValue"}];
                    [v27 setRepeatCount:?];
                    [v27 setFillMode:kCAFillModeForwards];
                    [v27 setDelegate:self];
                    [v27 setRemovedOnCompletion:0];
                    [v27 setValue:v14 forKey:@"layer"];
                    v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", [v17 objectForKey:@"property"]);
                  }

                  v33 = v29;
                  if (![v14 animationForKey:v29])
                  {
                    ++self->mAnimationsStarted;
                  }

                  [v14 addAnimation:v27 forKey:v33];
                }

                v40 = [v38 countByEnumeratingWithState:&v45 objects:v54 count:16];
              }

              while (v40);
            }

            v13 = v37 + 1;
          }

          while ((v37 + 1) != v36);
          v36 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v36);
      }
    }
  }

  +[CATransaction commit];
  if (!self->mAnimationsStarted)
  {
    [(KPFGingerEffect *)self animationDidEnd];
  }
}

- (BOOL)containsMovie
{
  v2 = self->mMovieDict != 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(KPFGingerEffect *)self children];
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) containsMovie])
        {
          return 1;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    return 0;
  }

  return v2;
}

- (BOOL)isMoviePlaying
{
  mMovie = self->mMovie;
  if (mMovie)
  {
    v4 = [(KPFMovie *)mMovie isPlaying];
  }

  else
  {
    v4 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(KPFGingerEffect *)self children];
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isMoviePlaying])
        {
          return 1;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    return 0;
  }

  return v4;
}

- (void)stopMoviePlayback
{
  mMovie = self->mMovie;
  if (mMovie)
  {
    if ([(KPFMovie *)mMovie isPlaying])
    {
      [(KPFMovie *)self->mMovie stop];
    }

    [(KPFGingerEffect *)self animationDidEnd];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(KPFGingerEffect *)self children];
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) stopMoviePlayback];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)pauseMoviePlayback
{
  if ([(KPFGingerEffect *)self isMoviePlaying])
  {
    [(KPFMovie *)self->mMovie pause];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(KPFGingerEffect *)self children];
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7) pauseMoviePlayback];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)resumeMoviePlayback
{
  if ([(KPFGingerEffect *)self isMoviePlaying])
  {
    [(KPFMovie *)self->mMovie resume];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(KPFGingerEffect *)self children];
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7) resumeMoviePlayback];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)tearDown
{
  mTransitionRenderer = self->mTransitionRenderer;
  if (mTransitionRenderer)
  {
    [(KPFTransitionProtocol *)mTransitionRenderer removeAnimations];
    [(KPFTransitionProtocol *)self->mTransitionRenderer teardown];
  }

  mBuildRenderer = self->mBuildRenderer;
  if (mBuildRenderer)
  {
    [(KPFBuildProtocol *)mBuildRenderer stopAnimations];
    [(KPFBuildProtocol *)self->mBuildRenderer teardown];
  }

  mMovie = self->mMovie;
  if (mMovie)
  {
    [(KPFMovie *)mMovie stop];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(TSURetainedPointerKeyDictionary *)self->mAnimationDict allKeys];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * v10) removeAllAnimations];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  self->mAnimationDict = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(KPFGingerEffect *)self children];
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) tearDown];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
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

- (void)p_animateSubEffect:(id)a3
{
  [a3 renderEffectWithSession:self->mKPFSession withSwappableLayersDict:self->mSwappableLayersDict];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_88BC;
  v5[3] = &unk_45AE00;
  v5[4] = self;
  [a3 setAnimationEndHandler:v5];
  if (([a3 containsMovie] & 1) == 0)
  {
    ++self->mAnimationsStarted;
  }

  [a3 animateWithSession:self->mKPFSession];
}

- (void)p_glAnimationEndCallback
{
  mAnimationsStarted = self->mAnimationsStarted;
  if (mAnimationsStarted)
  {
    self->mAnimationsStarted = mAnimationsStarted - 1;
  }

  [(KPFGingerEffect *)self animationDidEnd];
}

- (void)p_subAnimationEnded
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    mAnimationsStarted = self->mAnimationsStarted;
    if (!mAnimationsStarted || (v5 = mAnimationsStarted - 1, (self->mAnimationsStarted = v5) == 0))
    {
      [(KPFGingerEffect *)self animationDidEnd];
    }
  }
}

- (void)animationDidEnd
{
  if ([(NSMutableArray *)[(KPFGingerEffect *)self children] count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(KPFGingerEffect *)self children];
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(KPFGingerEffect *)self p_animateSubEffect:*(*(&v10 + 1) + 8 * i)];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else if (!self->mAnimationsStarted)
  {
    mAnimationEndHandler = self->mAnimationEndHandler;
    if (mAnimationEndHandler)
    {
      v9 = *(mAnimationEndHandler + 2);

      v9();
    }
  }
}

- (id)p_fillModefromDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"fillMode"];
  if ([v3 isEqualToString:@"both"])
  {
    v4 = &kCAFillModeBoth;
  }

  else if ([v3 isEqualToString:@"forwards"])
  {
    v4 = &kCAFillModeForwards;
  }

  else
  {
    v5 = [v3 isEqualToString:@"backwards"];
    v4 = &kCAFillModeRemoved;
    if (v5)
    {
      v4 = &kCAFillModeBackwards;
    }
  }

  return *v4;
}

- (CGPath)p_newPathFromArray:(id)a3
{
  Mutable = CGPathCreateMutable();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a3;
  v22 = [a3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [v6 objectForKey:@"points"];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              if ([objc_msgSend(v6 objectForKey:{@"type", "isEqualToString:", @"MoveToPoint"}])
              {
                [objc_msgSend(v12 objectAtIndex:{0), "floatValue"}];
                v14 = v13;
                [objc_msgSend(v12 objectAtIndex:{1), "floatValue"}];
                CGPathMoveToPoint(Mutable, 0, v14, v15);
              }

              else if ([objc_msgSend(v6 objectForKey:{@"type", "isEqualToString:", @"AddLine"}])
              {
                [objc_msgSend(v12 objectAtIndex:{0), "floatValue"}];
                v17 = v16;
                [objc_msgSend(v12 objectAtIndex:{1), "floatValue"}];
                CGPathAddLineToPoint(Mutable, 0, v17, v18);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        v5 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  return Mutable;
}

- (id)p_propertyValueFromDictionary:(id)a3 forLayer:(id)a4 forAction:(id)a5
{
  if (([a5 isEqualToString:@"transform.rotation.x"] & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.rotation.y") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.rotation.z") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.x") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.y") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.z") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"hidden") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"zPosition") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"anchorPointZ") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"zOrderHint") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"isPlaying") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"translation.z") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.scale.xy") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"sublayerTransform.rotation.x") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"sublayerTransform.rotation.y") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"transform.rotation") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"opacity") & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", @"doubleSided") & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"sublayerTransform.transform.scale"))
  {

    return [a3 objectForKey:@"scalar"];
  }

  if ([a5 isEqualToString:@"transform.translation.x"] || objc_msgSend(a5, "isEqualToString:", @"transform.translation.y") || objc_msgSend(a5, "isEqualToString:", @"transform.translation.z"))
  {
    [objc_msgSend(a3 objectForKey:{@"scalar", "floatValue"}];
LABEL_28:

    return [NSNumber numberWithFloat:?];
  }

  if ([a5 isEqualToString:@"opacityMultiplier"])
  {
    [a4 opacity];
    [objc_msgSend(a3 objectForKey:{@"scalar", "floatValue"}];
    goto LABEL_28;
  }

  if ([a5 isEqualToString:@"translationEmphasis"])
  {
    v10 = [a3 objectForKey:@"translationEmphasis"];
    [a4 position];
    v12 = v11;
    v14 = v13;
    v15 = [a4 valueForKey:@"addtionalInitialTranslation"];
    if (v15)
    {
      [v15 CGPointValue];
      v12 = v12 - v16;
      v14 = v14 - v17;
    }

    [objc_msgSend(v10 objectAtIndex:{0), "floatValue"}];
    v19 = v12 + v18;
    [objc_msgSend(v10 objectAtIndex:{1), "floatValue"}];
    v21 = v14 + v20;
    v22 = v19;
    goto LABEL_37;
  }

  if ([a5 isEqualToString:@"rotationEmphasis"])
  {
    v23 = [a3 objectForKey:@"rotationEmphasis"];
    v24 = 6;
LABEL_44:

    return [v23 objectAtIndex:v24];
  }

  if ([a5 isEqualToString:@"scaleEmphasis"])
  {
    v23 = [a3 objectForKey:@"scaleEmphasis"];
    v24 = 3;
    goto LABEL_44;
  }

  if (([a5 isEqualToString:@"transform.translation"] & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"anchorPoint") || objc_msgSend(a5, "isEqualToString:", @"position"))
  {
    [objc_msgSend(a3 objectForKey:{@"pointX", "floatValue"}];
    v26 = v25;
    [objc_msgSend(a3 objectForKey:{@"pointY", "floatValue"}];
    v21 = v27;
    v22 = v26;
LABEL_37:

    return [NSValue valueWithCGPoint:v22, v21];
  }

  if ([a5 isEqualToString:@"transform"])
  {
    memset(&v41, 0, sizeof(v41));
    v28 = [a3 objectForKey:@"transform"];
    if (self)
    {
      [(KPFGingerEffect *)self p_transformFromArray:v28];
    }

    else
    {
      memset(&v41, 0, sizeof(v41));
    }

    if (a4)
    {
      [a4 transform];
    }

    else
    {
      memset(&b, 0, sizeof(b));
    }

    v38 = v41;
    CATransform3DConcat(&v40, &v38, &b);
    v41 = v40;
    return [NSValue valueWithCATransform3D:&v40];
  }

  if ([a5 isEqualToString:@"contents"])
  {
    if (self->mKPFSession)
    {
      v29 = [a3 objectForKey:@"texture"];
      mKPFSession = self->mKPFSession;

      return [mKPFSession CGImageForTextureName:v29];
    }

    return 0;
  }

  if (![a5 isEqualToString:@"bounds"])
  {
    return 0;
  }

  [objc_msgSend(a3 objectForKey:{@"pointX", "floatValue"}];
  v32 = v31;
  [objc_msgSend(a3 objectForKey:{@"pointY", "floatValue"}];
  v34 = v33;
  [objc_msgSend(a3 objectForKey:{@"width", "floatValue"}];
  v36 = v35;
  [objc_msgSend(a3 objectForKey:{@"height", "floatValue"}];

  return [NSValue valueWithCGRect:v32, v34, v36, v37];
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

- (CGColor)p_colorFromArray:(id)a3
{
  result = [+[TSUColor blackColor](TSUColor "blackColor")];
  if (a3)
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
    v6 = v5;
    [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
    v8 = v7;
    [objc_msgSend(a3 objectAtIndexedSubscript:{2), "floatValue"}];
    v10 = v9;
    [objc_msgSend(a3 objectAtIndexedSubscript:{3), "floatValue"}];
    v12 = [TSUColor colorWithRed:v6 green:v8 blue:v10 alpha:v11];

    return [(TSUColor *)v12 CGColor];
  }

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

@end