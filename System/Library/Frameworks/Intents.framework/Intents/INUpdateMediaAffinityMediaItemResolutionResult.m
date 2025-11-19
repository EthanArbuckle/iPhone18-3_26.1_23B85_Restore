@interface INUpdateMediaAffinityMediaItemResolutionResult
+ (INUpdateMediaAffinityMediaItemResolutionResult)unsupportedForReason:(INUpdateMediaAffinityMediaItemUnsupportedReason)reason;
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INUpdateMediaAffinityMediaItemResolutionResult

+ (INUpdateMediaAffinityMediaItemResolutionResult)unsupportedForReason:(INUpdateMediaAffinityMediaItemUnsupportedReason)reason
{
  v4 = [a1 unsupported];
  [v4 setUnsupportedReason:reason];

  return v4;
}

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___INUpdateMediaAffinityMediaItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successesWithResolvedMediaItems_, resolvedMediaItems);

  return v3;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v20.receiver = self;
  v20.super_class = INUpdateMediaAffinityMediaItemResolutionResult;
  v4 = [(INIntentResolutionResult *)&v20 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v5 = [v4 payloadUnsupported];
    [v5 setReason:1000];

    v6 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason];
    if (v7 == 1003)
    {
      v8 = 103;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (v7 == 1002)
    {
      v9 = 102;
    }

    else
    {
      v9 = v8;
    }

    if (v7 == 1001)
    {
      v10 = 101;
    }

    else
    {
      v10 = v9;
    }

    if (v7 == 1000)
    {
      v11 = 100;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    if (v7 == 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = v11;
    }

    if (v7 == 7)
    {
      v13 = 7;
    }

    else
    {
      v13 = v12;
    }

    if (v7 <= 1000)
    {
      v10 = v13;
    }

    if (v7 == 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }

    if (v7 == 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    if (v7 == 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    if (v7 == 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0x7FFFFFFF;
    }

    if (v7 == 2)
    {
      v17 = 2;
    }

    if (v7 == 1)
    {
      v17 = 1;
    }

    if (v7 > 3)
    {
      v17 = v16;
    }

    if (v7 <= 6)
    {
      v18 = v17;
    }

    else
    {
      v18 = v10;
    }

    [v6 setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:v18];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = INUpdateMediaAffinityMediaItemResolutionResult;
  v7 = [(INIntentResolutionResult *)&v26 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadUnsupported];
    v9 = [v8 hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason];

    if (v9)
    {
      v10 = [v6 payloadUnsupported];
      v11 = [v10 updateMediaAffinityIntentMediaItemsUnsupportedReason];
      v12 = 1001;
      v13 = 1002;
      v14 = 1003;
      if (v11 != 103)
      {
        v14 = 0;
      }

      if (v11 != 102)
      {
        v13 = v14;
      }

      if (v11 != 101)
      {
        v12 = v13;
      }

      v15 = 7;
      v16 = 8;
      v17 = 1000;
      if (v11 != 100)
      {
        v17 = 0;
      }

      if (v11 != 8)
      {
        v16 = v17;
      }

      if (v11 != 7)
      {
        v15 = v16;
      }

      if (v11 <= 100)
      {
        v12 = v15;
      }

      v18 = 4;
      v19 = 5;
      v20 = 6;
      if (v11 != 6)
      {
        v20 = 0;
      }

      if (v11 != 5)
      {
        v19 = v20;
      }

      if (v11 != 4)
      {
        v18 = v19;
      }

      v21 = 1;
      v22 = 2;
      v23 = 3;
      if (v11 != 3)
      {
        v23 = 0;
      }

      if (v11 != 2)
      {
        v22 = v23;
      }

      if (v11 != 1)
      {
        v21 = v22;
      }

      if (v11 <= 3)
      {
        v18 = v21;
      }

      if (v11 <= 6)
      {
        v24 = v18;
      }

      else
      {
        v24 = v12;
      }

      [v7 setUnsupportedReason:v24];
    }
  }

  return v7;
}

@end