@interface INSearchForMediaMediaItemResolutionResult
+ (INSearchForMediaMediaItemResolutionResult)unsupportedForReason:(INSearchForMediaMediaItemUnsupportedReason)reason;
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INSearchForMediaMediaItemResolutionResult

+ (INSearchForMediaMediaItemResolutionResult)unsupportedForReason:(INSearchForMediaMediaItemUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___INSearchForMediaMediaItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successesWithResolvedMediaItems_, resolvedMediaItems);

  return v3;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v20.receiver = self;
  v20.super_class = INSearchForMediaMediaItemResolutionResult;
  v4 = [(INIntentResolutionResult *)&v20 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    unsupportedReason = [(INIntentResolutionResult *)self unsupportedReason];
    if (unsupportedReason == 1003)
    {
      v8 = 103;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 1002)
    {
      v9 = 102;
    }

    else
    {
      v9 = v8;
    }

    if (unsupportedReason == 1001)
    {
      v10 = 101;
    }

    else
    {
      v10 = v9;
    }

    if (unsupportedReason == 1000)
    {
      v11 = 100;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = v11;
    }

    if (unsupportedReason == 7)
    {
      v13 = 7;
    }

    else
    {
      v13 = v12;
    }

    if (unsupportedReason <= 1000)
    {
      v10 = v13;
    }

    if (unsupportedReason == 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    if (unsupportedReason == 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    if (unsupportedReason == 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 2)
    {
      v17 = 2;
    }

    if (unsupportedReason == 1)
    {
      v17 = 1;
    }

    if (unsupportedReason > 3)
    {
      v17 = v16;
    }

    if (unsupportedReason <= 6)
    {
      v18 = v17;
    }

    else
    {
      v18 = v10;
    }

    [payloadUnsupported2 setSearchForMediaIntentMediaItemsUnsupportedReason:v18];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v26.receiver = self;
  v26.super_class = INSearchForMediaMediaItemResolutionResult;
  v7 = [(INIntentResolutionResult *)&v26 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasSearchForMediaIntentMediaItemsUnsupportedReason = [payloadUnsupported hasSearchForMediaIntentMediaItemsUnsupportedReason];

    if (hasSearchForMediaIntentMediaItemsUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      searchForMediaIntentMediaItemsUnsupportedReason = [payloadUnsupported2 searchForMediaIntentMediaItemsUnsupportedReason];
      v12 = 1001;
      v13 = 1002;
      v14 = 1003;
      if (searchForMediaIntentMediaItemsUnsupportedReason != 103)
      {
        v14 = 0;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 102)
      {
        v13 = v14;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 101)
      {
        v12 = v13;
      }

      v15 = 7;
      v16 = 8;
      v17 = 1000;
      if (searchForMediaIntentMediaItemsUnsupportedReason != 100)
      {
        v17 = 0;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 8)
      {
        v16 = v17;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 7)
      {
        v15 = v16;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason <= 100)
      {
        v12 = v15;
      }

      v18 = 4;
      v19 = 5;
      v20 = 6;
      if (searchForMediaIntentMediaItemsUnsupportedReason != 6)
      {
        v20 = 0;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 5)
      {
        v19 = v20;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 4)
      {
        v18 = v19;
      }

      v21 = 1;
      v22 = 2;
      v23 = 3;
      if (searchForMediaIntentMediaItemsUnsupportedReason != 3)
      {
        v23 = 0;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 2)
      {
        v22 = v23;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason != 1)
      {
        v21 = v22;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason <= 3)
      {
        v18 = v21;
      }

      if (searchForMediaIntentMediaItemsUnsupportedReason <= 6)
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