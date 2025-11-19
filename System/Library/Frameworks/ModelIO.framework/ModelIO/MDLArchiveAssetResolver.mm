@interface MDLArchiveAssetResolver
- (BOOL)canResolveAssetNamed:(id)a3;
- (MDLArchiveAssetResolver)initWithURL:(id)a3;
- (id)assetNamesInArchive;
- (id)resolveAssetNamed:(id)a3;
- (id)resolveInsideArchiveWithAssetNamed:(id)a3;
- (void)addResolvedAssetNamed:(id)a3 offset:(unint64_t)a4 fileSize:(unint64_t)a5;
- (void)removeAssetNamed:(id)a3;
@end

@implementation MDLArchiveAssetResolver

- (MDLArchiveAssetResolver)initWithURL:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MDLArchiveAssetResolver;
  v6 = [(MDLArchiveAssetResolver *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveURL, a3);
    rootUSDPath = v7->_rootUSDPath;
    v7->_rootUSDPath = 0;

    v9 = objc_opt_new();
    archiveDictionary = v7->_archiveDictionary;
    v7->_archiveDictionary = v9;

    v11 = v7;
  }

  return v7;
}

- (BOOL)canResolveAssetNamed:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_archiveDictionary, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (void)addResolvedAssetNamed:(id)a3 offset:(unint64_t)a4 fileSize:(unint64_t)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, a4);
  v19[0] = v10;
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, a5);
  v19[1] = v12;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v19, 2);

  v16 = objc_msgSend_objectForKey_(self->_archiveDictionary, v15, v8);
  LODWORD(v10) = v16 == 0;

  if (v10)
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_archiveDictionary, v17, v14, v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)resolveAssetNamed:(id)a3
{
  v3 = a3;
  v4 = v3;
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  sub_239E552A0(&v14, v7);
  pxrInternal__aapl__pxrReserved__::ArSplitPackageRelativePathOuter();
  v20 = *v16;
  v21 = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  if (v19 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  v9 = MEMORY[0x277CBEBC0];
  if (v21 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, &v20);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v20);
  }
  v10 = ;
  v12 = objc_msgSend_fileURLWithPath_(v9, v11, v10);

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  return v12;
}

- (id)resolveInsideArchiveWithAssetNamed:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_archiveDictionary, a2, a3);

  return v3;
}

- (id)assetNamesInArchive
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_239E9BB0C;
  v12 = sub_239E9BB1C;
  v13 = objc_opt_new();
  archiveDictionary = self->_archiveDictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239E9BB24;
  v7[3] = &unk_278B40EB0;
  v7[4] = &v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(archiveDictionary, v4, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)removeAssetNamed:(id)a3
{
  v7 = a3;
  v5 = objc_msgSend_objectForKey_(self->_archiveDictionary, v4, v7);

  if (v5)
  {
    objc_msgSend_removeObjectForKey_(self->_archiveDictionary, v6, v7);
  }
}

@end