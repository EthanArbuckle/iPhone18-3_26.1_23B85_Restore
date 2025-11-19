@interface CHDivingDataCalculator
- (CHDivingDataCalculator)init;
- (CHDivingDataCalculatorDelegate)delegate;
- (int64_t)diveDetailViewRowCount;
@end

@implementation CHDivingDataCalculator

- (CHDivingDataCalculatorDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)diveDetailViewRowCount
{
  if (*(self + OBJC_IVAR___CHDivingDataCalculator_diveSectionMode) >= 2u)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (CHDivingDataCalculator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end