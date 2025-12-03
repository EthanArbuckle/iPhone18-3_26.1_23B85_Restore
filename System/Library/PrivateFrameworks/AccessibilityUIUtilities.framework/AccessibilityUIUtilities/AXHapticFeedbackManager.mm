@interface AXHapticFeedbackManager
+ (id)sharedManager;
- (void)_playCancelPatternFeedback;
- (void)_playDiscreteFeedbackForType:(int64_t)type;
- (void)_playFeedback:(id)feedback;
- (void)_playFeedbackImpactBehaviorWithIntensity:(double)intensity;
- (void)_playPatternFeedback:(int64_t)feedback numberOfRepetitions:(int64_t)repetitions atInterval:(double)interval;
- (void)playHapticFeedbackForType:(int64_t)type;
@end

@implementation AXHapticFeedbackManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXHapticFeedbackManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_SharedManager;

  return v2;
}

uint64_t __40__AXHapticFeedbackManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_SharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)playHapticFeedbackForType:(int64_t)type
{
  if (AXHomeClickHapticsSupported())
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

uint64_t __53__AXHapticFeedbackManager_playHapticFeedbackForType___block_invoke(uint64_t result)
{
  switch(*(result + 40))
  {
    case 0:
    case 0xCLL:
      v1 = *(result + 32);
      v2 = 3;
      goto LABEL_3;
    case 1:
    case 0x12:
      v1 = *(result + 32);
      v2 = 1;
      goto LABEL_3;
    case 2:
      return [*(result + 32) _playFeedbackImpactBehaviorWithIntensity:1.0];
    case 3:
      v1 = *(result + 32);
      v2 = 6;
      goto LABEL_3;
    case 4:
      v3 = *(result + 32);
      v4 = 0.005;
      v5 = 7;
      v6 = 4;
      goto LABEL_15;
    case 5:
    case 8:
      v1 = *(result + 32);
      v2 = 8;
      goto LABEL_3;
    case 6:
      v1 = *(result + 32);
      v2 = 5;
      goto LABEL_3;
    case 7:
      v3 = *(result + 32);
      v4 = 0.1;
      v5 = 5;
      goto LABEL_18;
    case 9:
      v3 = *(result + 32);
      v4 = 0.1;
      v5 = 7;
      goto LABEL_18;
    case 0xALL:
      v3 = *(result + 32);
      v4 = 0.1;
      v5 = 7;
      goto LABEL_21;
    case 0xBLL:
      return [*(result + 32) _playCancelPatternFeedback];
    case 0xDLL:
      v3 = *(result + 32);
      v4 = 0.1;
      v5 = 6;
LABEL_18:
      v6 = 2;
      goto LABEL_15;
    case 0xELL:
      v1 = *(result + 32);
      v2 = 9;
      goto LABEL_3;
    case 0xFLL:
    case 0x13:
      v1 = *(result + 32);
      v2 = 7;
      goto LABEL_3;
    case 0x10:
      v3 = *(result + 32);
      v4 = 0.1;
      v5 = 4;
LABEL_21:
      v6 = 3;
      goto LABEL_15;
    case 0x11:
      v3 = *(result + 32);
      v4 = 0.1;
      v5 = 6;
      v6 = 1;
LABEL_15:
      result = [v3 _playPatternFeedback:v5 numberOfRepetitions:v6 atInterval:v4];
      break;
    case 0x14:
      v1 = *(result + 32);
      v2 = 0;
LABEL_3:
      result = [v1 _playDiscreteFeedbackForType:v2];
      break;
    default:
      return result;
  }

  return result;
}

- (void)_playFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [feedbackCopy setHapticOutputMode:{objc_msgSend(feedbackCopy, "hapticOutputMode") | 5}];
  v4 = [MEMORY[0x1E69DD4C0] engineForFeedback:feedbackCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AXHapticFeedbackManager__playFeedback___block_invoke;
  v6[3] = &unk_1E812E4D0;
  v7 = feedbackCopy;
  v5 = feedbackCopy;
  [v4 runWhenReady:v6];
}

uint64_t __41__AXHapticFeedbackManager__playFeedback___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) play];
  }

  return result;
}

- (void)_playFeedbackImpactBehaviorWithIntensity:(double)intensity
{
  v4 = objc_alloc(MEMORY[0x1E69DCAE8]);
  defaultConfiguration = [MEMORY[0x1E69DD560] defaultConfiguration];
  v6 = [v4 initWithConfiguration:defaultConfiguration view:0];

  [v6 activateWithCompletionBlock:0];
  [v6 impactOccurredWithIntensity:intensity atLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [v6 deactivate];
}

- (void)_playDiscreteFeedbackForType:(int64_t)type
{
  v4 = [MEMORY[0x1E69DD470] discreteFeedbackForType:type];
  [(AXHapticFeedbackManager *)self _playFeedback:v4];
}

- (void)_playPatternFeedback:(int64_t)feedback numberOfRepetitions:(int64_t)repetitions atInterval:(double)interval
{
  feedbackPattern = [MEMORY[0x1E69DD4C8] feedbackPattern];
  if (repetitions >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x1E69DD470] discreteFeedbackForType:feedback];
      [feedbackPattern addFeedback:v10 atTime:v9 * interval];

      ++v9;
    }

    while (repetitions != v9);
  }

  [(AXHapticFeedbackManager *)self _playFeedback:feedbackPattern];
}

- (void)_playCancelPatternFeedback
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _tapticEngine = [currentDevice _tapticEngine];
  [_tapticEngine actuateFeedback:2];
}

@end