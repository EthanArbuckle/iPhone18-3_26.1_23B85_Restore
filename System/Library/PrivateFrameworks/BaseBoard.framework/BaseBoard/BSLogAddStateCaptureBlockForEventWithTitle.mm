@interface BSLogAddStateCaptureBlockForEventWithTitle
@end

@implementation BSLogAddStateCaptureBlockForEventWithTitle

void ___BSLogAddStateCaptureBlockForEventWithTitle_block_invoke()
{
  Serial = BSDispatchQueueCreateSerial(@"BSSharedStateCapturingQueue");
  v1 = qword_1ED450068;
  qword_1ED450068 = Serial;
}

_DWORD *___BSLogAddStateCaptureBlockForEventWithTitle_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (v3 != 2)
  {
    if (v3 == 1 && (*(a2 + 16) & 0xFFFFFFFE) == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(a2 + 16) != 3)
  {
    return 0;
  }

LABEL_4:
  v4 = (*(*(a1 + 40) + 16))();
  v14 = 0;
  v5 = BSLogStateCaptureEncodePlist(v4, 1, &v14);
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 length];
    v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    *v9 = 1;
    v9[1] = v8;
    [*(a1 + 32) UTF8String];
    __strlcpy_chk();
    v10 = v5;
    memcpy(v9 + 50, [v5 bytes], v8);
  }

  else
  {
    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = [v7 descriptionWithMultilinePrefix:0];
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: BSLogAddStateCaptureBlockWithTitle(%@) state data format error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

@end