@interface NSNumber(AFSecurityDigestibleChunksProvider)
- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:;
@end

@implementation NSNumber(AFSecurityDigestibleChunksProvider)

- (void)af_enumerateDigestibleChunksWithOptions:()AFSecurityDigestibleChunksProvider usingBlock:
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  if ((a3 & 1) == 0)
  {
    v8 = (v6 + 16);
    (*(v6 + 2))(v6, &AFSecurityDigestibleChunksProviderType, 4);
    strcpy(v13, "{NSNumber=#}");
    (*v8)(v7, v13, 13);
    (*v8)(v7, AFSecurityDigestibleChunksProviderData, 4);
  }

  v9 = *[a1 objCType] - 66;
  if (v9 <= 0x31)
  {
    if (((1 << v9) & 0x28483) != 0)
    {
      v10 = [a1 unsignedLongLongValue];
      goto LABEL_9;
    }

    if (((1 << v9) & 0x2848200000000) != 0)
    {
      v10 = [a1 longLongValue];
LABEL_9:
      v13[0] = v10;
LABEL_10:
      (*(v7 + 2))(v7, v13, 8);
      goto LABEL_11;
    }

    if (((1 << v9) & 0x1400000000) != 0)
    {
      [a1 doubleValue];
      v13[0] = v12;
      goto LABEL_10;
    }
  }

LABEL_11:
  if ((a3 & 1) == 0)
  {
    (*(v7 + 2))(v7, AFSecurityDigestibleChunksProviderEnd, 4);
  }

LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
}

@end