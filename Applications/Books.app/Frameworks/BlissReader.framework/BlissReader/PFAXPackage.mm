@interface PFAXPackage
+ (BOOL)validateMimetypeInArchive:(id)a3 validMimetypes:(id)a4;
+ (__CFDictionary)rightsInfoForArchive:(id)a3;
+ (__CFDictionary)rightsInfoForArchiveAtPath:(id)a3;
+ (id)encryptionXmlPathForArchive:(id)a3;
+ (id)newAllEncryptionInfoForArchive:(id)a3;
+ (id)newAllEncryptionInfoFromAssetForArchive:(id)a3;
+ (id)newAllEncryptionInfoFromAssetForArchiveAtPath:(id)a3;
+ (id)newAllEncryptionInfoFromCacheForArchive:(id)a3 originalEncryptionPath:(id)a4;
+ (id)opfXmlUriFromPackage:(id)a3;
+ (void)writeContainerXmlToStream:(id)a3;
@end

@implementation PFAXPackage

+ (void)writeContainerXmlToStream:(id)a3
{
  v3 = [PFXStreamWriter createXmlTextWriterAtEntry:@"META-INF/container.xml" inOutputStream:a3 isCompressed:1];
  xmlTextWriterStartDocument(v3, 0, "UTF-8", 0);
  if ([PFXStreamWriter startElementInStream:v3 name:@"container" prefix:0 ns:PFXCommonEpubContainerNS[0]])
  {
    [PFXStreamWriter writeAttributeToStream:v3 name:@"version" content:@"1.0"];
  }

  [PFXStreamWriter startElementInStream:v3 name:@"rootfiles"];
  if ([PFXStreamWriter startElementInStream:v3 name:@"rootfile"]&& [PFXStreamWriter writeAttributeToStream:v3 name:@"full-path" content:@"contents/publication.xml"])
  {
    [PFXStreamWriter writeAttributeToStream:v3 name:@"media-type" content:PFXCommonOEBPSPackageMediaType];
  }

  xmlTextWriterEndDocument(v3);
  xmlTextWriterFlush(v3);

  xmlFreeTextWriter(v3);
}

+ (id)opfXmlUriFromPackage:(id)a3
{
  v3 = [a3 entryWithName:@"META-INF/container.xml"];
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 xmlReader];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = xmlTextReaderDepth(v4);
  while (xmlTextReaderRead(v5) == 1)
  {
    v7 = xmlTextReaderNodeType(v5);
    v8 = xmlTextReaderDepth(v5);
    if (v8 == v6 && v7 == 15)
    {
      break;
    }

    if (v8 == v6 && v7 == 1)
    {
      v9 = xmlTextReaderConstLocalName(v5);
      if (xmlStrEqual(v9, "container"))
      {
        v10 = xmlTextReaderConstNamespaceUri(v5);
        if (xmlStrEqual(v10, PFXCommonEpubContainerNS[0]))
        {
          Attribute = xmlTextReaderGetAttribute(v5, "version");
          if (Attribute)
          {
            v12 = Attribute;
            v13 = xmlStrEqual(Attribute, "1.0");
            free(v12);
            if (v13)
            {
              v16 = xmlTextReaderDepth(v5);
              if (xmlTextReaderRead(v5) == 1)
              {
                while (1)
                {
                  v17 = xmlTextReaderConstLocalName(v5);
                  v18 = xmlTextReaderNodeType(v5);
                  v19 = xmlTextReaderDepth(v5);
                  if (v19 == v16 && v18 == 15)
                  {
                    break;
                  }

                  v14 = 0;
                  if (v16 + 1 == v19 && v18 == 1)
                  {
                    if (xmlStrEqual(v17, "rootfiles"))
                    {
                      while (xmlTextReaderRead(v5) == 1)
                      {
                        v20 = xmlTextReaderConstLocalName(v5);
                        v21 = xmlTextReaderNodeType(v5);
                        if (v16 + 2 == xmlTextReaderDepth(v5) && v21 == 1)
                        {
                          if (xmlStrEqual(v20, "rootfile"))
                          {
                            v22 = xmlTextReaderGetAttribute(v5, "media-type");
                            if (v22)
                            {
                              v23 = v22;
                              v24 = xmlStrEqual(v22, PFXCommonOEBPSPackageMediaTypeXmlChars);
                              free(v23);
                              if (v24)
                              {
                                v25 = xmlTextReaderGetAttribute(v5, "full-path");
                                if (v25)
                                {
                                  v26 = v25;
                                  v14 = [NSString stringWithUTF8String:v25];
                                  free(v26);
                                  goto LABEL_32;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v14 = 0;
                  }

LABEL_32:
                  if (xmlTextReaderRead(v5) != 1 || v14)
                  {
                    goto LABEL_14;
                  }
                }
              }

              break;
            }
          }
        }
      }
    }
  }

  v14 = 0;
LABEL_14:
  xmlFreeTextReader(v5);
  return v14;
}

+ (BOOL)validateMimetypeInArchive:(id)a3 validMimetypes:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 entryWithName:@"mimetype"];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_alloc_init(NSMutableData);
  if ([v6 readIntoData:v7] && (v8 = objc_msgSend([NSString alloc], "initWithData:encoding:", v7, 4), v9 = +[NSString stringWithString:](NSString, "stringWithString:", v8), v8, v22 = 0u, v23 = 0u, v20 = 0u, v21 = 0u, (v10 = objc_msgSend(a4, "countByEnumeratingWithState:objects:count:", &v20, v24, 16)) != 0))
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(a4);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [(NSString *)v9 length];
        v16 = [v14 length];
        if (v15 > v16)
        {
          v17 = v16;
          if (![[[(NSString *)v9 substringWithRange:v16 stringByTrimmingCharactersInSet:"stringByTrimmingCharactersInSet:" length:"whitespaceCharacterSet")]])
          {
            v9 = [(NSString *)v9 substringToIndex:v17];
          }
        }

        if ([[(NSString *)v9 lowercaseString] isEqualToString:v14])
        {
          v18 = 1;
          goto LABEL_19;
        }
      }

      v11 = [a4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v18 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

+ (id)encryptionXmlPathForArchive:(id)a3
{
  v4 = [a3 rootFolder];

  return [a1 encryptionXmlPathForArchiveAtPath:v4];
}

+ (id)newAllEncryptionInfoFromAssetForArchiveAtPath:(id)a3
{
  v4 = 0;
  if (-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [a1 encryptionXmlPathForArchiveAtPath:?], &v4) && (v4 & 1) == 0)
  {
    operator new();
  }

  return 0;
}

+ (id)newAllEncryptionInfoFromAssetForArchive:(id)a3
{
  v4 = [a3 rootFolder];

  return [a1 newAllEncryptionInfoFromAssetForArchiveAtPath:v4];
}

+ (id)newAllEncryptionInfoFromCacheForArchive:(id)a3 originalEncryptionPath:(id)a4
{
  if (![objc_msgSend(a3 "asset")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [+[THApplicationDelegate cacheDirectoryForAsset:](THApplicationDelegate cacheDirectoryForAsset:{objc_msgSend(a3, "asset")), "stringByAppendingPathComponent:", @"encryption_xml_cache.plist"}];
  v41 = v7;
  if (v7 && (v8 = v7, v43 = 0, [+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]&& (v43 & 1) == 0)
  {
    v9 = [[NSMutableDictionary alloc] initWithContentsOfFile:v8];
  }

  else
  {
    v9 = 0;
  }

  v42 = 0;
  [[NSURL fileURLWithPath:?]forKey:"getResourceValue:forKey:error:" error:&v42, NSURLFileSizeKey, 0];
  if (v9)
  {
    v40 = a1;
    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheVersion];
    [TSUDynamicCast() doubleValue];
    v11 = v10;
    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheTimestamp];
    v12 = TSUDynamicCast();
    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheAssetID];
    v39 = TSUDynamicCast();
    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheAssetType];
    v37 = TSUDynamicCast();
    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheOriginalEncryptionFileSize];
    v38 = TSUDynamicCast();
    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheAssetURL];
    v13 = TSUDynamicCast();
    if (v13)
    {
      v14 = [NSURL URLWithString:v13];
    }

    else
    {
      v14 = 0;
    }

    objc_opt_class();
    [v9 objectForKey:PFAXPackageEncryptionCacheBookVersion];
    v15 = TSUDynamicCast();
    if (v15)
    {
      v16 = [[THBookVersion alloc] initWithString:v15];
    }

    else
    {
      v16 = +[THBookVersion unversionedBookVersion];
    }

    v17 = v16;
    v18 = +[NSDate date];
    v19 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [v40 encryptionXmlPathForArchive:a3], 0);
    if (v19)
    {
      v20 = [(NSDictionary *)v19 objectForKey:NSFileCreationDate];
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    v22 = fabs(v11 + -1.0);
    v23 = 1;
    if (v20 && v12)
    {
      v21 = [(NSDate *)v18 compare:v20]!= NSOrderedAscending && [(NSDate *)v18 compare:v12]!= NSOrderedAscending;
      v23 = [v20 compare:v12] == &dword_0 + 1;
    }

    v24 = +[THAsset asset:isSameAsAsset:](THAsset, "asset:isSameAsAsset:", [a3 asset], +[THAsset assetWithURL:assetID:type:](THAsset, "assetWithURL:assetID:type:", v14, v39, v37));
    v25 = [objc_msgSend(a3 "bookVersion")];
    v26 = [v42 integerValue];
    v27 = [v38 integerValue];
    if (v22 < 0.00999999978 && !v23 && v24 && v25 && v21 && v26 == v27)
    {
      objc_opt_class();
      [v9 objectForKey:PFAXPackageEncryptionCachePayload];
      v28 = TSUDynamicCast();

      v29 = NSArray_ptr;
      if (v28)
      {
        return v28;
      }
    }

    else
    {

      v29 = NSArray_ptr;
    }

    a1 = v40;
    if ([objc_msgSend(v29[69] "defaultManager")])
    {
      [objc_msgSend(v29[69] "defaultManager")];
    }
  }

  v28 = [a1 newAllEncryptionInfoFromAssetForArchive:a3];
  v30 = objc_alloc_init(NSMutableDictionary);
  v31 = [NSNumber numberWithDouble:1.0];
  [v30 setObject:v31 forKey:PFAXPackageEncryptionCacheVersion];
  [v30 setObject:+[NSDate date](NSDate forKey:{"date"), PFAXPackageEncryptionCacheTimestamp}];
  if ([objc_msgSend(a3 "asset")])
  {
    v32 = [objc_msgSend(a3 "asset")];
    [v30 setObject:v32 forKey:PFAXPackageEncryptionCacheAssetID];
  }

  if ([objc_msgSend(a3 "asset")])
  {
    v33 = [objc_msgSend(a3 "asset")];
    [v30 setObject:v33 forKey:PFAXPackageEncryptionCacheAssetType];
  }

  if ([objc_msgSend(a3 "asset")])
  {
    v34 = [objc_msgSend(objc_msgSend(a3 "asset")];
    [v30 setObject:v34 forKey:PFAXPackageEncryptionCacheAssetURL];
  }

  if ([objc_msgSend(a3 "bookVersion")])
  {
    v35 = [objc_msgSend(a3 "bookVersion")];
    [v30 setObject:v35 forKey:PFAXPackageEncryptionCacheBookVersion];
  }

  if (v28)
  {
    [v30 setObject:v28 forKey:PFAXPackageEncryptionCachePayload];
  }

  if (v42)
  {
    [v30 setObject:v42 forKey:PFAXPackageEncryptionCacheOriginalEncryptionFileSize];
  }

  +[THApplicationDelegate ensureCacheDirectory:](THApplicationDelegate, "ensureCacheDirectory:", [a3 asset]);
  [v30 writeToFile:v41 atomically:1];

  return v28;
}

+ (id)newAllEncryptionInfoForArchive:(id)a3
{
  v5 = [a1 encryptionXmlPathForArchive:?];
  v8 = 0;
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
  {
    return 0;
  }

  v7 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"preventUseOfEncryptionCache"];
  if ([objc_msgSend(a3 "asset")] && objc_msgSend(objc_msgSend(a3, "bookVersion"), "isValid") && ((objc_msgSend(a3, "preventUseOfEncryptionCache") | v7) & 1) == 0)
  {
    return [a1 newAllEncryptionInfoFromCacheForArchive:a3 originalEncryptionPath:v5];
  }

  else
  {
    return [a1 newAllEncryptionInfoFromAssetForArchive:a3];
  }
}

+ (__CFDictionary)rightsInfoForArchive:(id)a3
{
  v4 = [a3 perUserRootFolder];

  return [a1 rightsInfoForArchiveAtPath:v4];
}

+ (__CFDictionary)rightsInfoForArchiveAtPath:(id)a3
{
  if (a3)
  {
    v4 = 0;
    if (-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [a3 stringByAppendingString:@"/META-INF/sinf.xml"], &v4))
    {
      if ((v4 & 1) == 0)
      {
        operator new();
      }
    }
  }

  return 0;
}

@end