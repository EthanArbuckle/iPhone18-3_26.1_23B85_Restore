@interface FMOnboardingButton
- (_TtC6FindMy18FMOnboardingButton)initWithCoder:(id)coder;
@end

@implementation FMOnboardingButton

- (_TtC6FindMy18FMOnboardingButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMOnboardingButton();
  coderCopy = coder;
  v5 = [(FMSingleLinePlatterButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end