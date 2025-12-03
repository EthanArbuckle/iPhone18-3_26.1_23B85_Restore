@interface AEBookInfo
+ (BOOL)isUndesirableImageData:(id)data;
+ (id)_nonUpdatedAnnotationsForDocumentOrdinal:(id)ordinal assetID:(id)d moc:(id)moc;
+ (id)bookFromDatabaseKey:(id)key withMOC:(id)c;
+ (id)bookObjectIDsWithPredicate:(id)predicate inMoc:(id)moc;
+ (id)booksWithPredicate:(id)predicate inMoc:(id)moc;
+ (id)booksWithPredicate:(id)predicate sortBy:(id)by ascending:(BOOL)ascending fetchLimit:(int)limit inMoc:(id)moc;
+ (id)booksWithPredicate:(id)predicate sortDescriptors:(id)descriptors inMoc:(id)moc;
+ (id)databaseKeyFromStoreId:(id)id andUniqueId:(id)uniqueId;
+ (id)excludeDeletedBooksPredicate;
+ (id)newBlankBook:(id)book;
+ (id)storeURLForBookStoreId:(id)id isAudiobook:(BOOL)audiobook;
- (AEAnnotationProvider)annotationProvider;
- (BEBookViewModel)epub;
- (BEProtocolCacheItem)cacheItem;
- (BKLocation)firstDocumentLocation;
- (BKLocation)readingLocation;
- (BKStyleManager)styleManager;
- (BOOL)bumpReadingLocationAnnotationVersionToMinimumVersion:(id)version;
- (BOOL)currentlyDownloading;
- (BOOL)exists;
- (BOOL)hasBuiltInFonts;
- (BOOL)hasDuplicatedDocument;
- (BOOL)hasMediaOverlayElements;
- (BOOL)hasPhysicalPages;
- (BOOL)hasUpsellPage;
- (BOOL)hidesSpine;
- (BOOL)isBookVersioned;
- (BOOL)isCorrectPassword:(id)password forDocument:(id)document;
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
- (CGSize)fixedLayoutSizeForDocumentWithOrdinal:(unint64_t)ordinal;
- (NSNumber)storeFrontId;
- (NSString)embeddedArtHref;
- (NSString)shortBookTitle;
- (id)_makeFileUrlIfPossible:(id)possible;
- (id)addAnnotation:(int)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText;
- (id)allDocuments;
- (id)annotationsOnMainQueue;
- (id)assetType;
- (id)basePlusContentPath;
- (id)baseURL;
- (id)confirmBagContents;
- (id)dictionaryRepresentation;
- (id)documentAtPath:(id)path;
- (id)documentContainingLocation:(id)location;
- (id)documentWithOrdinal:(unint64_t)ordinal;
- (id)documentsWithPath:(id)path sortBy:(id)by limit:(int64_t)limit;
- (id)embeddedArtHrefMinusSubpath;
- (id)embeddedArtSinf;
- (id)embeddedArtURL;
- (id)firstDocument;
- (id)lastDocument;
- (id)linearDocuments;
- (id)mimeFromHref:(id)href;
- (id)navigationInfosForDocument:(id)document;
- (id)newestAnnotationWithPredicate:(id)predicate rangeCheck:(BOOL)check moc:(id)moc;
- (id)physicalPageMap;
- (id)physicalPageMapForDocument:(id)document;
- (id)readingLocationAnnotation:(BOOL)annotation moc:(id)moc;
- (id)sortedDocuments;
- (id)url;
- (id)urlForDocument:(id)document;
- (id)urlForHref:(id)href;
- (id)versionNumberHumanReadable;
- (int)bkPageProgressionDirection;
- (int)contentType;
- (int)languageDefaultPageProgressDirection;
- (int)openToSpread;
- (int)orientationLock;
- (int64_t)_documentOrdinalForHref:(id)href;
- (int64_t)linearOrdinal:(int64_t)ordinal offsetByDistance:(int64_t)distance;
- (int64_t)scrollModeOrientation;
- (int64_t)writingDirection;
- (unint64_t)linearDocumentCount;
- (unint64_t)linearIndexForOrdinal:(unint64_t)ordinal;
- (unint64_t)readingDocumentCount;
- (void)_adjustAnnotation:(id)annotation withLocation:(id)location selectedText:(id)text representativeText:(id)representativeText updateStyle:(BOOL)style;
- (void)_cacheURL;
- (void)_clearTransient;
- (void)_setBitMask:(unint64_t)mask enabled:(BOOL)enabled;
- (void)addChapters:(id)chapters;
- (void)addChaptersObject:(id)object;
- (void)addLandmarks:(id)landmarks;
- (void)addLandmarksObject:(id)object;
- (void)addPhysicalPages:(id)pages;
- (void)addPhysicalPagesObject:(id)object;
- (void)addSinfInfoObject:(id)object;
- (void)calculatePasswordRequired;
- (void)checkAnnotationsForDuplicatedDocuments;
- (void)dealloc;
- (void)deleteAnnotation:(id)annotation;
- (void)deleteParsedRelationships;
- (void)deleteSelfMaintainedRelationships;
- (void)didSave;
- (void)didTurnIntoFault;
- (void)expandAnnotation:(id)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText;
- (void)initializeAnnotationProviderWithAssetID:(id)d;
- (void)removeChapters:(id)chapters;
- (void)removeLandmarks:(id)landmarks;
- (void)removePhysicalPages:(id)pages;
- (void)removeSinfInfo:(id)info;
- (void)resetAsNewlyDownloaded;
- (void)resetPersistentCache;
- (void)saveAnnotationsManagedObjectContext;
- (void)setBookAuthor:(id)author;
- (void)setBookBundlePath:(id)path;
- (void)setBookTitle:(id)title;
- (void)setContentType:(int)type;
- (void)setCurrentlyDownloading:(BOOL)downloading;
- (void)setGenre:(id)genre;
- (void)setHasBuiltInFonts:(BOOL)fonts;
- (void)setHidesSpine:(BOOL)spine;
- (void)setOpenToSpread:(int)spread;
- (void)setPassword:(id)password;
- (void)setPublisherLocation:(id)location;
- (void)setPublisherName:(id)name;
- (void)setPublisherYear:(id)year;
- (void)setSingletonAnnotationType:(int)type location:(id)location modificationHandler:(id)handler;
- (void)setSortAuthor:(id)author;
- (void)setSortTitle:(id)title;
- (void)setStoreId:(id)id;
- (void)setTemporaryItemIdentifier:(id)identifier;
- (void)setupBaseURL;
- (void)setupFileSizeContentType;
@end

@implementation AEBookInfo

- (BOOL)hasUpsellPage
{
  if (+[BCAugmentedExperienceManager endOfBookExperienceFeatureEnabled])
  {
    sampleContent = [(AEBookInfo *)self sampleContent];
    if ([sampleContent BOOLValue])
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

+ (id)bookFromDatabaseKey:(id)key withMOC:(id)c
{
  keyCopy = key;
  cCopy = c;
  if ([keyCopy length])
  {
    keyCopy = [NSPredicate predicateWithFormat:@"databaseKey ==[n] %@", keyCopy];
    v8 = [cCopy entity:@"AEBookInfo" withPredicate:keyCopy sortBy:0 ascending:0 fetchLimit:1];
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

+ (id)booksWithPredicate:(id)predicate sortBy:(id)by ascending:(BOOL)ascending fetchLimit:(int)limit inMoc:(id)moc
{
  ascendingCopy = ascending;
  mocCopy = moc;
  byCopy = by;
  predicateCopy = predicate;
  excludeDeletedBooksPredicate = [objc_opt_class() excludeDeletedBooksPredicate];
  v15 = [NSManagedObjectContext mergePredicate:predicateCopy andPredicate:excludeDeletedBooksPredicate];

  v16 = [mocCopy entity:@"AEBookInfo" withPredicate:v15 sortBy:byCopy ascending:ascendingCopy fetchLimit:limit];

  return v16;
}

+ (id)booksWithPredicate:(id)predicate sortDescriptors:(id)descriptors inMoc:(id)moc
{
  mocCopy = moc;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  excludeDeletedBooksPredicate = [objc_opt_class() excludeDeletedBooksPredicate];
  v11 = [NSManagedObjectContext mergePredicate:predicateCopy andPredicate:excludeDeletedBooksPredicate];

  v12 = [mocCopy entity:@"AEBookInfo" withPredicate:v11 sortDescriptors:descriptorsCopy fetchLimit:0 prefetchRelationships:0];

  return v12;
}

+ (id)booksWithPredicate:(id)predicate inMoc:(id)moc
{
  mocCopy = moc;
  predicateCopy = predicate;
  excludeDeletedBooksPredicate = [objc_opt_class() excludeDeletedBooksPredicate];
  v8 = [NSManagedObjectContext mergePredicate:predicateCopy andPredicate:excludeDeletedBooksPredicate];

  v9 = [mocCopy entity:@"AEBookInfo" withPredicate:v8 sortBy:0 ascending:0 fetchLimit:0];

  return v9;
}

+ (id)bookObjectIDsWithPredicate:(id)predicate inMoc:(id)moc
{
  mocCopy = moc;
  predicateCopy = predicate;
  excludeDeletedBooksPredicate = [objc_opt_class() excludeDeletedBooksPredicate];
  v8 = [NSManagedObjectContext mergePredicate:predicateCopy andPredicate:excludeDeletedBooksPredicate];

  v9 = [mocCopy objectIDsWithPredicate:v8 forEntity:@"AEBookInfo"];

  return v9;
}

+ (id)newBlankBook:(id)book
{
  bookCopy = book;
  v4 = [bookCopy newByClass:objc_opt_class()];

  return v4;
}

- (BOOL)exists
{
  bookBundlePath = [(AEBookInfo *)self bookBundlePath];
  v3 = objc_alloc_init(NSFileManager);
  v4 = 0;
  if ([bookBundlePath length] && bookBundlePath)
  {
    v4 = [v3 fileExistsAtPath:bookBundlePath];
  }

  return v4;
}

- (id)basePlusContentPath
{
  basePlusContentPath = self->_basePlusContentPath;
  if (!basePlusContentPath)
  {
    bookContentSubpath = [(AEBookInfo *)self bookContentSubpath];
    v5 = [bookContentSubpath length];

    bookBundlePath = [(AEBookInfo *)self bookBundlePath];
    v7 = bookBundlePath;
    if (v5)
    {
      bookContentSubpath2 = [(AEBookInfo *)self bookContentSubpath];
      v9 = [(NSString *)v7 stringByAppendingPathComponent:bookContentSubpath2];
      v10 = self->_basePlusContentPath;
      self->_basePlusContentPath = v9;
    }

    else
    {
      v11 = self->_basePlusContentPath;
      self->_basePlusContentPath = bookBundlePath;
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
  bookBundlePath = [(AEBookInfo *)self bookBundlePath];
  [(AEBookInfo *)self setContentType:[AEBookInfo bookFormatByFilePath:bookBundlePath]];

  if ([(AEBookInfo *)self contentType]== 2)
  {
    v9 = objc_alloc_init(NSFileManager);
    bookBundlePath2 = [(AEBookInfo *)self bookBundlePath];
    v5 = [v9 attributesOfItemAtPath:bookBundlePath2 error:0];

    v6 = [v5 objectForKey:NSFileSize];
    [(AEBookInfo *)self setFileSize:v6];
  }

  else
  {
    if ([(AEBookInfo *)self contentType])
    {
      return;
    }

    fileSize = [(AEBookInfo *)self fileSize];
    intValue = [fileSize intValue];

    if (!intValue)
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

- (void)initializeAnnotationProviderWithAssetID:(id)d
{
  dCopy = d;
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

      v9 = [v8 annotationProviderWithCoordination:0 forAssetID:dCopy];
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
    databaseKey = [(AEBookInfo *)self databaseKey];
    v7 = [NSString stringWithFormat:@"%@://%@", v3, databaseKey];

    if (v7)
    {
      v5 = [[NSURL alloc] initWithString:v7];
      baseUrl = self->_baseUrl;
      self->_baseUrl = v5;
    }
  }
}

- (void)setBookAuthor:(id)author
{
  authorCopy = author;
  [(AEBookInfo *)self willChangeValueForKey:@"bookAuthor"];
  stringByConvertingControlCharactersToSpace = [authorCopy stringByConvertingControlCharactersToSpace];

  [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"bookAuthor"];

  [(AEBookInfo *)self didChangeValueForKey:@"bookAuthor"];
}

- (void)setSortAuthor:(id)author
{
  authorCopy = author;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"sortAuthor"];
    stringByConvertingControlCharactersToSpace = [authorCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"sortAuthor"];

    [(AEBookInfo *)self didChangeValueForKey:@"sortAuthor"];
  }
}

- (void)setBookTitle:(id)title
{
  titleCopy = title;
  [(AEBookInfo *)self willChangeValueForKey:@"bookTitle"];
  stringByConvertingControlCharactersToSpace = [titleCopy stringByConvertingControlCharactersToSpace];

  [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"bookTitle"];

  [(AEBookInfo *)self didChangeValueForKey:@"bookTitle"];
}

- (void)setSortTitle:(id)title
{
  titleCopy = title;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"sortTitle"];
    stringByConvertingControlCharactersToSpace = [titleCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"sortTitle"];

    [(AEBookInfo *)self didChangeValueForKey:@"sortTitle"];
  }
}

- (void)setTemporaryItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"temporaryItemIdentifier"];
    stringByConvertingControlCharactersToSpace = [identifierCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"temporaryItemIdentifier"];

    [(AEBookInfo *)self didChangeValueForKey:@"temporaryItemIdentifier"];
  }
}

- (void)setPublisherName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"publisherName"];
    stringByConvertingControlCharactersToSpace = [nameCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"publisherName"];

    [(AEBookInfo *)self didChangeValueForKey:@"publisherName"];
  }
}

- (void)setPublisherLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"publisherLocation"];
    stringByConvertingControlCharactersToSpace = [locationCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"publisherLocation"];

    [(AEBookInfo *)self didChangeValueForKey:@"publisherLocation"];
  }
}

- (void)setPublisherYear:(id)year
{
  yearCopy = year;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"publisherYear"];
    stringByConvertingControlCharactersToSpace = [yearCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"publisherYear"];

    [(AEBookInfo *)self didChangeValueForKey:@"publisherYear"];
  }
}

- (void)setStoreId:(id)id
{
  idCopy = id;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AEBookInfo *)self willChangeValueForKey:@"storeId"];
    stringByConvertingControlCharactersToSpace = [idCopy stringByConvertingControlCharactersToSpace];
    [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"storeId"];

    [(AEBookInfo *)self didChangeValueForKey:@"storeId"];
  }
}

- (void)setGenre:(id)genre
{
  genreCopy = genre;
  if (!genreCopy)
  {
    genreCopy = &stru_1E7188;
  }

  v6 = genreCopy;
  [(AEBookInfo *)self willChangeValueForKey:@"genre"];
  stringByConvertingControlCharactersToSpace = [(__CFString *)v6 stringByConvertingControlCharactersToSpace];
  [(AEBookInfo *)self setPrimitiveValue:stringByConvertingControlCharactersToSpace forKey:@"genre"];

  [(AEBookInfo *)self didChangeValueForKey:@"genre"];
}

- (BOOL)needsGenericCoverArt
{
  contentType = [(AEBookInfo *)self contentType];
  if (contentType == 2)
  {
    return 0;
  }

  if (contentType)
  {
    return 1;
  }

  iTunesArtHref = [(AEBookInfo *)self iTunesArtHref];
  if (iTunesArtHref)
  {
    v5 = 0;
  }

  else
  {
    embeddedArtHref = [(AEBookInfo *)self embeddedArtHref];
    v5 = embeddedArtHref == 0;
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  sortedDocuments = selfCopy->_sortedDocuments;
  selfCopy->_sortedDocuments = 0;

  objc_sync_exit(selfCopy);
  linearDocuments = selfCopy->_linearDocuments;
  selfCopy->_linearDocuments = 0;

  selfCopy->_readingDocumentCount = 0;
  selfCopy->_linearDocumentCount = 0;
  linearOrdinalMap = selfCopy->_linearOrdinalMap;
  selfCopy->_linearOrdinalMap = 0;

  shouldDisableOptimizeSpeed = selfCopy->_shouldDisableOptimizeSpeed;
  selfCopy->_shouldDisableOptimizeSpeed = 0;

  selfCopy->_mediaOverlayElementCountValid = 0;
  selfCopy->_mediaOverlayElementCount = 0;
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

- (id)_makeFileUrlIfPossible:(id)possible
{
  possibleCopy = possible;
  v5 = possibleCopy;
  if (possibleCopy && ([possibleCopy isFileURL] & 1) == 0)
  {
    path = [v5 path];
    if ([path rangeOfString:@".jpg" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(path, "rangeOfString:options:", @".png", 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      basePlusContentPath = [(AEBookInfo *)self basePlusContentPath];
      v8 = [basePlusContentPath stringByAppendingPathComponent:path];

      v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

      v5 = v9;
    }
  }

  return v5;
}

- (NSString)embeddedArtHref
{
  embeddedArtHrefRejected = [(AEBookInfo *)self embeddedArtHrefRejected];
  bOOLValue = [embeddedArtHrefRejected BOOLValue];

  if (bOOLValue)
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
  embeddedArtHref = [(AEBookInfo *)self embeddedArtHref];
  if (embeddedArtHref)
  {
    bookBundlePath = [(AEBookInfo *)self bookBundlePath];
    v5 = bookBundlePath;
    if (bookBundlePath)
    {
      v6 = [bookBundlePath stringByAppendingPathComponent:embeddedArtHref];

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
  embeddedArtHref = [(AEBookInfo *)self embeddedArtHref];
  if (embeddedArtHref)
  {
    bookContentSubpath = [(AEBookInfo *)self bookContentSubpath];
    if (bookContentSubpath)
    {
      if ([embeddedArtHref hasPrefix:@"/"])
      {
        v5 = [embeddedArtHref substringFromIndex:1];

        embeddedArtHref = v5;
      }

      if ([bookContentSubpath hasPrefix:@"/"])
      {
        v6 = [bookContentSubpath substringFromIndex:1];

        bookContentSubpath = v6;
      }

      if (![embeddedArtHref rangeOfString:bookContentSubpath])
      {
        v8 = [embeddedArtHref substringFromIndex:v7];

        embeddedArtHref = v8;
      }
    }
  }

  return embeddedArtHref;
}

+ (BOOL)isUndesirableImageData:(id)data
{
  dataCopy = data;
  if ([dataCopy hash] != 153495661)
  {
    v4 = [dataCopy length];
    if (v4 <= BCImageMaxFileSize)
    {
      v7 = CGImageSourceCreateWithData(dataCopy, 0);
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
  sinfInfo = [(AEBookInfo *)self sinfInfo];
  v4 = [sinfInfo count];

  if (v4)
  {
    embeddedArtHrefMinusSubpath = [(AEBookInfo *)self embeddedArtHrefMinusSubpath];
    if ([embeddedArtHrefMinusSubpath length])
    {
      v6 = [(AEBookInfo *)self documentAtPath:embeddedArtHrefMinusSubpath];
      v7 = v6;
      if (v6)
      {
        sinfNumber = [v6 sinfNumber];
        v9 = [NSPredicate predicateWithFormat:@"sinfNumber ==[n] %@", sinfNumber];

        sinfInfo2 = [(AEBookInfo *)self sinfInfo];
        v11 = [sinfInfo2 filteredSetUsingPredicate:v9];

        if ([v11 count] == &dword_0 + 1)
        {
          anyObject = [v11 anyObject];
          sinfBlob = [anyObject sinfBlob];
        }

        else
        {
          sinfBlob = 0;
        }
      }

      else
      {
        sinfBlob = 0;
      }
    }

    else
    {
      sinfBlob = 0;
    }
  }

  else
  {
    sinfBlob = 0;
  }

  return sinfBlob;
}

- (id)confirmBagContents
{
  selfCopy = self;
  sinfInfo = [(AEBookInfo *)self sinfInfo];
  v4 = [sinfInfo count];

  if (v4)
  {
    embeddedArtURL = [(AEBookInfo *)selfCopy embeddedArtURL];
    embeddedArtSinf = [(AEBookInfo *)selfCopy embeddedArtSinf];
    if (!embeddedArtSinf || ([embeddedArtURL isFileURL] & 1) == 0)
    {
      [(AEBookInfo *)selfCopy sortedDocuments];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v43 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v43)
      {
        v38 = embeddedArtURL;
        v39 = embeddedArtSinf;
        v41 = selfCopy;
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
            sinfNumber = [v8 sinfNumber];
            intValue = [sinfNumber intValue];

            if (intValue >= 1)
            {
              v44 = i;
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              sinfInfo2 = [(AEBookInfo *)selfCopy sinfInfo];
              v12 = [sinfInfo2 countByEnumeratingWithState:&v47 objects:v57 count:16];
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
                    objc_enumerationMutation(sinfInfo2);
                  }

                  v16 = *(*(&v47 + 1) + 8 * v15);
                  sinfNumber2 = [v16 sinfNumber];
                  intValue2 = [sinfNumber2 intValue];
                  sinfNumber3 = [v8 sinfNumber];
                  intValue3 = [sinfNumber3 intValue];

                  if (intValue2 == intValue3)
                  {
                    break;
                  }

                  if (v13 == ++v15)
                  {
                    v13 = [sinfInfo2 countByEnumeratingWithState:&v47 objects:v57 count:16];
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

                selfCopy = v41;
                i = v44;
                if (v21)
                {
                  basePlusContentPath = [(AEBookInfo *)v41 basePlusContentPath];
                  href = [v8 href];
                  v25 = [basePlusContentPath stringByAppendingPathComponent:href];

                  embeddedArtURL = [NSURL fileURLWithPath:v25 isDirectory:0];

                  sinfBlob = [v21 sinfBlob];

                  embeddedArtSinf = sinfBlob;
                  goto LABEL_28;
                }
              }

              else
              {
LABEL_18:

                v21 = 0;
LABEL_22:
                selfCopy = v41;
                i = v44;
              }
            }
          }

          v43 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v43);
        embeddedArtURL = v38;
        embeddedArtSinf = v39;
      }

LABEL_28:
    }

    if ([embeddedArtURL isFileURL])
    {
      v46 = 0;
      v27 = objc_autoreleasePoolPush();
      path = [embeddedArtURL path];
      v45 = 0;
      v29 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:path sinfData:embeddedArtSinf refetch:&v46 error:&v45];
      v22 = v45;

      if (!v29 && v46 == 1)
      {
        v30 = embeddedArtURL;
        domain = [v22 domain];
        if ([domain isEqualToString:fd45c988dd8cc08fce2e58d17f4ed2])
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
        embeddedArtURL = v30;
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

- (id)urlForHref:(id)href
{
  hrefCopy = href;
  if (hrefCopy)
  {
    v5 = hrefCopy;
    stringWithPercentEscape = [hrefCopy stringWithPercentEscape];

    baseURL = [(AEBookInfo *)self baseURL];
    v8 = [NSURL URLWithString:stringWithPercentEscape relativeToURL:baseURL];
  }

  else
  {
    stringWithPercentEscape = 0;
    v8 = 0;
  }

  return v8;
}

- (NSString)shortBookTitle
{
  bookTitle = [(AEBookInfo *)self bookTitle];
  v3 = [bookTitle rangeOfString:@": "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL && (v3 = [bookTitle rangeOfString:@"; "], v3 == 0x7FFFFFFFFFFFFFFFLL) && (v3 = objc_msgSend(bookTitle, "rangeOfString:", @" / "), v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = bookTitle;
  }

  else
  {
    v4 = [bookTitle substringToIndex:v3];
  }

  v5 = v4;

  return v5;
}

- (int)contentType
{
  [(AEBookInfo *)self willAccessValueForKey:@"contentType"];
  v3 = [(AEBookInfo *)self primitiveValueForKey:@"contentType"];
  intValue = [v3 intValue];

  [(AEBookInfo *)self didAccessValueForKey:@"contentType"];
  return intValue;
}

- (void)setContentType:(int)type
{
  v3 = *&type;
  if ([(AEBookInfo *)self contentType]!= type)
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
    bookBundlePath = [(AEBookInfo *)self bookBundlePath];
    v5 = [bookBundlePath stringByAppendingPathComponent:@"iTunesMetadata.plist"];

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
  managedObjectContext = [(AEBookInfo *)self managedObjectContext];
  databaseKey = [(AEBookInfo *)self databaseKey];
  v4 = [NSPredicate predicateWithFormat:@"bookDatabaseKey ==[n] %@", databaseKey];

  [managedObjectContext batchDeleteEntity:@"BKMediaOverlayElement" matching:v4 prefetchRelationships:0];
  [managedObjectContext batchDeleteEntity:@"BKDocument" matching:v4 prefetchRelationships:0];
  [managedObjectContext batchDeleteEntity:@"BKDocumentPageCount" matching:v4 prefetchRelationships:0];
  [managedObjectContext batchDeleteEntity:@"BKChapterPageCount" matching:v4 prefetchRelationships:0];
}

- (void)deleteParsedRelationships
{
  v3 = objc_autoreleasePoolPush();
  managedObjectContext = [(AEBookInfo *)self managedObjectContext];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  chapters = [(AEBookInfo *)self chapters];
  v6 = [chapters countByEnumeratingWithState:&v51 objects:v58 count:16];
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
          objc_enumerationMutation(chapters);
        }

        v8 = *(*(&v51 + 1) + 8 * v10);

        [managedObjectContext deleteObject:v8];
        v10 = v10 + 1;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [chapters countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v7);
  }

  chapters2 = [(AEBookInfo *)self chapters];
  [(AEBookInfo *)self removeChapters:chapters2];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  sortedDocuments = selfCopy->_sortedDocuments;
  selfCopy->_sortedDocuments = 0;

  objc_sync_exit(selfCopy);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  landmarks = [(AEBookInfo *)selfCopy landmarks];
  v16 = [landmarks countByEnumeratingWithState:&v47 objects:v57 count:16];
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
          objc_enumerationMutation(landmarks);
        }

        v18 = *(*(&v47 + 1) + 8 * v20);

        [managedObjectContext deleteObject:v18];
        v20 = v20 + 1;
        v21 = v18;
      }

      while (v17 != v20);
      v17 = [landmarks countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v17);
  }

  landmarks2 = [(AEBookInfo *)selfCopy landmarks];
  [(AEBookInfo *)selfCopy removeLandmarks:landmarks2];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  physicalPages = [(AEBookInfo *)selfCopy physicalPages];
  v24 = [physicalPages countByEnumeratingWithState:&v43 objects:v56 count:16];
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
          objc_enumerationMutation(physicalPages);
        }

        v26 = *(*(&v43 + 1) + 8 * v28);

        [managedObjectContext deleteObject:v26];
        v28 = v28 + 1;
        v29 = v26;
      }

      while (v25 != v28);
      v25 = [physicalPages countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v25);
  }

  physicalPages2 = [(AEBookInfo *)selfCopy physicalPages];
  [(AEBookInfo *)selfCopy removePhysicalPages:physicalPages2];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  sinfInfo = [(AEBookInfo *)selfCopy sinfInfo];
  v32 = [sinfInfo countByEnumeratingWithState:&v39 objects:v55 count:16];
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
          objc_enumerationMutation(sinfInfo);
        }

        v34 = *(*(&v39 + 1) + 8 * v36);

        [managedObjectContext deleteObject:v34];
        v36 = v36 + 1;
        v37 = v34;
      }

      while (v33 != v36);
      v33 = [sinfInfo countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v33);
  }

  sinfInfo2 = [(AEBookInfo *)selfCopy sinfInfo];
  [(AEBookInfo *)selfCopy removeSinfInfo:sinfInfo2];

  [(AEBookInfo *)selfCopy setParserVersion:0];
  [(AEBookInfo *)selfCopy setParserOPFPath:0];
  [(AEBookInfo *)selfCopy setParserNCXPath:0];
  [(AEBookInfo *)selfCopy setEmbeddedArtHref:0];
  [(AEBookInfo *)selfCopy setEmbeddedArtHrefRejected:0];
  [(AEBookInfo *)selfCopy setHasComputedFixedLayoutSize:0];

  objc_autoreleasePoolPop(v3);
}

- (void)resetPersistentCache
{
  persistentCachePath = [(AEBookInfo *)self persistentCachePath];
  v4 = [persistentCachePath length];

  if (v4)
  {
    v5 = +[IMPersistentCacheManager sharedInstance];
    persistentCachePath2 = [(AEBookInfo *)self persistentCachePath];
    v7 = [v5 cacheForPath:persistentCachePath2 maxSize:0];

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
  parserVersion = [(AEBookInfo *)self parserVersion];
  v3 = [parserVersion length] != 0;

  return v3;
}

- (BOOL)isReadyToOpen
{
  isDownloading = [(AEBookInfo *)self isDownloading];
  bOOLValue = [isDownloading BOOLValue];

  if (bOOLValue)
  {
    return 0;
  }

  bookBundlePath = [(AEBookInfo *)self bookBundlePath];

  if (!bookBundlePath)
  {
    return 0;
  }

  return [(AEBookInfo *)self isEncryptionLegal];
}

- (BOOL)isBookVersioned
{
  versionNumberHumanReadable = [(AEBookInfo *)self versionNumberHumanReadable];
  v3 = [versionNumberHumanReadable length] != 0;

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
  sinfInfo = [(AEBookInfo *)self sinfInfo];
  v3 = [sinfInfo count] != 0;

  return v3;
}

- (BOOL)isStoreBook
{
  storeId = [(AEBookInfo *)self storeId];
  v3 = [storeId longLongValue] != 0;

  return v3;
}

- (BOOL)isManagedBook
{
  v2 = [(AEBookInfo *)self url];
  v3 = [IMLibraryPlist isManagedBookFromURL:v2];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)calculatePasswordRequired
{
  if ([(AEBookInfo *)self contentType]== 2)
  {
    isPasswordRequired = [(AEBookInfo *)self isPasswordRequired];

    if (!isPasswordRequired)
    {
      v4 = +[AEPdfCache sharedInstance];
      v8 = [v4 copyCacheObjectForBook:self];

      v5 = v8;
      if (v8)
      {
        document = [v8 document];
        v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [document isLocked]);
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
  isPasswordRequired = [(AEBookInfo *)self isPasswordRequired];
  bOOLValue = [isPasswordRequired BOOLValue];

  if (!bOOLValue)
  {
    return 0;
  }

  v5 = +[AEPdfCache sharedInstance];
  v6 = [v5 copyCacheObjectForBook:self];

  if (v6)
  {
    document = [v6 document];
    isLocked = [document isLocked];
  }

  else
  {
    isLocked = 0;
  }

  return isLocked;
}

- (BOOL)isCorrectPassword:(id)password forDocument:(id)document
{
  passwordCopy = password;
  documentCopy = document;
  if ([(AEBookInfo *)self contentType]== 2)
  {
    v8 = [passwordCopy length];
    v9 = 0;
    if (documentCopy && v8)
    {
      v9 = [documentCopy unlockWithPassword:passwordCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPassword:(id)password
{
  if (self->_password != password)
  {
    v4 = [password copy];
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

  sinfInfo = [(AEBookInfo *)self sinfInfo];
  anyObject = [sinfInfo anyObject];

  sinfNumber = [anyObject sinfNumber];
  v6 = [sinfNumber intValue] > 0;

  return v6;
}

- (BOOL)currentlyDownloading
{
  isDownloading = [(AEBookInfo *)self isDownloading];
  bOOLValue = [isDownloading BOOLValue];

  return bOOLValue;
}

- (void)setCurrentlyDownloading:(BOOL)downloading
{
  downloadingCopy = downloading;
  isDownloading = [(AEBookInfo *)self isDownloading];
  bOOLValue = [isDownloading BOOLValue];

  if (bOOLValue != downloadingCopy)
  {
    v7 = [[NSNumber alloc] initWithBool:downloadingCopy];
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

+ (id)databaseKeyFromStoreId:(id)id andUniqueId:(id)uniqueId
{
  idCopy = id;
  uniqueIdCopy = uniqueId;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v7 = [idCopy length], v8 = idCopy, v7 > 1) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v9 = objc_msgSend(uniqueIdCopy, "length"), v8 = uniqueIdCopy, v9 >= 2))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mimeFromHref:(id)href
{
  hrefCopy = href;
  if ([hrefCopy length])
  {
    databaseKey = [(AEBookInfo *)self databaseKey];
    hrefCopy = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND href == %@", databaseKey, hrefCopy];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v8 = [NSEntityDescription entityForName:@"BKDocument" inManagedObjectContext:managedObjectContext];

    v9 = objc_alloc_init(NSFetchRequest);
    [v9 setEntity:v8];
    v10 = [NSArray arrayWithObjects:@"mime", 0];
    [v9 setPropertiesToFetch:v10];

    [v9 setResultType:2];
    [v9 setPredicate:hrefCopy];
    managedObjectContext2 = [(AEBookInfo *)self managedObjectContext];
    v17 = 0;
    v12 = [managedObjectContext2 executeFetchRequest:v9 error:&v17];
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

- (id)newestAnnotationWithPredicate:(id)predicate rangeCheck:(BOOL)check moc:(id)moc
{
  checkCopy = check;
  v7 = [moc entity:@"AEAnnotation" withPredicate:predicate sortBy:@"annotationCreationDate" ascending:0 fetchLimit:1];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = [v8 objectAtIndex:0];
    if (v9 && checkCopy)
    {
      readingDocumentCount = [(AEBookInfo *)self readingDocumentCount];
      if (readingDocumentCount < [v9 ordinal])
      {

        v9 = 0;
      }

      if ([v9 annotationType] == 3)
      {
        v11 = -[AEBookInfo documentWithOrdinal:](self, "documentWithOrdinal:", [v9 ordinal]);
        v12 = v11;
        if (v11)
        {
          nonlinearElement = [v11 nonlinearElement];
          bOOLValue = [nonlinearElement BOOLValue];

          if (bOOLValue)
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

- (id)readingLocationAnnotation:(BOOL)annotation moc:(id)moc
{
  annotationCopy = annotation;
  mocCopy = moc;
  assetID = [(AEBookInfo *)self assetID];
  v8 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:assetID];

  v9 = [(AEBookInfo *)self newestAnnotationWithPredicate:v8 rangeCheck:annotationCopy moc:mocCopy];

  if (v9)
  {
    annotationCreatorIdentifier = [v9 annotationCreatorIdentifier];

    if (!annotationCreatorIdentifier)
    {
      [v9 setAnnotationCreatorIdentifier:kAEAnnotationCreatorIdentifier_iBooks];
    }
  }

  return v9;
}

- (BKLocation)firstDocumentLocation
{
  firstDocumentHref = [(AEBookInfo *)self firstDocumentHref];
  v4 = [(AEBookInfo *)self _documentOrdinalForHref:firstDocumentHref];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    unboxedDocumentOrdinal = v4;
LABEL_6:
    if ([(AEBookInfo *)self linearIndexForOrdinal:unboxedDocumentOrdinal]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v5 = [firstDocumentHref rangeOfString:@"#"];
  unboxedDocumentOrdinal = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [firstDocumentHref substringToIndex:v5];
    v8 = [(AEBookInfo *)self _documentOrdinalForHref:v7];

    unboxedDocumentOrdinal = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      unboxedDocumentOrdinal = v8;
      goto LABEL_6;
    }
  }

LABEL_7:
  linearDocuments = [(AEBookInfo *)self linearDocuments];
  if ([linearDocuments count])
  {
    v10 = [linearDocuments objectAtIndexedSubscript:0];
    unboxedDocumentOrdinal = [v10 unboxedDocumentOrdinal];
  }

LABEL_10:
  if (unboxedDocumentOrdinal == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = unboxedDocumentOrdinal;
  }

  v12 = [[BKLocation alloc] initWithOrdinal:v11];

  return v12;
}

- (int64_t)_documentOrdinalForHref:(id)href
{
  hrefCopy = href;
  if ([hrefCopy length])
  {
    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    databaseKey = [(AEBookInfo *)self databaseKey];
    v7 = [NSPredicate predicateWithFormat:@"href ==[n] %@ AND bookDatabaseKey == %@", hrefCopy, databaseKey];

    v8 = [managedObjectContext copyEntityProperty:@"documentOrdinal" fromEntityName:@"BKDocument" withPredicate:v7];
    v9 = [v8 objectForKey:@"documentOrdinal"];

    if (v9)
    {
      integerValue = [v9 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)_adjustAnnotation:(id)annotation withLocation:(id)location selectedText:(id)text representativeText:(id)representativeText updateStyle:(BOOL)style
{
  styleCopy = style;
  annotationCopy = annotation;
  locationCopy = location;
  representativeTextCopy = representativeText;
  v14 = [AEAnnotation optimizedSelectedTextForSerialization:text];
  v15 = [AEAnnotation optimizedRepresentativeTextForSerialization:representativeTextCopy selectedText:v14];

  [annotationCopy setOrdinal:{objc_msgSend(locationCopy, "ordinal")}];
  v16 = +[NSDate date];
  [annotationCopy setAnnotationCreationDate:v16];

  [annotationCopy setAnnotationSelectedText:v14];
  [annotationCopy setAnnotationRepresentativeText:v15];
  [annotationCopy setLocation:locationCopy];
  assetID = [(AEBookInfo *)self assetID];
  [annotationCopy setAnnotationAssetID:assetID];

  [annotationCopy setSpineIndexUpdated:1];
  if (styleCopy)
  {
    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 objectForKey:BKDefaultHighlightColor[0]];
    [annotationCopy setAnnotationStyle:{objc_msgSend(v19, "intValue")}];

    v20 = +[NSUserDefaults standardUserDefaults];
    [annotationCopy setAnnotationIsUnderline:{objc_msgSend(v20, "BOOLForKey:", BKDefaultUnderlineState)}];
  }

  if ([(AEBookInfo *)self isBookVersioned])
  {
    [(AEBookInfo *)self bumpReadingLocationAnnotationVersionToMinimumVersion:kAEAnnotationVersion_4];
  }

  if ([(AEBookInfo *)self hasDuplicatedDocument])
  {
    ordinal = [locationCopy ordinal];
    sortedDocuments = [(AEBookInfo *)self sortedDocuments];
    if (ordinal)
    {
      v23 = 0;
      while (1)
      {
        v24 = [sortedDocuments objectAtIndexedSubscript:v23];
        isDuplicateSpineEntry = [v24 isDuplicateSpineEntry];

        if (isDuplicateSpineEntry)
        {
          break;
        }

        if (ordinal == ++v23)
        {
          goto LABEL_12;
        }
      }

      [annotationCopy bumpAnnotationVersionToMinimumVersion:kAEAnnotationVersion_5];
    }

LABEL_12:
  }
}

- (void)setSingletonAnnotationType:(int)type location:(id)location modificationHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  if (([locationCopy ordinal] & 0x8000000000000000) == 0)
  {
    annotationProvider = [(AEBookInfo *)self annotationProvider];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_CEE5C;
    v11[3] = &unk_1E5380;
    typeCopy = type;
    v11[4] = self;
    v12 = locationCopy;
    v13 = handlerCopy;
    [annotationProvider performBlockOnUserSideQueueAndWait:v11];
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
  annotationProvider = [(AEBookInfo *)self annotationProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_CF0E4;
  v6[3] = &unk_1E53A8;
  v6[4] = self;
  v6[5] = &v7;
  [annotationProvider performBlockOnUserSideQueueAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)readingDocumentCount
{
  result = self->_readingDocumentCount;
  if (!result)
  {
    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    databaseKey = [(AEBookInfo *)self databaseKey];
    v6 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND documentOrdinal >= 0", databaseKey];

    self->_readingDocumentCount = [managedObjectContext countEntity:@"BKDocument" withPredicate:v6];
    return self->_readingDocumentCount;
  }

  return result;
}

- (id)sortedDocuments
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sortedDocuments = selfCopy->_sortedDocuments;
  if (!sortedDocuments)
  {
    databaseKey = [(AEBookInfo *)selfCopy databaseKey];
    v5 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND documentOrdinal >= 0", databaseKey];

    managedObjectContext = [(AEBookInfo *)selfCopy managedObjectContext];
    v7 = [managedObjectContext entity:@"BKDocument" withPredicate:v5 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

    v8 = [[NSArray alloc] initWithArray:v7];
    v9 = selfCopy->_sortedDocuments;
    selfCopy->_sortedDocuments = v8;

    sortedDocuments = selfCopy->_sortedDocuments;
  }

  v10 = [(NSArray *)sortedDocuments copy];
  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)hasDuplicatedDocument
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  sortedDocuments = [(AEBookInfo *)self sortedDocuments];
  v3 = [sortedDocuments countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(sortedDocuments);
        }

        isDuplicateSpineEntry = [*(*(&v9 + 1) + 8 * i) isDuplicateSpineEntry];
        bOOLValue = [isDuplicateSpineEntry BOOLValue];

        if (bOOLValue)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [sortedDocuments countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    databaseKey = [(AEBookInfo *)self databaseKey];
    v6 = [v4 linearDocumentPredicateForDatabaseKey:databaseKey];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    self->_linearDocumentCount = [managedObjectContext countEntity:@"BKDocument" withPredicate:v6];

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
    databaseKey = [(AEBookInfo *)self databaseKey];
    v6 = [v4 linearDocumentPredicateForDatabaseKey:databaseKey];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v8 = [managedObjectContext entity:@"BKDocument" withPredicate:v6 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

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
  databaseKey = [(AEBookInfo *)self databaseKey];
  v4 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@", databaseKey];

  managedObjectContext = [(AEBookInfo *)self managedObjectContext];
  v6 = [managedObjectContext entity:@"BKDocument" withPredicate:v4 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

  v7 = [[NSArray alloc] initWithArray:v6];

  return v7;
}

- (int64_t)linearOrdinal:(int64_t)ordinal offsetByDistance:(int64_t)distance
{
  v6 = [(AEBookInfo *)self linearIndexForOrdinal:ordinal];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6 + distance;
  if (v7 >= [(AEBookInfo *)self linearDocumentCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  linearDocuments = [(AEBookInfo *)self linearDocuments];
  v9 = [linearDocuments objectAtIndexedSubscript:v7];
  unboxedDocumentOrdinal = [v9 unboxedDocumentOrdinal];

  return unboxedDocumentOrdinal;
}

- (unint64_t)linearIndexForOrdinal:(unint64_t)ordinal
{
  linearOrdinalMap = self->_linearOrdinalMap;
  if (!linearOrdinalMap)
  {
    linearDocuments = [(AEBookInfo *)self linearDocuments];
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [linearDocuments count]);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_CF990;
    v7 = v14[3] = &unk_1E53D0;
    v15 = v7;
    [linearDocuments enumerateObjectsUsingBlock:v14];
    v8 = self->_linearOrdinalMap;
    self->_linearOrdinalMap = v7;
    v9 = v7;

    linearOrdinalMap = self->_linearOrdinalMap;
  }

  v10 = [NSNumber numberWithUnsignedInteger:ordinal];
  v11 = [(NSDictionary *)linearOrdinalMap objectForKey:v10];

  if (v11)
  {
    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (CGSize)fixedLayoutSizeForDocumentWithOrdinal:(unint64_t)ordinal
{
  lastDocument = [(AEBookInfo *)self documentWithOrdinal:ordinal];
  if (!lastDocument)
  {
    lastDocument = [(AEBookInfo *)self lastDocument];
  }

  [lastDocument fixedLayoutSize];
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
  sortedDocuments = [(AEBookInfo *)self sortedDocuments];
  firstObject = [sortedDocuments firstObject];

  return firstObject;
}

- (id)lastDocument
{
  sortedDocuments = [(AEBookInfo *)self sortedDocuments];
  lastObject = [sortedDocuments lastObject];

  return lastObject;
}

- (id)documentWithOrdinal:(unint64_t)ordinal
{
  sortedDocuments = [(AEBookInfo *)self sortedDocuments];
  if ([sortedDocuments count] <= ordinal)
  {
    v5 = 0;
  }

  else
  {
    v5 = [sortedDocuments objectAtIndex:ordinal];
  }

  return v5;
}

- (id)urlForDocument:(id)document
{
  href = [document href];
  if ([href length])
  {
    stringWithPercentEscape = [href stringWithPercentEscape];

    baseURL = [(AEBookInfo *)self baseURL];
    v7 = [NSURL URLWithString:stringWithPercentEscape relativeToURL:baseURL];

    href = stringWithPercentEscape;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)documentsWithPath:(id)path sortBy:(id)by limit:(int64_t)limit
{
  pathCopy = path;
  byCopy = by;
  if ([pathCopy length])
  {
    databaseKey = [(AEBookInfo *)self databaseKey];
    pathCopy = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND href ==[n] %@", databaseKey, pathCopy];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v13 = [managedObjectContext entity:@"BKDocument" withPredicate:pathCopy sortBy:byCopy ascending:0 fetchLimit:limit];
  }

  else
  {
    v13 = +[NSArray array];
  }

  return v13;
}

- (id)documentAtPath:(id)path
{
  v3 = [(AEBookInfo *)self documentsWithPath:path sortBy:@"documentOrdinal" limit:0];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (id)documentContainingLocation:(id)location
{
  if (location)
  {
    v4 = -[AEBookInfo documentWithOrdinal:](self, "documentWithOrdinal:", [location ordinal]);
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
  annotationProvider = [(AEBookInfo *)self annotationProvider];
  uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_D0300;
  v43[3] = &unk_1E53F8;
  v45 = v47;
  v43[4] = self;
  v44 = uiManagedObjectContext;
  v46 = &v49;
  v24 = v44;
  [v44 performBlockAndWait:v43];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  sortedDocuments = [(AEBookInfo *)self sortedDocuments];
  v5 = [sortedDocuments countByEnumeratingWithState:&v39 objects:v55 count:16];
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
          objc_enumerationMutation(sortedDocuments);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if (([v9 isDeleted] & 1) == 0)
        {
          isDuplicateSpineEntry = [v9 isDuplicateSpineEntry];
          if (isDuplicateSpineEntry)
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
            documentOrdinal = [v9 documentOrdinal];
            integerValue = [documentOrdinal integerValue];

            v15 = [NSNumber numberWithInteger:&integerValue[-v6]];
            assetID = [(AEBookInfo *)self assetID];
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_D037C;
            v33[3] = &unk_1E5420;
            v17 = v15;
            v34 = v17;
            v18 = assetID;
            v35 = v18;
            v19 = v24;
            v36 = v19;
            v37 = v6;
            v38 = integerValue;
            [v19 performBlockAndWait:v33];
            v20 = v50[5];
            if (v20)
            {
              ordinal = [v20 ordinal];
              if (ordinal == [v17 integerValue])
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

          isDuplicateSpineEntry2 = [v9 isDuplicateSpineEntry];

          if (isDuplicateSpineEntry2)
          {
            ++v6;
          }
        }
      }

      v5 = [sortedDocuments countByEnumeratingWithState:&v39 objects:v55 count:16];
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
  assetID = [(AEBookInfo *)self assetID];
  v5 = [AEAnnotation annotationsPredicate:assetID];

  annotationProvider = [(AEBookInfo *)self annotationProvider];
  uiManagedObjectContext = [annotationProvider uiManagedObjectContext];
  v8 = [uiManagedObjectContext entity:@"AEAnnotation" withPredicate:v5 sortBy:@"annotationCreationDate" ascending:1 fetchLimit:0];

  objc_autoreleasePoolPop(v3);

  return v8;
}

+ (id)_nonUpdatedAnnotationsForDocumentOrdinal:(id)ordinal assetID:(id)d moc:(id)moc
{
  ordinalCopy = ordinal;
  dCopy = d;
  mocCopy = moc;
  if (+[NSThread isMainThread])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = +[AEAnnotation predicateForAnnotationsWithAssetID:ordinal:](AEAnnotation, "predicateForAnnotationsWithAssetID:ordinal:", dCopy, [ordinalCopy intValue]);
    v19[0] = v11;
    v12 = kAEAnnotationSpineIndexUpdated;
    v13 = +[NSNull null];
    v14 = [NSPredicate predicateWithFormat:@"%K == NO OR %K == %@", v12, v12, v13];
    v19[1] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

    v17 = [mocCopy entity:@"AEAnnotation" withPredicate:v16 sortBy:@"annotationCreationDate" ascending:1 fetchLimit:0];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)deleteAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    annotationAssetID = [annotationCopy annotationAssetID];
    annotationType = [annotationCopy annotationType];
    annotationUuid = [annotationCopy annotationUuid];
    v12 = 138412802;
    v13 = annotationAssetID;
    v14 = 1024;
    v15 = annotationType;
    v16 = 2112;
    v17 = annotationUuid;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "deleteAnnotation: assetID: %@, type: %d, uuid: %@", &v12, 0x1Cu);
  }

  v9 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_138AE0(annotationCopy, v9);
  }

  annotationProvider = [(AEBookInfo *)self annotationProvider];
  managedObjectContext = [annotationCopy managedObjectContext];
  [annotationProvider deleteAnnotation:annotationCopy];
  [annotationProvider saveManagedObjectContext:managedObjectContext];
}

- (void)expandAnnotation:(id)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText
{
  if (location)
  {
    [(AEBookInfo *)self _adjustAnnotation:annotation withLocation:location selectedText:text representativeText:representativeText updateStyle:0];
  }
}

- (id)addAnnotation:(int)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText
{
  v8 = *&annotation;
  locationCopy = location;
  textCopy = text;
  representativeTextCopy = representativeText;
  if (!locationCopy || ([locationCopy ordinal] & 0x8000000000000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    v13 = +[AEBookInfo defaultAnnotationCreatorIdentifier];
    assetID = [(AEBookInfo *)self assetID];
    annotationProvider = [(AEBookInfo *)self annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];
    v17 = [AEAnnotation insertAnnotationWithAssetID:assetID creatorIdentifier:v13 annotationUuid:0 intoManagedObjectContext:uiManagedObjectContext];

    [v17 setAnnotationType:v8];
    [(AEBookInfo *)self _adjustAnnotation:v17 withLocation:locationCopy selectedText:textCopy representativeText:representativeTextCopy updateStyle:1];
    v18 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      annotationAssetID = [v17 annotationAssetID];
      annotationType = [v17 annotationType];
      annotationUuid = [v17 annotationUuid];
      v24 = 138412802;
      v25 = annotationAssetID;
      v26 = 1024;
      v27 = annotationType;
      v28 = 2112;
      v29 = annotationUuid;
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

- (BOOL)bumpReadingLocationAnnotationVersionToMinimumVersion:(id)version
{
  versionCopy = version;
  annotationProvider = [(AEBookInfo *)self annotationProvider];
  uiManagedObjectContext = [annotationProvider uiManagedObjectContext];
  v7 = [(AEBookInfo *)self readingLocationAnnotation:0 moc:uiManagedObjectContext];

  annotationVersion = [v7 annotationVersion];
  v9 = annotationVersion;
  if (annotationVersion && (annotationVersion == versionCopy || [annotationVersion compare:versionCopy options:64] != -1))
  {
    v10 = 0;
  }

  else
  {
    [v7 setAnnotationVersion:versionCopy];
    v10 = 1;
  }

  return v10;
}

- (void)addChapters:(id)chapters
{
  chaptersCopy = chapters;
  [(AEBookInfo *)self willChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:chaptersCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"chapters"];
  [v4 unionSet:chaptersCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:chaptersCopy];
}

- (void)addChaptersObject:(id)object
{
  objectCopy = object;
  v6 = [[NSSet alloc] initWithObjects:{objectCopy, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"chapters"];
  [v5 addObject:objectCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"chapters" withSetMutation:1 usingObjects:v6];
}

- (void)removeChapters:(id)chapters
{
  chaptersCopy = chapters;
  [(AEBookInfo *)self willChangeValueForKey:@"chapters" withSetMutation:2 usingObjects:chaptersCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"chapters"];
  [v4 minusSet:chaptersCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"chapters" withSetMutation:2 usingObjects:chaptersCopy];
}

- (void)addLandmarks:(id)landmarks
{
  landmarksCopy = landmarks;
  [(AEBookInfo *)self willChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:landmarksCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"landmarks"];
  [v4 unionSet:landmarksCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:landmarksCopy];
}

- (void)addLandmarksObject:(id)object
{
  objectCopy = object;
  v6 = [[NSSet alloc] initWithObjects:{objectCopy, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"landmarks"];
  [v5 addObject:objectCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"landmarks" withSetMutation:1 usingObjects:v6];
}

- (void)removeLandmarks:(id)landmarks
{
  landmarksCopy = landmarks;
  [(AEBookInfo *)self willChangeValueForKey:@"landmarks" withSetMutation:2 usingObjects:landmarksCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"landmarks"];
  [v4 minusSet:landmarksCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"landmarks" withSetMutation:2 usingObjects:landmarksCopy];
}

- (void)addPhysicalPages:(id)pages
{
  pagesCopy = pages;
  [(AEBookInfo *)self willChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:pagesCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"physicalPages"];
  [v4 unionSet:pagesCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:pagesCopy];
}

- (void)addPhysicalPagesObject:(id)object
{
  objectCopy = object;
  v6 = [[NSSet alloc] initWithObjects:{objectCopy, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"physicalPages"];
  [v5 addObject:objectCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"physicalPages" withSetMutation:1 usingObjects:v6];
}

- (void)removePhysicalPages:(id)pages
{
  pagesCopy = pages;
  [(AEBookInfo *)self willChangeValueForKey:@"physicalPages" withSetMutation:2 usingObjects:pagesCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"physicalPages"];
  [v4 minusSet:pagesCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"physicalPages" withSetMutation:2 usingObjects:pagesCopy];
}

- (BOOL)hasPhysicalPages
{
  physicalPages = [(AEBookInfo *)self physicalPages];
  v3 = [physicalPages count] != 0;

  return v3;
}

- (id)physicalPageMap
{
  if ([(AEBookInfo *)self hasPhysicalPages])
  {
    v3 = [NSPredicate predicateWithFormat:@"bookInfo == %@", self];
    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v5 = [NSArray arrayWithObjects:@"name", @"href", 0];
    v6 = [managedObjectContext copyEntityPropertiesArray:v5 fromEntityName:@"BKPhysicalPage" withPredicate:v3 sortBy:@"absoluteOrder" ascending:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)physicalPageMapForDocument:(id)document
{
  documentCopy = document;
  hasPhysicalPages = [(AEBookInfo *)self hasPhysicalPages];
  v6 = 0;
  if (documentCopy && hasPhysicalPages)
  {
    href = [documentCopy href];
    v8 = [NSPredicate predicateWithFormat:@"baseHref == %@ && bookInfo == %@", href, self];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v10 = [NSArray arrayWithObjects:@"name", @"href", 0];
    v6 = [managedObjectContext copyEntityPropertiesArray:v10 fromEntityName:@"BKPhysicalPage" withPredicate:v8 sortBy:@"absoluteOrder" ascending:1];
  }

  return v6;
}

- (id)navigationInfosForDocument:(id)document
{
  if (document)
  {
    href = [document href];
    v5 = [NSPredicate predicateWithFormat:@"baseHref == %@ && bookInfo == %@", href, self];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v7 = [NSArray arrayWithObjects:@"name", @"href", 0];
    v8 = [managedObjectContext copyEntityPropertiesArray:v7 fromEntityName:@"BKNavigationInfo" withPredicate:v5 sortBy:@"absoluteOrder" ascending:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addSinfInfoObject:(id)object
{
  objectCopy = object;
  v6 = [[NSSet alloc] initWithObjects:{objectCopy, 0}];
  [(AEBookInfo *)self willChangeValueForKey:@"sinfInfo" withSetMutation:1 usingObjects:v6];
  v5 = [(AEBookInfo *)self primitiveValueForKey:@"sinfInfo"];
  [v5 addObject:objectCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"sinfInfo" withSetMutation:1 usingObjects:v6];
}

- (void)removeSinfInfo:(id)info
{
  infoCopy = info;
  [(AEBookInfo *)self willChangeValueForKey:@"sinfInfo" withSetMutation:2 usingObjects:infoCopy];
  v4 = [(AEBookInfo *)self primitiveValueForKey:@"sinfInfo"];
  [v4 minusSet:infoCopy];

  [(AEBookInfo *)self didChangeValueForKey:@"sinfInfo" withSetMutation:2 usingObjects:infoCopy];
}

- (BOOL)suppressTOC
{
  chapters = [(AEBookInfo *)self chapters];
  v3 = [chapters count] < 2;

  return v3;
}

- (BOOL)needsReparsing
{
  parseDate = [(AEBookInfo *)self parseDate];
  v4 = parseDate == 0;

  if (!parseDate)
  {
    v5 = _ITEpubParsingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      assetLogID = [(AEBookInfo *)self assetLogID];
      assetID = [(AEBookInfo *)self assetID];
      v20 = 138543618;
      v21 = assetLogID;
      v22 = 2112;
      v23 = assetID;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "We've never parsed %{public}@ - %@", &v20, 0x16u);
    }
  }

  updateDate = [(AEBookInfo *)self updateDate];
  if (updateDate)
  {
    v9 = updateDate;
    parseDate2 = [(AEBookInfo *)self parseDate];

    if (parseDate2)
    {
      updateDate2 = [(AEBookInfo *)self updateDate];
      parseDate3 = [(AEBookInfo *)self parseDate];
      v13 = [updateDate2 compare:parseDate3];

      if (v13 == &dword_0 + 1)
      {
        v14 = _ITEpubParsingLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          updateDate3 = [(AEBookInfo *)self updateDate];
          parseDate4 = [(AEBookInfo *)self parseDate];
          assetLogID2 = [(AEBookInfo *)self assetLogID];
          assetID2 = [(AEBookInfo *)self assetID];
          v20 = 138544130;
          v21 = updateDate3;
          v22 = 2114;
          v23 = parseDate4;
          v24 = 2114;
          v25 = assetLogID2;
          v26 = 2112;
          v27 = assetID2;
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

- (void)_setBitMask:(unint64_t)mask enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  longLongValue = [appleDisplayOptions longLongValue];

  if (enabledCopy)
  {
    v9 = longLongValue | mask;
  }

  else
  {
    v9 = longLongValue & ~mask;
  }

  v10 = [[NSNumber alloc] initWithLongLong:v9];
  [(AEBookInfo *)self setAppleDisplayOptions:v10];
}

- (int64_t)writingDirection
{
  bookLanguage = [(AEBookInfo *)self bookLanguage];
  if (bookLanguage)
  {

LABEL_3:
    bookLanguage2 = [(AEBookInfo *)self bookLanguage];
    v5 = [NSParagraphStyle defaultWritingDirectionForLanguage:bookLanguage2];

    return v5;
  }

  pageProgressionDirection = [(AEBookInfo *)self pageProgressionDirection];

  if (!pageProgressionDirection)
  {
    goto LABEL_3;
  }

  return [(AEBookInfo *)self isPageProgressionRTL];
}

- (int64_t)scrollModeOrientation
{
  scrollDirection = [(AEBookInfo *)self scrollDirection];
  v4 = scrollDirection;
  if (scrollDirection)
  {
    v5 = scrollDirection;
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
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([appleDisplayOptions longLongValue] >> 6) & 1;

  return v3;
}

- (void)setHasBuiltInFonts:(BOOL)fonts
{
  fontsCopy = fonts;
  if ([(AEBookInfo *)self hasBuiltInFonts]!= fonts)
  {
    [(AEBookInfo *)self _setBitMask:64 enabled:fontsCopy];

    [(AEBookInfo *)self setUseGlobalContentStyle:&__kCFBooleanFalse];
  }
}

- (BOOL)isFixedLayout
{
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  longLongValue = [appleDisplayOptions longLongValue];

  return longLongValue & 1;
}

- (BOOL)isInteractive
{
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([appleDisplayOptions longLongValue] >> 8) & 1;

  return v3;
}

- (int)openToSpread
{
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  longLongValue = [appleDisplayOptions longLongValue];

  if ((longLongValue & 0x20) != 0)
  {
    appleDisplayOptions2 = [(AEBookInfo *)self appleDisplayOptions];
    longLongValue2 = [appleDisplayOptions2 longLongValue];

    return (longLongValue2 >> 4) & 1;
  }

  else
  {
    LODWORD(v5) = -1;
  }

  return v5;
}

- (void)setOpenToSpread:(int)spread
{
  if (*&spread == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AEBookInfo *)self _setBitMask:32 enabled:0];
    v4 = 0;
  }

  else
  {
    v5 = *&spread;
    [(AEBookInfo *)self _setBitMask:32 enabled:1];
    v4 = v5 == 1;
  }

  [(AEBookInfo *)self _setBitMask:16 enabled:v4];
}

- (BOOL)obeyPageBreaks
{
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  if (([appleDisplayOptions longLongValue] & 2) != 0)
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
  isPortraitProhibited = [(AEBookInfo *)self isPortraitProhibited];
  v4 = isPortraitProhibited ^ [(AEBookInfo *)self isLandscapeProhibited];
  if (isPortraitProhibited)
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
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([appleDisplayOptions longLongValue] >> 2) & 1;

  return v3;
}

- (BOOL)isLandscapeProhibited
{
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([appleDisplayOptions longLongValue] >> 3) & 1;

  return v3;
}

- (BOOL)hidesSpine
{
  appleDisplayOptions = [(AEBookInfo *)self appleDisplayOptions];
  v3 = ([appleDisplayOptions longLongValue] >> 7) & 1;

  return v3;
}

- (void)setHidesSpine:(BOOL)spine
{
  spineCopy = spine;
  if ([(AEBookInfo *)self hidesSpine]!= spine)
  {

    [(AEBookInfo *)self _setBitMask:128 enabled:spineCopy];
  }
}

- (id)assetType
{
  contentType = [(AEBookInfo *)self contentType];
  if (contentType == 3)
  {
    aeAssetType = [(AEBookInfo *)self aeAssetType];
  }

  else if (contentType == 2)
  {
    aeAssetType = @"application/pdf";
  }

  else if (contentType)
  {
    aeAssetType = &stru_1E7188;
  }

  else if ([(AEBookInfo *)self isFixedLayout])
  {
    aeAssetType = @"application/ePubPictureBook";
  }

  else
  {
    aeAssetType = @"application/ePub";
  }

  return aeAssetType;
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
      bookBundlePath = [(AEBookInfo *)obj bookBundlePath];

      if (bookBundlePath)
      {
        v4 = [NSURL alloc];
        bookBundlePath2 = [(AEBookInfo *)obj bookBundlePath];
        v6 = [v4 initFileURLWithPath:bookBundlePath2];
        url = self->_url;
        self->_url = v6;
      }
    }

    objc_sync_exit(obj);
  }
}

- (void)setBookBundlePath:(id)path
{
  pathCopy = path;
  [(AEBookInfo *)self willChangeValueForKey:@"bookBundlePath"];
  url = self->_url;
  self->_url = 0;

  [(AEBookInfo *)self setPrimitiveValue:pathCopy forKey:@"bookBundlePath"];

  [(AEBookInfo *)self didChangeValueForKey:@"bookBundlePath"];
}

- (id)dictionaryRepresentation
{
  entity = [(AEBookInfo *)self entity];
  attributesByName = [entity attributesByName];
  allKeys = [attributesByName allKeys];

  v6 = [(AEBookInfo *)self dictionaryWithValuesForKeys:allKeys];

  return v6;
}

- (BOOL)hasMediaOverlayElements
{
  if (!self->_mediaOverlayElementCountValid)
  {
    databaseKey = [(AEBookInfo *)self databaseKey];
    v4 = [NSPredicate predicateWithFormat:@"bookDatabaseKey == %@ AND mediaOverlayHref != NULL", databaseKey];

    managedObjectContext = [(AEBookInfo *)self managedObjectContext];
    v6 = [managedObjectContext countEntity:@"BKDocument" withPredicate:v4];

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
    bookBundlePath = [(AEBookInfo *)self bookBundlePath];
    v5 = [bookBundlePath stringByAppendingPathComponent:@"iTunesMetadata.plist"];

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
  selfCopy = self;
  assetID = [(AEBookInfo *)selfCopy assetID];
  v4 = objc_getAssociatedObject(selfCopy, "cacheItem");
  if (!v4)
  {
    v4 = objc_alloc_init(BEProtocolCacheItem);
    [v4 setBookID:assetID];
    basePlusContentPath = [(AEBookInfo *)selfCopy basePlusContentPath];
    [v4 setRootPath:basePlusContentPath];

    bookEpubId = [(AEBookInfo *)selfCopy bookEpubId];
    [v4 setBookEpubId:bookEpubId];

    bookEpubIdWithUUIDScheme = [(AEBookInfo *)selfCopy bookEpubIdWithUUIDScheme];
    [v4 setBookEpubIdWithUUIDScheme:bookEpubIdWithUUIDScheme];

    sinfInfo = [(AEBookInfo *)selfCopy sinfInfo];
    allObjects = [sinfInfo allObjects];

    if ([allObjects count])
    {
      v10 = [allObjects valueForKey:@"sinfNumber"];
      v11 = [allObjects valueForKey:@"sinfBlob"];
      v12 = [[NSDictionary alloc] initWithObjects:v11 forKeys:v10];
      [v4 setSinfInfo:v12];
    }

    databaseKey = [(AEBookInfo *)selfCopy databaseKey];
    v14 = [NSPredicate predicateWithFormat:@"bookDatabaseKey ==[n] %@", databaseKey];

    v15 = [[NSArray alloc] initWithObjects:{@"mime", @"fileSize", @"sinfNumber", @"compressionAlgorithm", @"encryptionAlgorithm", @"href", 0}];
    managedObjectContext = [(AEBookInfo *)selfCopy managedObjectContext];
    v17 = [managedObjectContext copyEntityPropertiesArray:v15 fromEntityName:@"BKDocument" withPredicate:v14 sortBy:0 ascending:1];

    if ([v17 count])
    {
      v18 = [v17 valueForKey:@"href"];
      v19 = [[NSDictionary alloc] initWithObjects:v17 forKeys:v18];
      [v4 setDocuments:v19];
    }

    objc_setAssociatedObject(selfCopy, "cacheItem", v4, &dword_0 + 1);
  }

  return v4;
}

- (BKStyleManager)styleManager
{
  v3 = objc_getAssociatedObject(self, "styleManager");
  if (!v3)
  {
    bookLanguage = [(AEBookInfo *)self bookLanguage];
    v3 = [BKStyleManager styleManagerWithLanguage:bookLanguage];

    objc_setAssociatedObject(self, "styleManager", v3, &dword_0 + 1);
  }

  return v3;
}

+ (id)storeURLForBookStoreId:(id)id isAudiobook:(BOOL)audiobook
{
  audiobookCopy = audiobook;
  idCopy = id;
  if ([idCopy longLongValue])
  {
    v6 = +[AEUserPublishing sharedInstance];
    v7 = [v6 storeURLForStoreId:idCopy dataSource:0];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = @"book";
      if (audiobookCopy)
      {
        v10 = @"audiobook";
      }

      idCopy = [NSString stringWithFormat:@"https://books.apple.com/%@/id%@", v10, idCopy];
      v9 = [[NSURL alloc] initWithString:idCopy];
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
  pageProgressionDirection = [(AEBookInfo *)self pageProgressionDirection];
  v3 = [pageProgressionDirection isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];

  return v3;
}

- (BOOL)languageDefaultsToHorizontalTextFlow
{
  bookLanguage = [(AEBookInfo *)self bookLanguage];
  v3 = [IMLanguageUtilities languageDefaultsToHorizontalOrientation:bookLanguage];

  return v3;
}

- (int)languageDefaultPageProgressDirection
{
  bookLanguage = [(AEBookInfo *)self bookLanguage];
  v3 = [IMLanguageUtilities languageDefaultsToPageProgressLeftToRight:bookLanguage];

  return v3 ^ 1;
}

- (BEBookViewModel)epub
{
  selfCopy = self;
  v3 = AEBookInfo.epub.getter();

  return v3;
}

@end