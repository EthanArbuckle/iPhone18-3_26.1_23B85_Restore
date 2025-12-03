@interface NSDecimalNumber(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSDecimalNumber(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v10[5] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 1) == 0)
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, &AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v10, "{NSDecimalNumber=#b8b4b1b1b1b1b16^S}");
      (*v8)(v7, v10, 37);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
    }

    LODWORD(v10[2]) = 0;
    [self decimalValue];
    (*(v7 + 2))(v7, v10, 20);
    if ((a3 & 1) == 0)
    {
      (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end