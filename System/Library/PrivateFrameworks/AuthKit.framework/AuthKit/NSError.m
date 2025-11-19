@interface NSError
@end

@implementation NSError

void __52__NSError_AuthKit__ak_errorsHeaderStringWithMessage__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = a1[4];
  v4 = MEMORY[0x1E696AEC0];
  v8 = [location[0] domain];
  v3 = [location[0] code];
  v7 = [location[0] localizedDescription];
  v6 = [v4 stringWithFormat:@"%@:%ld:[%@]", v8, v3, v7];
  [v5 addObject:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(location, 0);
}

void __74__NSError_AuthKit__errorDescriptionIncludingUnderlyingErrorsWithMaxDepth___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[3] = a3;
  v9[2] = a4;
  v9[1] = a1;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [location[0] domain];
  v9[0] = [v6 stringWithFormat:@"%@:%ld", v7, objc_msgSend(location[0], "code")];
  MEMORY[0x1E69E5920](v7);
  [a1[4] addObject:v9[0]];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

@end