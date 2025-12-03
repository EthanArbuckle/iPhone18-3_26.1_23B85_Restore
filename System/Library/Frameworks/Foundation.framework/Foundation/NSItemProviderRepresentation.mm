@interface NSItemProviderRepresentation
- (NSItemProviderRepresentation)initWithType:(id)type preferredRepresentation:(int64_t)representation loader:(id)loader;
- (NSItemProviderRepresentation)initWithType_v2:(id)type_v2 preferredRepresentation:(int64_t)representation loader:(id)loader;
- (id)_loadWithOptions:(id)options completionBlock:(id)block;
- (id)copyWithDoNothingLoaderBlock;
- (id)loadDataWithOptions:(id)options completionHandler:(id)handler;
- (id)loadDataWithOptions_v2:(id)options_v2 completionHandler:(id)handler;
- (id)loadFileCopyWithOptions:(id)options completionHandler:(id)handler;
- (id)loadFileCopyWithOptions_v2:(id)options_v2 completionHandler:(id)handler;
- (id)loadOpenInPlaceWithOptions:(id)options completionHandler:(id)handler;
- (id)loadOpenInPlaceWithOptions_v2:(id)options_v2 completionHandler:(id)handler;
- (id)loadWithOptions:(id)options completionHandler:(id)handler;
- (id)loadWithOptions_v2:(id)options_v2 completionHandler:(id)handler;
- (id)performProgressTrackingWithLoaderBlock:(id)block onCancelCallback:(id)callback;
- (void)dealloc;
- (void)setLoaderBlock:(id)block;
@end

@implementation NSItemProviderRepresentation

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSItemProviderRepresentation;
  [(NSItemProviderRepresentation *)&v3 dealloc];
}

- (NSItemProviderRepresentation)initWithType_v2:(id)type_v2 preferredRepresentation:(int64_t)representation loader:(id)loader
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSItemProviderRepresentation;
  v8 = [(NSItemProviderRepresentation *)&v10 init];
  if (v8)
  {
    v8->_typeIdentifier = [type_v2 copy];
    v8->_loader = [loader copy];
    v8->_visibility = 0;
    v8->_preferredRepresentation = representation;
  }

  return v8;
}

- (NSItemProviderRepresentation)initWithType:(id)type preferredRepresentation:(int64_t)representation loader:(id)loader
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__NSItemProviderRepresentation_initWithType_preferredRepresentation_loader___block_invoke;
  v6[3] = &unk_1E69F56E0;
  v6[4] = loader;
  return [(NSItemProviderRepresentation *)self initWithType_v2:type preferredRepresentation:representation loader:v6];
}

uint64_t __76__NSItemProviderRepresentation_initWithType_preferredRepresentation_loader___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSItemProviderRepresentation_initWithType_preferredRepresentation_loader___block_invoke_2;
  v8[3] = &unk_1E69F56B8;
  v8[4] = a3;
  return (*(v6 + 16))(v6, a2, v8, a4, a5, a6);
}

uint64_t __76__NSItemProviderRepresentation_initWithType_preferredRepresentation_loader___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [NSItemRepresentationLoadResult resultWithData:a2 urlWrapper:a3 cleanupHandler:a5 error:a4];
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (id)copyWithDoNothingLoaderBlock
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(objc_opt_class());
  typeIdentifier = self->_typeIdentifier;
  preferredRepresentation = self->_preferredRepresentation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__NSItemProviderRepresentation_copyWithDoNothingLoaderBlock__block_invoke;
  v7[3] = &unk_1E69F7CC8;
  v7[4] = self;
  return [v3 initWithType_v2:typeIdentifier preferredRepresentation:preferredRepresentation loader:v7];
}

uint64_t __60__NSItemProviderRepresentation_copyWithDoNothingLoaderBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__NSItemProviderRepresentation_copyWithDoNothingLoaderBlock__block_invoke_2;
    block[3] = &unk_1E69F3910;
    block[4] = *(a1 + 32);
    block[5] = a3;
    _NSIPDispatchAsyncCallback(block);
  }

  return 0;
}

uint64_t __60__NSItemProviderRepresentation_copyWithDoNothingLoaderBlock__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [NSItemRepresentationLoadResult resultWithError:_NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), 0)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)performProgressTrackingWithLoaderBlock:(id)block onCancelCallback:(id)callback
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke;
  v11[3] = &unk_1E69F7CF0;
  v11[4] = callback;
  v11[5] = v12;
  [(NSProgress *)v6 setCancellationHandler:v11];
  v7 = [NSProgress discreteProgressWithTotalUnitCount:100];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_3;
  v10[3] = &unk_1E69F7D40;
  v10[4] = v7;
  v10[5] = v12;
  v8 = (*(block + 2))(block, v10);
  if (v8)
  {
    [(NSProgress *)v6 addChild:v8 withPendingUnitCount:100];
  }

  else
  {
    [(NSProgress *)v6 addChild:v7 withPendingUnitCount:100];
  }

  _Block_object_dispose(v12, 8);
  return v6;
}

void __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_2;
  block[3] = &unk_1E69F7CF0;
  v2 = *(a1 + 32);
  _NSIPDispatchAsyncCallback(block);
}

uint64_t __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_4;
  v4[3] = &unk_1E69F7D18;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[5] = a2;
  v4[6] = v3;
  v4[4] = v2;
  _NSIPDispatchAsyncCallback(v4);
}

uint64_t __88__NSItemProviderRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (id)_loadWithOptions:(id)options completionBlock:(id)block
{
  v9[6] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = __Block_byref_object_copy__26;
  v9[4] = __Block_byref_object_dispose__26;
  v9[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke;
  v8[3] = &unk_1E69F7D68;
  v8[4] = v9;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_2;
  v7[3] = &unk_1E69F7E30;
  v7[4] = self;
  v7[5] = options;
  v7[6] = block;
  v7[7] = v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_4_69;
  v6[3] = &unk_1E69F7D90;
  v6[4] = block;
  v6[5] = v8;
  v4 = [(NSItemProviderRepresentation *)self performProgressTrackingWithLoaderBlock:v7 onCancelCallback:v6];
  _Block_object_dispose(v9, 8);
  return v4;
}

void __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) setCompletedUnitCount:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "totalUnitCount")}];
  if (a2)
  {
    (*(a2 + 16))(a2);
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
}

uint64_t __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a2 cleanupHandler];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_4;
  v7[3] = &unk_1E69F7DB8;
  v7[4] = a2;
  v8 = *(a1 + 40);
  v9 = v4;
  return (*(v5 + 16))(v5, v7);
}

uint64_t __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) copy];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_5;
    v5[3] = &unk_1E69F7D90;
    v6 = *(a1 + 48);
    [v2 setCleanupHandler:v5];
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }
}

void __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_5(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_6;
  block[3] = &unk_1E69F7D90;
  v2 = *(a1 + 32);
  _NSIPDispatchAsyncCallback(block);
}

uint64_t __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_65(void *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (a1[5])
  {
    v2 = [NSItemRepresentationLoadResult resultWithError:_NSIPCannotLoadRepresentationError(*(a1[4] + 16), 0)];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_2_66;
    v5[3] = &unk_1E69F40C0;
    v5[4] = a1[6];
    [(NSItemRepresentationLoadResult *)v2 setCleanupHandler:v5];
    return (*(a1[5] + 16))();
  }

  else
  {
    v4 = *(a1[6] + 16);

    return v4();
  }
}

void __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_2_66(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_3_67;
  v1[3] = &unk_1E69F40C0;
  v1[4] = *(a1 + 32);
  _NSIPDispatchAsyncCallback(v1);
}

uint64_t __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_4_69(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [NSItemRepresentationLoadResult resultWithError:_NSIPDataTransferCancelledError(0)];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_5_70;
    v5[3] = &unk_1E69F40C0;
    v5[4] = *(a1 + 40);
    [(NSItemRepresentationLoadResult *)v2 setCleanupHandler:v5];
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }
}

void __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_5_70(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __65__NSItemProviderRepresentation__loadWithOptions_completionBlock___block_invoke_6_71;
  v1[3] = &unk_1E69F40C0;
  v1[4] = *(a1 + 32);
  _NSIPDispatchAsyncCallback(v1);
}

- (id)loadWithOptions_v2:(id)options_v2 completionHandler:(id)handler
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__NSItemProviderRepresentation_loadWithOptions_v2_completionHandler___block_invoke;
  v5[3] = &unk_1E69F7E58;
  v5[4] = handler;
  return [(NSItemProviderRepresentation *)self _loadWithOptions:options_v2 completionBlock:v5];
}

void __69__NSItemProviderRepresentation_loadWithOptions_v2_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NSItemProviderRepresentation_loadWithOptions_v2_completionHandler___block_invoke_2;
    block[3] = &unk_1E69F3910;
    block[4] = a2;
    block[5] = v2;
    _NSIPDispatchAsyncCallback(block);
  }
}

- (id)loadWithOptions:(id)options completionHandler:(id)handler
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__NSItemProviderRepresentation_loadWithOptions_completionHandler___block_invoke;
  v5[3] = &unk_1E69F7E58;
  v5[4] = handler;
  return [(NSItemProviderRepresentation *)self loadWithOptions_v2:options completionHandler:v5];
}

uint64_t __66__NSItemProviderRepresentation_loadWithOptions_completionHandler___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v4 = [a2 data];
    v5 = [a2 urlWrapper];
    v6 = [a2 error];
    v7 = [a2 cleanupHandler];
    v8 = *(v2 + 16);

    return v8(v2, v4, v5, v6, v7);
  }

  return result;
}

- (void)setLoaderBlock:(id)block
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__NSItemProviderRepresentation_setLoaderBlock___block_invoke;
  v3[3] = &unk_1E69F56E0;
  v3[4] = block;
  [(NSItemProviderRepresentation *)self setLoaderBlock_v2:v3];
}

uint64_t __47__NSItemProviderRepresentation_setLoaderBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__NSItemProviderRepresentation_setLoaderBlock___block_invoke_2;
  v8[3] = &unk_1E69F7E80;
  v8[4] = a3;
  return (*(v6 + 16))(v6, a2, v8, a4, a5, a6);
}

uint64_t __47__NSItemProviderRepresentation_setLoaderBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = [NSItemRepresentationLoadResult resultWithData:a2 urlWrapper:a3 cleanupHandler:a6 error:a5];
  v8 = *(v6 + 16);

  return v8(v6, v7);
}

- (id)loadDataWithOptions_v2:(id)options_v2 completionHandler:(id)handler
{
  v14[7] = *MEMORY[0x1E69E9840];
  v7 = [NSProgress discreteProgressWithTotalUnitCount:100];
  if ([(NSItemProviderRepresentation *)self preferredRepresentation])
  {
    v8 = [NSProgress discreteProgressWithTotalUnitCount:100];
  }

  else
  {
    v8 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke;
  v14[3] = &unk_1E69F7F70;
  v14[5] = v8;
  v14[6] = handler;
  v14[4] = self;
  v9 = [(NSItemProviderRepresentation *)self _loadWithOptions:options_v2 completionBlock:v14];
  if (v8)
  {
    if ([(NSItemProviderRepresentation *)self preferredRepresentation]== 2)
    {
      [(NSProgress *)v7 addChild:v9 withPendingUnitCount:10];
      v10 = v7;
      v11 = v8;
      v12 = 90;
    }

    else
    {
      [(NSProgress *)v7 addChild:v9 withPendingUnitCount:50];
      v10 = v7;
      v11 = v8;
      v12 = 50;
    }
  }

  else
  {
    v10 = v7;
    v11 = v9;
    v12 = 100;
  }

  [(NSProgress *)v10 addChild:v11 withPendingUnitCount:v12];
  return v7;
}

void __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3052000000;
  v18[2] = __Block_byref_object_copy__26;
  v18[3] = __Block_byref_object_dispose__26;
  v18[4] = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3052000000;
  v16[2] = __Block_byref_object_copy__26;
  v16[3] = __Block_byref_object_dispose__26;
  v16[4] = [a2 error];
  if (v4)
  {
    goto LABEL_5;
  }

  if ([a2 data])
  {
    v5 = [a2 data];
    v6 = v18;
LABEL_4:
    *(*v6 + 40) = v5;
    goto LABEL_5;
  }

  if ([a2 urlWrapper])
  {
    v11 = [objc_msgSend(a2 "urlWrapper")];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke_2;
    v14[3] = &unk_1E69F7ED0;
    v14[4] = *(a1 + 32);
    v14[5] = a2;
    v14[6] = *(a1 + 48);
    [*(a1 + 40) addChild:_NSIPCoordinatedReadForUploading(v11 withPendingUnitCount:{v14), 100}];
    goto LABEL_6;
  }

  v12 = _NSIPNoLoaderAvailableError(*(*(a1 + 32) + 16), 0);
  if (v12)
  {

    v5 = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), v12);
    v6 = v16;
    goto LABEL_4;
  }

LABEL_5:
  v7 = *(v18[0] + 40);
  v8 = *(v16[0] + 40);
  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  v9 = [a2 cleanupHandler];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke_4;
  block[3] = &unk_1E69F7EF8;
  v10 = *(a1 + 48);
  block[4] = a2;
  block[5] = v10;
  block[7] = &v17;
  block[8] = &v15;
  block[6] = v9;
  _NSIPDispatchAsyncCallback(block);
LABEL_6:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v17, 8);
}

void __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke_2(uint64_t a1, void *a2, NSError *a3)
{
  RepresentationError = a3;
  v5 = 0;
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a3;
  v6 = a3;
  if (a2 && !a3)
  {
    v13 = 0;
    v7 = _NSIPCloneURLToTemporaryFolder(a2, *(*(a1 + 32) + 16), 0, &v13, v14);
    v5 = 0;
    v8 = v13;
    if (v13 && !v14[0])
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:v14];
      v8 = v13;
    }

    if (v8)
    {
      v9 = +[NSFileManager defaultManager];
      [(NSFileManager *)v9 removeItemAtURL:v13 error:0];
    }

    v6 = v14[0];
  }

  if (v6)
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), v6);
  }

  if (!(v5 | RepresentationError))
  {
    RepresentationError = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), 0);
  }

  v10 = [*(a1 + 40) cleanupHandler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke_3;
  v12[3] = &unk_1E69F7EA8;
  v11 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v12[5] = v5;
  v12[6] = RepresentationError;
  v12[7] = v11;
  v12[8] = v10;
  _NSIPDispatchAsyncCallback(v12);
}

uint64_t __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) copyWithData:*(a1 + 40) urlWrapper:0 cleanupHandler:0 error:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  result = *(a1 + 64);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __73__NSItemProviderRepresentation_loadDataWithOptions_v2_completionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) copyWithData:*(*(*(a1 + 56) + 8) + 40) urlWrapper:0 cleanupHandler:0 error:*(*(*(a1 + 64) + 8) + 40)];
    (*(*(a1 + 40) + 16))();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)loadDataWithOptions:(id)options completionHandler:(id)handler
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__NSItemProviderRepresentation_loadDataWithOptions_completionHandler___block_invoke;
  v5[3] = &unk_1E69F7E58;
  v5[4] = handler;
  return [(NSItemProviderRepresentation *)self loadDataWithOptions_v2:options completionHandler:v5];
}

uint64_t __70__NSItemProviderRepresentation_loadDataWithOptions_completionHandler___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v4 = [a2 data];
    v5 = [a2 error];
    v6 = *(v2 + 16);

    return v6(v2, v4, v5);
  }

  return result;
}

- (id)loadFileCopyWithOptions_v2:(id)options_v2 completionHandler:(id)handler
{
  v14[7] = *MEMORY[0x1E69E9840];
  v7 = [NSProgress discreteProgressWithTotalUnitCount:100];
  if ([(NSItemProviderRepresentation *)self preferredRepresentation])
  {
    v8 = [NSProgress progressWithTotalUnitCount:100];
  }

  else
  {
    v8 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke;
  v14[3] = &unk_1E69F7F70;
  v14[5] = v8;
  v14[6] = handler;
  v14[4] = self;
  v9 = [(NSItemProviderRepresentation *)self _loadWithOptions:options_v2 completionBlock:v14];
  if (v8)
  {
    if ([(NSItemProviderRepresentation *)self preferredRepresentation]== 2)
    {
      [(NSProgress *)v7 addChild:v9 withPendingUnitCount:10];
      v10 = v7;
      v11 = v8;
      v12 = 90;
    }

    else
    {
      [(NSProgress *)v7 addChild:v9 withPendingUnitCount:50];
      v10 = v7;
      v11 = v8;
      v12 = 50;
    }
  }

  else
  {
    v10 = v7;
    v11 = v9;
    v12 = 100;
  }

  [(NSProgress *)v10 addChild:v11 withPendingUnitCount:v12];
  return v7;
}

uint64_t __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a2 error];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke_2;
  v21 = &unk_1E69F7F48;
  v5 = *(a1 + 48);
  v22 = a2;
  v23 = v5;
  if (v4)
  {
    goto LABEL_2;
  }

  if ([a2 data])
  {
    v9 = _NSIPLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Load resulted in data but a file was requested; NSItemProvider will write the data to a temporary file", buf, 2u);
    }

    v10 = _NSIPCreateTemporaryFolder();
    if (v10)
    {
      v7 = v10;
      v11 = softLinkUTTypeCopyDescription_0(*(*(a1 + 32) + 16));
      if (![v11 length])
      {
        v11 = [_NSFoundationBundle() localizedStringForKey:@"Document" value:&stru_1EEEFDF90 table:@"Extension"];
      }

      v8 = [v7 URLByAppendingPathComponent:{_NSIPFilenameWithProperExtension(v11, *(*(a1 + 32) + 16))}];
      [objc_msgSend(a2 "data")];
      goto LABEL_21;
    }

    v16 = _NSIPLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, "Unable to create NSItemProvider temporary directory", buf, 2u);
    }

    RepresentationError = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), 0);
LABEL_18:
    if (RepresentationError)
    {
      v4 = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), RepresentationError);
LABEL_2:
      v6 = v4;
      v7 = 0;
      v8 = 0;
LABEL_22:
      [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
      return (v20)(v19, v8, v6, v7, [a2 cleanupHandler]);
    }

    v7 = 0;
    v8 = 0;
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  if (![a2 urlWrapper])
  {
    RepresentationError = _NSIPNoLoaderAvailableError(*(*(a1 + 32) + 16), 0);
    goto LABEL_18;
  }

  v12 = _NSIPLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = [objc_msgSend(a2 "urlWrapper")];
    _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "Load resulted in a URL (%@) and a copied file was requested; NSItemProvider will copy the contents of the file to a temporary directory", buf, 0xCu);
  }

  v13 = [objc_msgSend(a2 "urlWrapper")];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke_85;
  v18[3] = &unk_1E69F7ED0;
  v18[4] = *(a1 + 32);
  v18[5] = a2;
  v18[6] = v19;
  v14 = _NSIPCoordinatedRead(v13, v18);
  [*(a1 + 40) setCompletedUnitCount:50];
  return [*(a1 + 40) addChild:v14 withPendingUnitCount:50];
}

void __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[10] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke_3;
  block[3] = &unk_1E69F7F20;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  block[4] = a2;
  block[5] = v6;
  block[6] = a3;
  block[7] = a4;
  block[8] = v5;
  block[9] = a5;
  _NSIPDispatchAsyncCallback(block);
}

uint64_t __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    if (*(a1 + 32))
    {
      v2 = [[NSSecurityScopedURLWrapper alloc] initWithURL:*(a1 + 32)];
    }

    else
    {
      v2 = 0;
    }

    v3 = [*(a1 + 40) copyWithData:0 urlWrapper:v2 cleanupHandler:0 error:*(a1 + 48)];
    (*(*(a1 + 64) + 16))();
  }

  if (*(a1 + 56))
  {
    v4 = _NSIPLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 56);
      v7 = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "Removing temporary folder at %@ created to provide a copied file or file representing data for the loader", &v7, 0xCu);
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(a1 + 56), 0];
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __77__NSItemProviderRepresentation_loadFileCopyWithOptions_v2_completionHandler___block_invoke_85(uint64_t a1, void *a2, NSError *a3)
{
  RepresentationError = a3;
  v5 = 0;
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = a3;
  if (a2 && !a3)
  {
    v6 = _NSIPCloneURLToTemporaryFolder(a2, *(*(a1 + 32) + 16), 0, &v11, v12);
    if (v6)
    {
      v7 = v12[0] == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v5 = v6;
      RepresentationError = 0;
    }

    else
    {
      v8 = [objc_msgSend(*(a1 + 40) "urlWrapper")];
      v9 = _NSIPCannotCopyFileError(v8, 0, v12[0]);
      v12[0] = v9;
      if (v9)
      {
        RepresentationError = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), v9);
      }

      else
      {
        RepresentationError = 0;
      }

      v5 = 0;
    }
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), v5, RepresentationError, v11, [*(a1 + 40) cleanupHandler]);
}

- (id)loadFileCopyWithOptions:(id)options completionHandler:(id)handler
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__NSItemProviderRepresentation_loadFileCopyWithOptions_completionHandler___block_invoke;
  v5[3] = &unk_1E69F7E58;
  v5[4] = handler;
  return [(NSItemProviderRepresentation *)self loadFileCopyWithOptions_v2:options completionHandler:v5];
}

uint64_t __74__NSItemProviderRepresentation_loadFileCopyWithOptions_completionHandler___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v4 = [objc_msgSend(a2 "urlWrapper")];
    v5 = [a2 error];
    v6 = *(v2 + 16);

    return v6(v2, v4, v5);
  }

  return result;
}

- (id)loadOpenInPlaceWithOptions_v2:(id)options_v2 completionHandler:(id)handler
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke;
  v5[3] = &unk_1E69F8008;
  v5[4] = self;
  v5[5] = handler;
  return [(NSItemProviderRepresentation *)self _loadWithOptions:options_v2 completionBlock:v5];
}

void __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  RepresentationError = [a2 error];
  v5 = [a2 cleanupHandler];
  if (RepresentationError)
  {
    v6 = 0;
LABEL_23:
    v15 = 0;
LABEL_24:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_94;
    block[3] = &unk_1E69F7FE0;
    v16 = *(a1 + 40);
    block[4] = v6;
    block[5] = a2;
    block[6] = RepresentationError;
    block[7] = v16;
    v24 = v15;
    block[8] = v5;
    _NSIPDispatchAsyncCallback(block);
    return;
  }

  v26 = 0;
  if ([a2 data])
  {
    v7 = _NSIPLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Load resulted in data but a file was requested; NSItemProvider will write the data to a temporary file", buf, 2u);
    }

    v6 = _NSIPTemporaryFileName(*(*(a1 + 32) + 16), &v26);
    if (!v6)
    {
      TemporaryFileError = _NSIPCannotCreateTemporaryFileError(0, v26);
      v9 = TemporaryFileError;
LABEL_19:
      v26 = TemporaryFileError;
LABEL_20:
      if (v9)
      {
        RepresentationError = _NSIPCannotLoadRepresentationError(*(*(a1 + 32) + 16), v9);
      }

      else
      {
        RepresentationError = 0;
      }

      goto LABEL_23;
    }

    v8 = [objc_msgSend(a2 "data")];
    v9 = v26;
    if (v8)
    {
      goto LABEL_20;
    }

    TemporaryFileError = _NSIPCannotCopyFileError(0, 0, v26);
LABEL_18:
    v9 = TemporaryFileError;
    v6 = 0;
    goto LABEL_19;
  }

  if (![a2 urlWrapper])
  {
    v14 = _NSIPLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = [a2 error];
      _os_log_debug_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEBUG, "Load did not provide a result value; error: %@", buf, 0xCu);
    }

    TemporaryFileError = _NSIPNoLoaderAvailableError(*(*(a1 + 32) + 16), 0);
    goto LABEL_18;
  }

  if (([objc_msgSend(a2 "urlWrapper")] & 1) == 0 && *(*(a1 + 32) + 32) != 1)
  {
    v17 = _NSIPLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = [objc_msgSend(a2 "urlWrapper")];
      _os_log_debug_impl(&dword_18075C000, v17, OS_LOG_TYPE_DEBUG, "Load resulted in a URL (%@) that can be opened in-place and an in-place file was requested; NSItemProvider will vend the provided URL to load in-place", buf, 0xCu);
    }

    v6 = [objc_msgSend(a2 "urlWrapper")];
    RepresentationError = 0;
    v15 = 1;
    goto LABEL_24;
  }

  v11 = _NSIPLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = [objc_msgSend(a2 "urlWrapper")];
    v19 = [objc_msgSend(a2 "urlWrapper")];
    v20 = @"NO";
    v21 = *(*(a1 + 32) + 32);
    if (v19)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138412802;
    v28 = v18;
    if (v21 == 1)
    {
      v20 = @"YES";
    }

    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v20;
    _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, "Load resulted in a URL (%@) and an in-place file was requested, however an in-place read cannot be performed (readonly=%@, prefersCopy=%@); NSItemProvider will perform a coordinated read and copy the contents of the file to a temporary directory", buf, 0x20u);
  }

  v12 = [objc_msgSend(a2 "urlWrapper")];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_92;
  v25[3] = &unk_1E69F7F98;
  v13 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v25[5] = a2;
  v25[6] = v13;
  v25[7] = v5;
  _NSIPCoordinatedRead(v12, v25);
}

void __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_92(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (a2 && !a3)
  {
    v13 = 0;
    v5 = _NSIPCloneURLToTemporaryFolder(a2, *(*(a1 + 32) + 16), 0, &v14, &v13);
    if (v5)
    {
      v6 = v13 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = v5;
      v8 = _NSIPLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v16 = a2;
        v17 = 2112;
        v18 = v7;
        _os_log_debug_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEBUG, "Successfully copied loaded result (%@) to a temporary location (%@)", buf, 0x16u);
      }

      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else if (v13)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v13 = _NSIPCannotCopyFileError([objc_msgSend(*(a1 + 40) "urlWrapper")], 0, 0);
      if (!v13)
      {
LABEL_16:
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_93;
        block[3] = &unk_1E69F7EA8;
        v10 = *(a1 + 40);
        block[4] = v7;
        block[5] = v10;
        block[6] = 0;
        v12 = *(a1 + 48);
        _NSIPDispatchAsyncCallback(block);
        return;
      }
    }

    v9 = _NSIPLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = a2;
      v17 = 2112;
      v18 = v13;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Failed to copy loaded result (%@) to a temporary directory: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }
}

uint64_t __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_93(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = v7;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_2;
      v7[3] = &unk_1E69F2C00;
      v7[4] = v2;
      v4 = [[NSSecurityScopedURLWrapper alloc] initWithURL:*(a1 + 32)];
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v5 = [*(a1 + 40) copyWithData:0 urlWrapper:v4 cleanupHandler:v3 error:*(a1 + 48)];
    [v5 setWasOpenedInPlace:0];
    (*(*(a1 + 56) + 16))();
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _NSIPLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "Removing temporary file %@ created for in-place load of copied file", &v5, 0xCu);
  }

  return [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(a1 + 32), 0];
}

NSProgress *__80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_94(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 32))
    {
      v2 = [[NSSecurityScopedURLWrapper alloc] initWithURL:*(a1 + 32)];
    }

    else
    {
      v2 = 0;
    }

    v3 = [*(a1 + 40) copyWithData:0 urlWrapper:v2 cleanupHandler:0 error:*(a1 + 48)];
    [v3 setWasOpenedInPlace:*(a1 + 72)];
    (*(*(a1 + 56) + 16))();
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (result->_values)();
  }

  if (!*(a1 + 48) && (*(a1 + 72) & 1) == 0)
  {
    v5 = *(a1 + 32);

    return _NSIPCoordinatedDelete(v5, &__block_literal_global_75);
  }

  return result;
}

void __80__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_v2_completionHandler___block_invoke_2_95(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 && !a3)
  {
    v4 = _NSIPLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = a2;
      _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "Removing the temporary item at %@ (created for an in-place load of a file that was copied) as part of a coordinated delete", &v5, 0xCu);
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:a2, 0];
  }
}

- (id)loadOpenInPlaceWithOptions:(id)options completionHandler:(id)handler
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_completionHandler___block_invoke;
  v5[3] = &unk_1E69F7E58;
  v5[4] = handler;
  return [(NSItemProviderRepresentation *)self loadOpenInPlaceWithOptions_v2:options completionHandler:v5];
}

uint64_t __77__NSItemProviderRepresentation_loadOpenInPlaceWithOptions_completionHandler___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v4 = [objc_msgSend(a2 "urlWrapper")];
    v5 = [a2 wasOpenedInPlace];
    v6 = [a2 error];
    v7 = *(v2 + 16);

    return v7(v2, v4, v5, v6);
  }

  return result;
}

@end