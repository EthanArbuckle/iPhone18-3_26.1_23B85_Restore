@interface UIStackView(MessageUI)
+ (id)mf_baselineAlignedHorizontalStackView;
+ (id)mf_baselineAlignedVerticalStackView;
+ (id)mf_equalSpacingHorizontalStackView;
+ (id)mf_equallyFilledHorizontalStackView;
+ (id)mf_equallyFilledVerticalStackView;
- (void)mf_addArrangedSubviews:()MessageUI;
@end

@implementation UIStackView(MessageUI)

+ (id)mf_baselineAlignedHorizontalStackView
{
  v0 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAxis:0];
  [v0 setAlignment:2];
  [v0 setDistribution:2];

  return v0;
}

+ (id)mf_baselineAlignedVerticalStackView
{
  v0 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAxis:1];
  [v0 setAlignment:0];
  [v0 setBaselineRelativeArrangement:1];

  return v0;
}

+ (id)mf_equallyFilledVerticalStackView
{
  v0 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v0 setAxis:1];
  [v0 setAlignment:0];
  [v0 setDistribution:1];

  return v0;
}

+ (id)mf_equallyFilledHorizontalStackView
{
  v0 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v0 setAxis:0];
  [v0 setAlignment:0];
  [v0 setDistribution:1];

  return v0;
}

+ (id)mf_equalSpacingHorizontalStackView
{
  v0 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v0 setAxis:0];
  [v0 setDistribution:3];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v0;
}

- (void)mf_addArrangedSubviews:()MessageUI
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [a1 addArrangedSubview:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end