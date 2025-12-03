@interface NSURL(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSURL(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      absoluteString = [self absoluteString];
      [absoluteString af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];
    }

    else
    {
      v8 = (v6 + 16);
      (*(v6 + 2))(v6, &AFSecurityDigestibleChunksProviderType, 4);
      strcpy(v12, "{NSURL=#@@^v^v}");
      (*v8)(v7, v12, 16);
      (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
      absoluteString2 = [self absoluteString];
      [absoluteString2 af_enumerateDigestibleChunksWithOptions:1 usingBlock:v7];

      (*v8)(v7, AFSecurityDigestibleChunksProviderEnd, 4);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end