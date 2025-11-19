@interface NSItemProvider
@end

@implementation NSItemProvider

void __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageFileLoader];
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke_2;
  v8[3] = &unk_1E75A92D0;
  v9 = v3;
  v6 = v4[2];
  v7 = v3;
  v6(v4, v5, 0, v8);
}

void __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke_3(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = a2;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke_4;
    v11[3] = &unk_1E75A80E0;
    v13 = v5;
    v12 = *(a1 + 32);
    [v6 _loadConstituentURLsWithNetworkAccessAllowed:v7 completionHandler:v11];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = NSStringFromClass(a3);
    v10 = [v8 ph_genericErrorWithLocalizedDescription:{@"Unexpected value class (%@)", v9}];

    (*(v5 + 2))(v5, 0, v10);
  }
}

uint64_t __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke_4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  if (a2)
  {
    return (*(v6 + 16))(v6, *(a1 + 32), 0);
  }

  else
  {
    return (*(v6 + 16))(v6, 0, a5);
  }
}

@end