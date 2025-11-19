@interface NSMutableArray(VNCoreSceneUnderstandingDetector)
- (void)VNInsertObservationWithConfidence:()VNCoreSceneUnderstandingDetector limitedToN:providedByBlock:;
@end

@implementation NSMutableArray(VNCoreSceneUnderstandingDetector)

- (void)VNInsertObservationWithConfidence:()VNCoreSceneUnderstandingDetector limitedToN:providedByBlock:
{
  v8 = a5;
  v15 = v8;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8[2]();
    [a1 addObject:v9];
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
  v11 = [a1 count];
  if (v11)
  {
    while (1)
    {
      v12 = [a1 objectAtIndex:v10];
      [v12 confidence];
      v14 = v13;

      if (v14 < a2)
      {
        break;
      }

      if (v11 == ++v10)
      {
        v10 = v11;
        break;
      }
    }
  }

  if (v10 < a4)
  {
    v9 = v15[2]();
    if (v11 == a4)
    {
      [a1 removeObjectAtIndex:a4 - 1];
    }

    [a1 insertObject:v9 atIndex:v10];
    goto LABEL_11;
  }

LABEL_12:
}

@end