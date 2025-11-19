@interface HKZipArchiveEntry
@end

@implementation HKZipArchiveEntry

id __67___HKZipArchiveEntry__enumerateLinesInCurrentEntryWithError_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  data = archive_read_data();
  if (data < 0)
  {
    v7 = *(a1 + 32);
    [objc_opt_class() _assignReadError:a2 archive:*(a1 + 40)];
    v6 = 0;
  }

  else if (data)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] data];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end