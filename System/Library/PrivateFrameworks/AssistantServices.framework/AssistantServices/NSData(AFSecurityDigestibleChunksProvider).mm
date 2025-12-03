@interface NSData(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSData(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 1) == 0)
    {
      v8 = v6 + 2;
      v6[2](v6, AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v13, "{NSData=#}");
      (*v8)(v7, v13, 11);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__NSData_AFSecurityDigestibleChunksProvider__af_enumerateDigestibleChunksWithOptions_usingBlock___block_invoke;
    v11[3] = &unk_1E7342C40;
    v9 = v7;
    v12 = v9;
    [self enumerateByteRangesUsingBlock:v11];
    if ((a3 & 1) == 0)
    {
      v9[2](v9, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end