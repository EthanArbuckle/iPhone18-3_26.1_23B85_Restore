@interface INPlayMediaMediaItemResolutionResult
+ (INPlayMediaMediaItemResolutionResult)unsupportedForReason:(INPlayMediaMediaItemUnsupportedReason)reason;
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INPlayMediaMediaItemResolutionResult

+ (INPlayMediaMediaItemResolutionResult)unsupportedForReason:(INPlayMediaMediaItemUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___INPlayMediaMediaItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successesWithResolvedMediaItems_, resolvedMediaItems);

  return v3;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v15.receiver = self;
  v15.super_class = INPlayMediaMediaItemResolutionResult;
  v4 = [(INIntentResolutionResult *)&v15 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    unsupportedReason = [(INIntentResolutionResult *)self unsupportedReason];
    if (unsupportedReason <= 6)
    {
      if (unsupportedReason == 6)
      {
        v9 = 6;
      }

      else
      {
        v9 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 5)
      {
        v10 = 5;
      }

      else
      {
        v10 = v9;
      }

      if (unsupportedReason == 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v10;
      }

      if (unsupportedReason == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0x7FFFFFFF;
      }

      if (unsupportedReason == 2)
      {
        v12 = 2;
      }

      if (unsupportedReason == 1)
      {
        v12 = 1;
      }

      if (unsupportedReason <= 3)
      {
        v8 = v12;
      }

      else
      {
        v8 = v11;
      }
    }

    else
    {
      switch(unsupportedReason)
      {
        case 1000:
          v8 = 9;
          break;
        case 1001:
          v8 = 100;
          break;
        case 1002:
          v8 = 101;
          break;
        case 1003:
          v8 = 102;
          break;
        case 1004:
          v8 = 103;
          break;
        case 1005:
          v8 = 104;
          break;
        case 1006:
          v8 = 105;
          break;
        case 1007:
          v8 = 1000;
          break;
        case 1008:
          v8 = 1001;
          break;
        case 1009:
          v8 = 1002;
          break;
        case 1010:
          v8 = 1003;
          break;
        case 1011:
          v8 = 1004;
          break;
        case 1012:
          v8 = 1005;
          break;
        case 1013:
          v8 = 1006;
          break;
        default:
          if (unsupportedReason == 8)
          {
            v13 = 8;
          }

          else
          {
            v13 = 0x7FFFFFFF;
          }

          if (unsupportedReason == 7)
          {
            v8 = 7;
          }

          else
          {
            v8 = v13;
          }

          break;
      }
    }

    [payloadUnsupported2 setPlayMediaIntentMediaItemsUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v35.receiver = self;
  v35.super_class = INPlayMediaMediaItemResolutionResult;
  v7 = [(INIntentResolutionResult *)&v35 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasPlayMediaIntentMediaItemsUnsupportedReason = [payloadUnsupported hasPlayMediaIntentMediaItemsUnsupportedReason];

    if (hasPlayMediaIntentMediaItemsUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      playMediaIntentMediaItemsUnsupportedReason = [payloadUnsupported2 playMediaIntentMediaItemsUnsupportedReason];
      if (playMediaIntentMediaItemsUnsupportedReason > 101)
      {
        v12 = 1011;
        v24 = 1012;
        v25 = 1013;
        if (playMediaIntentMediaItemsUnsupportedReason != 1006)
        {
          v25 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 1005)
        {
          v24 = v25;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 1004)
        {
          v12 = v24;
        }

        v26 = 1008;
        v27 = 1009;
        v28 = 1010;
        if (playMediaIntentMediaItemsUnsupportedReason != 1003)
        {
          v28 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 1002)
        {
          v27 = v28;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 1001)
        {
          v26 = v27;
        }

        if (playMediaIntentMediaItemsUnsupportedReason <= 1003)
        {
          v12 = v26;
        }

        v18 = 1005;
        v29 = 1006;
        v30 = 1007;
        if (playMediaIntentMediaItemsUnsupportedReason != 1000)
        {
          v30 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 105)
        {
          v29 = v30;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 104)
        {
          v18 = v29;
        }

        v31 = 1003;
        v32 = 1004;
        if (playMediaIntentMediaItemsUnsupportedReason != 103)
        {
          v32 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 102)
        {
          v31 = v32;
        }

        if (playMediaIntentMediaItemsUnsupportedReason <= 103)
        {
          v18 = v31;
        }

        v23 = playMediaIntentMediaItemsUnsupportedReason <= 1000;
      }

      else
      {
        v12 = 1000;
        v13 = 1001;
        v14 = 1002;
        if (playMediaIntentMediaItemsUnsupportedReason != 101)
        {
          v14 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 100)
        {
          v13 = v14;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 9)
        {
          v12 = v13;
        }

        v15 = 6;
        v16 = 7;
        v17 = 8;
        if (playMediaIntentMediaItemsUnsupportedReason != 8)
        {
          v17 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 7)
        {
          v16 = v17;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 6)
        {
          v15 = v16;
        }

        if (playMediaIntentMediaItemsUnsupportedReason <= 8)
        {
          v12 = v15;
        }

        v18 = 3;
        v19 = 4;
        v20 = 5;
        if (playMediaIntentMediaItemsUnsupportedReason != 5)
        {
          v20 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 4)
        {
          v19 = v20;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 3)
        {
          v18 = v19;
        }

        v21 = 1;
        v22 = 2;
        if (playMediaIntentMediaItemsUnsupportedReason != 2)
        {
          v22 = 0;
        }

        if (playMediaIntentMediaItemsUnsupportedReason != 1)
        {
          v21 = v22;
        }

        if (playMediaIntentMediaItemsUnsupportedReason <= 2)
        {
          v18 = v21;
        }

        v23 = playMediaIntentMediaItemsUnsupportedReason <= 5;
      }

      if (v23)
      {
        v33 = v18;
      }

      else
      {
        v33 = v12;
      }

      [v7 setUnsupportedReason:v33];
    }
  }

  return v7;
}

@end