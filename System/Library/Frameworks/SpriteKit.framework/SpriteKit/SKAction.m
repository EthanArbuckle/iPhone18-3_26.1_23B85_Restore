@interface SKAction
+ (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5;
+ (SKAction)actionNamed:(NSString *)name;
+ (SKAction)actionNamed:(NSString *)name duration:(NSTimeInterval)duration;
+ (SKAction)actionNamed:(NSString *)name fromURL:(NSURL *)url;
+ (SKAction)actionNamed:(NSString *)name fromURL:(NSURL *)url duration:(NSTimeInterval)duration;
+ (SKAction)animateWithNormalTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec;
+ (SKAction)animateWithNormalTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec resize:(BOOL)resize restore:(BOOL)restore;
+ (SKAction)animateWithTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec;
+ (SKAction)animateWithTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec resize:(BOOL)resize restore:(BOOL)restore;
+ (SKAction)animateWithWarps:(NSArray *)warps times:(NSArray *)times;
+ (SKAction)animateWithWarps:(NSArray *)warps times:(NSArray *)times restore:(BOOL)restore;
+ (SKAction)applyAngularImpulse:(CGFloat)impulse duration:(NSTimeInterval)duration;
+ (SKAction)applyImpulse:(CGVector)impulse atPoint:(CGPoint)point duration:(NSTimeInterval)duration;
+ (SKAction)applyImpulse:(CGVector)impulse duration:(NSTimeInterval)duration;
+ (SKAction)changeChargeBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeChargeTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeMassBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeMassTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeObstructionBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeObstructionTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeOcclusionBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeOcclusionTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changePlaybackRateBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changePlaybackRateTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeReverbBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeReverbTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeVolumeBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)changeVolumeTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)colorizeWithColor:(UIColor *)color colorBlendFactor:(CGFloat)colorBlendFactor duration:(NSTimeInterval)duration;
+ (SKAction)customActionWithDuration:(NSTimeInterval)duration actionBlock:(void *)block;
+ (SKAction)group:(NSArray *)actions;
+ (SKAction)performSelector:(SEL)selector onTarget:(id)target;
+ (SKAction)playSoundFileNamed:(NSString *)soundFile waitForCompletion:(BOOL)wait;
+ (SKAction)reachTo:(CGPoint)position rootNode:(SKNode *)root duration:(NSTimeInterval)duration;
+ (SKAction)reachTo:(CGPoint)position rootNode:(SKNode *)root velocity:(CGFloat)velocity;
+ (SKAction)reachToNode:(SKNode *)node rootNode:(SKNode *)root duration:(NSTimeInterval)sec;
+ (SKAction)reachToNode:(SKNode *)node rootNode:(SKNode *)root velocity:(CGFloat)velocity;
+ (SKAction)repeatAction:(SKAction *)action count:(NSUInteger)count;
+ (SKAction)repeatActionForever:(SKAction *)action;
+ (SKAction)runAction:(SKAction *)action onChildWithName:(NSString *)name;
+ (SKAction)sequence:(NSArray *)actions;
+ (SKAction)setNormalTexture:(SKTexture *)texture;
+ (SKAction)setNormalTexture:(SKTexture *)texture resize:(BOOL)resize;
+ (SKAction)setTexture:(SKTexture *)texture;
+ (SKAction)setTexture:(SKTexture *)texture resize:(BOOL)resize;
+ (SKAction)stereoPanBy:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)stereoPanTo:(float)v duration:(NSTimeInterval)duration;
+ (SKAction)warpTo:(SKWarpGeometry *)warp duration:(NSTimeInterval)duration;
+ (id)findNamedActionInBundle:(id)a3;
+ (id)javaScriptActionWithDuration:(double)a3 script:(id)a4;
+ (id)playSoundFileNamed:(id)a3;
+ (id)playSoundFileNamed:(id)a3 atPosition:(CGPoint)a4 waitForCompletion:(BOOL)a5;
+ (id)recursivePathsForResourcesOfType:(id)a3 inDirectory:(id)a4;
+ (void)clearActionTableCache;
+ (void)convertAction:(id)a3 toDuration:(double)a4;
- (BOOL)isEqualToAction:(id)a3;
- (SKAction)init;
- (SKAction)initWithCoder:(id)a3;
- (SKAction)reversedAction;
- (SKActionTimingFunction)timingFunction;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCppAction:(void *)a3;
- (void)setTimingFunction:(SKActionTimingFunction)timingFunction;
- (void)updateWithTarget:(id)a3 forTime:(double)a4;
- (void)wasAddedToTarget:(id)a3 atTime:(double)a4;
- (void)willStartWithTarget:(id)a3 atTime:(double)a4;
@end

@implementation SKAction

void __33__SKAction_PlaybackControl__play__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v7;
    v3 = [v2 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v2 audioFile];
      v6 = [v2 avAudioNode];
      [v6 scheduleFile:v5 atTime:0 completionHandler:0];
      [v6 play];
    }
  }
}

void __34__SKAction_PlaybackControl__pause__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v6;
    v3 = [v2 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v2 avAudioNode];
      [v5 pause];
    }
  }
}

void __33__SKAction_PlaybackControl__stop__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v6;
    v3 = [v2 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v2 avAudioNode];
      [v5 stop];
    }
  }
}

+ (SKAction)changePlaybackRateTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 1065353216;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SKAction_PlaybackControl__changePlaybackRateTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  *&v6[6] = duration;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __59__SKAction_PlaybackControl__changePlaybackRateTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        [v8 rate];
        *(*(*(a1 + 40) + 8) + 24) = v10;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v11 = *(a1 + 48);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = a3 / v11;
        if (a3 / v11 < 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v12 = v13;
      }

      v14 = (v12 * *(a1 + 56)) + *(*(*(a1 + 40) + 8) + 24) * (1.0 - v12);
      *&v14 = v14;
      [v9 setRate:v14];
    }
  }
}

+ (SKAction)changePlaybackRateBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SKAction_PlaybackControl__changePlaybackRateBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  *&v6[5] = duration;
  v6[4] = v8;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __59__SKAction_PlaybackControl__changePlaybackRateBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = 1.0;
      if (v10 > 0.0)
      {
        v12 = (a3 - *(*(*(a1 + 32) + 8) + 24)) / v10;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        v11 = v12;
      }

      [v8 rate];
      *&v14 = v13 + (*(a1 + 48) * v11);
      [v9 setRate:v14];
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }
  }
}

+ (SKAction)changeVolumeTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SKAction_MixerControl__changeVolumeTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  *&v6[6] = duration;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __50__SKAction_MixerControl__changeVolumeTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        [v8 volume];
        *(*(*(a1 + 40) + 8) + 24) = v10;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v11 = *(a1 + 48);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = a3 / v11;
        if (a3 / v11 < 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v12 = v13;
      }

      v14 = (v12 * *(a1 + 56)) + *(*(*(a1 + 40) + 8) + 24) * (1.0 - v12);
      *&v14 = v14;
      [v9 setVolume:v14];
    }
  }
}

+ (SKAction)changeVolumeBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SKAction_MixerControl__changeVolumeBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  *&v6[5] = duration;
  v6[4] = v8;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __50__SKAction_MixerControl__changeVolumeBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = 1.0;
      if (v10 > 0.0)
      {
        v12 = (a3 - *(*(*(a1 + 32) + 8) + 24)) / v10;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        v11 = v12;
      }

      [v8 volume];
      *&v14 = v13 + (*(a1 + 48) * v11);
      [v9 setVolume:v14];
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }
  }
}

+ (SKAction)stereoPanTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 1056964608;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SKAction_SKAudioNode__stereoPanTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  *&v6[6] = duration;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __46__SKAction_SKAudioNode__stereoPanTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        [v8 pan];
        *(*(*(a1 + 40) + 8) + 24) = v10;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v11 = *(a1 + 48);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = a3 / v11;
        if (a3 / v11 < 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v12 = v13;
      }

      v14 = (v12 * *(a1 + 56)) + *(*(*(a1 + 40) + 8) + 24) * (1.0 - v12);
      *&v14 = v14;
      [v9 setPan:v14];
    }
  }
}

+ (SKAction)stereoPanBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SKAction_SKAudioNode__stereoPanBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  *&v6[5] = duration;
  v6[4] = v8;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __46__SKAction_SKAudioNode__stereoPanBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = 1.0;
      if (v10 > 0.0)
      {
        v12 = (a3 - *(*(*(a1 + 32) + 8) + 24)) / v10;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        v11 = v12;
      }

      [v8 pan];
      *&v14 = v13 + (*(a1 + 48) * v11);
      [v9 setPan:v14];
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }
  }
}

+ (SKAction)changeReverbTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SKAction_SKAudioNode__changeReverbTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  *&v6[6] = duration;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __49__SKAction_SKAudioNode__changeReverbTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        [v8 reverbBlend];
        *(*(*(a1 + 40) + 8) + 24) = v10;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v11 = *(a1 + 48);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = a3 / v11;
        if (a3 / v11 < 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v12 = v13;
      }

      v14 = (v12 * *(a1 + 56)) + *(*(*(a1 + 40) + 8) + 24) * (1.0 - v12);
      *&v14 = v14;
      [v9 setReverbBlend:v14];
    }
  }
}

+ (SKAction)changeReverbBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SKAction_SKAudioNode__changeReverbBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  *&v6[5] = duration;
  v6[4] = v8;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __49__SKAction_SKAudioNode__changeReverbBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = 1.0;
      if (v10 > 0.0)
      {
        v12 = (a3 - *(*(*(a1 + 32) + 8) + 24)) / v10;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        v11 = v12;
      }

      [v8 reverbBlend];
      *&v14 = v13 + (*(a1 + 48) * v11);
      [v9 setReverbBlend:v14];
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }
  }
}

+ (SKAction)changeObstructionTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SKAction_SKAudioNode__changeObstructionTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  *&v6[6] = duration;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __54__SKAction_SKAudioNode__changeObstructionTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        [v8 obstruction];
        *(*(*(a1 + 40) + 8) + 24) = v10;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v11 = *(a1 + 48);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = a3 / v11;
        if (a3 / v11 < 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v12 = v13;
      }

      v14 = (v12 * *(a1 + 56)) + *(*(*(a1 + 40) + 8) + 24) * (1.0 - v12);
      *&v14 = v14;
      [v9 setObstruction:v14];
    }
  }
}

+ (SKAction)changeObstructionBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SKAction_SKAudioNode__changeObstructionBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  *&v6[5] = duration;
  v6[4] = v8;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __54__SKAction_SKAudioNode__changeObstructionBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = 1.0;
      if (v10 > 0.0)
      {
        v12 = (a3 - *(*(*(a1 + 32) + 8) + 24)) / v10;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        v11 = v12;
      }

      [v8 obstruction];
      *&v14 = v13 + (*(a1 + 48) * v11);
      [v9 setObstruction:v14];
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }
  }
}

+ (SKAction)changeOcclusionTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SKAction_SKAudioNode__changeOcclusionTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  *&v6[6] = duration;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __52__SKAction_SKAudioNode__changeOcclusionTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      if (*(*(*(a1 + 32) + 8) + 24) == 1)
      {
        [v8 occlusion];
        *(*(*(a1 + 40) + 8) + 24) = v10;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }

      v11 = *(a1 + 48);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = a3 / v11;
        if (a3 / v11 < 0.0)
        {
          v13 = 0.0;
        }

        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        v12 = v13;
      }

      v14 = (v12 * *(a1 + 56)) + *(*(*(a1 + 40) + 8) + 24) * (1.0 - v12);
      *&v14 = v14;
      [v9 setOcclusion:v14];
    }
  }
}

+ (SKAction)changeOcclusionBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SKAction_SKAudioNode__changeOcclusionBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  *&v6[5] = duration;
  v6[4] = v8;
  v7 = v;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __52__SKAction_SKAudioNode__changeOcclusionBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v15;
    v6 = [v5 avAudioNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 avAudioNode];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = 1.0;
      if (v10 > 0.0)
      {
        v12 = (a3 - *(*(*(a1 + 32) + 8) + 24)) / v10;
        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        v11 = v12;
      }

      [v8 occlusion];
      *&v14 = v13 + (*(a1 + 48) * v11);
      [v9 setOcclusion:v14];
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }
  }
}

+ (SKAction)warpTo:(SKWarpGeometry *)warp duration:(NSTimeInterval)duration
{
  v4 = [SKAnimateWarp warpTo:warp duration:duration];

  return v4;
}

+ (SKAction)animateWithWarps:(NSArray *)warps times:(NSArray *)times
{
  v4 = [SKAnimateWarp animateWithWarps:warps times:times restore:0];

  return v4;
}

+ (SKAction)animateWithWarps:(NSArray *)warps times:(NSArray *)times restore:(BOOL)restore
{
  v5 = [SKAnimateWarp animateWithWarps:warps times:times restore:restore];

  return v5;
}

- (SKActionTimingFunction)timingFunction
{
  v2 = MEMORY[0x21CF0AB10](self->_caction->var3, a2);

  return v2;
}

- (void)setTimingFunction:(SKActionTimingFunction)timingFunction
{
  v4 = MEMORY[0x21CF0AB10](timingFunction, a2);
  caction = self->_caction;
  var3 = caction->var3;
  caction->var3 = v4;
}

- (void)commonInit
{
  if ([SKAction commonInit]::_tableInit != -1)
  {
    [SKAction commonInit];
  }
}

void __22__SKAction_commonInit__block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:?];
  v2 = _actionTable;
  _actionTable = v1;
}

- (SKAction)init
{
  v3.receiver = self;
  v3.super_class = SKAction;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKAction)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKAction;
  if ([(SKAction *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_caction->var8];
  [v6 encodeObject:v4 forKey:@"_duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_caction->var14];
  [v6 encodeObject:v5 forKey:@"_timingMode"];
}

- (BOOL)isEqualToAction:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  caction = self->_caction;
  v4 = *(a3 + 1);
  return (COERCE_UNSIGNED_INT(caction->var8 - *(v4 + 56)) & 0x60000000) == 0 && caction->var14 == *(v4 + 88);
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKAction *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  caction = self->_caction;
  v6 = v4[1];
  *(v6 + 88) = caction->var14;
  *(v6 + 100) = *&caction->var16;
  *(v6 + 72) = 0;
  *(v6 + 56) = *&caction->var8;
  v7 = [(SKAction *)self timingFunction];
  v8 = v4[1];
  v9 = *(v8 + 16);
  *(v8 + 16) = v7;

  return v4;
}

- (SKAction)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

- (void)dealloc
{
  caction = self->_caction;
  if (caction)
  {
    self->_caction = 0;
    caction->var4 = 0;
    v4 = caction->var1 - 1;
    caction->var1 = v4;
    if (!v4)
    {
      (*(caction->var0 + 1))(caction, a2);
    }
  }

  v5.receiver = self;
  v5.super_class = SKAction;
  [(SKAction *)&v5 dealloc];
}

+ (SKAction)sequence:(NSArray *)actions
{
  v3 = [SKSequence sequenceWithActions:actions];

  return v3;
}

+ (SKAction)group:(NSArray *)actions
{
  v3 = [SKGroup groupWithActions:actions];

  return v3;
}

+ (SKAction)repeatAction:(SKAction *)action count:(NSUInteger)count
{
  v4 = [SKRepeat repeatAction:action count:count];

  return v4;
}

+ (SKAction)repeatActionForever:(SKAction *)action
{
  v3 = [SKRepeat repeatActionForever:action];

  return v3;
}

+ (SKAction)setTexture:(SKTexture *)texture
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = texture;
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [SKAnimate animateWithTextures:v4 timePerFrame:0 resize:0 restore:0.0];

  return v5;
}

+ (SKAction)setNormalTexture:(SKTexture *)texture
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = texture;
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [SKAnimate animateWithNormalTextures:v4 timePerFrame:0 resize:0 restore:0.0];

  return v5;
}

+ (SKAction)setTexture:(SKTexture *)texture resize:(BOOL)resize
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = texture;
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [SKAnimate animateWithTextures:v5 timePerFrame:1 resize:0 restore:0.0];

  return v6;
}

+ (SKAction)setNormalTexture:(SKTexture *)texture resize:(BOOL)resize
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = texture;
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [SKAnimate animateWithNormalTextures:v5 timePerFrame:1 resize:0 restore:0.0];

  return v6;
}

+ (SKAction)animateWithTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec
{
  v4 = [SKAnimate animateWithTextures:textures timePerFrame:0 resize:0 restore:sec];

  return v4;
}

+ (SKAction)animateWithNormalTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec
{
  v4 = [SKAnimate animateWithNormalTextures:textures timePerFrame:0 resize:0 restore:sec];

  return v4;
}

+ (SKAction)animateWithTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec resize:(BOOL)resize restore:(BOOL)restore
{
  v6 = [SKAnimate animateWithTextures:textures timePerFrame:resize resize:restore restore:sec];

  return v6;
}

+ (SKAction)animateWithNormalTextures:(NSArray *)textures timePerFrame:(NSTimeInterval)sec resize:(BOOL)resize restore:(BOOL)restore
{
  v6 = [SKAnimate animateWithNormalTextures:textures timePerFrame:resize resize:restore restore:sec];

  return v6;
}

+ (id)playSoundFileNamed:(id)a3
{
  v3 = [SKPlaySound playSoundFileNamed:a3 atPosition:0 waitForCompletion:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

  return v3;
}

+ (SKAction)playSoundFileNamed:(NSString *)soundFile waitForCompletion:(BOOL)wait
{
  v4 = [SKPlaySound playSoundFileNamed:soundFile atPosition:wait waitForCompletion:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

  return v4;
}

+ (id)playSoundFileNamed:(id)a3 atPosition:(CGPoint)a4 waitForCompletion:(BOOL)a5
{
  v5 = [SKPlaySound playSoundFileNamed:a3 atPosition:a5 waitForCompletion:a4.x, a4.y];

  return v5;
}

+ (SKAction)colorizeWithColor:(UIColor *)color colorBlendFactor:(CGFloat)colorBlendFactor duration:(NSTimeInterval)duration
{
  v5 = [SKColorize colorizeWithColor:color colorBlendFactor:colorBlendFactor duration:duration];

  return v5;
}

+ (SKAction)reachTo:(CGPoint)position rootNode:(SKNode *)root duration:(NSTimeInterval)duration
{
  v5 = [SKReach reachTo:root rootNode:position.x duration:position.y, duration];

  return v5;
}

+ (SKAction)reachTo:(CGPoint)position rootNode:(SKNode *)root velocity:(CGFloat)velocity
{
  v5 = [SKReach reachTo:root rootNode:position.x velocity:position.y, velocity];

  return v5;
}

+ (SKAction)reachToNode:(SKNode *)node rootNode:(SKNode *)root duration:(NSTimeInterval)sec
{
  v6 = node;
  v7 = root;
  [(SKNode *)v6 position];
  v8 = [SKAction reachTo:"reachTo:rootNode:duration:" rootNode:v7 duration:?];

  return v8;
}

+ (SKAction)reachToNode:(SKNode *)node rootNode:(SKNode *)root velocity:(CGFloat)velocity
{
  v6 = node;
  v7 = root;
  [(SKNode *)v6 position];
  v8 = [SKAction reachTo:"reachTo:rootNode:velocity:" rootNode:v7 velocity:?];

  return v8;
}

+ (SKAction)performSelector:(SEL)selector onTarget:(id)target
{
  v4 = [SKPerformSelector perfromSelector:selector onTarget:target];

  return v4;
}

+ (SKAction)runAction:(SKAction *)action onChildWithName:(NSString *)name
{
  v4 = [SKRunAction runAction:action onFirstChildWithName:name];

  return v4;
}

+ (id)javaScriptActionWithDuration:(double)a3 script:(id)a4
{
  v4 = [SKJavaScriptAction javaScriptActionWithDuration:a4 script:a3];

  return v4;
}

+ (SKAction)customActionWithDuration:(NSTimeInterval)duration actionBlock:(void *)block
{
  v4 = [SKCustomAction customActionWithDuration:block actionBlock:duration];

  return v4;
}

+ (SKAction)actionNamed:(NSString *)name
{
  v4 = name;
  v5 = [_actionTable objectForKey:v4];
  if (!v5)
  {
    v5 = [a1 findNamedActionInBundle:v4];
  }

  return v5;
}

+ (SKAction)actionNamed:(NSString *)name duration:(NSTimeInterval)duration
{
  v6 = [a1 actionNamed:name];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];

    [a1 convertAction:v8 toDuration:duration];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (SKAction)actionNamed:(NSString *)name fromURL:(NSURL *)url
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = name;
  v7 = MEMORY[0x277CBEA90];
  v8 = [(NSURL *)url path];
  v9 = [v7 dataWithContentsOfFile:v8];

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  [v10 addObjectsFromArray:v11];

  v22 = 0;
  v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v9 error:&v22];
  v13 = v22;
  [v12 setRequiresSecureCoding:0];
  v14 = *MEMORY[0x277CCA308];
  v21 = v13;
  v15 = [v12 decodeTopLevelObjectOfClasses:v10 forKey:v14 error:&v21];
  v16 = v21;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v15 objectForKeyedSubscript:@"actions"];
    v18 = [v17 objectForKeyedSubscript:v6];
    if (v18)
    {
      [a1 addActionsToCachedActionTable:v17];
LABEL_8:

      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v15;
    v18 = [v17 actionForName:v6];
    if (v18)
    {
      v19 = [v17 actionTableDictionary];
      [a1 addActionsToCachedActionTable:v19];
    }

    goto LABEL_8;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

+ (SKAction)actionNamed:(NSString *)name fromURL:(NSURL *)url duration:(NSTimeInterval)duration
{
  v7 = [a1 actionNamed:name fromURL:url];
  if (v7)
  {
    [a1 convertAction:v7 toDuration:duration];
  }

  return v7;
}

+ (id)recursivePathsForResourcesOfType:(id)a3 inDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 enumeratorAtPath:v6];
  v10 = 0;
LABEL_2:

  v11 = v10;
  while (1)
  {
    v10 = [v9 nextObject];

    if (!v10)
    {
      break;
    }

    v12 = [v10 pathExtension];
    v13 = [v12 caseInsensitiveCompare:v5];

    v11 = v10;
    if (!v13)
    {
      v8 = [v6 stringByAppendingPathComponent:v10];
      [v7 addObject:v8];
      goto LABEL_2;
    }
  }

  v14 = MEMORY[0x277CBEB58];
  v15 = SKGetResourceBundle();
  v16 = [v15 pathsForResourcesOfType:@"sks" inDirectory:0];
  v17 = [v14 setWithArray:v16];

  v18 = [MEMORY[0x277CBEB98] setWithArray:v7];
  [v17 unionSet:v18];

  v19 = [v17 allObjects];

  return v19;
}

+ (id)findNamedActionInBundle:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v3 = SKGetResourceBundle();
  v4 = [v3 bundlePath];
  v5 = [a1 recursivePathsForResourcesOfType:@"sks" inDirectory:v4];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (!v6)
  {
    goto LABEL_50;
  }

  v58 = *v62;
  v52 = *MEMORY[0x277CCA308];
  do
  {
    v59 = v6;
    for (i = 0; i != v59; ++i)
    {
      if (*v62 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v61 + 1) + 8 * i);
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
      v10 = [v9 objectForKeyedSubscript:@"$objects"];
      v11 = v10;
      if (v10 && [v10 count] >= 2)
      {
        v12 = [v11 objectAtIndexedSubscript:1];
        v13 = [v12 objectForKeyedSubscript:@"$class"];
        v14 = v13;
        v57 = v12;
        if (v13 && (v15 = *(v13 + 16), [v11 count] > v15) && (objc_msgSend(v11, "objectAtIndexedSubscript:", v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", @"$classname"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"NSDictionary"), v17, v16, v18))
        {
          v19 = [v57 objectForKeyedSubscript:@"NS.keys"];
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v54 = v19;
          v20 = [v54 countByEnumeratingWithState:&v65 objects:v71 count:16];
          if (v20)
          {
            v55 = *v66;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v66 != v55)
                {
                  objc_enumerationMutation(v54);
                }

                v22 = *(*(*(&v65 + 1) + 8 * j) + 16);
                v23 = [v11 count];
                v24 = v23 > v22;
                if (v23 > v22)
                {
                  v25 = [v11 objectAtIndexedSubscript:v22];
                  v26 = [v25 isEqualToString:@"actions"];

                  if ((v26 & 1) == 0)
                  {
                    continue;
                  }
                }

                v27 = 0;
                goto LABEL_35;
              }

              v20 = [v54 countByEnumeratingWithState:&v65 objects:v71 count:16];
              v24 = 0;
              v27 = 1;
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v24 = 0;
            v27 = 1;
          }

LABEL_35:

          if ((v27 & 1) == 0)
          {

            if (v24)
            {
              goto LABEL_37;
            }

            goto LABEL_23;
          }
        }

        else
        {
        }
      }

LABEL_23:
      v28 = [v9 objectForKeyedSubscript:@"$objects"];
      v29 = v28;
      if (!v28 || [v28 count] < 2)
      {
        goto LABEL_30;
      }

      v30 = [v29 objectAtIndexedSubscript:1];
      v31 = [v30 objectForKeyedSubscript:@"$class"];
      v32 = v31;
      if (!v31 || (v33 = *(v31 + 16), [v29 count] <= v33) || (objc_msgSend(v29, "objectAtIndexedSubscript:", v33), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "objectForKeyedSubscript:", @"$classname"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", @"SKActionTable"), v35, v34, !v36))
      {

LABEL_30:
        goto LABEL_31;
      }

LABEL_37:
      v37 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8];
      v38 = objc_alloc(MEMORY[0x277CCAAC8]);
      v60 = 0;
      v39 = [v38 initForReadingFromData:v37 error:&v60];
      v40 = v60;
      [v39 setRequiresSecureCoding:0];
      [v39 setDelegate:a1];
      v41 = MEMORY[0x277CBEB98];
      v69[0] = objc_opt_class();
      v69[1] = objc_opt_class();
      v69[2] = objc_opt_class();
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
      v43 = [v41 setWithArray:v42];
      v44 = [v39 decodeObjectOfClasses:v43 forKey:v52];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v44 objectForKeyedSubscript:@"actions"];
        v46 = [v45 objectForKeyedSubscript:v51];
        if (v46)
        {
          [a1 addActionsToCachedActionTable:v45];
LABEL_43:
          v48 = 0;
          v50 = v46;
LABEL_45:

          goto LABEL_47;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
        v46 = [v45 actionForName:v51];
        if (v46)
        {
          v47 = [v45 actionTableDictionary];
          [a1 addActionsToCachedActionTable:v47];

          goto LABEL_43;
        }

LABEL_44:
        v48 = 1;
        goto LABEL_45;
      }

      v48 = 1;
LABEL_47:

      if ((v48 & 1) == 0)
      {

        goto LABEL_51;
      }

LABEL_31:
    }

    v6 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  }

  while (v6);
LABEL_50:
  v50 = 0;
LABEL_51:

  return v50;
}

+ (void)convertAction:(id)a3 toDuration:(double)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a3;
  [v31 duration];
  v6 = v5;
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  std::deque<SKAction * {__strong}>::push_back(v29, &v31);
  while (*(&v30 + 1))
  {
    v7 = *(*(*(&v29[0] + 1) + (((*(&v30 + 1) + v30 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v30 + 1) + v30 - 1) & 0x1FF));
    std::deque<SKAction * {__strong}>::pop_back(v29);
    [v7 duration];
    if (v8 > v6)
    {
      [v7 duration];
      v6 = v9;
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v7 subactions];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v28 = *(*(&v24 + 1) + 8 * i);
          std::deque<SKAction * {__strong}>::push_back(v29, &v28);
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v11);
    }
  }

  if (v6 != 0.0)
  {
    std::deque<SKAction * {__strong}>::push_back(v29, &v31);
    while (*(&v30 + 1))
    {
      v14 = *(*(*(&v29[0] + 1) + (((*(&v30 + 1) + v30 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v30 + 1) + v30 - 1) & 0x1FF));
      std::deque<SKAction * {__strong}>::pop_back(v29);
      [v14 duration];
      [v14 setDuration:v15 / v6 * a4];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = [v14 subactions];
      v17 = [v16 countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v17)
      {
        v18 = *v21;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v28 = *(*(&v20 + 1) + 8 * j);
            std::deque<SKAction * {__strong}>::push_back(v29, &v28);
          }

          v17 = [v16 countByEnumeratingWithState:&v20 objects:v32 count:16];
        }

        while (v17);
      }
    }
  }

  std::deque<SKAction * {__strong}>::~deque[abi:ne200100](v29);
}

+ (void)clearActionTableCache
{
  if (_actionTable)
  {
    [_actionTable removeAllObjects];
  }
}

+ (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5
{
  v5 = a5;
  if ([v5 count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:1];
    v7 = NSClassFromString(v6);
  }

  return v7;
}

- (void)setCppAction:(void *)a3
{
  ++*(a3 + 2);
  caction = self->_caction;
  if (caction)
  {
    v6 = caction->var1 - 1;
    caction->var1 = v6;
    if (!v6)
    {
      (*(caction->var0 + 1))(caction, a2);
    }
  }

  self->_caction = a3;
  *(a3 + 3) = self;
}

- (void)wasAddedToTarget:(id)a3 atTime:(double)a4
{
  caction = self->_caction;
  caction->var11 = 0;
  var8 = caction->var8;
  var9 = caction->var9;
  if ((LODWORD(var9) & 0x60000000) != 0)
  {
    v8 = (var8 - (var9 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (((var9 * 0.5) + var8) - (var8 - (var9 * 0.5))));
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    self->_caction->var2 = v8;
  }

  else
  {
    caction->var2 = var8;
  }
}

- (void)willStartWithTarget:(id)a3 atTime:(double)a4
{
  caction = self->_caction;
  caction->var6 = a4;
  caction->var15 = 0.0;
  *&caction->var11 = 256;
}

- (void)updateWithTarget:(id)a3 forTime:(double)a4
{
  v10 = a3;
  SKCAction::ratioForTime(self->_caction, a4);
  if (v6 >= 1.0)
  {
    caction = self->_caction;
    v8 = [v10 _backingNode];
    v9.n128_f64[0] = a4;
    SKCAction::didFinishWithTargetAtTime(caction, v8, v9);
  }
}

+ (SKAction)changeChargeTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SKAction_NodeWithPhysicsBody__changeChargeTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  v7 = v;
  *&v6[6] = duration;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __57__SKAction_NodeWithPhysicsBody__changeChargeTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v14 = v5;
  if (*(*(*(a1 + 32) + 8) + 24) == 0.0)
  {
    v6 = *(a1 + 56);
    v7 = [v5 physicsBody];
    [v7 charge];
    *&v8 = v6 - v8;
    *(*(*(a1 + 40) + 8) + 24) = LODWORD(v8);

    v5 = v14;
  }

  v9 = [v5 physicsBody];
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = *(*(*(a1 + 32) + 8) + 24);
  v12 = *(a1 + 48);
  [v9 charge];
  [v9 setCharge:v13 + (a3 - v11) * v10 / v12];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

+ (SKAction)changeChargeBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SKAction_NodeWithPhysicsBody__changeChargeBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  v7 = v;
  v6[4] = v8;
  *&v6[5] = duration;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __57__SKAction_NodeWithPhysicsBody__changeChargeBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = [a2 physicsBody];
  v6 = *(a1 + 48);
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *(a1 + 40);
  [v5 charge];
  [v5 setCharge:v9 + (a3 - v7) * v6 / v8];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

+ (SKAction)changeMassTo:(float)v duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SKAction_NodeWithPhysicsBody__changeMassTo_duration___block_invoke;
  v6[3] = &unk_27830FC48;
  v6[4] = v10;
  v6[5] = v8;
  v7 = v;
  *&v6[6] = duration;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  return v4;
}

void __55__SKAction_NodeWithPhysicsBody__changeMassTo_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v18 = v5;
  if (*(*(*(a1 + 32) + 8) + 24) == 0.0)
  {
    v6 = *(a1 + 56);
    v7 = [v5 physicsBody];
    [v7 mass];
    *&v8 = v6 - v8;
    *(*(*(a1 + 40) + 8) + 24) = LODWORD(v8);

    v5 = v18;
  }

  v9 = [v5 physicsBody];
  [v9 mass];
  v11 = v10;
  v12 = *(*(*(a1 + 40) + 8) + 24);
  v13 = *(*(*(a1 + 32) + 8) + 24);
  v14 = *(a1 + 48);

  v15 = [v18 physicsBody];
  v16 = v15;
  v17 = v11 + (a3 - v13) * v12 / v14;
  if (v17 < 0.00001)
  {
    v17 = 0.00001;
  }

  [v15 setMass:v17];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

+ (SKAction)changeMassBy:(float)v duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SKAction_NodeWithPhysicsBody__changeMassBy_duration___block_invoke;
  v6[3] = &unk_27830FC70;
  v7 = v;
  v6[4] = v8;
  *&v6[5] = duration;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __55__SKAction_NodeWithPhysicsBody__changeMassBy_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v14 = a2;
  v5 = [v14 physicsBody];
  [v5 mass];
  v7 = v6;
  v8 = *(a1 + 48);
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = *(a1 + 40);

  v11 = [v14 physicsBody];
  v12 = v11;
  v13 = v7 + (a3 - v9) * v8 / v10;
  if (v13 < 0.00001)
  {
    v13 = 0.00001;
  }

  [v11 setMass:v13];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

+ (SKAction)applyImpulse:(CGVector)impulse duration:(NSTimeInterval)duration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SKAction_NodeWithPhysicsBody__applyImpulse_duration___block_invoke;
  v6[3] = &unk_278310490;
  v6[4] = v8;
  *&v6[5] = duration;
  v7 = impulse;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v8, 8);

  return v4;
}

void __55__SKAction_NodeWithPhysicsBody__applyImpulse_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 40);
  v7 = [a2 physicsBody];
  v8 = (a3 - v5) / v6;
  [v7 applyImpulse:{*(a1 + 48) * v8, *(a1 + 56) * v8}];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

+ (SKAction)applyImpulse:(CGVector)impulse atPoint:(CGPoint)point duration:(NSTimeInterval)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SKAction_NodeWithPhysicsBody__applyImpulse_atPoint_duration___block_invoke;
  v7[3] = &unk_2783104B8;
  v7[4] = v10;
  *&v7[5] = duration;
  v8 = impulse;
  v9 = point;
  v5 = [SKAction customActionWithDuration:v7 actionBlock:duration];
  _Block_object_dispose(v10, 8);

  return v5;
}

void __63__SKAction_NodeWithPhysicsBody__applyImpulse_atPoint_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 40);
  v7 = [a2 physicsBody];
  v8 = (a3 - v5) / v6;
  [v7 applyImpulse:*(a1 + 48) * v8 atPoint:{*(a1 + 56) * v8, *(a1 + 64), *(a1 + 72)}];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

+ (SKAction)applyAngularImpulse:(CGFloat)impulse duration:(NSTimeInterval)duration
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SKAction_NodeWithPhysicsBody__applyAngularImpulse_duration___block_invoke;
  v6[3] = &unk_2783104E0;
  v6[4] = v7;
  *&v6[5] = duration;
  *&v6[6] = impulse;
  v4 = [SKAction customActionWithDuration:v6 actionBlock:duration];
  _Block_object_dispose(v7, 8);

  return v4;
}

void __62__SKAction_NodeWithPhysicsBody__applyAngularImpulse_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 40);
  v7 = [a2 physicsBody];
  v8 = (a3 - v5) / v6;
  [v7 applyAngularImpulse:*(a1 + 48) * v8];

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

@end