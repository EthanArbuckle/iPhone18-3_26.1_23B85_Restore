@interface AEBookInfo
+ (BOOL)isUndesirableImageData:(id)a3;
+ (id)_nonUpdatedAnnotationsForDocumentOrdinal:(id)a3 assetID:(id)a4 moc:(id)a5;
+ (id)bookFromDatabaseKey:(id)a3 withMOC:(id)a4;
+ (id)bookObjectIDsWithPredicate:(id)a3 inMoc:(id)a4;
+ (id)booksWithPredicate:(id)a3 inMoc:(id)a4;
+ (id)booksWithPredicate:(id)a3 sortBy:(id)a4 ascending:(BOOL)a5 fetchLimit:(int)a6 inMoc:(id)a7;
+ (id)booksWithPredicate:(id)a3 sortDescriptors:(id)a4 inMoc:(id)a5;
+ (id)databaseKeyFromStoreId:(id)a3 andUniqueId:(id)a4;
+ (id)excludeDeletedBooksPredicate;
+ (id)newBlankBook:(id)a3;
+ (id)storeURLForBookStoreId:(id)a3 isAudiobook:(BOOL)a4;
- (AEAnnotationProvider)annotationProvider;
- (BEBookViewModel)epub;
- (BEProtocolCacheItem)cacheItem;
- (BKLocation)firstDocumentLocation;
- (BKLocation)readingLocation;
- (BKStyleManager)styleManager;
- (BOOL)bumpReadingLocationAnnotationVersionToMinimumVersion:(id)a3;
- (BOOL)currentlyDownloading;
- (BOOL)exists;
- (BOOL)hasBuiltInFonts;
- (BOOL)hasDuplicatedDocument;
- (BOOL)hasMediaOverlayElements;
- (BOOL)hasPhysicalPages;
- (BOOL)hasUpsellPage;
- (BOOL)hidesSpine;
- (BOOL)isBookVersioned;
- (BOOL)isCorrectPassword:(id)a3 forDocument:(id)a4;
- (BOOL)isEncryptionLegal;
- (BOOL)isFixedLayout;
- (BOOL)isInteractive;
- (BOOL)isLandscapeProhibited;
- (BOOL)isManagedBook;
- (BOOL)isPasswordDialogNeeded;
- (BOOL)isPortraitProhibited;
- (BOOL)isProtected;
- (BOOL)isReadyToOpen;
- (BOOL)isStoreBook;
- (BOOL)languageDefaultsToHorizontalTextFlow;
- (BOOL)needsGenericCoverArt;
- (BOOL)needsReparsing;
- (BOOL)obeyPageBreaks;
- (BOOL)shouldDisableOptimizeSpeed;
- (BOOL)suppressTOC;
- (BOOL)wantsJumpBackHistory;
- (BOOL)wasParsed;
- (CGSize)fixedLayoutSizeForDocumentWithOrdinal:(unint64_t)a3;
- (NSNumber)storeFrontId;
- (NSString)embeddedArtHref;
- (NSString)shortBookTitle;
- (id)_makeFileUrlIfPossible:(id)a3;
- (id)addAnnotation:(int)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6;
- (id)allDocuments;
- (id)annotationsOnMainQueue;
- (id)assetType;
- (id)basePlusContentPath;
- (id)baseURL;
- (id)confirmBagContents;
- (id)dictionaryRepresentation;
- (id)documentAtPath:(id)a3;
- (id)documentContainingLocation:(id)a3;
- (id)documentWithOrdinal:(unint64_t)a3;
- (id)documentsWithPath:(id)a3 sortBy:(id)a4 limit:(int64_t)a5;
- (id)embeddedArtHrefMinusSubpath;
- (id)embeddedArtSinf;
- (id)embeddedArtURL;
- (id)firstDocument;
- (id)lastDocument;
- (id)linearDocuments;
- (id)mimeFromHref:(id)a3;
- (id)navigationInfosForDocument:(id)a3;
- (id)newestAnnotationWithPredicate:(id)a3 rangeCheck:(BOOL)a4 moc:(id)a5;
- (id)physicalPageMap;
- (id)physicalPageMapForDocument:(id)a3;
- (id)readingLocationAnnotation:(BOOL)a3 moc:(id)a4;
- (id)sortedDocuments;
- (id)url;
- (id)urlForDocument:(id)a3;
- (id)urlForHref:(id)a3;
- (id)versionNumberHumanReadable;
- (int)bkPageProgressionDirection;
- (int)contentType;
- (int)languageDefaultPageProgressDirection;
- (int)openToSpread;
- (int)orientationLock;
- (int64_t)_documentOrdinalForHref:(id)a3;
- (int64_t)linearOrdinal:(int64_t)a3 offsetByDistance:(int64_t)a4;
- (int64_t)scrollModeOrientation;
- (int64_t)writingDirection;
- (unint64_t)linearDocumentCount;
- (unint64_t)linearIndexForOrdinal:(unint64_t)a3;
- (unint64_t)readingDocumentCount;
- (void)_adjustAnnotation:(id)a3 withLocation:(id)a4 selectedText:(id)a5 representativeText:(id)a6 updateStyle:(BOOL)a7;
- (void)_cacheURL;
- (void)_clearTransient;
- (void)_setBitMask:(unint64_t)a3 enabled:(BOOL)a4;
- (void)addChapters:(id)a3;
- (void)addChaptersObject:(id)a3;
- (void)addLandmarks:(id)a3;
- (void)addLandmarksObject:(id)a3;
- (void)addPhysicalPages:(id)a3;
- (void)addPhysicalPagesObject:(id)a3;
- (void)addSinfInfoObject:(id)a3;
- (void)calculatePasswordRequired;
- (void)checkAnnotationsForDuplicatedDocuments;
- (void)dealloc;
- (void)deleteAnnotation:(id)a3;
- (void)deleteParsedRelationships;
- (void)deleteSelfMaintainedRelationships;
- (void)didSave;
- (void)didTurnIntoFault;
- (void)expandAnnotation:(id)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6;
- (void)initializeAnnotationProviderWithAssetID:(id)a3;
- (void)removeChapters:(id)a3;
- (void)removeLandmarks:(id)a3;
- (void)removePhysicalPages:(id)a3;
- (void)removeSinfInfo:(id)a3;
- (void)resetAsNewlyDownloaded;
- (void)resetPersistentCache;
- (void)saveAnnotationsManagedObjectContext;
- (void)setBookAuthor:(id)a3;
- (void)setBookBundlePath:(id)a3;
- (void)setBookTitle:(id)a3;
- (void)setContentType:(int)a3;
- (void)setCurrentlyDownloading:(BOOL)a3;
- (void)setGenre:(id)a3;
- (void)setHasBuiltInFonts:(BOOL)a3;
- (void)setHidesSpine:(BOOL)a3;
- (void)setOpenToSpread:(int)a3;
- (void)setPassword:(id)a3;
- (void)setPublisherLocation:(id)a3;
- (void)setPublisherName:(id)a3;
- (void)setPublisherYear:(id)a3;
- (void)setSingletonAnnotationType:(int)a3 location:(id)a4 modificationHandler:(id)a5;
- (void)setSortAuthor:(id)a3;
- (void)setSortTitle:(id)a3;
- (void)setStoreId:(id)a3;
- (void)setTemporaryItemIdentifier:(id)a3;
- (void)setupBaseURL;
- (void)setupFileSizeContentType;
@end

@implementation AEBookInfo

- (BOOL)hasUpsellPage
{
  if (+[BCAugmentedExperienceManager endOfBookExperienceFeatureEnabled])
  {
    v3 = [(AEBookInfo *)self sampleContent];
    if ([v3 BOOLValue])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = ![(AEBookInfo *)self isStoreBook];
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (id)excludeDeletedBooksPredicate
{
  v2 = [[NSNumber alloc] initWithBool:1];
  v3 = [NSPredicate predicateWithFormat:@"deletedFlag != %@", v2];

  return v3;
}

+ (id)bookFromDatabaseKey:(id)a3 withMOC:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [NSPredicate predicateWithFormat:@"databaseKey ==[n] %@", v5];
    v8 = [v6 entity:@"AEBookInfo" withPredicate:v7 sortBy:0 ascending:0 fetchLimit:1];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)booksWithPredicate:(id)a3 sortBy:(id)a4 ascending:(BOOL)a5 fetchLimit:(int)a6 inMoc:(id)a7
{
  v8 = a5;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() excludeDeletedBooksPredicate];
  v15 = [NSManagedObjectContext mergePredicate:v13 andPredicate:v14];

  v16 = [v11 entity:@"AEBookInfo" withPredicate:v15 sortBy:v12 ascending:v8 fetchLimit:a6];

  return v16;
}

+ (id)booksWithPredicate:(id)a3 sortDescriptors:(id)a4 inMoc:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() excludeDeletedBooksPredicate];
  v11 = [NSManagedObjectContext mergePredicate:v9 andPredicate:v10];

  v12 = [v7 entity:@"AEBookInfo" withPredicate:v11 sortDescriptors:v8 fetchLimit:0 prefetchRelationships:0];

  return v12;
}

+ (id)booksWithPredicate:(id)a3 inMoc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() excludeDeletedBooksPredicate];
  v8 = [NSManagedObjectContext mergePredicate:v6 andPredicate:v7];

  v9 = [v5 entity:@"AEBookInfo" withPredicate:v8 sortBy:0 ascending:0 fetchLimit:0];

  return v9;
}

+ (id)bookObjectIDsWithPredicate:(id)a3 inMoc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() excludeDeletedBooksPredicate];
  v8 = [NSManagedObjectContext mergePredicate:v6 andPredicate:v7];

  v9 = [v5 objectIDsWithPredicate:v8 forEntity:@"AEBookInfo"];

  return v9;
}

+ (id)newBlankBook:(id)a3
{
  v3 = a3;
  v4 = [v3 newByClass:objc_opt_class()];

  return v4;
}

- (BOOL)exists
{
  v2 = [(AEBookInfo *)self bookBundlePath];
  v3 = objc_alloc_init(NSFileManager);
  v4 = 0;
  if ([v2 length] && v2)
  {
    v4 = [v3 fileExistsAtPath:v2];
  }

  return v4;
}

- (id)basePlusContentPath
{
  basePlusContentPath = self->_basePlusContentPath;
  if (!basePlusContentPath)
  {
    v4 = [(AEBookInfo *)self bookContentSubpath];
    v5 = [v4 length];

    v6 = [(AEBookInfo *)self bookBundlePath];
    v7 = v6;
    if (v5)
    {
      v8 = [(AEBookInfo *)self bookContentSubpath];
      v9 = [(NSString *)v7 stringByAppendingPathComponent:v8];
      v10 = self->_basePlusContentPath;
      self->_basePlusContentPath = v9;
    }

    else
    {
      v11 = self->_basePlusContentPath;
      self->_basePlusContentPath = v6;
      v7 = v11;
    }

    v12 = [(NSString *)self->_basePlusContentPath characterAtIndex:[(NSString *)self->_basePlusContentPath length]- 1];
    basePlusContentPath = self->_basePlusContentPath;
    if (v12 != 47)
    {
      v13 = [(NSString *)basePlusContentPath stringByAppendingString:@"/"];
      v14 = self->_basePlusContentPath;
      self->_basePlusContentPath = v13;

      basePlusContentPath = self->_basePlusContentPath;
    }
  }

  return basePlusContentPath;
}

- (void)setupFileSizeContentType
{
  v3 = [(AEBookInfo *)self bookBundlePath];
  [(AEBookInfo *)self setContentType:[AEBookInfo bookFormatByFilePath:v3]];

  if ([(AEBookInfo *)self contentType]== 2)
  {
    v9 = objc_alloc_init(NSFileManager);
    v4 = [(AEBookInfo *)self bookBundlePath];
    v5 = [v9 attributesOfItemAtPath:v4 error:0];

    v6 = [v5 objectForKey:NSFileSize];
    [(AEBookInfo *)self setFileSize:v6];
  }

  else
  {
    if ([(AEBookInfo *)self contentType])
    {
      return;
    }

    v7 = [(AEBookInfo *)self fileSize];
    v8 = [v7 intValue];

    if (!v8)
    {
      return;
    }

    v9 = [[NSNumber alloc] initWithInt:0];
    [(AEBookInfo *)self setFileSize:?];
  }
}

- (AEAnnotationProvider)annotationProvider
{
  annotationProvider = self->_annotationProvider;
  if (!annotationProvider)
  {
    [(AEBookInfo *)self initializeAnnotationProviderWithAssetID:0];
    annotationProvider = self->_annotationProvider;
  }

  return annotationProvider;
}

- (void)initializeAnnotationProviderWithAssetID:(id)a3
{
  v4 = a3;
  if (!self->_annotationProvider)
  {
    v5 = [(AEBookInfo *)self url];
    if (v5)
    {
      v6 = +[AEPluginRegistry sharedInstance];
      v7 = [v6 pluginForURL:v5];

      if (!v7)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1385D0();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_138664();
        }
      }

      v8 = [v7 helperForURL:v5 withOptions:0];
      if (!v8)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1386A8();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_13873C();
        }
      }

      v9 = [v8 annotationProviderWithCoordination:0 forAssetID:v4];
      if (!v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_138780();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_138814();
        }
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_138858();
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1388EC();
      }

      v9 = +[AEAnnotationProvider sharedInstance];
      if (!v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_138930();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1389C4();
        }

        v9 = 0;
      }
    }

    annotationProvider = self->_annotationProvider;
    self->_annotationProvider = v9;

    if (!self->_annotationProvider)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_138A08();
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_138A9C();
      }
    }
  }
}

- (void)setupBaseURL
{
  if (!self->_baseUrl)
  {
    v3 = BEURLSchemeiBooks;
    v4 = [(AEBookInfo *)self databaseKey];
    v7 = [NSString stringWithFormat:@"%@://%@", v3, v4];

    if (v7)
    {
      v5 = [[NSURL alloc] initWithString:v7];
      baseUrl = self->_baseUrl;
      self->_baseUrl = v5;
    }
  }
}

- (void)setBookAuthor:(id)a3
{
  v4 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"bookAuthor"];
  v5 = [v4 stringByConvertingControlCharactersToSpace];

  [(AEBookInfo *)self setPrimitiveValue:v5 forKey:@"bookAuthor"];

  [(AEBookInfo *)self didChangeValueForKey:@"bookAuthor"];
}

- (void)setSortAuthor:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"sortAuthor"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"sortAuthor"];

    [(AEBookInfo *)self didChangeValueForKey:@"sortAuthor"];
  }
}

- (void)setBookTitle:(id)a3
{
  v4 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"bookTitle"];
  v5 = [v4 stringByConvertingControlCharactersToSpace];

  [(AEBookInfo *)self setPrimitiveValue:v5 forKey:@"bookTitle"];

  [(AEBookInfo *)self didChangeValueForKey:@"bookTitle"];
}

- (void)setSortTitle:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"sortTitle"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"sortTitle"];

    [(AEBookInfo *)self didChangeValueForKey:@"sortTitle"];
  }
}

- (void)setTemporaryItemIdentifier:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"temporaryItemIdentifier"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"temporaryItemIdentifier"];

    [(AEBookInfo *)self didChangeValueForKey:@"temporaryItemIdentifier"];
  }
}

- (void)setPublisherName:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"publisherName"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"publisherName"];

    [(AEBookInfo *)self didChangeValueForKey:@"publisherName"];
  }
}

- (void)setPublisherLocation:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"publisherLocation"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"publisherLocation"];

    [(AEBookInfo *)self didChangeValueForKey:@"publisherLocation"];
  }
}

- (void)setPublisherYear:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"publisherYear"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"publisherYear"];

    [(AEBookInfo *)self didChangeValueForKey:@"publisherYear"];
  }
}

- (void)setStoreId:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"storeId"];
    v4 = [v5 stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"storeId"];

    [(AEBookInfo *)self didChangeValueForKey:@"storeId"];
  }
}

- (void)setGenre:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = &stru_1E7188;
  }

  v6 = v4;
  [(AEBookInfo *)self willChangeValueForKey:@"genre"];
  v5 = [(__CFString *)v6 stringByConvertingControlCharactersToSpace];
  [(AEBookInfo *)self setPrimitiveValue:v5 forKey:@"genre"];

  [(AEBookInfo *)self didChangeValueForKey:@"genre"];
}

- (BOOL)needsGenericCoverArt
{
  v3 = [(AEBookInfo *)self contentType];
  if (v3 == 2)
  {
    return 0;
  }

  if (v3)
  {
    return 1;
  }

  v4 = [(AEBookInfo *)self iTunesArtHref];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(AEBookInfo *)self embeddedArtHref];
    v5 = v6 == 0;
  }

  return v5;
}

- (void)_clearTransient
{
  url = self->_url;
  self->_url = 0;

  baseUrl = self->_baseUrl;
  self->_baseUrl = 0;

  basePlusContentPath = self->_basePlusContentPath;
  self->_basePlusContentPath = 0;

  password = self->_password;
  self->_password = 0;

  v7 = self;
  objc_sync_enter(v7);
  sortedDocuments = v7->_sortedDocuments;
  v7->_sortedDocuments = 0;

  objc_sync_exit(v7);
  linearDocuments = v7->_linearDocuments;
  v7->_linearDocuments = 0;

  v7->_readingDocumentCount = 0;
  v7->_linearDocumentCount = 0;
  linearOrdinalMap = v7->_linearOrdinalMap;
  v7->_linearOrdinalMap = 0;

  shouldDisableOptimizeSpeed = v7->_shouldDisableOptimizeSpeed;
  v7->_shouldDisableOptimizeSpeed = 0;

  v7->_mediaOverlayElementCountValid = 0;
  v7->_mediaOverlayElementCount = 0;
}

- (void)dealloc
{
  [(AEBookInfo *)self _clearTransient];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  annotationProvider = self->_annotationProvider;
  self->_annotationProvider = 0;

  v5.receiver = self;
  v5.super_class = AEBookInfo;
  [(AEBookInfo *)&v5 dealloc];
}

- (id)baseURL
{
  baseUrl = self->_baseUrl;
  if (!baseUrl)
  {
    [(AEBookInfo *)self setupBaseURL];
    baseUrl = self->_baseUrl;
  }

  return baseUrl;
}

- (id)_makeFileUrlIfPossible:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isFileURL] & 1) == 0)
  {
    v6 = [v5 path];
    if ([v6 rangeOfString:@".jpg" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:options:", @".png", 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(AEBookInfo *)self basePlusContentPath];
      v8 = [v7 stringByAppendingPathComponent:v6];

      v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

      v5 = v9;
    }
  }

  return v5;
}

- (NSString)embeddedArtHref
{
  v3 = [(AEBookInfo *)self embeddedArtHrefRejected];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    [(AEBookInfo *)self willAccessValueForKey:@"embeddedArtHref"];
    v5 = [(AEBookInfo *)self primitiveValueForKey:@"embeddedArtHref"];
    [(AEBookInfo *)self didAccessValueForKey:@"embeddedArtHref"];
  }

  return v5;
}

- (id)embeddedArtURL
{
  v3 = [(AEBookInfo *)self embeddedArtHref];
  if (v3)
  {
    v4 = [(AEBookInfo *)self bookBundlePath];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 stringByAppendingPathComponent:v3];

      v5 = [NSURL fileURLWithPath:v6 isDirectory:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)embeddedArtHrefMinusSubpath
{
  v3 = [(AEBookInfo *)self embeddedArtHref];
  if (v3)
  {
    v4 = [(AEBookInfo *)self bookContentSubpath];
    if (v4)
    {
      if ([v3 hasPrefix:@"/"])
      {
        v5 = [v3 substringFromIndex:1];

        v3 = v5;
      }

      if ([v4 hasPrefix:@"/"])
      {
        v6 = [v4 substringFromIndex:1];

        v4 = v6;
      }

      if (![v3 rangeOfString:v4])
      {
        v8 = [v3 substringFromIndex:v7];

        v3 = v8;
      }
    }
  }

  return v3;
}

+ (BOOL)isUndesirableImageData:(id)a3
{
  v3 = a3;
  if ([v3 hash] != 153495661)
  {
    v4 = [v3 length];
    if (v4 <= BCImageMaxFileSize)
    {
      v7 = CGImageSourceCreateWithData(v3, 0);
      if (!v7)
      {
        IsLegacyGenericBookCoverImageSource = 0;
        goto LABEL_4;
      }

      v8 = v7;
      v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
      if (v9)
      {
        v10 = v9;
        v11 = CFDictionaryGetValue(v9, @"PixelWidth");
        v12 = CFDictionaryGetValue(v10, @"PixelHeight");
        CFRelease(v10);
        if ([v11 integerValue] > 0x4000 || objc_msgSend(v12, "integerValue") > 0x4000)
        {

          IsLegacyGenericBookCoverImageSource = 1;
LABEL_13:
          CFRelease(v8);
          goto LABEL_4;
        }
      }

      IsLegacyGenericBookCoverImageSource = BKGenericBookCoverIsLegacyGenericBookCoverImageSource();
      goto LABEL_13;
    }
  }

  IsLegacyGenericBookCoverImageSource = 1;
LABEL_4:

  return IsLegacyGenericBookCoverImageSource;
}

- (id)embeddedArtSinf
{
  v3 = [(AEBookInfo *)self sinfInfo];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AEBookInfo *)self embeddedArtHrefMinusSubpath];
    if ([v5 length])
    {
      v6 = [(AEBookInfo *)self documentAtPath:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 sinfNumber];
        v9 = [NSPredicate predicateWithFormat:@"sinfNumber ==[n] %@", v8];

        v10 = [(AEBookInfo *)self sinfInfo];
        v11 = [v10 filteredSetUsingPredicate:v9];

        if ([v11 count] == &dword_0 + 1)
        {
          v12 = [v11 anyObject];
          v13 = [v12 sinfBlob];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)confirmBagContents
{
  v2 = self;
  v3 = [(AEBookInfo *)self sinfInfo];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AEBookInfo *)v2 embeddedArtURL];
    v6 = [(AEBookInfo *)v2 embeddedArtSinf];
    if (!v6 || ([v5 isFileURL] & 1) == 0)
    {
      [(AEBookInfo *)v2 sortedDocuments];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v43 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v43)
      {
        v38 = v5;
        v39 = v6;
        v41 = v2;
        v42 = *v52;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v52 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v51 + 1) + 8 * i);
            v9 = [v8 sinfNumber];
            v10 = [v9 intValue];

            if (v10 >= 1)
            {
              v44 = i;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v11 = [(AEBookInfo *)v2 sinfInfo];
              v12 = [v11 countByEnumeratingWithState:&v47 objects:v57 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v48;
LABEL_12:
                v15 = 0;
                while (1)
                {
                  if (*v48 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v47 + 1) + 8 * v15);
                  v17 = [v16 sinfNumber];
                  v18 = [v17 intValue];
                  v19 = [v8 sinfNumber];
                  v20 = [v19 intValue];

                  if (v18 == v20)
                  {
                    break;
                  }

                  if (v13 == ++v15)
                  {
                    v13 = [v11 countByEnumeratingWithState:&v47 objects:v57 count:16];
                    if (v13)
                    {
                      goto LABEL_12;
                    }

                    goto LABEL_18;
                  }
                }

                v21 = v16;

                if (!v8)
                {
                  goto LABEL_22;
                }

                v2 = v41;
                i = v44;
                if (v21)
                {
                  v23 = [(AEBookInfo *)v41 basePlusContentPath];
                  v24 = [v8 href];
                  v25 = [v23 stringByAppendingPathComponent:v24];

                  v5 = [NSURL fileURLWithPath:v25 isDirectory:0];

                  v26 = [v21 sinfBlob];

                  v6 = v26;
                  goto LABEL_28;
                }
              }

              else
              {
LABEL_18:

                v21 = 0;
LABEL_22:
                v2 = v41;
                i = v44;
              }
            }
          }

          v43 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v43);
        v5 = v38;
        v6 = v39;
      }

LABEL_28:
    }

    if ([v5 isFileURL])
    {
      v46 = 0;
      v27 = objc_autoreleasePoolPush();
      v28 = [v5 path];
      v45 = 0;
      v29 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v28 sinfData:v6 refetch:&v46 error:&v45];
      v22 = v45;

      if (!v29 && v46 == 1)
      {
        v30 = v5;
        v31 = [v22 domain];
        if ([v31 isEqualToString:fd45c988dd8cc08fce2e58d17f4ed2])
        {
          v32 = [v22 code] == -996;
        }

        else
        {
          v32 = 0;
        }

        v33 = AssetEngineErrorDomain;
        v55 = AssetEngineErrorIsFamilyRemovalKey;
        v34 = [NSNumber numberWithBool:v32];
        v56 = v34;
        v35 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v36 = [NSError errorWithDomain:v33 code:2002 userInfo:v35];

        v22 = v36;
        v5 = v30;
      }

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)urlForHref:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringWithPercentEscape];

    v7 = [(AEBookInfo *)self baseURL];
    v8 = [NSURL URLWithString:v6 relativeToURL:v7];
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return v8;
}

- (NSString)shortBookTitle
{
  v2 = [(AEBookInfo *)self bookTitle];
  v3 = [v2 rangeOfString:@": "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL && (v3 = [v2 rangeOfString:@"; "], v3 == 0x7FFFFFFFFFFFFFFFLL) && (v3 = objc_msgSend(v2, "rangeOfString:", @" / "), v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = v2;
  }

  else
  {
    v4 = [v2 substringToIndex:v3];
  }

  v5 = v4;

  return v5;
}

- (int)contentType
{
  [(AEBookInfo *)self willAccessValueForKey:@"contentType"];
  v3 = [(AEBookInfo *)self primitiveValueForKey:@"contentType"];
  v4 = [v3 intValue];

  [(AEBookInfo *)self didAccessValueForKey:@"contentType"];
  return v4;
}

- (void)setContentType:(int)a3
{
  v3 = *&a3;
  if ([(AEBookInfo *)self contentType]!= a3)
  {
    v5 = [[NSNumber alloc] initWithInt:v3];
    [(AEBookInfo *)self willChangeValueForKey:@"contentType"];
    [(AEBookInfo *)self setPrimitiveValue:v5 forKey:@"contentType"];
    [(AEBookInfo *)self didChangeValueForKey:@"contentType"];
  }
}

- (NSNumber)storeFrontId
{
  [(AEBookInfo *)self willAccessValueForKey:@"storeFrontId"];
  v3 = [(AEBookInfo *)self primitiveValueForKey:@"storeFrontId"];
  [(AEBookInfo *)self didAccessValueForKey:@"storeFrontId"];
  if (!v3)
  {
    v4 = [(AEBookInfo *)self bookBundlePath];
    v5 = [v4 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

    if (v5)
    {
      v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
      v7 = [v6 objectForKey:@"s"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[NSScanner alloc] initWithString:v7];
        v10 = 0;
        v3 = 0;
        if ([v8 scanLongLong:&v10])
        {
          v3 = [NSNumber numberWithUnsignedLongLong:v10];
        }

        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v7;
LABEL_9:

        if (v3)
        {
          [(AEBookInfo *)self setStoreFrontId:v3];
        }

        goto LABEL_13;
      }
    }

    v3 = 0;
LABEL_13:
  }

  return v3;
}

- (void)deleteSelfMaintainedRelationships
{
  v5 = [(AEBookInfo *)self managedObjectContext];
  v3 = [(AEBookInfo *)self databaseKey];
  v4 = [NSPredicate predicateWithFormat:@"bookDatabaseKey ==[n] %@", v3];

  [v5 batchDeleteEntity:@"BKMediaOverlayElement" matching:v4 prefetchRelationships:0];
  [v5 batchDeleteEntity:@"BKDocument" matching:v4 prefetchRelationships:0];
  [v5 batchDeleteEntity:@"BKDocumentPageCount" matching:v4 prefetchRelationships:0];
  [v5 batchDeleteEntity:@"BKChapterPageCount" matching:v4 prefetchRelationships:0];
}

- (void)deleteParsedRelationships
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(AEBookInfo *)self managedObjectContext];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = [(AEBookInfo *)self chapters];
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v52;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v51 + 1) + 8 * v10);

        [v4 deleteObject:v8];
        v10 = v10 + 1;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v7);
  }

  v12 = [(AEBookInfo *)self chapters];
  [(AEBookInfo *)self removeChapters:v12];

  v13 = self;
  objc_sync_enter(v13);
  sortedDocuments = v13->_sortedDocuments;
  v13->_sortedDocuments = 0;

  objc_sync_exit(v13);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = [(AEBookInfo *)v13 landmarks];
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v48;
    do
    {
      v20 = 0;
      v21 = v18;
      do
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v47 + 1) + 8 * v20);

        [v4 deleteObject:v18];
        v20 = v20 + 1;
        v21 = v18;
      }

      while (v17 != v20);
      v17 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v17);
  }

  v22 = [(AEBookInfo *)v13 landmarks];
  [(AEBookInfo *)v13 removeLandmarks:v22];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = [(AEBookInfo *)v13 physicalPages];
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v44;
    do
    {
      v28 = 0;
      v29 = v26;
      do
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v26 = *(*(&v43 + 1) + 8 * v28);

        [v4 deleteObject:v26];
        v28 = v28 + 1;
        v29 = v26;
      }

      while (v25 != v28);
      v25 = [v23 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v25);
  }

  v30 = [(AEBookInfo *)v13 physicalPages];
  [(AEBookInfo *)v13 removePhysicalPages:v30];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = [(AEBookInfo *)v13 sinfInfo];
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v40;
    do
    {
      v36 = 0;
      v37 = v34;
      do
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v34 = *(*(&v39 + 1) + 8 * v36);

        [v4 deleteObject:v34];
        v36 = v36 + 1;
        v37 = v34;
      }

      while (v33 != v36);
      v33 = [v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v33);
  }

  v38 = [(AEBookInfo *)v13 sinfInfo];
  [(AEBookInfo *)v13 removeSinfInfo:v38];

  [(AEBookInfo *)v13 setParserVersion:0];
  [(AEBookInfo *)v13 setParserOPFPath:0];
  [(AEBookInfo *)v13 setParserNCXPath:0];
  [(AEBookInfo *)v13 setEmbeddedArtHref:0];
  [(AEBookInfo *)v13 setEmbeddedArtHrefRejected:0];
  [(AEBookInfo *)v13 setHasComputedFixedLayoutSize:0];

  objc_autoreleasePoolPop(v3);
}

- (void)resetPersistentCache
{
  v3 = [(AEBookInfo *)self persistentCachePath];
  v4 = [v3 length];

  if (v4)
  {
    v5 = +[IMPersistentCacheManager sharedInstance];
    v6 = [(AEBookInfo *)self persistentCachePath];
    v7 = [v5 cacheForPath:v6 maxSize:0];

    [v7 clear];
  }
}

- (void)resetAsNewlyDownloaded
{
  [(AEBookInfo *)self _clearTransient];
  [(AEBookInfo *)self deleteSelfMaintainedRelationships];
  [(AEBookInfo *)self deleteParsedRelationships];
  [(AEBookInfo *)self resetPersistentCache];
  [(AEBookInfo *)self setFixedLayout:0];

  [(AEBookInfo *)self setInteractive:0];
}

- (BOOL)wasParsed
{
  v2 = [(AEBookInfo *)self parserVersion];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)isReadyToOpen
{
  v3 = [(AEBookInfo *)self isDownloading];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 0;
  }

  v5 = [(AEBookInfo *)self bookBundlePath];

  if (!v5)
  {
    return 0;
  }

  return [(AEBookInfo *)self isEncryptionLegal];
}

- (BOOL)isBookVersioned
{
  v2 = [(AEBookInfo *)self versionNumberHumanReadable];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)versionNumberHumanReadable
{
  v3 = +[AEAssetEngine libraryMgr];
  v4 = [(AEBookInfo *)self url];
  v5 = [v3 metadataForAssetAtURL:v4 needsCoordination:1];

  if (v5)
  {
    v6 = [IMLibraryPlist humanReadablePublicationVersionFromPlistEntry:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isProtected
{
  v2 = [(AEBookInfo *)self sinfInfo];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isStoreBook
{
  v2 = [(AEBookInfo *)self storeId];
  v3 = [v2 longLongValue] != 0;

  return v3;
}

- (BOOL)isManagedBook
{
  v2 = [(AEBookInfo *)self url];
  v3 = [IMLibraryPlist isManagedBookFromURL:v2];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)calculatePasswordRequired
{
  if ([(AEBookInfo *)self contentType]== 2)
  {
    v3 = [(AEBookInfo *)self isPasswordRequired];

    if (!v3)
    {
      v4 = +[AEPdfCache sharedInstance];
      v8 = [v4 copyCacheObjectForBook:self];

      v5 = v8;
      if (v8)
      {
        v6 = [v8 document];
        v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isLocked]);
        [(AEBookInfo *)self setIsPasswordRequired:v7];

        v5 = v8;
      }
    }
  }
}

- (BOOL)isPasswordDialogNeeded
{
  if ([(AEBookInfo *)self contentType]!= 2)
  {
    return 0;
  }

  [(AEBookInfo *)self calculatePasswordRequired];
  v3 = [(AEBookInfo *)self isPasswordRequired];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 0;
  }

  v5 = +[AEPdfCache sharedInstance];
  v6 = [v5 copyCacheObjectForBook:self];

  if (v6)
  {
    v7 = [v6 document];
    v8 = [v7 isLocked];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCorrectPassword:(id)a3 forDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AEBookInfo *)self contentType]== 2)
  {
    v8 = [v6 length];
    v9 = 0;
    if (v7 && v8)
    {
      v9 = [v7 unlockWithPassword:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPassword:(id)a3
{
  if (self->_password != a3)
  {
    v4 = [a3 copy];
    password = self->_password;
    self->_password = v4;

    v6 = +[AEPdfCache sharedInstance];
  }
}

- (BOOL)isEncryptionLegal
{
  if (![(AEBookInfo *)self isProtected])
  {
    return 1;
  }

  v3 = [(AEBookInfo *)self sinfInfo];
  v4 = [v3 anyObject];

  v5 = [v4 sinfNumber];
  v6 = [v5 intValue] > 0;

  return v6;
}

- (BOOL)currentlyDownloading
{
  v2 = [(AEBookInfo *)self isDownloading];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setCurrentlyDownloading:(BOOL)a3
{
  v3 = a3;
  v5 = [(AEBookInfo *)self isDownloading];
  v6 = [v5 BOOLValue];

  if (v6 != v3)
  {
    v7 = [[NSNumber alloc] initWithBool:v3];
    [(AEBookInfo *)self setIsDownloading:v7];
  }
}

- (void)didTurnIntoFault
{
  [(AEBookInfo *)self _clearTransient];
  v3.receiver = self;
  v3.super_class = AEBookInfo;
  [(AEBookInfo *)&v3 didTurnIntoFault];
}

- (void)didSave
{
  [(AEBookInfo *)self _clearTransient];
  [(AEBookInfo *)self saveAnnotationsManagedObjectContext];
  v3.receiver = self;
  v3.super_class = AEBookInfo;
  [(AEBookInfo *)&v3 didSave];
}

+ (id)databaseKeyFromStoreId:(id)a3 andUniqueId:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v5 length], v8 = v5, v7 > 1) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v9 = objc_msgSend(v6, "length"), v8 = v6, v9 >= 2))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mimeFromHref:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(AEBookInfo *)self databaseKey];
    v6 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND href == %@", v5, v4];

    v7 = [(AEBookInfo *)self managedObjectContext];
    v8 = [NSEntityDescription entityForName:@"BKDocument" inManagedObjectContext:v7];

    v9 = objc_alloc_init(NSFetchRequest);
    [v9 setEntity:v8];
    v10 = [NSArray arrayWithObjects:@"mime", 0];
    [v9 setPropertiesToFetch:v10];

    [v9 setResultType:2];
    [v9 setPredicate:v6];
    v11 = [(AEBookInfo *)self managedObjectContext];
    v17 = 0;
    v12 = [v11 executeFetchRequest:v9 error:&v17];
    v13 = v17;

    if (v13)
    {
      [v13 logRecursively];
    }

    if ([v12 count] == &dword_0 + 1)
    {
      v14 = [v12 objectAtIndex:0];
      v15 = [v14 objectForKey:@"mime"];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newestAnnotationWithPredicate:(id)a3 rangeCheck:(BOOL)a4 moc:(id)a5
{
  v5 = a4;
  v7 = [a5 entity:@"AEAnnotation" withPredicate:a3 sortBy:@"annotationCreationDate" ascending:0 fetchLimit:1];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = [v8 objectAtIndex:0];
    if (v9 && v5)
    {
      v10 = [(AEBookInfo *)self readingDocumentCount];
      if (v10 < [v9 ordinal])
      {

        v9 = 0;
      }

      if ([v9 annotationType] == 3)
      {
        v11 = -[AEBookInfo documentWithOrdinal:](self, "documentWithOrdinal:", [v9 ordinal]);
        v12 = v11;
        if (v11)
        {
          v13 = [v11 nonlinearElement];
          v14 = [v13 BOOLValue];

          if (v14)
          {

            v9 = 0;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)readingLocationAnnotation:(BOOL)a3 moc:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(AEBookInfo *)self assetID];
  v8 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:v7];

  v9 = [(AEBookInfo *)self newestAnnotationWithPredicate:v8 rangeCheck:v4 moc:v6];

  if (v9)
  {
    v10 = [v9 annotationCreatorIdentifier];

    if (!v10)
    {
      [v9 setAnnotationCreatorIdentifier:kAEAnnotationCreatorIdentifier_iBooks];
    }
  }

  return v9;
}

- (BKLocation)firstDocumentLocation
{
  v3 = [(AEBookInfo *)self firstDocumentHref];
  v4 = [(AEBookInfo *)self _documentOrdinalForHref:v3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
LABEL_6:
    if ([(AEBookInfo *)self linearIndexForOrdinal:v6]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v5 = [v3 rangeOfString:@"#"];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v3 substringToIndex:v5];
    v8 = [(AEBookInfo *)self _documentOrdinalForHref:v7];

    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v8;
      goto LABEL_6;
    }
  }

LABEL_7:
  v9 = [(AEBookInfo *)self linearDocuments];
  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v6 = [v10 unboxedDocumentOrdinal];
  }

LABEL_10:
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v12 = [[BKLocation alloc] initWithOrdinal:v11];

  return v12;
}

- (int64_t)_documentOrdinalForHref:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(AEBookInfo *)self managedObjectContext];
    v6 = [(AEBookInfo *)self databaseKey];
    v7 = [NSPredicate predicateWithFormat:@"href ==[n] %@ AND bookDatabaseKey == %@", v4, v6];

    v8 = [v5 copyEntityProperty:@"documentOrdinal" fromEntityName:@"BKDocument" withPredicate:v7];
    v9 = [v8 objectForKey:@"documentOrdinal"];

    if (v9)
    {
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)_adjustAnnotation:(id)a3 withLocation:(id)a4 selectedText:(id)a5 representativeText:(id)a6 updateStyle:(BOOL)a7
{
  v7 = a7;
  v26 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [AEAnnotation optimizedSelectedTextForSerialization:a5];
  v15 = [AEAnnotation optimizedRepresentativeTextForSerialization:v13 selectedText:v14];

  [v26 setOrdinal:{objc_msgSend(v12, "ordinal")}];
  v16 = +[NSDate date];
  [v26 setAnnotationCreationDate:v16];

  [v26 setAnnotationSelectedText:v14];
  [v26 setAnnotationRepresentativeText:v15];
  [v26 setLocation:v12];
  v17 = [(AEBookInfo *)self assetID];
  [v26 setAnnotationAssetID:v17];

  [v26 setSpineIndexUpdated:1];
  if (v7)
  {
    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 objectForKey:BKDefaultHighlightColor[0]];
    [v26 setAnnotationStyle:{objc_msgSend(v19, "intValue")}];

    v20 = +[NSUserDefaults standardUserDefaults];
    [v26 setAnnotationIsUnderline:{objc_msgSend(v20, "BOOLForKey:", BKDefaultUnderlineState)}];
  }

  if ([(AEBookInfo *)self isBookVersioned])
  {
    [(AEBookInfo *)self bumpReadingLocationAnnotationVersionToMinimumVersion:kAEAnnotationVersion_4];
  }

  if ([(AEBookInfo *)self hasDuplicatedDocument])
  {
    v21 = [v12 ordinal];
    v22 = [(AEBookInfo *)self sortedDocuments];
    if (v21)
    {
      v23 = 0;
      while (1)
      {
        v24 = [v22 objectAtIndexedSubscript:v23];
        v25 = [v24 isDuplicateSpineEntry];

        if (v25)
        {
          break;
        }

        if (v21 == ++v23)
        {
          goto LABEL_12;
        }
      }

      [v26 bumpAnnotationVersionToMinimumVersion:kAEAnnotationVersion_5];
    }

LABEL_12:
  }
}

- (void)setSingletonAnnotationType:(int)a3 location:(id)a4 modificationHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (([v8 ordinal] & 0x8000000000000000) == 0)
  {
    v10 = [(AEBookInfo *)self annotationProvider];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_CEE5C;
    v11[3] = &unk_1E5380;
    v14 = a3;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    [v10 performBlockOnUserSideQueueAndWait:v11];
  }
}

- (BKLocation)readingLocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_CF0CC;
  v11 = sub_CF0DC;
  v12 = 0;
  v3 = [(AEBookInfo *)self annotationProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_CF0E4;
  v6[3] = &unk_1E53A8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockOnUserSideQueueAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)readingDocumentCount
{
  result = self->_readingDocumentCount;
  if (!result)
  {
    v4 = [(AEBookInfo *)self managedObjectContext];
    v5 = [(AEBookInfo *)self databaseKey];
    v6 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND documentOrdinal >= 0", v5];

    self->_readingDocumentCount = [v4 countEntity:@"BKDocument" withPredicate:v6];
    return self->_readingDocumentCount;
  }

  return result;
}

- (id)sortedDocuments
{
  v2 = self;
  objc_sync_enter(v2);
  sortedDocuments = v2->_sortedDocuments;
  if (!sortedDocuments)
  {
    v4 = [(AEBookInfo *)v2 databaseKey];
    v5 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND documentOrdinal >= 0", v4];

    v6 = [(AEBookInfo *)v2 managedObjectContext];
    v7 = [v6 entity:@"BKDocument" withPredicate:v5 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

    v8 = [[NSArray alloc] initWithArray:v7];
    v9 = v2->_sortedDocuments;
    v2->_sortedDocuments = v8;

    sortedDocuments = v2->_sortedDocuments;
  }

  v10 = [(NSArray *)sortedDocuments copy];
  objc_sync_exit(v2);

  return v10;
}

- (BOOL)hasDuplicatedDocument
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AEBookInfo *)self sortedDocuments];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) isDuplicateSpineEntry];
        v7 = [v6 BOOLValue];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (unint64_t)linearDocumentCount
{
  result = self->_linearDocumentCount;
  if (!result)
  {
    v4 = objc_opt_class();
    v5 = [(AEBookInfo *)self databaseKey];
    v6 = [v4 linearDocumentPredicateForDatabaseKey:v5];

    v7 = [(AEBookInfo *)self managedObjectContext];
    self->_linearDocumentCount = [v7 countEntity:@"BKDocument" withPredicate:v6];

    return self->_linearDocumentCount;
  }

  return result;
}

- (id)linearDocuments
{
  linearDocuments = self->_linearDocuments;
  if (!linearDocuments)
  {
    v4 = objc_opt_class();
    v5 = [(AEBookInfo *)self databaseKey];
    v6 = [v4 linearDocumentPredicateForDatabaseKey:v5];

    v7 = [(AEBookInfo *)self managedObjectContext];
    v8 = [v7 entity:@"BKDocument" withPredicate:v6 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

    v9 = [[NSArray alloc] initWithArray:v8];
    v10 = self->_linearDocuments;
    self->_linearDocuments = v9;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = self->_linearDocuments;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v20;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v14 = v17 + 1;
          [*(*(&v19 + 1) + 8 * v16) setLinearDocumentIndex:{v17, v19}];
          v16 = v16 + 1;
          ++v17;
        }

        while (v13 != v16);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    linearDocuments = self->_linearDocuments;
  }

  return linearDocuments;
}

- (id)allDocuments
{
  v3 = [(AEBookInfo *)self databaseKey];
  v4 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@", v3];

  v5 = [(AEBookInfo *)self managedObjectContext];
  v6 = [v5 entity:@"BKDocument" withPredicate:v4 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

  v7 = [[NSArray alloc] initWithArray:v6];

  return v7;
}

- (int64_t)linearOrdinal:(int64_t)a3 offsetByDistance:(int64_t)a4
{
  v6 = [(AEBookInfo *)self linearIndexForOrdinal:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6 + a4;
  if (v7 >= [(AEBookInfo *)self linearDocumentCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(AEBookInfo *)self linearDocuments];
  v9 = [v8 objectAtIndexedSubscript:v7];
  v10 = [v9 unboxedDocumentOrdinal];

  return v10;
}

- (unint64_t)linearIndexForOrdinal:(unint64_t)a3
{
  linearOrdinalMap = self->_linearOrdinalMap;
  if (!linearOrdinalMap)
  {
    v6 = [(AEBookInfo *)self linearDocuments];
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_CF990;
    v7 = v14[3] = &unk_1E53D0;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v14];
    v8 = self->_linearOrdinalMap;
    self->_linearOrdinalMap = v7;
    v9 = v7;

    linearOrdinalMap = self->_linearOrdinalMap;
  }

  v10 = [NSNumber numberWithUnsignedInteger:a3];
  v11 = [(NSDictionary *)linearOrdinalMap objectForKey:v10];

  if (v11)
  {
    v12 = [v11 unsignedIntegerValue];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (CGSize)fixedLayoutSizeForDocumentWithOrdinal:(unint64_t)a3
{
  v4 = [(AEBookInfo *)self documentWithOrdinal:a3];
  if (!v4)
  {
    v4 = [(AEBookInfo *)self lastDocument];
  }

  [v4 fixedLayoutSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)firstDocument
{
  v2 = [(AEBookInfo *)self sortedDocuments];
  v3 = [v2 firstObject];

  return v3;
}

- (id)lastDocument
{
  v2 = [(AEBookInfo *)self sortedDocuments];
  v3 = [v2 lastObject];

  return v3;
}

- (id)documentWithOrdinal:(unint64_t)a3
{
  v4 = [(AEBookInfo *)self sortedDocuments];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
  }

  return v5;
}

- (id)urlForDocument:(id)a3
{
  v4 = [a3 href];
  if ([v4 length])
  {
    v5 = [v4 stringWithPercentEscape];

    v6 = [(AEBookInfo *)self baseURL];
    v7 = [NSURL URLWithString:v5 relativeToURL:v6];

    v4 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)documentsWithPath:(id)a3 sortBy:(id)a4 limit:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [(AEBookInfo *)self databaseKey];
    v11 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND href ==[n] %@", v10, v8];

    v12 = [(AEBookInfo *)self managedObjectContext];
    v13 = [v12 entity:@"BKDocument" withPredicate:v11 sortBy:v9 ascending:0 fetchLimit:a5];
  }

  else
  {
    v13 = +[NSArray array];
  }

  return v13;
}

- (id)documentAtPath:(id)a3
{
  v3 = [(AEBookInfo *)self documentsWithPath:a3 sortBy:@"documentOrdinal" limit:0];
  v4 = [v3 lastObject];

  return v4;
}

- (id)documentContainingLocation:(id)a3
{
  if (a3)
  {
    v4 = -[AEBookInfo documentWithOrdinal:](self, "documentWithOrdinal:", [a3 ordinal]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)checkAnnotationsForDuplicatedDocuments
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_CF0CC;
  v53 = sub_CF0DC;
  v54 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = sub_CF0CC;
  v47[4] = sub_CF0DC;
  v48 = 0;
  v2 = [(AEBookInfo *)self annotationProvider];
  v3 = [v2 uiManagedObjectContext];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_D0300;
  v43[3] = &unk_1E53F8;
  v45 = v47;
  v43[4] = self;
  v44 = v3;
  v46 = &v49;
  v24 = v44;
  [v44 performBlockAndWait:v43];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [(AEBookInfo *)self sortedDocuments];
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v40;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if (([v9 isDeleted] & 1) == 0)
        {
          v10 = [v9 isDuplicateSpineEntry];
          if (v10)
          {
            v11 = 1;
          }

          else
          {
            v11 = v6 <= 0;
          }

          v12 = !v11;

          if (v12)
          {
            v13 = [v9 documentOrdinal];
            v14 = [v13 integerValue];

            v15 = [NSNumber numberWithInteger:&v14[-v6]];
            v16 = [(AEBookInfo *)self assetID];
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_D037C;
            v33[3] = &unk_1E5420;
            v17 = v15;
            v34 = v17;
            v18 = v16;
            v35 = v18;
            v19 = v24;
            v36 = v19;
            v37 = v6;
            v38 = v14;
            [v19 performBlockAndWait:v33];
            v20 = v50[5];
            if (v20)
            {
              v21 = [v20 ordinal];
              if (v21 == [v17 integerValue])
              {
                v29 = 0;
                v30 = &v29;
                v31 = 0x2020000000;
                v32 = 0;
                v28[0] = _NSConcreteStackBlock;
                v28[1] = 3221225472;
                v28[2] = sub_D059C;
                v28[3] = &unk_1E5448;
                v28[4] = v47;
                v28[5] = &v49;
                v28[6] = &v29;
                v28[7] = v6;
                [v19 performBlockAndWait:v28];
                if (*(v30 + 24) == 1)
                {
                  [(AEBookInfo *)self setReadingLocation:v50[5]];
                  v22 = v50[5];
                  v50[5] = 0;
                }

                _Block_object_dispose(&v29, 8);
              }
            }
          }

          v23 = [v9 isDuplicateSpineEntry];

          if (v23)
          {
            ++v6;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v5);

    if (v6 >= 1)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_D0618;
      v26[3] = &unk_1E3F50;
      v26[4] = self;
      v27 = v24;
      [v27 performBlockAndWait:v26];
    }
  }

  else
  {
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);
}

- (id)annotationsOnMainQueue
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(AEBookInfo *)self assetID];
  v5 = [AEAnnotation annotationsPredicate:v4];

  v6 = [(AEBookInfo *)self annotationProvider];
  v7 = [v6 uiManagedObjectContext];
  v8 = [v7 entity:@"AEAnnotation" withPredicate:v5 sortBy:@"annotationCreationDate" ascending:1 fetchLimit:0];

  objc_autoreleasePoolPop(v3);

  return v8;
}

+ (id)_nonUpdatedAnnotationsForDocumentOrdinal:(id)a3 assetID:(id)a4 moc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[NSThread isMainThread])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = +[AEAnnotation predicateForAnnotationsWithAssetID:ordinal:](AEAnnotation, "predicateForAnnotationsWithAssetID:ordinal:", v8, [v7 intValue]);
    v19[0] = v11;
    v12 = kAEAnnotationSpineIndexUpdated;
    v13 = +[NSNull null];
    v14 = [NSPredicate predicateWithFormat:@"%K == NO OR %K == %@", v12, v12, v13];
    v19[1] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

    v17 = [v9 entity:@"AEAnnotation" withPredicate:v16 sortBy:@"annotationCreationDate" ascending:1 fetchLimit:0];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)deleteAnnotation:(id)a3
{
  v4 = a3;
  v5 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 annotationAssetID];
    v7 = [v4 annotationType];
    v8 = [v4 annotationUuid];
    v12 = 138412802;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "deleteAnnotation: assetID: %@, type: %d, uuid: %@", &v12, 0x1Cu);
  }

  v9 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_138AE0(v4, v9);
  }

  v10 = [(AEBookInfo *)self annotationProvider];
  v11 = [v4 managedObjectContext];
  [v10 deleteAnnotation:v4];
  [v10 saveManagedObjectContext:v11];
}

- (void)expandAnnotation:(id)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6
{
  if (a4)
  {
    [(AEBookInfo *)self _adjustAnnotation:a3 withLocation:a4 selectedText:a5 representativeText:a6 updateStyle:0];
  }
}

- (id)addAnnotation:(int)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6
{
  v8 = *&a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10 || ([v10 ordinal] & 0x8000000000000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    v13 = +[AEBookInfo defaultAnnotationCreatorIdentifier];
    v14 = [(AEBookInfo *)self assetID];
    v15 = [(AEBookInfo *)self annotationProvider];
    v16 = [v15 uiManagedObjectContext];
    v17 = [AEAnnotation insertAnnotationWithAssetID:v14 creatorIdentifier:v13 annotationUuid:0 intoManagedObjectContext:v16];

    [v17 setAnnotationType:v8];
    [(AEBookInfo *)self _adjustAnnotation:v17 withLocation:v10 selectedText:v11 representativeText:v12 updateStyle:1];
    v18 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v17 annotationAssetID];
      v20 = [v17 annotationType];
      v21 = [v17 annotationUuid];
      v24 = 138412802;
      v25 = v19;
      v26 = 1024;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "addAnnotation: assetID: %@, type: %d, uuid: %@", &v24, 0x1Cu);
    }

    v22 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_138B58(v17, v22);
    }
  }

  return v17;
}

- (BOOL)bumpReadingLocationAnnotationVersionToMinimumVersion:(id)a3
{
  v4 = a3;
  v5 = [(AEBookInfo *)self annotationProvider];
  v6 = [v5 uiManagedObjectContext];
  v7 = [(AEBookInfo *)self readingLocationAnnotation:0 moc:v6];

  v8 = [v7 annotationVersion];
  v9 = v8;
  if (v8 && (v8 == v4 || [v8 compare:v4 options:64] != -1))
  {
    v10 = 0;
  }

  else
  {
    [v7 setAnnotationVersion:v4];
    v10 = 1;
  }

  return v10;
}

- (void)addChapters:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"chapters"];
  [v4 unionSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:v5];
}

- (void)addChaptersObject:(id)a3
{
  v4 = a3;
  v6 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"chapters"];
  [v5 addObject:v4];

  [(AEBookInfo *)self didChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:v6];
}

- (void)removeChapters:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"chapters" withSetMutation:2 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"chapters"];
  [v4 minusSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"chapters" withSetMutation:2 usingObjects:v5];
}

- (void)addLandmarks:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"landmarks"];
  [v4 unionSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:v5];
}

- (void)addLandmarksObject:(id)a3
{
  v4 = a3;
  v6 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"landmarks"];
  [v5 addObject:v4];

  [(AEBookInfo *)self didChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:v6];
}

- (void)removeLandmarks:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"landmarks" withSetMutation:2 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"landmarks"];
  [v4 minusSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"landmarks" withSetMutation:2 usingObjects:v5];
}

- (void)addPhysicalPages:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"physicalPages"];
  [v4 unionSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:v5];
}

- (void)addPhysicalPagesObject:(id)a3
{
  v4 = a3;
  v6 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"physicalPages"];
  [v5 addObject:v4];

  [(AEBookInfo *)self didChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:v6];
}

- (void)removePhysicalPages:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"physicalPages" withSetMutation:2 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"physicalPages"];
  [v4 minusSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"physicalPages" withSetMutation:2 usingObjects:v5];
}

- (BOOL)hasPhysicalPages
{
  v2 = [(AEBookInfo *)self physicalPages];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)physicalPageMap
{
  if ([(AEBookInfo *)self hasPhysicalPages])
  {
    v3 = [NSPredicate predicateWithFormat:@"bookInfo == %@", self];
    v4 = [(AEBookInfo *)self managedObjectContext];
    v5 = [NSArray arrayWithObjects:@"name", @"href", 0];
    v6 = [v4 copyEntityPropertiesArray:v5 fromEntityName:@"BKPhysicalPage" withPredicate:v3 sortBy:@"absoluteOrder" ascending:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)physicalPageMapForDocument:(id)a3
{
  v4 = a3;
  v5 = [(AEBookInfo *)self hasPhysicalPages];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [v4 href];
    v8 = [NSPredicate predicateWithFormat:@"baseHref == %@ && bookInfo == %@", v7, self];

    v9 = [(AEBookInfo *)self managedObjectContext];
    v10 = [NSArray arrayWithObjects:@"name", @"href", 0];
    v6 = [v9 copyEntityPropertiesArray:v10 fromEntityName:@"BKPhysicalPage" withPredicate:v8 sortBy:@"absoluteOrder" ascending:1];
  }

  return v6;
}

- (id)navigationInfosForDocument:(id)a3
{
  if (a3)
  {
    v4 = [a3 href];
    v5 = [NSPredicate predicateWithFormat:@"baseHref == %@ && bookInfo == %@", v4, self];

    v6 = [(AEBookInfo *)self managedObjectContext];
    v7 = [NSArray arrayWithObjects:@"name", @"href", 0];
    v8 = [v6 copyEntityPropertiesArray:v7 fromEntityName:@"BKNavigationInfo" withPredicate:v5 sortBy:@"absoluteOrder" ascending:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addSinfInfoObject:(id)a3
{
  v4 = a3;
  v6 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"sinfInfo" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"sinfInfo"];
  [v5 addObject:v4];

  [(AEBookInfo *)self didChangeValueForKey:@"sinfInfo" withSetMutation:1 usingObjects:v6];
}

- (void)removeSinfInfo:(id)a3
{
  v5 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"sinfInfo" withSetMutation:2 usingObjects:v5];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"sinfInfo"];
  [v4 minusSet:v5];

  [(AEBookInfo *)self didChangeValueForKey:@"sinfInfo" withSetMutation:2 usingObjects:v5];
}

- (BOOL)suppressTOC
{
  v2 = [(AEBookInfo *)self chapters];
  v3 = [v2 count] < 2;

  return v3;
}

- (BOOL)needsReparsing
{
  v3 = [(AEBookInfo *)self parseDate];
  v4 = v3 == 0;

  if (!v3)
  {
    v5 = _ITEpubParsingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(AEBookInfo *)self assetLogID];
      v7 = [(AEBookInfo *)self assetID];
      v20 = 138543618;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "We've never parsed %{public}@ - %@", &v20, 0x16u);
    }
  }

  v8 = [(AEBookInfo *)self updateDate];
  if (v8)
  {
    v9 = v8;
    v10 = [(AEBookInfo *)self parseDate];

    if (v10)
    {
      v11 = [(AEBookInfo *)self updateDate];
      v12 = [(AEBookInfo *)self parseDate];
      v13 = [v11 compare:v12];

      if (v13 == &dword_0 + 1)
      {
        v14 = _ITEpubParsingLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [(AEBookInfo *)self updateDate];
          v16 = [(AEBookInfo *)self parseDate];
          v17 = [(AEBookInfo *)self assetLogID];
          v18 = [(AEBookInfo *)self assetID];
          v20 = 138544130;
          v21 = v15;
          v22 = 2114;
          v23 = v16;
          v24 = 2114;
          v25 = v17;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "UpdateDate: %{public}@ parseDate: %{public}@ -- %{public}@ - %@", &v20, 0x2Au);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

- (BOOL)wantsJumpBackHistory
{
  if ([(AEBookInfo *)self contentType])
  {
    return 0;
  }

  else
  {
    return ![(AEBookInfo *)self isFixedLayout];
  }
}

- (void)_setBitMask:(unint64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(AEBookInfo *)self appleDisplayOptions];
  v8 = [v7 longLongValue];

  if (v4)
  {
    v9 = v8 | a3;
  }

  else
  {
    v9 = v8 & ~a3;
  }

  v10 = [[NSNumber alloc] initWithLongLong:v9];
  [(AEBookInfo *)self setAppleDisplayOptions:v10];
}

- (int64_t)writingDirection
{
  v3 = [(AEBookInfo *)self bookLanguage];
  if (v3)
  {

LABEL_3:
    v4 = [(AEBookInfo *)self bookLanguage];
    v5 = [NSParagraphStyle defaultWritingDirectionForLanguage:v4];

    return v5;
  }

  v7 = [(AEBookInfo *)self pageProgressionDirection];

  if (!v7)
  {
    goto LABEL_3;
  }

  return [(AEBookInfo *)self isPageProgressionRTL];
}

- (int64_t)scrollModeOrientation
{
  v3 = [(AEBookInfo *)self scrollDirection];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"default";
  }

  v6 = v5;

  if ([(__CFString *)v6 isEqualToString:@"default"])
  {
    if ([(AEBookInfo *)self languageDefaultsToHorizontalTextFlow]|| ![(AEBookInfo *)self isPageProgressionRTL])
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if ([(__CFString *)v6 isEqualToString:@"horizontal"])
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)hasBuiltInFonts
{
  v2 = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([v2 longLongValue] >> 6) & 1;

  return v3;
}

- (void)setHasBuiltInFonts:(BOOL)a3
{
  v3 = a3;
  if ([(AEBookInfo *)self hasBuiltInFonts]!= a3)
  {
    [(AEBookInfo *)self _setBitMask:64 enabled:v3];

    [(AEBookInfo *)self setUseGlobalContentStyle:&__kCFBooleanFalse];
  }
}

- (BOOL)isFixedLayout
{
  v2 = [(AEBookInfo *)self appleDisplayOptions];
  v3 = [v2 longLongValue];

  return v3 & 1;
}

- (BOOL)isInteractive
{
  v2 = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([v2 longLongValue] >> 8) & 1;

  return v3;
}

- (int)openToSpread
{
  v3 = [(AEBookInfo *)self appleDisplayOptions];
  v4 = [v3 longLongValue];

  if ((v4 & 0x20) != 0)
  {
    v6 = [(AEBookInfo *)self appleDisplayOptions];
    v7 = [v6 longLongValue];

    return (v7 >> 4) & 1;
  }

  else
  {
    LODWORD(v5) = -1;
  }

  return v5;
}

- (void)setOpenToSpread:(int)a3
{
  if (*&a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AEBookInfo *)self _setBitMask:32 enabled:0];
    v4 = 0;
  }

  else
  {
    v5 = *&a3;
    [(AEBookInfo *)self _setBitMask:32 enabled:1];
    v4 = v5 == 1;
  }

  [(AEBookInfo *)self _setBitMask:16 enabled:v4];
}

- (BOOL)obeyPageBreaks
{
  v3 = [(AEBookInfo *)self appleDisplayOptions];
  if (([v3 longLongValue] & 2) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = ![(AEBookInfo *)self isStoreBook];
  }

  return v4;
}

- (int)orientationLock
{
  v3 = [(AEBookInfo *)self isPortraitProhibited];
  v4 = v3 ^ [(AEBookInfo *)self isLandscapeProhibited];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPortraitProhibited
{
  v2 = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([v2 longLongValue] >> 2) & 1;

  return v3;
}

- (BOOL)isLandscapeProhibited
{
  v2 = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([v2 longLongValue] >> 3) & 1;

  return v3;
}

- (BOOL)hidesSpine
{
  v2 = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([v2 longLongValue] >> 7) & 1;

  return v3;
}

- (void)setHidesSpine:(BOOL)a3
{
  v3 = a3;
  if ([(AEBookInfo *)self hidesSpine]!= a3)
  {

    [(AEBookInfo *)self _setBitMask:128 enabled:v3];
  }
}

- (id)assetType
{
  v3 = [(AEBookInfo *)self contentType];
  if (v3 == 3)
  {
    v4 = [(AEBookInfo *)self aeAssetType];
  }

  else if (v3 == 2)
  {
    v4 = @"application/pdf";
  }

  else if (v3)
  {
    v4 = &stru_1E7188;
  }

  else if ([(AEBookInfo *)self isFixedLayout])
  {
    v4 = @"application/ePubPictureBook";
  }

  else
  {
    v4 = @"application/ePub";
  }

  return v4;
}

- (id)url
{
  [(AEBookInfo *)self _cacheURL];
  url = self->_url;

  return url;
}

- (void)_cacheURL
{
  if (!self->_url)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->_url)
    {
      v3 = [(AEBookInfo *)obj bookBundlePath];

      if (v3)
      {
        v4 = [NSURL alloc];
        v5 = [(AEBookInfo *)obj bookBundlePath];
        v6 = [v4 initFileURLWithPath:v5];
        url = self->_url;
        self->_url = v6;
      }
    }

    objc_sync_exit(obj);
  }
}

- (void)setBookBundlePath:(id)a3
{
  v4 = a3;
  [(AEBookInfo *)self willChangeValueForKey:@"bookBundlePath"];
  url = self->_url;
  self->_url = 0;

  [(AEBookInfo *)self setPrimitiveValue:v4 forKey:@"bookBundlePath"];

  [(AEBookInfo *)self didChangeValueForKey:@"bookBundlePath"];
}

- (id)dictionaryRepresentation
{
  v3 = [(AEBookInfo *)self entity];
  v4 = [v3 attributesByName];
  v5 = [v4 allKeys];

  v6 = [(AEBookInfo *)self dictionaryWithValuesForKeys:v5];

  return v6;
}

- (BOOL)hasMediaOverlayElements
{
  if (!self->_mediaOverlayElementCountValid)
  {
    v3 = [(AEBookInfo *)self databaseKey];
    v4 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND mediaOverlayHref != NULL", v3];

    v5 = [(AEBookInfo *)self managedObjectContext];
    v6 = [v5 countEntity:@"BKDocument" withPredicate:v4];

    [(AEBookInfo *)self _setValidMediaOverlayElementCount:v6];
  }

  return self->_mediaOverlayElementCount > 0;
}

- (void)saveAnnotationsManagedObjectContext
{
  [(AEBookInfo *)self _cacheURL];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D24A4;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)shouldDisableOptimizeSpeed
{
  shouldDisableOptimizeSpeed = self->_shouldDisableOptimizeSpeed;
  if (!shouldDisableOptimizeSpeed)
  {
    v4 = [(AEBookInfo *)self bookBundlePath];
    v5 = [v4 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

    if (v5)
    {
      v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKey:@"shouldDisableOptimizeSpeed"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          objc_storeStrong(&self->_shouldDisableOptimizeSpeed, v8);
        }
      }

      else
      {
        isKindOfClass = 1;
      }
    }

    else
    {
      isKindOfClass = 1;
    }

    v10 = [NSNumber numberWithBool:isKindOfClass & 1];
    v11 = self->_shouldDisableOptimizeSpeed;
    self->_shouldDisableOptimizeSpeed = v10;

    shouldDisableOptimizeSpeed = self->_shouldDisableOptimizeSpeed;
  }

  return [(NSNumber *)shouldDisableOptimizeSpeed BOOLValue];
}

- (BEProtocolCacheItem)cacheItem
{
  v2 = self;
  v3 = [(AEBookInfo *)v2 assetID];
  v4 = objc_getAssociatedObject(v2, "cacheItem");
  if (!v4)
  {
    v4 = objc_alloc_init(BEProtocolCacheItem);
    [v4 setBookID:v3];
    v5 = [(AEBookInfo *)v2 basePlusContentPath];
    [v4 setRootPath:v5];

    v6 = [(AEBookInfo *)v2 bookEpubId];
    [v4 setBookEpubId:v6];

    v7 = [(AEBookInfo *)v2 bookEpubIdWithUUIDScheme];
    [v4 setBookEpubIdWithUUIDScheme:v7];

    v8 = [(AEBookInfo *)v2 sinfInfo];
    v9 = [v8 allObjects];

    if ([v9 count])
    {
      v10 = [v9 valueForKey:@"sinfNumber"];
      v11 = [v9 valueForKey:@"sinfBlob"];
      v12 = [[NSDictionary alloc] initWithObjects:v11 forKeys:v10];
      [v4 setSinfInfo:v12];
    }

    v13 = [(AEBookInfo *)v2 databaseKey];
    v14 = [NSPredicate predicateWithFormat:@"bookDatabaseKey ==[n] %@", v13];

    v15 = [[NSArray alloc] initWithObjects:{@"mime", @"fileSize", @"sinfNumber", @"compressionAlgorithm", @"encryptionAlgorithm", @"href", 0}];
    v16 = [(AEBookInfo *)v2 managedObjectContext];
    v17 = [v16 copyEntityPropertiesArray:v15 fromEntityName:@"BKDocument" withPredicate:v14 sortBy:0 ascending:1];

    if ([v17 count])
    {
      v18 = [v17 valueForKey:@"href"];
      v19 = [[NSDictionary alloc] initWithObjects:v17 forKeys:v18];
      [v4 setDocuments:v19];
    }

    objc_setAssociatedObject(v2, "cacheItem", v4, &dword_0 + 1);
  }

  return v4;
}

- (BKStyleManager)styleManager
{
  v3 = objc_getAssociatedObject(self, "styleManager");
  if (!v3)
  {
    v4 = [(AEBookInfo *)self bookLanguage];
    v3 = [BKStyleManager styleManagerWithLanguage:v4];

    objc_setAssociatedObject(self, "styleManager", v3, &dword_0 + 1);
  }

  return v3;
}

+ (id)storeURLForBookStoreId:(id)a3 isAudiobook:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 longLongValue])
  {
    v6 = +[AEUserPublishing sharedInstance];
    v7 = [v6 storeURLForStoreId:v5 dataSource:0];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = @"book";
      if (v4)
      {
        v10 = @"audiobook";
      }

      v11 = [NSString stringWithFormat:@"https://books.apple.com/%@/id%@", v10, v5];
      v9 = [[NSURL alloc] initWithString:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)bkPageProgressionDirection
{
  v2 = [(AEBookInfo *)self pageProgressionDirection];
  v3 = [v2 isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];

  return v3;
}

- (BOOL)languageDefaultsToHorizontalTextFlow
{
  v2 = [(AEBookInfo *)self bookLanguage];
  v3 = [IMLanguageUtilities languageDefaultsToHorizontalOrientation:v2];

  return v3;
}

- (int)languageDefaultPageProgressDirection
{
  v2 = [(AEBookInfo *)self bookLanguage];
  v3 = [IMLanguageUtilities languageDefaultsToPageProgressLeftToRight:v2];

  return v3 ^ 1;
}

- (BEBookViewModel)epub
{
  v2 = self;
  v3 = AEBookInfo.epub.getter();

  return v3;
}

@end