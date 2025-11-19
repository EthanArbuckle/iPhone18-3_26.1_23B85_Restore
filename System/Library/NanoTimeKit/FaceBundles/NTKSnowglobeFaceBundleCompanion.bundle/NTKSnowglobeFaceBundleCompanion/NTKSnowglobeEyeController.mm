@interface NTKSnowglobeEyeController
- ($599F175E452E455E49EC8439362DB023)_weightForState:(SEL)a3;
- (NTKSnowglobeEyeController)initWithLeftNode:(id)a3 rightNode:(id)a4 digitProfile:(id)a5;
- (void)_decideNextSquintChange:(double)a3;
- (void)_updateIdleStateForTime:(double)a3;
- (void)_updateWeights;
- (void)transitionToState:(unint64_t)a3 withDuration:(double)a4;
- (void)transitionToState:(unint64_t)a3 withFraction:(double)a4;
- (void)updateAtTime:(double)a3;
@end

@implementation NTKSnowglobeEyeController

- (NTKSnowglobeEyeController)initWithLeftNode:(id)a3 rightNode:(id)a4 digitProfile:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NTKSnowglobeEyeController;
  v12 = [(NTKSnowglobeEyeController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_leftEyeNode, a3);
    objc_storeStrong(&v13->_rightEyeNode, a4);
    v13->_state = 0;
    v13->_idleState.nextBlink = 0.0;
    v13->_idleState.squint = arc4random() / 4294967300.0 < 0.5;
    objc_storeStrong(&v13->_profile, a5);
  }

  return v13;
}

- (void)transitionToState:(unint64_t)a3 withDuration:(double)a4
{
  if (self->_state != a3 && (self->_transitionState != a3 || self->_transitionFraction <= 0.0))
  {
    self->_transitionAutomatic = 1;
    self->_transitionState = a3;
    self->_transitionFraction = 0.0;
    self->_transitionDuration = a4;
  }
}

- (void)transitionToState:(unint64_t)a3 withFraction:(double)a4
{
  if (self->_state != a3)
  {
    self->_transitionAutomatic = 0;
    self->_transitionFraction = a4;
    self->_transitionState = a3;
    MEMORY[0x2821F9670]();
  }
}

- (void)updateAtTime:(double)a3
{
  if (!self->_state || !self->_transitionState)
  {
    [(NTKSnowglobeEyeController *)self _updateIdleStateForTime:a3];
  }

  if (self->_transitionAutomatic)
  {
    self->_transitionFraction = self->_transitionFraction + 0.0333333333 / self->_transitionDuration;
  }

  MEMORY[0x2821F9670](self, sel__updateWeights);
}

- (void)_updateWeights
{
  transitionFraction = self->_transitionFraction;
  if (transitionFraction >= 1.0)
  {
    transitionState = self->_transitionState;
    self->_state = transitionState;
    self->_transitionFraction = 0.0;
    self->_transitionAutomatic = 0;
  }

  else
  {
    if (transitionFraction > 0.0)
    {
      [(NTKSnowglobeEyeController *)self _weightForState:self->_state];
      LODWORD(v35) = 0;
      [(NTKSnowglobeEyeController *)self _weightForState:self->_transitionState, 0, 0, v35];
      v4 = self->_transitionFraction;
      CLKInterpolateBetweenFloatsClipped();
      v5 = self->_transitionFraction;
      CLKInterpolateBetweenFloatsClipped();
      v7 = v6;
      v8 = self->_transitionFraction;
      CLKInterpolateBetweenFloatsClipped();
      v10 = v9;
      v11 = self->_transitionFraction;
      CLKInterpolateBetweenFloatsClipped();
      v13 = v12;
      v14 = self->_transitionFraction;
      CLKInterpolateBetweenFloatsClipped();
      v16 = v15;
      goto LABEL_7;
    }

    transitionState = self->_state;
  }

  [(NTKSnowglobeEyeController *)self _weightForState:transitionState];
  v7 = v36;
  v13 = v38;
  v10 = v37;
  v16 = v39;
LABEL_7:
  v18 = v16 * 2.0 + -1.0;
  v19 = 1.0 - fabs(v18);
  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  if (v18 >= 0.0)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [(SCNNode *)self->_leftEyeNode morpher];
  v23 = v10;
  [v22 setWeight:@"eyeContent_LShape" forTargetNamed:v23];

  v24 = [(SCNNode *)self->_leftEyeNode morpher];
  v25 = v7;
  [v24 setWeight:@"eyeAngry_LShape" forTargetNamed:v25];

  v26 = [(SCNNode *)self->_leftEyeNode morpher];
  v27 = v13;
  [v26 setWeight:@"eyeFullBlink_LShape" forTargetNamed:v27];

  v28 = [(SCNNode *)self->_leftEyeNode morpher];
  [v28 setWeight:@"eyeHalfSquint_LShape" forTargetNamed:v20];

  v29 = [(SCNNode *)self->_leftEyeNode morpher];
  [v29 setWeight:@"eyeSquint_LShape" forTargetNamed:v21];

  v30 = [(SCNNode *)self->_rightEyeNode morpher];
  [v30 setWeight:@"eyeContent_RShape" forTargetNamed:v23];

  v31 = [(SCNNode *)self->_rightEyeNode morpher];
  [v31 setWeight:@"eyeAngry_RShape" forTargetNamed:v25];

  v32 = [(SCNNode *)self->_rightEyeNode morpher];
  [v32 setWeight:@"eyeFullBlink_RShape" forTargetNamed:v27];

  v33 = [(SCNNode *)self->_rightEyeNode morpher];
  [v33 setWeight:@"eyeHalfSquint_RShape" forTargetNamed:v20];

  v34 = [(SCNNode *)self->_rightEyeNode morpher];
  [v34 setWeight:@"eyeSquint_RShape" forTargetNamed:v21];
}

- ($599F175E452E455E49EC8439362DB023)_weightForState:(SEL)a3
{
  if (a4 <= 1)
  {
    if (!a4)
    {
      var2 = self->var2;
      var1 = self[1].var1;
      retstr->var0 = (1.0 - var2) * (1.0 - var1);
      retstr->var1 = 0.0;
      retstr->var2 = 0.0;
      retstr->var3 = var2 * (1.0 - var1);
      retstr->var4 = (1.0 - var2) * var1;
      return self;
    }

    if (a4 != 1)
    {
      return self;
    }

LABEL_7:
    *&retstr->var0 = 0;
    *&retstr->var2 = 0;
    retstr->var4 = 0.0;
    retstr->var2 = 1.0;
    return self;
  }

  if (a4 == 2)
  {
    *&retstr->var0 = 0;
    *&retstr->var2 = 0;
    retstr->var4 = 0.0;
    retstr->var1 = 1.0;
    return self;
  }

  if (a4 == 3)
  {
    goto LABEL_7;
  }

  return self;
}

- (void)_updateIdleStateForTime:(double)a3
{
  if (self->_idleState.nextBlink == 0.0)
  {
    [(NTKSnowglobeEyeController *)self _decideNextBlink:a3];
  }

  if (self->_animationEnabled)
  {
    nextBlink = self->_idleState.nextBlink;
    v6 = 0.0;
    if (nextBlink < a3)
    {
      v7 = a3 - nextBlink;
      [(NTKSnowglobeDigitProfile *)self->_profile blinkDuration];
      v9 = v7 / v8;
      if (v9 >= 1.0)
      {
        [(NTKSnowglobeEyeController *)self _decideNextBlink:a3];
      }

      else
      {
        v10 = 1.0 - fabs(v9 * 2.0 + -1.0);
        if (v10 < 0.0)
        {
          v10 = 0.0;
        }

        v6 = v10;
      }
    }

    self->_idleState.blinkProgress = v6;
    if (self->_idleState.nextSquintChange >= a3)
    {
      squintChange = self->_idleState.squintChange;
      squint = self->_idleState.squint;
    }

    else
    {
      [(NTKSnowglobeEyeController *)self _decideNextSquintChange:a3];
      self->_idleState.squintChange = a3;
      squint = !self->_idleState.squint;
      self->_idleState.squint = squint;
      squintChange = a3;
    }

    v14 = fmin((a3 - squintChange) / 0.2, 1.0);
    if (!squint)
    {
      v14 = 1.0 - v14;
    }

    v11 = v14;
  }

  else
  {
    self->_idleState.blinkProgress = 0.0;
    v11 = 0.0;
  }

  self->_idleState.squintProgress = v11;
}

- (void)_decideNextSquintChange:(double)a3
{
  [(NTKSnowglobeDigitProfile *)self->_profile squintRatio];
  v6 = v5;
  v7 = arc4random();
  if (self->_idleState.squint)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 1.0 / v6;
  if (!self->_idleState.squint)
  {
    v9 = 1.0;
  }

  if (v6 < 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  self->_idleState.nextSquintChange = a3 + (v7 / 4294967300.0 * 2.0 + 1.0) * v10;
}

@end