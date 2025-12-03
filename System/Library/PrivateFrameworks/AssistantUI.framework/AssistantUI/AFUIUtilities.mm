@interface AFUIUtilities
+ (BOOL)shouldShowSiriXIndicator;
+ (id)parsedUtteranceFromText:(id)text context:(id)context;
+ (void)animateUsingSpringWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping animations:(id)animations completion:(id)completion;
+ (void)animateUsingSpringWithStiffness:(double)stiffness damping:(double)damping animations:(id)animations;
@end

@implementation AFUIUtilities

+ (BOOL)shouldShowSiriXIndicator
{
  v2 = AFIsInternalInstall();
  if (v2)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    siriXDebugStatusEnabled = [mEMORY[0x277CEF368] siriXDebugStatusEnabled];

    LOBYTE(v2) = siriXDebugStatusEnabled;
  }

  return v2;
}

+ (void)animateUsingSpringWithStiffness:(double)stiffness damping:(double)damping animations:(id)animations
{
  animationsCopy = animations;
  v8 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__AFUIUtilities_animateUsingSpringWithStiffness_damping_animations___block_invoke;
  v10[3] = &unk_278CD6460;
  stiffnessCopy = stiffness;
  dampingCopy = damping;
  v11 = animationsCopy;
  v9 = animationsCopy;
  [v8 _performWithoutRetargetingAnimations:v10];
}

uint64_t __68__AFUIUtilities_animateUsingSpringWithStiffness_damping_animations___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = DurationForMassStiffnessDamping(1.0, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [v2 _animateUsingSpringWithDuration:0 delay:v6 options:0 mass:v3 stiffness:0.0 damping:1.0 initialVelocity:v4 animations:v5 completion:0.0];
}

+ (void)animateUsingSpringWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  v13 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__AFUIUtilities_animateUsingSpringWithMass_stiffness_damping_animations_completion___block_invoke;
  v16[3] = &unk_278CD6488;
  massCopy = mass;
  stiffnessCopy = stiffness;
  dampingCopy = damping;
  v17 = animationsCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = animationsCopy;
  [v13 _performWithoutRetargetingAnimations:v16];
}

uint64_t __84__AFUIUtilities_animateUsingSpringWithMass_stiffness_damping_animations_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = DurationForMassStiffnessDamping(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v2 _animateUsingSpringWithDuration:0 delay:v6 options:v7 mass:v3 stiffness:0.0 damping:1.0 initialVelocity:v4 animations:v5 completion:0.0];
}

+ (id)parsedUtteranceFromText:(id)text context:(id)context
{
  v5 = MEMORY[0x277D61B38];
  v6 = MEMORY[0x277D619C0];
  contextCopy = context;
  textCopy = text;
  sharedInstance = [v6 sharedInstance];
  v10 = [v5 parsedUtteranceFromText:textCopy context:contextCopy spekableObjectProviding:sharedInstance];

  return v10;
}

@end