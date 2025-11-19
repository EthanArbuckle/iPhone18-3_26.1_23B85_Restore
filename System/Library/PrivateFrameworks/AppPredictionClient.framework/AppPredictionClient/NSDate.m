@interface NSDate
@end

@implementation NSDate

void __66__NSDate_TimeManipulationForTesting__test_beginManipulationOfTime__block_invoke(uint64_t a1)
{
  if (timeManipulationIsAllowed == 1)
  {
    __66__NSDate_TimeManipulationForTesting__test_beginManipulationOfTime__block_invoke_cold_1(a1);
  }

  swapMethodImplementations();
  timeManipulationIsAllowed = 1;
}

void __64__NSDate_TimeManipulationForTesting__test_endManipulationOfTime__block_invoke(uint64_t a1)
{
  if ((timeManipulationIsAllowed & 1) == 0)
  {
    __64__NSDate_TimeManipulationForTesting__test_endManipulationOfTime__block_invoke_cold_1(a1);
  }

  swapMethodImplementations();
  timeManipulationIsAllowed = 0;
}

void __58__NSDate_TimeManipulationForTesting__test_setCurrentDate___block_invoke(uint64_t a1)
{
  if ((timeManipulationIsAllowed & 1) == 0)
  {
    __58__NSDate_TimeManipulationForTesting__test_setCurrentDate___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);

  objc_storeStrong(&currentDate, v2);
}

uint64_t __77__NSDate_TimeManipulationForTesting__test_adjustCurrentDateWithTimeInterval___block_invoke(uint64_t a1)
{
  if ((timeManipulationIsAllowed & 1) == 0)
  {
    __77__NSDate_TimeManipulationForTesting__test_adjustCurrentDateWithTimeInterval___block_invoke_cold_1(a1);
  }

  v2 = [currentDate dateByAddingTimeInterval:*(a1 + 48)];
  v3 = currentDate;
  currentDate = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __72__NSDate_TimeManipulationForTesting___atx_dateWithTimeIntervalSinceNow___block_invoke(uint64_t a1)
{
  v2 = [currentDate dateByAddingTimeInterval:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __73__NSDate_TimeManipulationForTesting___atx_timeIntervalSinceReferenceDate__block_invoke(uint64_t a1)
{
  result = [currentDate timeIntervalSinceReferenceDate];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t __63__NSDate_TimeManipulationForTesting___atx_timeIntervalSinceNow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) timeIntervalSinceDate:currentDate];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void __66__NSDate_TimeManipulationForTesting__test_beginManipulationOfTime__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"NSDate+TimeManipulationForTesting.m" lineNumber:45 description:@"Time manipulation is allowed already"];
}

void __64__NSDate_TimeManipulationForTesting__test_endManipulationOfTime__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"NSDate+TimeManipulationForTesting.m" lineNumber:56 description:@"Time manipulation is not allowed"];
}

void __58__NSDate_TimeManipulationForTesting__test_setCurrentDate___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"NSDate+TimeManipulationForTesting.m" lineNumber:65 description:@"Time manipulation is not allowed"];
}

void __77__NSDate_TimeManipulationForTesting__test_adjustCurrentDateWithTimeInterval___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"NSDate+TimeManipulationForTesting.m" lineNumber:73 description:@"Time manipulation is not allowed"];
}

@end