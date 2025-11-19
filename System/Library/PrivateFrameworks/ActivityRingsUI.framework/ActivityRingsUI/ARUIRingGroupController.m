@interface ARUIRingGroupController
+ (id)animationTimingFunction;
+ (id)ringGroupControllerConfiguredForCompanionWithRingType:(int64_t)a3 withIcon:(BOOL)a4;
+ (id)ringGroupControllerConfiguredForWatchWithRingType:(int64_t)a3 withIcon:(BOOL)a4;
- (ARUIRingGroupController)init;
- (ARUIRingGroupController)initWithNumberOfRings:(int64_t)a3;
- (ARUIRingGroupController)initWithRingGroup:(id)a3;
- (CGPoint)center;
- (float)diameterForRingAtIndex:(unint64_t)a3;
- (int64_t)numberOfRings;
- (void)addAnimation:(id)a3 forRingGroupPropertyType:(unint64_t)a4;
- (void)addCelebration:(id)a3 toRingAtIndex:(int64_t)a4;
- (void)setActiveEnergyPercentage:(double)a3 animated:(BOOL)a4;
- (void)setActiveEnergyPercentage:(double)a3 briskPercentage:(double)a4 movingHoursPercentage:(double)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)setBriskPercentage:(double)a3 animated:(BOOL)a4;
- (void)setMovingHoursPercentage:(double)a3 animated:(BOOL)a4;
- (void)setOpacity:(double)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)setPercentage:(double)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 timingFunction:(id)a7 completion:(id)a8;
- (void)setRingThickness:(double)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)setSpriteSheet:(id)a3;
@end

@implementation ARUIRingGroupController

+ (id)animationTimingFunction
{
  LODWORD(v2) = 1051361018;
  LODWORD(v3) = 1.0;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :0.0 :0.0 :v3];
}

- (ARUIRingGroupController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"-init is unavailable on %@.", v6}];

  return 0;
}

- (ARUIRingGroupController)initWithNumberOfRings:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ARUIRingGroupController;
  v4 = [(ARUIRingGroupController *)&v8 init];
  if (v4)
  {
    v5 = [[ARUIRingGroup alloc] initWithNumberOfRings:a3];
    ringGroup = v4->_ringGroup;
    v4->_ringGroup = v5;
  }

  return v4;
}

- (ARUIRingGroupController)initWithRingGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARUIRingGroupController;
  v6 = [(ARUIRingGroupController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ringGroup, a3);
  }

  return v7;
}

- (int64_t)numberOfRings
{
  v2 = [(ARUIRingGroup *)self->_ringGroup rings];
  v3 = [v2 count];

  return v3;
}

- (void)setSpriteSheet:(id)a3
{
  [(ARUIRingGroup *)self->_ringGroup setSpriteSheet:a3];
  ringGroup = self->_ringGroup;

  [(ARUIRingGroup *)ringGroup playSpriteAnimation];
}

- (CGPoint)center
{
  [(ARUIRingGroup *)self->_ringGroup translation];
  v4 = v3;
  [(ARUIRingGroup *)self->_ringGroup translation];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)addAnimation:(id)a3 forRingGroupPropertyType:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 4)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v35 = [v6 _endValue];
        [v35 floatValue];
        v37 = v36;

        [v7 duration];
        v12 = v38;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_3;
        v65[3] = &unk_1E83CE318;
        v65[4] = self;
        v66 = v37;
        v13 = [v7 completionHandler];
        v14 = v65;
        goto LABEL_21;
      }

      if (a4 == 3)
      {
        v19 = [v6 _endValue];
        [v19 floatValue];
        v21 = v20;

        [v7 duration];
        v12 = v22;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_4;
        v63[3] = &unk_1E83CE318;
        v63[4] = self;
        v64 = v21;
        v13 = [v7 completionHandler];
        v14 = v63;
        goto LABEL_21;
      }
    }

    else
    {
      if (!a4)
      {
        v27 = [v6 _endValue];
        [v27 CGPointValue];
        v51 = v29;
        v52 = v28;

        *&v30.f64[0] = v52;
        *&v30.f64[1] = v51;
        v31 = vcvt_f32_f64(v30);
        [v7 duration];
        v33 = v32;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke;
        v69[3] = &unk_1E83CE2F0;
        v69[4] = self;
        v69[5] = v31;
        v13 = [v7 completionHandler];
        v14 = v69;
        v34 = v33;
LABEL_22:
        [ARUIRingGroup animateWithDuration:v14 animations:0 curve:v13 completion:v34, v51, v52];

        goto LABEL_23;
      }

      if (a4 == 1)
      {
        v15 = [v6 _endValue];
        [v15 floatValue];
        v17 = v16;

        [v7 duration];
        v12 = v18;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_2;
        v67[3] = &unk_1E83CE318;
        v67[4] = self;
        v68 = v17;
        v13 = [v7 completionHandler];
        v14 = v67;
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (a4 <= 6)
    {
      [v6 _endValue];
      if (a4 == 5)
        v43 = {;
        [v43 floatValue];
        v45 = v44;

        [v7 duration];
        v12 = v46;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_5;
        v61[3] = &unk_1E83CE318;
        v61[4] = self;
        v62 = v45;
        v13 = [v7 completionHandler];
        v14 = v61;
      }

      else
        v23 = {;
        [v23 floatValue];
        v25 = v24;

        [v7 duration];
        v12 = v26;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_6;
        v59[3] = &unk_1E83CE318;
        v59[4] = self;
        v60 = v25;
        v13 = [v7 completionHandler];
        v14 = v59;
      }

      goto LABEL_21;
    }

    switch(a4)
    {
      case 7uLL:
        v39 = [v6 _endValue];
        [v39 floatValue];
        v41 = v40;

        [v7 duration];
        v12 = v42;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_7;
        v57[3] = &unk_1E83CE318;
        v57[4] = self;
        v58 = v41;
        v13 = [v7 completionHandler];
        v14 = v57;
        goto LABEL_21;
      case 8uLL:
        v47 = [v6 _endValue];
        [v47 floatValue];
        v49 = v48;

        [v7 duration];
        v12 = v50;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_8;
        v55[3] = &unk_1E83CE318;
        v55[4] = self;
        v56 = v49;
        v13 = [v7 completionHandler];
        v14 = v55;
        goto LABEL_21;
      case 9uLL:
        v8 = [v6 _endValue];
        [v8 floatValue];
        v10 = v9;

        [v7 duration];
        v12 = v11;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_9;
        v53[3] = &unk_1E83CE318;
        v53[4] = self;
        v54 = v10;
        v13 = [v7 completionHandler];
        v14 = v53;
LABEL_21:
        v34 = v12;
        goto LABEL_22;
    }
  }

LABEL_23:
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ringGroup];
  [v2 setTranslation:*(a1 + 40)];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setGroupDiameter:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setEmptyOpacity:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setOpacity:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setInterspacing:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_6(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setThickness:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_7(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setScale:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_8(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setTrackOpacity:v2];
}

void __65__ARUIRingGroupController_addAnimation_forRingGroupPropertyType___block_invoke_9(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  LODWORD(v2) = *(a1 + 40);
  [v3 setZRotation:v2];
}

- (void)setOpacity:(double)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5
{
  if (a5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__ARUIRingGroupController_setOpacity_ofRingAtIndex_animated___block_invoke;
    v7[3] = &unk_1E83CE2F0;
    v7[4] = self;
    *&v7[5] = a3;
    [ARUIRingGroup animateWithDuration:v7 animations:0.25];
  }

  else
  {
    ringGroup = self->_ringGroup;
    *&a3 = a3;

    [(ARUIRingGroup *)ringGroup setOpacity:a4, a3];
  }
}

uint64_t __61__ARUIRingGroupController_setOpacity_ofRingAtIndex_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 24) setOpacity:v1];
}

- (void)setRingThickness:(double)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__ARUIRingGroupController_setRingThickness_ofRingAtIndex_animated___block_invoke;
  v5[3] = &unk_1E83CE2F0;
  v5[4] = self;
  *&v5[5] = a3;
  [ARUIRingGroup animateWithDuration:v5 animations:a5, 0.2];
}

void __67__ARUIRingGroupController_setRingThickness_ofRingAtIndex_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  v2 = *(a1 + 40);
  *&v2 = v2;
  [v3 setThickness:v2];
}

- (float)diameterForRingAtIndex:(unint64_t)a3
{
  v4 = [(ARUIRingGroup *)self->_ringGroup rings];
  v5 = [v4 objectAtIndex:a3];
  [v5 diameter];
  v7 = v6;

  return v7;
}

- (void)setPercentage:(double)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 timingFunction:(id)a7 completion:(id)a8
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__ARUIRingGroupController_setPercentage_ofRingAtIndex_animated_duration_timingFunction_completion___block_invoke;
  v8[3] = &unk_1E83CE340;
  v8[4] = self;
  *&v8[5] = a3;
  v8[6] = a4;
  [ARUIRingGroup animateWithDuration:v8 animations:0 curve:a8 completion:a6];
}

void __99__ARUIRingGroupController_setPercentage_ofRingAtIndex_animated_duration_timingFunction_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) ringGroup];
  v2 = *(a1 + 40);
  *&v2 = v2;
  [v3 setPercentage:*(a1 + 48) ofRingAtIndex:v2];
}

- (void)addCelebration:(id)a3 toRingAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(ARUIRingGroupController *)self ringGroup];
  [v7 playCelebration:v6 onRingAtIndex:a4];
}

+ (id)ringGroupControllerConfiguredForWatchWithRingType:(int64_t)a3 withIcon:(BOOL)a4
{
  v4 = a4;
  v5 = [ARUIRingGroup activityRingGroupForRingType:a3];
  v6 = [v5 forWatch];

  if (v4)
  {
    v7 = [v6 withSpriteSheet];

    v6 = v7;
  }

  v8 = [[ARUIRingGroupController alloc] initWithRingGroup:v6];

  return v8;
}

+ (id)ringGroupControllerConfiguredForCompanionWithRingType:(int64_t)a3 withIcon:(BOOL)a4
{
  v4 = a4;
  v5 = [ARUIRingGroup activityRingGroupForRingType:a3];
  v6 = [v5 forCompanion];

  if (v4)
  {
    v7 = [v6 withSpriteSheet];

    v6 = v7;
  }

  v8 = [[ARUIRingGroupController alloc] initWithRingGroup:v6];

  return v8;
}

- (void)setActiveEnergyPercentage:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ARUIRingGroupController *)self ringGroup];
  *&v6 = a3;
  [v7 setActiveEnergyPercentage:v4 animated:v6];
}

- (void)setMovingHoursPercentage:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ARUIRingGroupController *)self ringGroup];
  *&v6 = a3;
  [v7 setStandHoursPercentage:v4 animated:v6];
}

- (void)setBriskPercentage:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ARUIRingGroupController *)self ringGroup];
  *&v6 = a3;
  [v7 setExerciseMinutesPercentage:v4 animated:v6];
}

- (void)setActiveEnergyPercentage:(double)a3 briskPercentage:(double)a4 movingHoursPercentage:(double)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v16 = [(ARUIRingGroupController *)self ringGroup];
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;
  [v16 setActiveEnergyPercentage:v7 exerciseMinutesPercentage:v12 standHoursPercentage:v13 animated:v14 completion:v15];
}

@end