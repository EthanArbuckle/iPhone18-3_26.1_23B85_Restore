@interface BKSHIDEventConciseDescriptionDigitizer
@end

@implementation BKSHIDEventConciseDescriptionDigitizer

void ___BKSHIDEventConciseDescriptionDigitizer_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  Type = IOHIDEventGetType();
  v5 = *(a1 + 32);
  if (Type == 11)
  {
    v6 = v5;
    if (IOHIDEventGetType() == 11)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      IOHIDEventGetFloatValue();
      v9 = v8;
      IOHIDEventGetFloatValue();
      v11 = v10;
      v12 = [v6 appendInteger:IntegerValue withName:@"path"];
      v13 = [v6 appendPoint:0 withName:{v9, v11}];
      _BKSHIDEventAppendEventFlags(v3, v6);
    }

    else
    {
      [v6 appendString:IOHIDEventTypeGetName() withName:0];
    }

    if (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 56))
    {
      v14 = [*(a1 + 40) objectAtIndexedSubscript:?];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 pathIndex];
        if (v16 == IOHIDEventGetIntegerValue())
        {
          v17 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(v15 withName:"touchIdentifier") format:{@"touchID", 1}];
          v18 = [v15 hitTestContextCategory];
          if (v18)
          {
            v19 = *(a1 + 32);
            v20 = NSStringFromBKSTouchHitTestContextCategory(v18);
            [v19 appendString:v20 withName:@"hcat"];
          }

          v21 = [v15 locus];
          if (v21)
          {
            v22 = *(a1 + 32);
            v23 = NSStringFromBKSHIDTouchLocus(v21);
            [v22 appendString:v23 withName:0];
          }

          v24 = *(a1 + 32);
          [v15 preciseLocation];
          v25 = [v24 appendPoint:0 withName:?];
          v26 = [v15 authenticationMessage];

          if (v26)
          {
            [*(a1 + 32) appendString:@"auth" withName:0];
          }

          v27 = [v15 securityAnalysis];

          if (v27)
          {
            [*(a1 + 32) appendString:@"sa" withName:0];
          }
        }
      }

      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___BKSHIDEventConciseDescriptionDigitizer_block_invoke_3;
    v28[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    v28[4] = v3;
    [v5 appendCustomFormatWithName:@":" block:v28];
  }
}

void ___BKSHIDEventConciseDescriptionDigitizer_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = BKSHIDEventGetConciseDescription(v2);
  [v3 appendString:v4];
}

@end