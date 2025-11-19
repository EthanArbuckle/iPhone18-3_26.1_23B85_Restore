@interface NSDate(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSDate(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v11[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 1) == 0)
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, &AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v11, "{NSDate=#}");
      (*v8)(v7, v11, 11);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    [a1 timeIntervalSince1970];
    v11[0] = v9;
    (*(v7 + 2))(v7, v11, 8);
    if ((a3 & 1) == 0)
    {
      (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end