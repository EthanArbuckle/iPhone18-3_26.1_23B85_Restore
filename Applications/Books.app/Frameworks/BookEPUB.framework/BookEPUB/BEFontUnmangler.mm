@interface BEFontUnmangler
- (id)_adobeXORMaskWithEPubID:(id)a3;
- (id)_idpfXORMaskWithEPubID:(id)a3;
- (id)unmangleFontWithAssetInfo:(id)a3 fileData:(id)a4 URL:(id)a5;
@end

@implementation BEFontUnmangler

- (id)unmangleFontWithAssetInfo:(id)a3 fileData:(id)a4 URL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 encryptionAlgorithm];
  if ([@"http://www.idpf.org/2008/embedding" compare:v9 options:1])
  {
    v10 = v8;
    if ([@"http://ns.adobe.com/pdf/enc#RC" compare:v9 options:1])
    {
      goto LABEL_15;
    }

    v11 = [v7 bookEpubIdWithUUIDScheme];
    if ([v11 length])
    {
      v12 = [(BEFontUnmangler *)self _adobeXORMaskWithEPubID:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = &stru_3D8 + 40;
  }

  else
  {
    v11 = [v7 bookEpubId];
    v12 = [(BEFontUnmangler *)self _idpfXORMaskWithEPubID:v11];
    v13 = &stru_3D8 + 56;
  }

  v10 = v8;
  if (v12)
  {
    v14 = [v8 mutableCopy];
    v15 = [v14 mutableBytes];
    v10 = v14;

    v16 = [v8 bytes];
    if ([v8 length] < v13)
    {
      v13 = [v8 length];
    }

    v17 = [v12 bytes];
    v18 = [v12 length];
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15[i] = v17[i % v18] ^ v16[i];
      }
    }
  }

LABEL_15:

  return v10;
}

- (id)_idpfXORMaskWithEPubID:(id)a3
{
  v3 = a3;
  if ([v3 length] && (v4 = objc_msgSend(v3, "UTF8String")) != 0)
  {
    v5 = [NSMutableData dataWithLength:20];
    if (v5)
    {
      v6 = strlen(v4);
      CC_SHA1(v4, v6, [v5 mutableBytes]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_adobeXORMaskWithEPubID:(id)a3
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_36AB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB78))
  {
    qword_36AB70 = [NSCharacterSet characterSetWithCharactersInString:@"-:"];
    __cxa_guard_release(&qword_36AB78);
  }

  v4 = [v3 rangeOfString:@"urn:uuid:" options:2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 substringFromIndex:&v4[v5]];

    v3 = v6;
  }

  v7 = [v3 componentsSeparatedByCharactersInSet:qword_36AB70];
  v8 = [v7 componentsJoinedByString:&stru_33E120];

  if ([v8 length])
  {
    v9 = [NSData bu_dataFromHexString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end