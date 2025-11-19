@interface AllowedNowPlayingKeysAndTypes
@end

@implementation AllowedNowPlayingKeysAndTypes

void ___AllowedNowPlayingKeysAndTypes_block_invoke()
{
  v21[22] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E69B0F60];
  v20[0] = *MEMORY[0x1E69B0F20];
  v20[1] = v6;
  v21[0] = v1;
  v21[1] = v1;
  v7 = *MEMORY[0x1E69B1030];
  v20[2] = *MEMORY[0x1E69B0F70];
  v20[3] = v7;
  v21[2] = v0;
  v21[3] = v0;
  v8 = *MEMORY[0x1E69B0E58];
  v20[4] = *MEMORY[0x1E69B0E40];
  v20[5] = v8;
  v21[4] = v0;
  v21[5] = v0;
  v9 = *MEMORY[0x1E69B0FA0];
  v20[6] = *MEMORY[0x1E69B0FA8];
  v20[7] = v9;
  v21[6] = v4;
  v21[7] = v1;
  v10 = *MEMORY[0x1E69B0F80];
  v20[8] = *MEMORY[0x1E69B1048];
  v20[9] = v10;
  v21[8] = v1;
  v21[9] = v1;
  v11 = *MEMORY[0x1E69B1080];
  v20[10] = *MEMORY[0x1E69B1078];
  v20[11] = v11;
  v21[10] = v1;
  v21[11] = v1;
  v12 = *MEMORY[0x1E69B0F00];
  v20[12] = *MEMORY[0x1E69B1070];
  v20[13] = v12;
  v21[12] = v4;
  v21[13] = v0;
  v13 = *MEMORY[0x1E69B0E98];
  v20[14] = *MEMORY[0x1E69B0EA0];
  v20[15] = v13;
  v21[14] = v0;
  v21[15] = v2;
  v14 = *MEMORY[0x1E69B0EE8];
  v20[16] = *MEMORY[0x1E69B0EC8];
  v20[17] = v14;
  v21[16] = v2;
  v21[17] = v1;
  v15 = *MEMORY[0x1E69B1028];
  v20[18] = *MEMORY[0x1E69B0EF0];
  v20[19] = v15;
  v21[18] = v1;
  v21[19] = v5;
  v16 = *MEMORY[0x1E69B0FD8];
  v20[20] = *MEMORY[0x1E69B0EB8];
  v20[21] = v16;
  v21[20] = v3;
  v21[21] = v1;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:22];
  v18 = _AllowedNowPlayingKeysAndTypes_schema;
  _AllowedNowPlayingKeysAndTypes_schema = v17;

  v19 = *MEMORY[0x1E69E9840];
}

@end