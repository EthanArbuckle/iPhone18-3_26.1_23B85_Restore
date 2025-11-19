@interface NSString(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSString(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 1) == 0)
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, &AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v11, "{NSString=#}");
      (*v8)(v7, v11, 13);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    v9 = [a1 dataUsingEncoding:4];
    [v9 af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];
    if ((a3 & 1) == 0)
    {
      (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end