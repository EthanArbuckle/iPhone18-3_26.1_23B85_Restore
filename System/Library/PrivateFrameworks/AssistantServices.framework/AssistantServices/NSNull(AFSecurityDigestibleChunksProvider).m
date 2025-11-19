@interface NSNull(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSNull(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4 && (a3 & 1) == 0)
  {
    v4 = a4 + 2;
    v5 = a4[2];
    v6 = a4;
    v5();
    strcpy(v8, "{NSNull=#}");
    (*v4)(v6, v8, 11);
    (*v4)(v6, AFSecurityDigestibleChunksProviderData, 4);
    (*v4)(v6, AFSecurityDigestibleChunksProviderEnd, 4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end