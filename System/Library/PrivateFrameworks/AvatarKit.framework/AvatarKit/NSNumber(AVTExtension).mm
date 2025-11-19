@interface NSNumber(AVTExtension)
+ (id)avt_numberWithFloat:()AVTExtension roundingBehavior:;
- (id)avt_numberByRoundingWithBehavior:()AVTExtension;
@end

@implementation NSNumber(AVTExtension)

+ (id)avt_numberWithFloat:()AVTExtension roundingBehavior:
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  *&v7 = a1;
  v8 = [v5 numberWithFloat:v7];
  v9 = [v8 avt_numberByRoundingWithBehavior:v6];

  return v9;
}

- (id)avt_numberByRoundingWithBehavior:()AVTExtension
{
  v4 = MEMORY[0x1E696AB90];
  v5 = a3;
  v6 = [v4 alloc];
  [a1 decimalValue];
  v7 = [v6 initWithDecimal:v10];
  v8 = [v7 decimalNumberByRoundingAccordingToBehavior:v5];

  return v8;
}

@end