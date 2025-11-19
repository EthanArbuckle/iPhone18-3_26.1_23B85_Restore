@interface CSStoreAttributedStringWriter(LaunchServices)
- (void)write:()LaunchServices directoryClass:;
- (void)write:()LaunchServices iNode:;
- (void)write:()LaunchServices platform:;
- (void)write:()LaunchServices version:;
@end

@implementation CSStoreAttributedStringWriter(LaunchServices)

- (void)write:()LaunchServices version:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4[1];
  v15 = *a4;
  v16 = v7;
  v8 = a4[1];
  v18 = *a4;
  v19 = v8;
  memset(v17, 0, sizeof(v17));
  if (_LSVersionNumberCompare(&v18, v17))
  {
    v18 = v15;
    v19 = v16;
    v9 = _LSVersionNumberGetStringRepresentation(&v18);
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v15 length:32 freeWhenDone:0];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v10 description];
    v13 = [v11 stringWithFormat:@"%@ (%@)", v9, v12];
  }

  else
  {
    v13 = &stru_1EEF65710;
  }

  [a1 write:v6 string:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)write:()LaunchServices directoryClass:
{
  v6 = a3;
  if (a4 < 9 && ((0x1FDu >> a4) & 1) != 0)
  {
    v7 = off_1E6A1C9F8[a4];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Other (%llu)", a4];
    if (!v7)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4];
      v11 = *MEMORY[0x1E69991C8];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__CSStoreAttributedStringWriter_LaunchServices__write_directoryClass___block_invoke_2;
      v12[3] = &unk_1E6A1A830;
      v12[4] = a1;
      [a1 withAppliedAttribute:v11 value:v10 block:v12];
      goto LABEL_7;
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4];
  v9 = *MEMORY[0x1E69991C8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CSStoreAttributedStringWriter_LaunchServices__write_directoryClass___block_invoke;
  v13[3] = &unk_1E6A1ABE8;
  v13[4] = a1;
  v14 = v7;
  v10 = v7;
  [a1 withAppliedAttribute:v9 value:v8 block:v13];

LABEL_7:
}

- (void)write:()LaunchServices platform:
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 6)
    {
      if (dyld_is_simulator_platform())
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"simulator (%llu)", dyld_get_base_platform()];
        if (v7)
        {
          goto LABEL_10;
        }
      }

      else if (dyld_get_active_platform() == a4)
      {
        v7 = @"native";
        goto LABEL_10;
      }

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
      [a1 write:v6 number:v11];

      goto LABEL_11;
    }

    v7 = @"Mac Catalyst";
  }

  else
  {
    v7 = @"#";
  }

LABEL_10:
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  v9 = *MEMORY[0x1E69991C8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__CSStoreAttributedStringWriter_LaunchServices__write_platform___block_invoke;
  v12[3] = &unk_1E6A1B140;
  v12[4] = a1;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  [a1 withAppliedAttribute:v9 value:v8 block:v12];

LABEL_11:
}

- (void)write:()LaunchServices iNode:
{
  v7 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  [a1 write:v7 number:v6];
}

@end