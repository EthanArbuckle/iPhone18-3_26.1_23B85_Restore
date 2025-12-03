@interface NSUserActivity(INCacheSupport)
+ (void)buildFromCachePayload:()INCacheSupport identifier:completion:;
- (void)generateCachePayloadWithCompletion:()INCacheSupport;
@end

@implementation NSUserActivity(INCacheSupport)

- (void)generateCachePayloadWithCompletion:()INCacheSupport
{
  v4 = a3;
  if (v4)
  {
    [self _intentsPrepareForEncoding];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__NSUserActivity_INCacheSupport__generateCachePayloadWithCompletion___block_invoke;
    v5[3] = &unk_1E7287288;
    v6 = v4;
    [self _createUserActivityDataWithOptions:0 completionHandler:v5];
  }
}

+ (void)buildFromCachePayload:()INCacheSupport identifier:completion:
{
  v6 = a5;
  if (v6)
  {
    v7 = [a3 objectForKey:@"userActivityData"];
    v8 = INCacheableGetSerializationQueue();
    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__NSUserActivity_INCacheSupport__buildFromCachePayload_identifier_completion___block_invoke;
      block[3] = &unk_1E7287140;
      v9 = &v13;
      v13 = v7;
      v14 = v6;
      dispatch_async(v8, block);

      v8 = v14;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __78__NSUserActivity_INCacheSupport__buildFromCachePayload_identifier_completion___block_invoke_2;
      v10[3] = &unk_1E72838B8;
      v9 = &v11;
      v11 = v6;
      dispatch_async(v8, v10);
    }
  }
}

@end