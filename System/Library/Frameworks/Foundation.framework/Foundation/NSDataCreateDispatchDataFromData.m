@interface NSDataCreateDispatchDataFromData
@end

@implementation NSDataCreateDispatchDataFromData

void ___NSDataCreateDispatchDataFromData_block_invoke(uint64_t a1, void *buffer, int a3, size_t size)
{
  v13[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) & 1) != 0 || (v7 = *(a1 + 32), (*(a1 + 48)))
  {
    v8 = 0;
  }

  else
  {
    v8 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___NSDataCreateDispatchDataFromData_block_invoke_2;
    v13[3] = &unk_1E69F2C00;
    v13[4] = *(a1 + 32);
  }

  v9 = dispatch_data_create(buffer, size, 0, v8);
  v10 = v9;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  if (v12)
  {
    *(*(*(a1 + 40) + 8) + 40) = dispatch_data_create_concat(*(v11 + 40), v9);
    dispatch_release(v12);
    dispatch_release(v10);
  }

  else
  {
    *(v11 + 40) = v9;
  }
}

@end