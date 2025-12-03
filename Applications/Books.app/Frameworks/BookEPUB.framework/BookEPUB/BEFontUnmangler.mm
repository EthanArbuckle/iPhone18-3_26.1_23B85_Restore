@interface BEFontUnmangler
- (id)_adobeXORMaskWithEPubID:(id)d;
- (id)_idpfXORMaskWithEPubID:(id)d;
- (id)unmangleFontWithAssetInfo:(id)info fileData:(id)data URL:(id)l;
@end

@implementation BEFontUnmangler

- (id)unmangleFontWithAssetInfo:(id)info fileData:(id)data URL:(id)l
{
  infoCopy = info;
  dataCopy = data;
  encryptionAlgorithm = [infoCopy encryptionAlgorithm];
  if ([@"http://www.idpf.org/2008/embedding" compare:encryptionAlgorithm options:1])
  {
    v10 = dataCopy;
    if ([@"http://ns.adobe.com/pdf/enc#RC" compare:encryptionAlgorithm options:1])
    {
      goto LABEL_15;
    }

    bookEpubIdWithUUIDScheme = [infoCopy bookEpubIdWithUUIDScheme];
    if ([bookEpubIdWithUUIDScheme length])
    {
      v12 = [(BEFontUnmangler *)self _adobeXORMaskWithEPubID:bookEpubIdWithUUIDScheme];
    }

    else
    {
      v12 = 0;
    }

    v13 = &stru_3D8 + 40;
  }

  else
  {
    bookEpubIdWithUUIDScheme = [infoCopy bookEpubId];
    v12 = [(BEFontUnmangler *)self _idpfXORMaskWithEPubID:bookEpubIdWithUUIDScheme];
    v13 = &stru_3D8 + 56;
  }

  v10 = dataCopy;
  if (v12)
  {
    v14 = [dataCopy mutableCopy];
    mutableBytes = [v14 mutableBytes];
    v10 = v14;

    bytes = [dataCopy bytes];
    if ([dataCopy length] < v13)
    {
      v13 = [dataCopy length];
    }

    bytes2 = [v12 bytes];
    v18 = [v12 length];
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        mutableBytes[i] = bytes2[i % v18] ^ bytes[i];
      }
    }
  }

LABEL_15:

  return v10;
}

- (id)_idpfXORMaskWithEPubID:(id)d
{
  dCopy = d;
  if ([dCopy length] && (v4 = objc_msgSend(dCopy, "UTF8String")) != 0)
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

- (id)_adobeXORMaskWithEPubID:(id)d
{
  dCopy = d;
  if ((atomic_load_explicit(&qword_36AB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB78))
  {
    qword_36AB70 = [NSCharacterSet characterSetWithCharactersInString:@"-:"];
    __cxa_guard_release(&qword_36AB78);
  }

  v4 = [dCopy rangeOfString:@"urn:uuid:" options:2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [dCopy substringFromIndex:&v4[v5]];

    dCopy = v6;
  }

  v7 = [dCopy componentsSeparatedByCharactersInSet:qword_36AB70];
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