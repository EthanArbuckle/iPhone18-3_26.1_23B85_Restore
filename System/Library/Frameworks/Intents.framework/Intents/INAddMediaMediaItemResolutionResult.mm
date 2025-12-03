@interface INAddMediaMediaItemResolutionResult
+ (INAddMediaMediaItemResolutionResult)unsupportedForReason:(INAddMediaMediaItemUnsupportedReason)reason;
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INAddMediaMediaItemResolutionResult

+ (INAddMediaMediaItemResolutionResult)unsupportedForReason:(INAddMediaMediaItemUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___INAddMediaMediaItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successesWithResolvedMediaItems_, resolvedMediaItems);

  return v3;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v21.receiver = self;
  v21.super_class = INAddMediaMediaItemResolutionResult;
  v4 = [(INIntentResolutionResult *)&v21 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    unsupportedReason = [(INIntentResolutionResult *)self unsupportedReason];
    if (unsupportedReason <= 7)
    {
      if (unsupportedReason == 7)
      {
        v16 = 7;
      }

      else
      {
        v16 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 6)
      {
        v9 = 6;
      }

      else
      {
        v9 = v16;
      }

      if (unsupportedReason == 5)
      {
        v17 = 5;
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 4)
      {
        v18 = 4;
      }

      else
      {
        v18 = v17;
      }

      if (unsupportedReason <= 5)
      {
        v9 = v18;
      }

      if (unsupportedReason == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 2)
      {
        v14 = 2;
      }

      if (unsupportedReason == 1)
      {
        v14 = 1;
      }

      v15 = unsupportedReason <= 3;
    }

    else
    {
      if (unsupportedReason == 1006)
      {
        v8 = 106;
      }

      else
      {
        v8 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 1005)
      {
        v9 = 105;
      }

      else
      {
        v9 = v8;
      }

      if (unsupportedReason == 1004)
      {
        v10 = 104;
      }

      else
      {
        v10 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 1003)
      {
        v11 = 103;
      }

      else
      {
        v11 = v10;
      }

      if (unsupportedReason <= 1004)
      {
        v9 = v11;
      }

      if (unsupportedReason == 1002)
      {
        v12 = 102;
      }

      else
      {
        v12 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 1001)
      {
        v13 = 101;
      }

      else
      {
        v13 = v12;
      }

      if (unsupportedReason == 1000)
      {
        v14 = 100;
      }

      else
      {
        v14 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 8)
      {
        v14 = 8;
      }

      if (unsupportedReason > 1000)
      {
        v14 = v13;
      }

      v15 = unsupportedReason <= 1002;
    }

    if (v15)
    {
      v19 = v14;
    }

    else
    {
      v19 = v9;
    }

    [payloadUnsupported2 setAddMediaIntentMediaItemsUnsupportedReason:v19];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v28.receiver = self;
  v28.super_class = INAddMediaMediaItemResolutionResult;
  v7 = [(INIntentResolutionResult *)&v28 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasAddMediaIntentMediaItemsUnsupportedReason = [payloadUnsupported hasAddMediaIntentMediaItemsUnsupportedReason];

    if (hasAddMediaIntentMediaItemsUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      addMediaIntentMediaItemsUnsupportedReason = [payloadUnsupported2 addMediaIntentMediaItemsUnsupportedReason];
      if (addMediaIntentMediaItemsUnsupportedReason <= 7)
      {
        v12 = 6;
        v21 = 7;
        if (addMediaIntentMediaItemsUnsupportedReason != 7)
        {
          v21 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 6)
        {
          v12 = v21;
        }

        v22 = 4;
        v23 = 5;
        if (addMediaIntentMediaItemsUnsupportedReason != 5)
        {
          v23 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 4)
        {
          v22 = v23;
        }

        if (addMediaIntentMediaItemsUnsupportedReason <= 5)
        {
          v12 = v22;
        }

        v16 = 1;
        v24 = 2;
        v25 = 3;
        if (addMediaIntentMediaItemsUnsupportedReason != 3)
        {
          v25 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 2)
        {
          v24 = v25;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 1)
        {
          v16 = v24;
        }

        v20 = addMediaIntentMediaItemsUnsupportedReason <= 3;
      }

      else
      {
        v12 = 1005;
        v13 = 1006;
        if (addMediaIntentMediaItemsUnsupportedReason != 106)
        {
          v13 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 105)
        {
          v12 = v13;
        }

        v14 = 1003;
        v15 = 1004;
        if (addMediaIntentMediaItemsUnsupportedReason != 104)
        {
          v15 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 103)
        {
          v14 = v15;
        }

        if (addMediaIntentMediaItemsUnsupportedReason <= 104)
        {
          v12 = v14;
        }

        v16 = 1001;
        v17 = 1002;
        if (addMediaIntentMediaItemsUnsupportedReason != 102)
        {
          v17 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 101)
        {
          v16 = v17;
        }

        v18 = 8;
        v19 = 1000;
        if (addMediaIntentMediaItemsUnsupportedReason != 100)
        {
          v19 = 0;
        }

        if (addMediaIntentMediaItemsUnsupportedReason != 8)
        {
          v18 = v19;
        }

        if (addMediaIntentMediaItemsUnsupportedReason <= 100)
        {
          v16 = v18;
        }

        v20 = addMediaIntentMediaItemsUnsupportedReason <= 102;
      }

      if (v20)
      {
        v26 = v16;
      }

      else
      {
        v26 = v12;
      }

      [v7 setUnsupportedReason:v26];
    }
  }

  return v7;
}

@end