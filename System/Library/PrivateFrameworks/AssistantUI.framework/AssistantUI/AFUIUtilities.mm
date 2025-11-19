@interface AFUIUtilities
+ (BOOL)shouldShowSiriXIndicator;
+ (id)parsedUtteranceFromText:(id)a3 context:(id)a4;
+ (void)animateUsingSpringWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 animations:(id)a6 completion:(id)a7;
+ (void)animateUsingSpringWithStiffness:(double)a3 damping:(double)a4 animations:(id)a5;
@end

@implementation AFUIUtilities

+ (BOOL)shouldShowSiriXIndicator
{
  v2 = AFIsInternalInstall();
  if (v2)
  {
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v3 siriXDebugStatusEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (void)animateUsingSpringWithStiffness:(double)a3 damping:(double)a4 animations:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__AFUIUtilities_animateUsingSpringWithStiffness_damping_animations___block_invoke;
  v10[3] = &unk_278CD6460;
  v12 = a3;
  v13 = a4;
  v11 = v7;
  v9 = v7;
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

+ (void)animateUsingSpringWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 animations:(id)a6 completion:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__AFUIUtilities_animateUsingSpringWithMass_stiffness_damping_animations_completion___block_invoke;
  v16[3] = &unk_278CD6488;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v17 = v11;
  v18 = v12;
  v14 = v12;
  v15 = v11;
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

+ (id)parsedUtteranceFromText:(id)a3 context:(id)a4
{
  v5 = MEMORY[0x277D61B38];
  v6 = MEMORY[0x277D619C0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedInstance];
  v10 = [v5 parsedUtteranceFromText:v8 context:v7 spekableObjectProviding:v9];

  return v10;
}

@end