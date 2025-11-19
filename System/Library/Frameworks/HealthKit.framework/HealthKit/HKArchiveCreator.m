@interface HKArchiveCreator
@end

@implementation HKArchiveCreator

uint64_t __52___HKArchiveCreator_addFileToArchive_pathInArchive___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x1E69E9AC8];
  while (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) readDataOfLength:*v6];
    v9 = [v8 length];
    v4 = v9 == 0;
    if (v9)
    {
      v5 += [v3 writeData:objc_msgSend(v8 ofLength:{"bytes"), objc_msgSend(v8, "length")}];
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __52___HKArchiveCreator_addDataToArchive_pathInArchive___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = a2;
  v7 = [v6 writeData:objc_msgSend(v4 ofLength:{"bytes"), objc_msgSend(*(a1 + 32), "length")}];

  return v7;
}

void __52___HKArchiveCreator_addFileToArchive_pathInArchive___block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_19197B000, log, OS_LOG_TYPE_FAULT, "%@: Reading from file failed: %@", buf, 0x16u);
}

@end