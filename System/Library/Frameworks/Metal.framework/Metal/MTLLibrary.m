@interface MTLLibrary
@end

@implementation MTLLibrary

uint64_t __92___MTLLibrary_newFunctionWithDescriptor_destinationArchive_functionCache_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (**(*(a1 + 32) + 48) && ([*(a1 + 40) options] & 0x10) == 0)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    if (v4 == a2)
    {
      MTLPipelineCollection::addFunction(*v6, v4, *(v5 + 32), [*(a1 + 40) options]);
    }

    else
    {
      MTLPipelineCollection::addSpecializedFunction(*v6, *(a1 + 48), a2, v5, *(a1 + 40));
    }
  }

  [a2 setOptions:{objc_msgSend(*(a1 + 40), "options")}];
  if ([*(a1 + 40) options])
  {
    v9 = [*(a1 + 32) device];
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92___MTLLibrary_newFunctionWithDescriptor_destinationArchive_functionCache_completionHandler___block_invoke_2;
    v12[3] = &unk_1E6EEBFB8;
    v11 = *(a1 + 56);
    v12[4] = a2;
    v12[5] = v11;
    return [v9 compileVisibleFunction:a2 withDescriptor:v10 completionHandler:v12];
  }

  else
  {
LABEL_8:
    v7 = *(*(a1 + 56) + 16);

    return v7();
  }
}

uint64_t __92___MTLLibrary_newFunctionWithDescriptor_destinationArchive_functionCache_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end