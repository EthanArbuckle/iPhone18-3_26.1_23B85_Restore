@interface KPFGingerEvent
- (BOOL)containsMovie;
- (BOOL)isMoviePlaying;
- (CATransform3D)p_transformFromArray:(SEL)a3;
- (CGAffineTransform)p_affineTransformFromArray:(SEL)a3;
- (CGRect)p_rectFromDictionary:(id)a3;
- (KPFGingerEvent)initWithDictionary:(id)a3;
- (KPFGingerEvent)initWithEffectsDictionary:(id)a3;
- (id)accessibilityArray;
- (id)hyperlinkAtLocation:(CGPoint)a3;
- (id)hyperlinksRectArray;
- (id)p_effectsArray;
- (id)p_hyperlinksArray;
- (id)p_newLayerFromDict:(id)a3;
- (void)animateWithSession:(id)a3;
- (void)dealloc;
- (void)p_AnimationEnded;
- (void)pauseMoviePlayback;
- (void)renderEventWithSession:(id)a3;
- (void)resumeMoviePlayback;
- (void)stopMoviePlayback;
- (void)tearDown;
@end

@implementation KPFGingerEvent

- (KPFGingerEvent)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = KPFGingerEvent;
  v4 = [(KPFGingerEvent *)&v6 init];
  if (v4)
  {
    v4->mEventsDictionary = a3;
    v4->_isAutomatic = [objc_msgSend(a3 objectForKey:{@"automaticPlay", "BOOLValue"}];
  }

  return v4;
}

- (KPFGingerEvent)initWithEffectsDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = KPFGingerEvent;
  v4 = [(KPFGingerEvent *)&v6 init];
  if (v4)
  {
    v4->mEffectsDictionary = a3;
    v4->mEventsDictionary = 0;
  }

  return v4;
}

- (void)dealloc
{
  self->mAnimationDict = 0;

  v3.receiver = self;
  v3.super_class = KPFGingerEvent;
  [(KPFGingerEvent *)&v3 dealloc];
}

- (void)renderEventWithSession:(id)a3
{
  self->mAnimationDict = objc_alloc_init(NSMutableDictionary);

  self->mSwappableLayersDict = objc_alloc_init(NSMutableDictionary);
  self->mMovietoLayerMap = objc_alloc_init(NSMutableDictionary);
  self->mKPFSession = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CALayer *)[self->mKPFSession showLayer] setSublayers:0];
  v5 = [(KPFGingerEvent *)self p_newLayerFromDict:[(NSDictionary *)self->mEventsDictionary objectForKey:@"baseLayer"]];
  v6 = [(NSMutableDictionary *)self->mMovietoLayerMap allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->mMovietoLayerMap objectForKeyedSubscript:{v11), "playerLayer"}];
        v13 = [v11 nonretainedObjectValue];
        if ([objc_msgSend(v13 "sublayers")])
        {
          [v13 insertSublayer:v12 atIndex:1];
        }

        else
        {
          [v13 addSublayer:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CALayer *)[self->mKPFSession showLayer] addSublayer:v5];
  +[CATransaction commit];
  self->mAnimationsStarted = 0;
}

- (void)p_AnimationEnded
{
  mAnimationsStarted = self->mAnimationsStarted;
  if (!mAnimationsStarted || (v3 = mAnimationsStarted - 1, (self->mAnimationsStarted = v3) == 0))
  {
    (*(self->mAnimationEndHandler + 2))();
  }
}

- (id)p_newLayerFromDict:(id)a3
{
  v5 = +[CALayer layer];
  v6 = [a3 objectForKey:@"texture"];
  v7 = [a3 objectForKey:@"initialState"];
  v8 = [a3 objectForKey:@"layers"];
  v9 = [objc_msgSend(a3 objectForKey:{@"objectID", "stringValue"}];
  -[CALayer setMasksToBounds:](v5, "setMasksToBounds:", [objc_msgSend(v7 objectForKey:{@"masksToBounds", "BOOLValue"}]);
  -[CALayer setHidden:](v5, "setHidden:", [objc_msgSend(v7 objectForKey:{@"hidden", "BOOLValue"}]);
  [objc_msgSend(v7 objectForKey:{@"zIndex", "floatValue"}];
  [(CALayer *)v5 setZPosition:v10];
  [(CALayer *)v5 setDoubleSided:0];
  [(CALayer *)v5 setEdgeAntialiasingMask:0];
  v11 = [v7 objectForKey:@"anchorPoint"];
  [objc_msgSend(v11 objectForKey:{@"pointX", "floatValue"}];
  v13 = v12;
  [objc_msgSend(v11 objectForKey:{@"pointY", "floatValue"}];
  [(CALayer *)v5 setAnchorPoint:v13, v14];
  v15 = [v7 objectForKey:@"position"];
  [objc_msgSend(v15 objectForKey:{@"pointX", "floatValue"}];
  v17 = v16;
  [objc_msgSend(v15 objectForKey:{@"pointY", "floatValue"}];
  [(CALayer *)v5 setPosition:v17, v18];
  [objc_msgSend(v7 objectForKey:{@"width", "floatValue"}];
  v20 = v19;
  [objc_msgSend(v7 objectForKey:{@"height", "floatValue"}];
  [(CALayer *)v5 setBounds:0.0, 0.0, v20, v21];
  v22 = [v7 objectForKey:@"sublayerTransform"];
  if (self)
  {
    [(KPFGingerEvent *)self p_transformFromArray:v22];
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
  }

  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  [(CALayer *)v5 setSublayerTransform:&v45];
  v23 = [v7 objectForKey:@"affineTransform"];
  if (self)
  {
    [(KPFGingerEvent *)self p_affineTransformFromArray:v23];
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
  }

  [(CALayer *)v5 setAffineTransform:&v45];
  -[KPFGingerEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [v7 objectForKey:@"contentsRect"]);
  [(CALayer *)v5 setContentsRect:?];
  [objc_msgSend(v7 objectForKey:{@"opacity", "floatValue"}];
  [(CALayer *)v5 setOpacity:?];
  v24 = [v7 objectForKey:@"opacityMultiplier"];
  if (v24)
  {
    v25 = v24;
    [(CALayer *)v5 opacity];
    v27 = v26;
    [v25 floatValue];
    *&v29 = v27 * v28;
    [(CALayer *)v5 setOpacity:v29];
  }

  mKPFSession = self->mKPFSession;
  if (mKPFSession && v6)
  {
    [(CALayer *)v5 setContents:[(KPFGingerSlide *)[mKPFSession currentSlide] CGImageForTextureName:v6 session:self->mKPFSession]];
    [(CALayer *)v5 setName:v6];
  }

  if (v9)
  {
    v31 = [(NSMutableDictionary *)self->mSwappableLayersDict objectForKey:v9];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 superlayer];
      v34 = [v32 superlayer];
      if (v33)
      {
        [v34 replaceSublayer:v32 with:v5];
      }
    }

    [(CALayer *)v5 setName:v9];
    v35 = [(KPFGingerSlide *)[self->mKPFSession currentSlide] movieForObjectID:v9];
    if (v35)
    {
      [(NSMutableDictionary *)self->mMovietoLayerMap setObject:v35 forKey:[NSValue valueWithNonretainedObject:v5]];
    }

    [(NSMutableDictionary *)self->mSwappableLayersDict setObject:v5 forKey:v9];
  }

  if ([v8 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = [v8 countByEnumeratingWithState:&v41 objects:v61 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v42;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(v8);
          }

          [(CALayer *)v5 addSublayer:[(KPFGingerEvent *)self p_newLayerFromDict:*(*(&v41 + 1) + 8 * i)]];
        }

        v37 = [v8 countByEnumeratingWithState:&v41 objects:v61 count:16];
      }

      while (v37);
    }
  }

  return v5;
}

- (void)animateWithSession:(id)a3
{
  if ([-[KPFGingerEvent p_effectsArray](self "p_effectsArray")])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(KPFGingerEvent *)self p_effectsArray];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [v10 renderEffectWithSession:a3 withSwappableLayersDict:self->mSwappableLayersDict];
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_121A5C;
          v12[3] = &unk_45AE00;
          v12[4] = self;
          [v10 setAnimationEndHandler:v12];
          [v10 animateWithSession:a3];
          ++self->mAnimationsStarted;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = *(self->mAnimationEndHandler + 2);

    v11();
  }
}

- (id)hyperlinksRectArray
{
  v3 = +[NSMutableArray array];
  v4 = [(KPFGingerEvent *)self p_hyperlinksArray];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[KPFGingerEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [*(*(&v10 + 1) + 8 * v8) objectForKeyedSubscript:@"targetRectangle"]);
        [v3 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)hyperlinkAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [-[KPFGingerEvent p_hyperlinksArray](self "p_hyperlinksArray")];
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
        -[KPFGingerEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [v11 objectForKey:@"targetRectangle"]);
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
  obj = [(NSDictionary *)self->mEventsDictionary objectForKey:@"accessibility"];
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
        -[KPFGingerEvent p_rectFromDictionary:](self, "p_rectFromDictionary:", [v8 objectForKey:@"targetRectangle"]);
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

  return v3;
}

- (BOOL)containsMovie
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(KPFGingerEvent *)self p_effectsArray];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) containsMovie])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)isMoviePlaying
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(KPFGingerEvent *)self p_effectsArray];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isMoviePlaying])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)pauseMoviePlayback
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(KPFGingerEvent *)self p_effectsArray];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) pauseMoviePlayback];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resumeMoviePlayback
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(KPFGingerEvent *)self p_effectsArray];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) resumeMoviePlayback];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)stopMoviePlayback
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(KPFGingerEvent *)self p_effectsArray];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) stopMoviePlayback];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)tearDown
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mEffectsArray = self->mEffectsArray;
  v4 = [(NSMutableArray *)mEffectsArray countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mEffectsArray);
        }

        [*(*(&v8 + 1) + 8 * i) tearDown];
      }

      v5 = [(NSMutableArray *)mEffectsArray countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mEffectsArray = 0;
  self->mSwappableLayersDict = 0;

  self->mMovietoLayerMap = 0;
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

- (id)p_hyperlinksArray
{
  result = self->mEventsDictionary;
  if (result)
  {
    return [result objectForKey:@"hyperlinks"];
  }

  return result;
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

- (id)p_effectsArray
{
  if (!self->mEventsDictionary)
  {
    return 0;
  }

  if (!self->mEffectsArray)
  {
    self->mEffectsArray = objc_alloc_init(NSMutableArray);
    v3 = [(NSDictionary *)self->mEventsDictionary objectForKey:@"effects"];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          v8 = [[KPFGingerEffect alloc] initWithEffectDict:*(*(&v10 + 1) + 8 * i)];
          if (![(NSString *)[(KPFGingerEffect *)v8 name] isEqualToString:@"none"]|| ![(NSString *)[(KPFGingerEffect *)v8 type] isEqualToString:@"transition"])
          {
            [(NSMutableArray *)self->mEffectsArray addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  return self->mEffectsArray;
}

@end