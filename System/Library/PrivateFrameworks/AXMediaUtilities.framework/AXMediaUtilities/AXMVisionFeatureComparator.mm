@interface AXMVisionFeatureComparator
- (int64_t)compareInitialResult:(id)result withFinalResult:(id)finalResult indexOfUnequalItem:(int64_t *)item sortInitialResult:(BOOL)initialResult sortFinalResult:(BOOL)sortFinalResult;
@end

@implementation AXMVisionFeatureComparator

- (int64_t)compareInitialResult:(id)result withFinalResult:(id)finalResult indexOfUnequalItem:(int64_t *)item sortInitialResult:(BOOL)initialResult sortFinalResult:(BOOL)sortFinalResult
{
  resultCopy = result;
  finalResultCopy = finalResult;
  if (initialResult)
  {
    sortedFeatures = [resultCopy sortedFeatures];
    [finalResultCopy sortedFeatures];
  }

  else
  {
    sortedFeatures = [resultCopy features];
    [finalResultCopy features];
  }
  v13 = ;
  v14 = [sortedFeatures count];
  v15 = [v13 count];
  if (v14 < v15)
  {
    v16 = -1;
    v17 = 1;
    if (!item)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v14 > v15)
  {
    v16 = -1;
    v17 = 2;
    if (!item)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v14 < 1)
  {
    v17 = 0;
    v16 = -1;
    if (!item)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  itemCopy = item;
  v16 = 0;
  v17 = 3;
  while (1)
  {
    v18 = [sortedFeatures objectAtIndex:v16];
    v19 = [v13 objectAtIndex:v16];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      break;
    }

    if (v14 == ++v16)
    {
      v17 = 0;
      v16 = -1;
      break;
    }
  }

  item = itemCopy;
  if (itemCopy)
  {
LABEL_16:
    *item = v16;
  }

LABEL_17:

  return v17;
}

@end