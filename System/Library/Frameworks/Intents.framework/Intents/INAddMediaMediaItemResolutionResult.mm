@interface INAddMediaMediaItemResolutionResult
+ (INAddMediaMediaItemResolutionResult)unsupportedForReason:(INAddMediaMediaItemUnsupportedReason)reason;
+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INAddMediaMediaItemResolutionResult

+ (INAddMediaMediaItemResolutionResult)unsupportedForReason:(INAddMediaMediaItemUnsupportedReason)reason
{
  v4 = [a1 unsupported];
  [v4 setUnsupportedReason:reason];

  return v4;
}

+ (NSArray)successesWithResolvedMediaItems:(NSArray *)resolvedMediaItems
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___INAddMediaMediaItemResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successesWithResolvedMediaItems_, resolvedMediaItems);

  return v3;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v21.receiver = self;
  v21.super_class = INAddMediaMediaItemResolutionResult;
  v4 = [(INIntentResolutionResult *)&v21 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v5 = [v4 payloadUnsupported];
    [v5 setReason:1000];

    v6 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason];
    if (v7 <= 7)
    {
      if (v7 == 7)
      {
        v16 = 7;
      }

      else
      {
        v16 = 0x7FFFFFFF;
      }

      if (v7 == 6)
      {
        v9 = 6;
      }

      else
      {
        v9 = v16;
      }

      if (v7 == 5)
      {
        v17 = 5;
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      if (v7 == 4)
      {
        v18 = 4;
      }

      else
      {
        v18 = v17;
      }

      if (v7 <= 5)
      {
        v9 = v18;
      }

      if (v7 == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = 0x7FFFFFFF;
      }

      if (v7 == 2)
      {
        v14 = 2;
      }

      if (v7 == 1)
      {
        v14 = 1;
      }

      v15 = v7 <= 3;
    }

    else
    {
      if (v7 == 1006)
      {
        v8 = 106;
      }

      else
      {
        v8 = 0x7FFFFFFF;
      }

      if (v7 == 1005)
      {
        v9 = 105;
      }

      else
      {
        v9 = v8;
      }

      if (v7 == 1004)
      {
        v10 = 104;
      }

      else
      {
        v10 = 0x7FFFFFFF;
      }

      if (v7 == 1003)
      {
        v11 = 103;
      }

      else
      {
        v11 = v10;
      }

      if (v7 <= 1004)
      {
        v9 = v11;
      }

      if (v7 == 1002)
      {
        v12 = 102;
      }

      else
      {
        v12 = 0x7FFFFFFF;
      }

      if (v7 == 1001)
      {
        v13 = 101;
      }

      else
      {
        v13 = v12;
      }

      if (v7 == 1000)
      {
        v14 = 100;
      }

      else
      {
        v14 = 0x7FFFFFFF;
      }

      if (v7 == 8)
      {
        v14 = 8;
      }

      if (v7 > 1000)
      {
        v14 = v13;
      }

      v15 = v7 <= 1002;
    }

    if (v15)
    {
      v19 = v14;
    }

    else
    {
      v19 = v9;
    }

    [v6 setAddMediaIntentMediaItemsUnsupportedReason:v19];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v28.receiver = self;
  v28.super_class = INAddMediaMediaItemResolutionResult;
  v7 = [(INIntentResolutionResult *)&v28 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadUnsupported];
    v9 = [v8 hasAddMediaIntentMediaItemsUnsupportedReason];

    if (v9)
    {
      v10 = [v6 payloadUnsupported];
      v11 = [v10 addMediaIntentMediaItemsUnsupportedReason];
      if (v11 <= 7)
      {
        v12 = 6;
        v21 = 7;
        if (v11 != 7)
        {
          v21 = 0;
        }

        if (v11 != 6)
        {
          v12 = v21;
        }

        v22 = 4;
        v23 = 5;
        if (v11 != 5)
        {
          v23 = 0;
        }

        if (v11 != 4)
        {
          v22 = v23;
        }

        if (v11 <= 5)
        {
          v12 = v22;
        }

        v16 = 1;
        v24 = 2;
        v25 = 3;
        if (v11 != 3)
        {
          v25 = 0;
        }

        if (v11 != 2)
        {
          v24 = v25;
        }

        if (v11 != 1)
        {
          v16 = v24;
        }

        v20 = v11 <= 3;
      }

      else
      {
        v12 = 1005;
        v13 = 1006;
        if (v11 != 106)
        {
          v13 = 0;
        }

        if (v11 != 105)
        {
          v12 = v13;
        }

        v14 = 1003;
        v15 = 1004;
        if (v11 != 104)
        {
          v15 = 0;
        }

        if (v11 != 103)
        {
          v14 = v15;
        }

        if (v11 <= 104)
        {
          v12 = v14;
        }

        v16 = 1001;
        v17 = 1002;
        if (v11 != 102)
        {
          v17 = 0;
        }

        if (v11 != 101)
        {
          v16 = v17;
        }

        v18 = 8;
        v19 = 1000;
        if (v11 != 100)
        {
          v19 = 0;
        }

        if (v11 != 8)
        {
          v18 = v19;
        }

        if (v11 <= 100)
        {
          v16 = v18;
        }

        v20 = v11 <= 102;
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