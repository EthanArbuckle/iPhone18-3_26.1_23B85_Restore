@interface THBookDescription
+ (BOOL)containsUnknownContentVersions:(id)a3;
+ (BOOL)isSampleAtURL:(id)a3;
+ (BOOL)readOpfMetadataWithArchive:(id)a3 toProperties:(id)a4;
+ (THBookDescription)descriptionWithAsset:(id)a3;
+ (THBookDescription)descriptionWithURL:(id)a3;
+ (THBookDescription)descriptionWithURL:(id)a3 assetID:(id)a4;
+ (id)displayNameFromFilePath:(id)a3;
+ (id)readBookPropertiesFromURL:(id)a3 error:(id *)a4;
+ (id)summaryWithURL:(id)a3;
- (BOOL)allowCopy;
- (BOOL)autoHyphenate;
- (BOOL)containsUnknownContentVersions;
- (BOOL)isEpub;
- (BOOL)isSample;
- (NSString)annotationID;
- (NSString)bookAuthor;
- (NSString)bookTitle;
- (NSString)genre;
- (NSString)storeID;
- (NSString)tspObjectContextPath;
- (NSURL)bookBundleUrl;
- (NSURL)storeURL;
- (PFDContext)drmContext;
- (THBookDescription)initWithAsset:(id)a3 summary:(id)a4;
- (id)dataForAbsoluteURL:(id)a3 context:(id)a4;
- (id)dataForDocRelativePath:(id)a3 context:(id)a4;
- (id)libraryManagerInfo;
- (id)urlForDocRelativePath:(id)a3;
- (id)userDataPath;
- (int)orientationLock;
- (void)dealloc;
- (void)loadMetadata;
@end

@implementation THBookDescription

- (THBookDescription)initWithAsset:(id)a3 summary:(id)a4
{
  v9.receiver = self;
  v9.super_class = THBookDescription;
  v6 = [(THBookDescription *)&v9 init];
  if (v6)
  {
    v6->mAsset = a3;
    v6->mBookSummary = a4;
    v6->mOrientationLock = 0;
    v6->mCitationsAllowed = 0;
    v6->_absolutePathToDataMap = +[NSMapTable strongToWeakObjectsMapTable];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6->_absolutePathToDataSync = dispatch_queue_create("com.apple.THBookDescription.data", v7);
  }

  return v6;
}

- (PFDContext)drmContext
{
  result = self->mDrmContext;
  if (!result)
  {
    if (self->mLoadedDrmContext)
    {
      return 0;
    }

    else
    {
      result = [+[PFDContextManager sharedInstance](PFDContextManager contextForArchive:"contextForArchive:", [(NSURL *)[(THAsset *)self->mAsset url] path]];
      self->mDrmContext = result;
      self->mLoadedDrmContext = 1;
    }
  }

  return result;
}

+ (id)summaryWithURL:(id)a3
{
  v11 = 0;
  if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a3 path]))
  {
    result = [a1 readBookPropertiesFromURL:a3 error:&v11];
    if (result)
    {
      return result;
    }

    v6 = v11;
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[THBookDescription summaryWithURL:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookDescription.m"];
    if (v6)
    {
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:92 description:{@"Error reading properties from iBook: %@", objc_msgSend(v11, "description")}];
    }

    else
    {
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:96 description:{@"Error reading properties from iBook.", v10}];
    }
  }

  return 0;
}

+ (THBookDescription)descriptionWithURL:(id)a3
{
  result = [a1 summaryWithURL:?];
  if (result)
  {
    v5 = result;
    v6 = [+[AEAssetEngine libraryMgr](AEAssetEngine "libraryMgr")];
    if (!v6)
    {
      v7 = [+[AEAssetEngine libraryMgr](AEAssetEngine "libraryMgr")];
      if (v7)
      {
        v6 = [IMLibraryPlist storeIdFromPlistEntry:v7];
      }

      else
      {
        v6 = 0;
      }
    }

    if (![(__CFString *)v6 length])
    {
      v6 = [(THBookDescription *)v5 objectForKey:kTHBookInfoUUID];
      if (![(__CFString *)v6 length])
      {
        v8 = [(THBookDescription *)v5 objectForKey:kTHBookInfoOPF];
        v11 = 0;
        if (v8 && (v9 = v8, -[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [a3 path], &v11)) && v11 == 1)
        {
          v10 = +[NSString md5StringWithContentsOfFile:](NSString, "md5StringWithContentsOfFile:", [objc_msgSend(a3 URLByAppendingPathComponent:{v9), "path"}]);
        }

        else
        {
          v10 = THUniqueIdForPath([a3 path]);
        }

        v6 = v10;
      }
    }

    return [[THBookDescription alloc] initWithAsset:[THAsset summary:"assetWithURL:assetID:" assetWithURL:a3 assetID:v6], v5];
  }

  return result;
}

+ (THBookDescription)descriptionWithURL:(id)a3 assetID:(id)a4
{
  result = [a1 summaryWithURL:?];
  if (result)
  {
    v7 = [[THBookDescription alloc] initWithAsset:[THAsset summary:"assetWithURL:assetID:" assetWithURL:a3 assetID:a4], result];

    return v7;
  }

  return result;
}

+ (THBookDescription)descriptionWithAsset:(id)a3
{
  result = [a1 summaryWithURL:{objc_msgSend(a3, "url")}];
  if (result)
  {
    v5 = [[THBookDescription alloc] initWithAsset:a3 summary:result];

    return v5;
  }

  return result;
}

+ (id)displayNameFromFilePath:(id)a3
{
  v3 = [objc_msgSend(a3 "lastPathComponent")];
  v4 = [NSCharacterSet characterSetWithCharactersInString:@":/"];

  return [v3 tsu_stringByRemovingCharactersInSet:v4];
}

- (void)dealloc
{
  [+[PFDContextManager sharedInstance](PFDContextManager removeContextForArchive:"removeContextForArchive:", [(NSURL *)[(THAsset *)self->mAsset url] path]];

  self->mAsset = 0;
  self->mBookSummary = 0;

  dispatch_release(self->_absolutePathToDataSync);
  v3.receiver = self;
  v3.super_class = THBookDescription;
  [(THBookDescription *)&v3 dealloc];
}

- (id)libraryManagerInfo
{
  v3 = +[AEAssetEngine libraryMgr];
  v4 = [(THAsset *)[(THBookDescription *)self asset] url];

  return [v3 metadataForAssetAtURL:v4 needsCoordination:1];
}

- (NSString)storeID
{
  v2 = [(THBookDescription *)self asset];

  return [(THAsset *)v2 storeID];
}

- (NSURL)storeURL
{
  v2 = [(THBookDescription *)self asset];

  return [(THAsset *)v2 storeUrl];
}

- (NSString)annotationID
{
  result = [(THBookDescription *)self storeID];
  if (!result)
  {
    v4 = [(THBookDescription *)self asset];

    return [(THAsset *)v4 assetID];
  }

  return result;
}

- (NSURL)bookBundleUrl
{
  v2 = [(THBookDescription *)self asset];

  return [(THAsset *)v2 url];
}

- (id)dataForAbsoluteURL:(id)a3 context:(id)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_61794;
  v20 = sub_617A4;
  v21 = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

  v6 = [a3 path];
  absolutePathToDataSync = self->_absolutePathToDataSync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_617B0;
  block[3] = &unk_45BDE8;
  block[5] = v6;
  block[6] = &v16;
  block[4] = self;
  dispatch_sync(absolutePathToDataSync, block);
  v8 = v17[5];
  if (!v8)
  {
    v9 = [(THBookDescription *)self drmContext];
    if (v9)
    {
      v10 = +[TSPData readOnlyDataFromDataRep:filename:context:](TSPData, "readOnlyDataFromDataRep:filename:context:", -[PFDContext dataRepresentationForFile:error:](v9, "dataRepresentationForFile:error:", v6, 0), [v6 lastPathComponent], a4);
      v17[5] = v10;
      if (!v10)
      {
LABEL_7:
        v11 = [TSPData readOnlyDataWithoutDataDigestFromURL:[NSURL fileURLWithPath:v6 isDirectory:0] context:a4];
        v17[5] = v11;
        if (v11)
        {
          goto LABEL_8;
        }

LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }
    }

    else if (!v17[5])
    {
      goto LABEL_7;
    }

LABEL_8:
    v12 = self->_absolutePathToDataSync;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_617E8;
    v14[3] = &unk_45BE10;
    v14[4] = self;
    v14[5] = v6;
    v14[6] = &v16;
    dispatch_sync(v12, v14);
    v8 = v17[5];
  }

LABEL_10:
  _Block_object_dispose(&v16, 8);
  return v8;
}

- (id)dataForDocRelativePath:(id)a3 context:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = [NSURL fileURLWithPath:[(NSString *)[(NSURL *)[(THBookDescription *)self bookBundleUrl] path] stringByAppendingPathComponent:a3] isDirectory:0];

  return [(THBookDescription *)self dataForAbsoluteURL:v6 context:a4];
}

- (id)urlForDocRelativePath:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v6 = [(NSString *)[(NSURL *)[(THBookDescription *)self bookBundleUrl] path] stringByAppendingPathComponent:a3];

    return [NSURL fileURLWithPath:v6 isDirectory:0];
  }

  return result;
}

- (NSString)tspObjectContextPath
{
  v2 = [(THBookDescription *)self contextDirectoryPath];

  return [(NSString *)v2 stringByAppendingPathComponent:@"database"];
}

- (NSString)bookTitle
{
  v3 = [(THAsset *)[(THBookDescription *)self asset] title];
  if (![(NSString *)v3 length])
  {
    v3 = [(NSDictionary *)self->mBookSummary objectForKey:kTHBookInfoTitleKey];
  }

  if ([(NSString *)v3 length])
  {
    return v3;
  }

  v5 = objc_opt_class();
  v6 = [(NSURL *)[(THAsset *)self->mAsset url] path];

  return [v5 displayNameFromFilePath:v6];
}

- (void)loadMetadata
{
  v2 = [(THBookDescription *)self asset];

  [(THAsset *)v2 loadMetadata];
}

- (NSString)bookAuthor
{
  v3 = [(NSDictionary *)self->mBookSummary objectForKey:kTHBookInfoAuthorKey];
  if ([(NSString *)v3 length])
  {
    return v3;
  }

  v5 = [(THBookDescription *)self asset];

  return [(THAsset *)v5 author];
}

- (NSString)genre
{
  v3 = [(THAsset *)[(THBookDescription *)self asset] genre];
  if ([(NSString *)v3 length])
  {
    return v3;
  }

  mBookSummary = self->mBookSummary;
  v6 = kTHBookInfoGenreKey;

  return [(NSDictionary *)mBookSummary objectForKey:v6];
}

- (BOOL)containsUnknownContentVersions
{
  objc_opt_class();
  [(NSDictionary *)self->mBookSummary objectForKey:kTHBookInfoContentVersions];
  v3 = TSUDynamicCast();

  return [v3 BOOLValue];
}

- (BOOL)autoHyphenate
{
  v2 = [(NSDictionary *)self->mBookSummary objectForKey:kTHBookInfoAutoHyphenate];

  return [v2 BOOLValue];
}

- (int)orientationLock
{
  if (!self->mOrientationLock)
  {
    self->mOrientationLock = 3;
    objc_opt_class();
    [(NSDictionary *)self->mBookSummary objectForKey:kTHBookInfoOrientationLockKey];
    v3 = TSUDynamicCast();
    if (v3)
    {
      v4 = v3;
      if ([v3 isEqualToString:@"landscape-only"])
      {
        v5 = 2;
LABEL_7:
        self->mOrientationLock = v5;
        return self->mOrientationLock;
      }

      if ([v4 isEqualToString:@"portrait-only"])
      {
        v5 = 1;
        goto LABEL_7;
      }
    }
  }

  return self->mOrientationLock;
}

- (BOOL)isSample
{
  v2 = [(THBookDescription *)self asset];

  return [(THAsset *)v2 isSample];
}

+ (BOOL)isSampleAtURL:(id)a3
{
  if (a3)
  {
    v4 = [+[AEAssetEngine libraryMgr](AEAssetEngine "libraryMgr")];
    if (v4)
    {
      v4 = [IMLibraryPlist isSampleFromPlistEntry:v4];
    }
  }

  else
  {
    v4 = 0;
  }

  return [v4 BOOLValue];
}

- (BOOL)allowCopy
{
  if ([(THBookDescription *)self isSample])
  {
    return 0;
  }

  if (![(PFDContext *)[(THBookDescription *)self drmContext] kiUanAfQBD5qIUraolUj])
  {
    return 1;
  }

  v4 = [+[AEAssetEngine storeMgr](AEAssetEngine "storeMgr")];

  return [v4 allowCitationForProtectedBooks];
}

- (BOOL)isEpub
{
  v2 = [(THBookDescription *)self asset];

  return [(THAsset *)v2 isEpub];
}

- (id)userDataPath
{
  v2 = [(THBookDescription *)self contextDirectoryPath];
  v3 = [NSString stringWithFormat:@"userdata_v%ld.sqlite", 0];

  return [(NSString *)v2 stringByAppendingPathComponent:v3];
}

+ (BOOL)containsUnknownContentVersions:(id)a3
{
  if (qword_567948 != -1)
  {
    sub_1E460C();
  }

  if ([a3 hasPrefix:@"{"] && objc_msgSend(a3, "hasSuffix:", @"}"))
  {
    v4 = [objc_msgSend(a3 substringWithRange:{1, objc_msgSend(a3, "length") - 2), "componentsSeparatedByString:", @";"}];
  }

  else
  {
    v4 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    p_class_meths = &OBJC_PROTOCOL___THWOverlayableZoomableCanvasControllerAccessibilityDelegate.class_meths;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == &dword_0 + 2)
        {
          objc_opt_class();
          [v10 objectAtIndexedSubscript:0];
          v11 = TSUDynamicCast();
          if (v11)
          {
            v12 = v11;
            if (![(__objc2_meth_list *)p_class_meths[296] objectForKey:v11])
            {
              return 1;
            }

            v13 = [(__objc2_meth_list *)p_class_meths[296] objectForKey:v12];
            objc_opt_class();
            v14 = 1;
            [v10 objectAtIndexedSubscript:1];
            v15 = TSUDynamicCast();
            v16 = [v13 integerValue];
            v17 = v16 < [v15 integerValue];
            p_class_meths = (&OBJC_PROTOCOL___THWOverlayableZoomableCanvasControllerAccessibilityDelegate + 32);
            if (v17)
            {
              return v14;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

+ (BOOL)readOpfMetadataWithArchive:(id)a3 toProperties:(id)a4
{
  v7 = [PFAXPackage opfXmlUriFromPackage:?];
  v8 = v7;
  if (v7)
  {
    if ([(NSString *)v7 hasPrefix:@"/"])
    {
      v9 = v8;
    }

    else
    {
      v9 = [NSString stringWithFormat:@"/%@", v8];
    }

    [a4 setValue:v9 forKey:kTHBookInfoOPF];
    v52 = objc_alloc_init(NSAutoreleasePool);
    v10 = [a3 isEPUB];
    v11 = [objc_msgSend(a3 entryWithName:{v9), "xmlReader"}];
    v12 = v11;
    if (v11)
    {
      v50 = a1;
      v54[0] = 0;
      v54[1] = 0;
      v53 = v54;
      v13 = xmlTextReaderDepth(v11);
      while (xmlTextReaderRead(v12) == 1)
      {
        v14 = xmlTextReaderDepth(v12);
        v15 = xmlTextReaderNodeType(v12);
        if (v14 == v13 && v15 == 15)
        {
          break;
        }

        if (v13 + 1 == v14 && v15 == 1)
        {
          v16 = xmlTextReaderConstLocalName(v12);
          if (xmlStrEqual(v16, "metadata"))
          {
            v51 = v13 + 2;
            while (1)
            {
              while (1)
              {
LABEL_14:
                if (xmlTextReaderRead(v12) != 1)
                {
                  goto LABEL_86;
                }

                v17 = xmlTextReaderDepth(v12);
                v18 = xmlTextReaderNodeType(v12);
                if (v17 == v14 && v18 == 15)
                {
                  goto LABEL_86;
                }

                if (v51 != v17 || v18 != 1)
                {
                  continue;
                }

                v19 = xmlTextReaderConstLocalName(v12);
                if (!xmlStrEqual(v19, "meta"))
                {
                  break;
                }

                Attribute = xmlTextReaderMoveToFirstAttribute(v12);
                v21 = 0;
                v22 = 0;
                v23 = 0;
                while (Attribute == 1)
                {
                  v24 = xmlTextReaderConstLocalName(v12);
                  v25 = xmlTextReaderConstValue(v12);
                  if (xmlStrEqual(v24, "name"))
                  {
                    v23 = v25;
                    if (!v25)
                    {
                      goto LABEL_32;
                    }
                  }

                  else if (xmlStrEqual(v24, "content"))
                  {
                    v22 = v25;
                    if (!v23)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    if (xmlStrEqual(v24, "property"))
                    {
                      v21 = v25;
                    }

                    if (!v23)
                    {
                      goto LABEL_32;
                    }
                  }

                  if (v22)
                  {
                    break;
                  }

LABEL_32:
                  Attribute = xmlTextReaderMoveToNextAttribute(v12);
                }

                if (xmlStrEqual("ibooks:subtitle", v23))
                {
                  v26 = [NSString stringWithXmlString:v22];
                  v27 = &kTHBookInfoSubtitleKey;
                  goto LABEL_57;
                }

                if (xmlStrEqual("ibooks:currentVersion", v23))
                {
                  v26 = [NSString stringWithXmlString:v22];
                  v27 = &kTHBookInfoAuthoredVersion;
                  goto LABEL_57;
                }

                if (xmlStrEqual("ibooks:requiredVersion", v23))
                {
                  v26 = [NSString stringWithXmlString:v22];
                  v27 = &kTHBookInfoRequiredVersion;
                  goto LABEL_57;
                }

                if (xmlStrEqual("ibooks:contentVersions", v23))
                {
                  if ([v50 containsUnknownContentVersions:{+[NSString stringWithXmlString:](NSString, "stringWithXmlString:", v22)}])
                  {
                    v26 = [NSNumber numberWithBool:1];
                    v27 = &kTHBookInfoContentVersions;
LABEL_57:
                    [a4 setValue:v26 forKey:*v27];
                  }
                }

                else if (xmlStrEqual("ibooks:autoHyphenate", v23))
                {
                  v43 = [NSNumber numberWithBool:[[NSString stringWithXmlString:?], "isEqualToString:", @"yes"]];
                  [a4 setValue:v43 forKey:kTHBookInfoAutoHyphenate];
                }

                else if (xmlStrEqual("ibooks:version", v21))
                {
                  InnerXml = xmlTextReaderReadInnerXml(v12);
                  v47 = [NSString stringWithXmlString:InnerXml];
                  [a4 setValue:v47 forKey:kTHBookInfoBookVersionStringKey];
                  if (InnerXml)
                  {
                    free(InnerXml);
                  }
                }
              }

              v28 = xmlTextReaderConstNamespaceUri(v12);
              if (!xmlStrEqual(v28, PFXCommonDublinCoreMetadataNS[0]))
              {
                goto LABEL_14;
              }

              v29 = xmlStrEqual("title", v19);
              v30 = &kTHBookInfoTitleKey;
              if (v29)
              {
                goto LABEL_37;
              }

              if (xmlStrEqual("creator", v19))
              {
                for (i = xmlTextReaderMoveToFirstAttribute(v12); ; i = xmlTextReaderMoveToNextAttribute(v12))
                {
                  if (i != 1)
                  {
                    goto LABEL_14;
                  }

                  v37 = xmlTextReaderConstLocalName(v12);
                  v38 = xmlTextReaderConstValue(v12);
                  if (xmlStrEqual(v37, "role"))
                  {
                    if (xmlStrEqual(v38, "aut"))
                    {
                      break;
                    }
                  }
                }

                v30 = &kTHBookInfoAuthorKey;
                goto LABEL_37;
              }

              v39 = xmlStrEqual("publisher", v19);
              v30 = &kTHBookInfoPublisherKey;
              if (v39)
              {
                goto LABEL_37;
              }

              if (!xmlStrEqual("identifier", v19))
              {
                v44 = xmlStrEqual("date", v19);
                v30 = &kTHBookInfoTimestamp;
                if (!v44)
                {
                  v45 = xmlStrEqual("language", v19);
                  v30 = &kTHBookInfoLanguageKey;
                  if (!v45)
                  {
                    goto LABEL_14;
                  }
                }

                goto LABEL_37;
              }

              for (j = xmlTextReaderMoveToFirstAttribute(v12); ; j = xmlTextReaderMoveToNextAttribute(v12))
              {
                if (j != 1)
                {
                  goto LABEL_14;
                }

                v41 = xmlTextReaderConstLocalName(v12);
                v42 = xmlTextReaderConstValue(v12);
                if (v10)
                {
                  break;
                }

                if (xmlStrEqual(v41, "scheme"))
                {
                  if (!xmlStrEqual(v42, "ISBN"))
                  {
                    v48 = xmlStrEqual(v42, "UUID");
                    goto LABEL_84;
                  }

LABEL_82:
                  v30 = &kTHBookInfoISBN;
                  goto LABEL_37;
                }

LABEL_66:
                ;
              }

              if (!xmlStrEqual(v41, "id"))
              {
                goto LABEL_66;
              }

              if (xmlStrEqual(v42, "isbn"))
              {
                goto LABEL_82;
              }

              v48 = xmlStrEqual(v42, "uid");
LABEL_84:
              if (!v48)
              {
                goto LABEL_14;
              }

              v30 = &kTHBookInfoUUID;
LABEL_37:
              v31 = *v30;
              if (*v30 && !xmlTextReaderIsEmptyElement(v12))
              {
                String = xmlTextReaderReadString(v12);
                v33 = [[NSString alloc] initWithXmlString:String];
                if (!v33)
                {
                  v34 = xmlTextReaderReadInnerXml(v12);
                  v33 = [[NSString alloc] initWithXmlString:v34];
                  if (v34)
                  {
                    free(v34);
                  }
                }

                if ([(__CFString *)v31 isEqualToString:kTHBookInfoLanguageKey])
                {
                  [a4 setValue:v33 forKey:kTHBookInfoRawLanguageKey];
                  v35 = [PFSConstants languageForString:v33];

                  v33 = v35;
                }

                [a4 setValue:v33 forKey:v31];
                if (String)
                {
                  free(String);
                }
              }
            }
          }
        }
      }

LABEL_86:
      sub_1E4558(&v53, v54[0]);
      if (v12)
      {
        xmlFreeTextReader(v12);
      }
    }
  }

  return v8 != 0;
}

+ (id)readBookPropertiesFromURL:(id)a3 error:(id *)a4
{
  objc_opt_class();
  v7 = +[NSMutableDictionary dictionary];
  v8 = -[PFXArchive initWithPath:]([PFXArchive alloc], "initWithPath:", [a3 path]);
  if (![(PFXArchive *)v8 isValid])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(PFXArchive *)v8 isValid])
  {
    [(PFXArchive *)v8 setPreventUseOfEncryptionCache:[THBookDescription isSampleAtURL:a3]];
    [a1 readOpfMetadataWithArchive:v8 toProperties:v7];
    [PFAIDisplayOptions readWithArchive:v8 toProperties:v7];
  }

  if (a4 && *a4)
  {
    return 0;
  }

  return v7;
}

@end