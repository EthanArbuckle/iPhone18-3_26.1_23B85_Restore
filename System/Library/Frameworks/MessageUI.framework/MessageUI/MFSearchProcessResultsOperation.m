@interface MFSearchProcessResultsOperation
@end

@implementation MFSearchProcessResultsOperation

uint64_t __40___MFSearchProcessResultsOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  result = _shouldCancel(*(a1 + 32), *(*(a1 + 32) + 248));
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 248) _didFinishSearchForType:a2];
    if (result)
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 248);
      v7 = *(a1 + 48);

      return [v6 _appendSortedResultsOfType:a2 excluding:v5 toResults:v7];
    }
  }

  return result;
}

@end