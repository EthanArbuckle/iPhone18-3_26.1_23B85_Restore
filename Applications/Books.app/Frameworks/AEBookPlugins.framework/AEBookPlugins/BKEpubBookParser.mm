@interface BKEpubBookParser
+ (BOOL)canParse:(id)parse;
+ (BOOL)isValidMimeType:(id)type;
+ (BOOL)recomputeFixedLayoutDimensionsForBook:(id)book;
+ (CGSize)_computeFixedLayoutDimensionsFrom:(id)from forBook:(id)book;
+ (id)bookCachedDataPathForBookWithKey:(id)key;
+ (id)bookExtraInfoCacheDirectory;
+ (id)cachedDataForBookDatabaseKey:(id)key cacheKey:(id)cacheKey;
- (BOOL)isDifferentParserVersion:(id)version;
- (BOOL)isLegalCompression:(id)compression;
- (BOOL)isLegalEncryption:(id)encryption;
- (id)createBookExtraInfoCacheDirectoryIfNecessary;
- (id)mediaOverlayHrefForManifestInfo:(__CFDictionary *)info readable:(BKReadableFormat *)readable;
- (int)_fullParse;
- (int)_touchUpParse;
- (int)constructEntity:(id)entity withNavPoint:(void *)point absoluteOrder:(int)order indentationLevel:(int)level withAnchorInfo:(id)info createdObjects:(id)objects;
- (int)parse:(BOOL)parse;
- (void)constructBKDocumentWithReadable:(BKReadableFormat *)readable chapters:(id)chapters landmarks:(id)landmarks physicalPages:(id)pages;
- (void)constructBKIdCfiMappingsWithEpub:(void *)epub;
- (void)constructBKLandmarkInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info;
- (void)constructBKNavigationInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info;
- (void)constructBKPhysicalPageWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info;
- (void)constructBKProtectionInfoWithReadable:(BKReadableFormat *)readable;
- (void)createEpubParser:(int)parser errorCode:(int *)code;
- (void)resetItunesMetadata;
- (void)setAppleDisplayOptionsFromParser:(BKReadableFormat *)parser;
- (void)setArtworkTemplateFromPlist:(id)plist;
- (void)setCoverWritingModeFromPlist:(id)plist;
- (void)setEndOfBookExperienceFromPlist:(id)plist;
- (void)setLanguageFromPlist:(id)plist;
- (void)setObeyPageBreaksFromPlist:(id)plist;
- (void)setPublisherInfoFromParser:(BKReadableFormat *)parser;
- (void)setScrollAxisModeFromPlist:(id)plist;
- (void)tryEmbeddedHrefForCoverArtHref:(id)href;
@end

@implementation BKEpubBookParser

+ (BOOL)canParse:(id)parse
{
  parseCopy = parse;
  if (BookFormatByFilePath())
  {
    v5 = 0;
  }

  else
  {
    v5 = ITEpubFolder::isMimeCorrect(parseCopy, 0, 0, v4) != 0;
  }

  return v5;
}

- (void)createEpubParser:(int)parser errorCode:(int *)code
{
  book = [(BKBookParser *)self book];
  [book bookBundlePath];

  v6 = +[BLLibrary defaultBookLibrary];
  book2 = [(BKBookParser *)self book];
  bookBundlePath = [book2 bookBundlePath];
  v9 = [NSURL fileURLWithPath:bookBundlePath];
  v10 = [v6 _perUserBookURLForBookURL:v9];
  path = [v10 path];
  v12 = [path mutableCopy];

  if (([v12 hasSuffix:@"/"] & 1) == 0)
  {
    [v12 appendString:@"/"];
  }

  operator new();
}

- (int)_fullParse
{
  v196 = 0;
  v3 = [(BKEpubBookParser *)self createEpubParser:0 errorCode:&v196];
  if (!v196)
  {
    book = [(BKBookParser *)self book];
    [book resetAsNewlyDownloaded];

    v8 = (*(*v3 + 136))(v3);
    book2 = [(BKBookParser *)self book];
    bookBundlePath = [book2 bookBundlePath];
    v11 = [v8 stringByReplacingOccurrencesOfString:bookBundlePath withString:&stru_1E7188];
    book3 = [(BKBookParser *)self book];
    [book3 setBookContentSubpath:v11];

    book4 = [(BKBookParser *)self book];
    bookAuthor = [book4 bookAuthor];
    LODWORD(book2) = bookAuthor == 0;

    if (!book2)
    {
      goto LABEL_23;
    }

    v15 = v3[4];
    if (v15)
    {
      CFRetain(v15);
      v16 = v3[4];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    book5 = [(BKBookParser *)self book];
    bookAuthor2 = [book5 bookAuthor];
    if ([bookAuthor2 length])
    {
      book6 = [(BKBookParser *)self book];
      bookAuthor3 = [book6 bookAuthor];
      v22 = [v17 isEqualToString:bookAuthor3];

      if (v22)
      {
        goto LABEL_18;
      }

      book5 = _ITEpubParsingLog();
      if (os_log_type_enabled(book5, OS_LOG_TYPE_DEFAULT))
      {
        book7 = [(BKBookParser *)self book];
        bookAuthor4 = [book7 bookAuthor];
        *buf = 138544386;
        v198 = @"self.book.bookAuthor";
        v199 = 2160;
        v200 = 1752392040;
        v201 = 2112;
        v202 = v17;
        v203 = 2160;
        v204 = 1752392040;
        v205 = 2112;
        v206 = bookAuthor4;
        _os_log_impl(&dword_0, book5, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

LABEL_18:
    v25 = v3[4];
    if (v25 && (CFRetain(v25), (book9 = v3[4]) != 0))
    {
      book8 = [(BKBookParser *)self book];
      [book8 setBookAuthor:book9];
    }

    else
    {
      book9 = [(BKBookParser *)self book];
      [book9 setBookAuthor:0];
    }

LABEL_23:
    book10 = [(BKBookParser *)self book];
    bookTitle = [book10 bookTitle];
    v30 = bookTitle == 0;

    if (!v30)
    {
      goto LABEL_38;
    }

    v31 = v3[5];
    if (v31)
    {
      CFRetain(v31);
      v32 = v3[5];
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    book11 = [(BKBookParser *)self book];
    bookTitle2 = [book11 bookTitle];
    if ([bookTitle2 length])
    {
      book12 = [(BKBookParser *)self book];
      bookTitle3 = [book12 bookTitle];
      v38 = [v33 isEqualToString:bookTitle3];

      if (v38)
      {
        goto LABEL_33;
      }

      book11 = _ITEpubParsingLog();
      if (os_log_type_enabled(book11, OS_LOG_TYPE_DEFAULT))
      {
        book13 = [(BKBookParser *)self book];
        bookTitle4 = [book13 bookTitle];
        *buf = 138544386;
        v198 = @"self.book.bookTitle";
        v199 = 2160;
        v200 = 1752392040;
        v201 = 2112;
        v202 = v33;
        v203 = 2160;
        v204 = 1752392040;
        v205 = 2112;
        v206 = bookTitle4;
        _os_log_impl(&dword_0, book11, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

LABEL_33:
    v41 = v3[5];
    if (v41 && (CFRetain(v41), (book15 = v3[5]) != 0))
    {
      book14 = [(BKBookParser *)self book];
      [book14 setBookTitle:book15];
    }

    else
    {
      book15 = [(BKBookParser *)self book];
      [book15 setBookTitle:0];
    }

LABEL_38:
    v44 = v3[6];
    if (v44)
    {
      CFRetain(v44);
      v45 = v3[6];
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
    book16 = [(BKBookParser *)self book];
    bookLanguage = [book16 bookLanguage];
    if ([bookLanguage length])
    {
      book17 = [(BKBookParser *)self book];
      bookLanguage2 = [book17 bookLanguage];
      v51 = [v46 isEqualToString:bookLanguage2];

      if (v51)
      {
LABEL_47:

        v54 = v3[6];
        if (v54 && (CFRetain(v54), (book19 = v3[6]) != 0))
        {
          book18 = [(BKBookParser *)self book];
          [book18 setBookLanguage:book19];
        }

        else
        {
          book19 = [(BKBookParser *)self book];
          [book19 setBookLanguage:0];
        }

        v57 = v3[7];
        if (v57)
        {
          CFRetain(v57);
          v58 = v3[7];
        }

        else
        {
          v58 = 0;
        }

        v59 = v58;
        book20 = [(BKBookParser *)self book];
        genre = [book20 genre];
        if ([genre length])
        {
          book21 = [(BKBookParser *)self book];
          genre2 = [book21 genre];
          v64 = [v59 isEqualToString:genre2];

          if (v64)
          {
LABEL_60:

            v67 = v3[7];
            if (v67 && (CFRetain(v67), (book23 = v3[7]) != 0))
            {
              book22 = [(BKBookParser *)self book];
              [book22 setGenre:book23];
            }

            else
            {
              book23 = [(BKBookParser *)self book];
              [book23 setGenre:0];
            }

            v70 = v3[8];
            if (v70)
            {
              CFRetain(v70);
              v71 = v3[8];
            }

            else
            {
              v71 = 0;
            }

            v72 = v71;
            book24 = [(BKBookParser *)self book];
            bookEpubId = [book24 bookEpubId];
            if ([bookEpubId length])
            {
              book25 = [(BKBookParser *)self book];
              bookEpubId2 = [book25 bookEpubId];
              v77 = [v72 isEqualToString:bookEpubId2];

              if (v77)
              {
LABEL_73:

                v80 = v3[8];
                if (v80 && (CFRetain(v80), (book27 = v3[8]) != 0))
                {
                  book26 = [(BKBookParser *)self book];
                  [book26 setBookEpubId:book27];
                }

                else
                {
                  book27 = [(BKBookParser *)self book];
                  [book27 setBookEpubId:0];
                }

                v83 = v3[9];
                if (v83)
                {
                  CFRetain(v83);
                  v84 = v3[9];
                }

                else
                {
                  v84 = 0;
                }

                v85 = v84;
                book28 = [(BKBookParser *)self book];
                bookEpubIdWithUUIDScheme = [book28 bookEpubIdWithUUIDScheme];
                if ([bookEpubIdWithUUIDScheme length])
                {
                  book29 = [(BKBookParser *)self book];
                  bookEpubIdWithUUIDScheme2 = [book29 bookEpubIdWithUUIDScheme];
                  v90 = [v85 isEqualToString:bookEpubIdWithUUIDScheme2];

                  if (v90)
                  {
LABEL_86:

                    v93 = v3[9];
                    if (v93 && (CFRetain(v93), (book31 = v3[9]) != 0))
                    {
                      book30 = [(BKBookParser *)self book];
                      [book30 setBookEpubIdWithUUIDScheme:book31];
                    }

                    else
                    {
                      book31 = [(BKBookParser *)self book];
                      [book31 setBookEpubIdWithUUIDScheme:0];
                    }

                    v96 = ITEpubFolder::dcTermsModified(v3);
                    book32 = [(BKBookParser *)self book];
                    [book32 setDcTermsModified:v96];

                    v98 = ITEpubFolder::readingDirection(v3);
                    book33 = [(BKBookParser *)self book];
                    [book33 setReadingDirection:v98];

                    active = ITEpubFolder::mediaActiveClass(v3);
                    book34 = [(BKBookParser *)self book];
                    [book34 setMediaActiveClass:active];

                    v102 = ITEpubFolder::pageProgressionDirection(v3);
                    if (v102)
                    {
                      v103 = v102;
                    }

                    else
                    {
                      v103 = @"default";
                    }

                    book35 = [(BKBookParser *)self book];
                    [book35 setPageProgressionDirection:v103];

                    v105 = ITEpubFolder::dcTermsContributor(v3);
                    book36 = [(BKBookParser *)self book];
                    [book36 setDcTermsContributor:v105];

                    book37 = [(BKBookParser *)self book];
                    bookLanguage3 = [book37 bookLanguage];
                    if (([IMLanguageUtilities languageIsArabic:bookLanguage3]& 1) != 0)
                    {
                      v109 = 1;
                    }

                    else
                    {
                      book38 = [(BKBookParser *)self book];
                      bookLanguage4 = [book38 bookLanguage];
                      v109 = [IMLanguageUtilities languageIsHebrew:bookLanguage4];
                    }

                    book39 = [(BKBookParser *)self book];
                    pageProgressionDirection = [book39 pageProgressionDirection];
                    v114 = [pageProgressionDirection isEqualToString:@"default"];

                    if ((v114 & v109) != 0)
                    {
                      book40 = [(BKBookParser *)self book];
                      [book40 setPageProgressionDirection:@"rtl"];
                    }

                    v116 = ITEpubFolder::coverWritingMode(v3);
                    if (v116)
                    {
                      v117 = v116;
                    }

                    else
                    {
                      v117 = @"default";
                    }

                    book41 = [(BKBookParser *)self book];
                    [book41 setCoverWritingModeString:v117];

                    v119 = ITEpubFolder::scrollDirection(v3);
                    if (v119)
                    {
                      v120 = v119;
                    }

                    else
                    {
                      v120 = @"default";
                    }

                    book42 = [(BKBookParser *)self book];
                    [book42 setScrollDirection:v120];

                    if (ITEpubFolder::ebpajGuideVersion(v3))
                    {
                      book43 = [(BKBookParser *)self book];
                      bookLanguage5 = [book43 bookLanguage];
                      v124 = [bookLanguage5 caseInsensitiveCompare:@"ja"] == 0;

                      if (v124 || (-[BKBookParser book](self, "book"), v125 = objc_claimAutoreleasedReturnValue(), [v125 bookLanguage], v126 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend(v126, "rangeOfString:options:", @"ja", 9) == 0, v126, v125, v127) && ((-[BKBookParser book](self, "book"), v128 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v128, "bookLanguage"), v129 = objc_claimAutoreleasedReturnValue(), v130 = objc_msgSend(v129, "characterAtIndex:", 2), v129, v128, v130 == 95) || v130 == 45))
                      {
                        book44 = [(BKBookParser *)self book];
                        [book44 setRespectImageSizeClass:@"gaiji"];

                        book45 = [(BKBookParser *)self book];
                        [book45 setRespectImageSizeClassIsPrefix:1];
                      }
                    }

                    [(BKEpubBookParser *)self setPublisherInfoFromParser:v3];
                    [(BKEpubBookParser *)self setAppleDisplayOptionsFromParser:v3];
                    [(BKEpubBookParser *)self resetItunesMetadata];
                    book46 = [(BKBookParser *)self book];
                    bookLanguage6 = [book46 bookLanguage];
                    v135 = [NSLocale canonicalLanguageIdentifierFromString:bookLanguage6];
                    book47 = [(BKBookParser *)self book];
                    [book47 setBookLanguage:v135];

                    v137 = ITEpubFolder::spineIndexInPackage(v3);
                    if ((v137 & 0x80000000) != 0)
                    {
                      v138 = 0;
                    }

                    else
                    {
                      v138 = [NSNumber numberWithInt:v137];
                    }

                    book48 = [(BKBookParser *)self book];
                    [book48 setSpineIndexInPackage:v138];

                    if (v137 >= 0)
                    {
                    }

                    v140 = (*(*v3 + 96))(v3);
                    [(BKEpubBookParser *)self tryEmbeddedHrefForCoverArtHref:v140];
                    if (v140)
                    {
                      CFRelease(v140);
                    }

                    book49 = [(BKBookParser *)self book];
                    [book49 setDateLastOpened:0];

                    v142 = (*(*v3 + 152))(v3);
                    book50 = [(BKBookParser *)self book];
                    parserOPFPath = [book50 parserOPFPath];
                    if ([parserOPFPath length])
                    {
                      book51 = [(BKBookParser *)self book];
                      parserOPFPath2 = [book51 parserOPFPath];
                      v147 = [v142 isEqualToString:parserOPFPath2];

                      if (v147)
                      {
                        goto LABEL_123;
                      }

                      book50 = _ITEpubParsingLog();
                      if (os_log_type_enabled(book50, OS_LOG_TYPE_DEFAULT))
                      {
                        book52 = [(BKBookParser *)self book];
                        parserOPFPath3 = [book52 parserOPFPath];
                        *buf = 138544386;
                        v198 = @"self.book.parserOPFPath";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v142;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = parserOPFPath3;
                        _os_log_impl(&dword_0, book50, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

LABEL_123:
                    v150 = (*(*v3 + 152))(v3);
                    [(BKBookParser *)self book];
                    if (v150)
                      v151 = {;
                      [v151 setParserOPFPath:v150];
                    }

                    else
                      v150 = {;
                      [v150 setParserOPFPath:0];
                    }

                    v152 = (*(*v3 + 160))(v3);
                    book53 = [(BKBookParser *)self book];
                    parserNCXPath = [book53 parserNCXPath];
                    if ([parserNCXPath length])
                    {
                      book54 = [(BKBookParser *)self book];
                      parserNCXPath2 = [book54 parserNCXPath];
                      v157 = [v152 isEqualToString:parserNCXPath2];

                      if (v157)
                      {
                        goto LABEL_132;
                      }

                      book53 = _ITEpubParsingLog();
                      if (os_log_type_enabled(book53, OS_LOG_TYPE_DEFAULT))
                      {
                        book55 = [(BKBookParser *)self book];
                        parserNCXPath3 = [book55 parserNCXPath];
                        *buf = 138544386;
                        v198 = @"self.book.parserNCXPath";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v152;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = parserNCXPath3;
                        _os_log_impl(&dword_0, book53, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

LABEL_132:
                    v160 = (*(*v3 + 160))(v3);
                    [(BKBookParser *)self book];
                    if (v160)
                      v161 = {;
                      [v161 setParserNCXPath:v160];
                    }

                    else
                      v160 = {;
                      [v160 setParserNCXPath:0];
                    }

                    v162 = (*(*v3 + 80))(v3);
                    book56 = [(BKBookParser *)self book];
                    firstDocumentHref = [book56 firstDocumentHref];
                    if ([firstDocumentHref length])
                    {
                      book57 = [(BKBookParser *)self book];
                      firstDocumentHref2 = [book57 firstDocumentHref];
                      v167 = [v162 isEqualToString:firstDocumentHref2];

                      if (v167)
                      {
                        goto LABEL_141;
                      }

                      book56 = _ITEpubParsingLog();
                      if (os_log_type_enabled(book56, OS_LOG_TYPE_DEFAULT))
                      {
                        book58 = [(BKBookParser *)self book];
                        firstDocumentHref3 = [book58 firstDocumentHref];
                        *buf = 138544386;
                        v198 = @"self.book.firstDocumentHref";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v162;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = firstDocumentHref3;
                        _os_log_impl(&dword_0, book56, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

LABEL_141:
                    v170 = (*(*v3 + 80))(v3);
                    [(BKBookParser *)self book];
                    if (v170)
                      v171 = {;
                      [v171 setFirstDocumentHref:v170];
                    }

                    else
                      v170 = {;
                      [v170 setFirstDocumentHref:0];
                    }

                    v172 = (*(*v3 + 104))(v3);
                    book59 = [(BKBookParser *)self book];
                    tocPageHref = [book59 tocPageHref];
                    if ([tocPageHref length])
                    {
                      book60 = [(BKBookParser *)self book];
                      tocPageHref2 = [book60 tocPageHref];
                      v177 = [v172 isEqualToString:tocPageHref2];

                      if (v177)
                      {
LABEL_150:

                        v180 = (*(*v3 + 104))(v3);
                        [(BKBookParser *)self book];
                        if (v180)
                          v181 = {;
                          [v181 setTocPageHref:v180];
                        }

                        else
                          v180 = {;
                          [v180 setTocPageHref:0];
                        }

                        v182 = objc_opt_new();
                        v183 = objc_opt_new();
                        v184 = objc_opt_new();
                        [(BKEpubBookParser *)self constructBKNavigationInfoWithReadable:v3 withAnchorInfo:v182];
                        [(BKEpubBookParser *)self constructBKLandmarkInfoWithReadable:v3 withAnchorInfo:v183];
                        [(BKEpubBookParser *)self constructBKPhysicalPageWithReadable:v3 withAnchorInfo:v184];
                        [(BKEpubBookParser *)self constructBKIdCfiMappingsWithEpub:v3];
                        [(BKEpubBookParser *)self constructBKDocumentWithReadable:v3 chapters:v182 landmarks:v183 physicalPages:v184];
                        [(BKEpubBookParser *)self constructBKProtectionInfoWithReadable:v3];

                        book61 = [(BKBookParser *)self book];
                        LODWORD(v183) = [BKEpubBookParser recomputeFixedLayoutDimensionsForBook:book61];

                        if (v183)
                        {
                          v196 = -998;
                          book62 = [(BKBookParser *)self book];
                          [book62 resetAsNewlyDownloaded];
                        }

                        else
                        {
                          illegalEncryptionAlgorithm = self->_illegalEncryptionAlgorithm;
                          book63 = [(BKBookParser *)self book];
                          book62 = book63;
                          if (illegalEncryptionAlgorithm)
                          {
                            [book63 setParserVersion:@"BKEpubBookParser - IllegalEncryption - 10.04.2011"];
                          }

                          else
                          {
                            [book63 setParserVersion:@"BookEPUB Parser - 2024.09.26"];
                          }
                        }

                        goto LABEL_158;
                      }

                      book59 = _ITEpubParsingLog();
                      if (os_log_type_enabled(book59, OS_LOG_TYPE_DEFAULT))
                      {
                        book64 = [(BKBookParser *)self book];
                        tocPageHref3 = [book64 tocPageHref];
                        *buf = 138544386;
                        v198 = @"self.book.tocPageHref";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v172;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = tocPageHref3;
                        _os_log_impl(&dword_0, book59, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_150;
                  }

                  book28 = _ITEpubParsingLog();
                  if (os_log_type_enabled(book28, OS_LOG_TYPE_DEFAULT))
                  {
                    book65 = [(BKBookParser *)self book];
                    bookEpubIdWithUUIDScheme3 = [book65 bookEpubIdWithUUIDScheme];
                    *buf = 138544386;
                    v198 = @"self.book.bookEpubIdWithUUIDScheme";
                    v199 = 2160;
                    v200 = 1752392040;
                    v201 = 2112;
                    v202 = v85;
                    v203 = 2160;
                    v204 = 1752392040;
                    v205 = 2112;
                    v206 = bookEpubIdWithUUIDScheme3;
                    _os_log_impl(&dword_0, book28, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                  }
                }

                else
                {
                }

                goto LABEL_86;
              }

              book24 = _ITEpubParsingLog();
              if (os_log_type_enabled(book24, OS_LOG_TYPE_DEFAULT))
              {
                book66 = [(BKBookParser *)self book];
                bookEpubId3 = [book66 bookEpubId];
                *buf = 138544386;
                v198 = @"self.book.bookEpubId";
                v199 = 2160;
                v200 = 1752392040;
                v201 = 2112;
                v202 = v72;
                v203 = 2160;
                v204 = 1752392040;
                v205 = 2112;
                v206 = bookEpubId3;
                _os_log_impl(&dword_0, book24, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
              }
            }

            else
            {
            }

            goto LABEL_73;
          }

          book20 = _ITEpubParsingLog();
          if (os_log_type_enabled(book20, OS_LOG_TYPE_DEFAULT))
          {
            book67 = [(BKBookParser *)self book];
            genre3 = [book67 genre];
            *buf = 138544386;
            v198 = @"self.book.genre";
            v199 = 2160;
            v200 = 1752392040;
            v201 = 2112;
            v202 = v59;
            v203 = 2160;
            v204 = 1752392040;
            v205 = 2112;
            v206 = genre3;
            _os_log_impl(&dword_0, book20, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
          }
        }

        else
        {
        }

        goto LABEL_60;
      }

      book16 = _ITEpubParsingLog();
      if (os_log_type_enabled(book16, OS_LOG_TYPE_DEFAULT))
      {
        book68 = [(BKBookParser *)self book];
        bookLanguage7 = [book68 bookLanguage];
        *buf = 138544386;
        v198 = @"self.book.bookLanguage";
        v199 = 2160;
        v200 = 1752392040;
        v201 = 2112;
        v202 = v46;
        v203 = 2160;
        v204 = 1752392040;
        v205 = 2112;
        v206 = bookLanguage7;
        _os_log_impl(&dword_0, book16, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

    goto LABEL_47;
  }

  v4 = _ITEpubParsingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v198) = v196;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "createEpubParser error: %d", buf, 8u);
  }

  v5 = BCIMLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v198 = "[BKEpubBookParser _fullParse]";
    v199 = 2080;
    v200 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
    v201 = 1024;
    LODWORD(v202) = 145;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
  }

  book62 = BCIMLog();
  if (os_log_type_enabled(book62, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v198) = v196;
    _os_log_impl(&dword_0, book62, OS_LOG_TYPE_INFO, "@createEpubParser error: %d", buf, 8u);
  }

LABEL_158:

  ITRetain::release(v3);
  result = v196;
  if ((v196 + 42005) < 2 || v196 == -42597)
  {
    return -998;
  }

  if (!v196)
  {
    if (self->_illegalEncryptionAlgorithm)
    {
      v189 = _ITEpubParsingLog();
      if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
      {
        book69 = [(BKBookParser *)self book];
        assetLogID = [book69 assetLogID];
        book70 = [(BKBookParser *)self book];
        bookBundlePath2 = [book70 bookBundlePath];
        book71 = [(BKBookParser *)self book];
        assetID = [book71 assetID];
        *buf = 138543874;
        v198 = assetLogID;
        v199 = 2112;
        v200 = bookBundlePath2;
        v201 = 2112;
        v202 = assetID;
        _os_log_impl(&dword_0, v189, OS_LOG_TYPE_ERROR, "Illegal encryption for book %{public}@ %@:%@", buf, 0x20u);
      }

      return -999;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isDifferentParserVersion:(id)version
{
  versionCopy = version;
  parserVersion = [versionCopy parserVersion];
  if (parserVersion)
  {
    parserVersion2 = [versionCopy parserVersion];
    v6 = [@"BookEPUB Parser - 2024.09.26" isEqualToString:parserVersion2] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (int)_touchUpParse
{
  book = [(BKBookParser *)self book];
  v4 = [(BKEpubBookParser *)self isDifferentParserVersion:book];

  if (!v4)
  {
    return 0;
  }

  book2 = [(BKBookParser *)self book];
  parserVersion = [book2 parserVersion];
  if (parserVersion)
  {
    book3 = [(BKBookParser *)self book];
    parserVersion2 = [book3 parserVersion];
    v9 = [@"BKEpubBookParser - IllegalEncryption - 10.04.2011" isEqualToString:parserVersion2];

    if (v9)
    {
      return -999;
    }
  }

  else
  {
  }

  return [(BKEpubBookParser *)self _fullParse];
}

- (int)parse:(BOOL)parse
{
  if (parse)
  {
    book4 = _ITEpubParsingLog();
    if (os_log_type_enabled(book4, OS_LOG_TYPE_ERROR))
    {
      book = [(BKBookParser *)self book];
      assetLogID = [book assetLogID];
      book2 = [(BKBookParser *)self book];
      bookBundlePath = [book2 bookBundlePath];
      book3 = [(BKBookParser *)self book];
      assetID = [book3 assetID];
      v43 = 138543874;
      v44 = assetLogID;
      v45 = 2112;
      v46 = bookBundlePath;
      v47 = 2112;
      v48 = assetID;
      _os_log_impl(&dword_0, book4, OS_LOG_TYPE_ERROR, "Skipping all parsing for %{public}@ - %@:%@ -- Why would we do this?", &v43, 0x20u);
    }

    goto LABEL_28;
  }

  book4 = [(BKBookParser *)self book];
  book5 = [(BKBookParser *)self book];
  bookBundlePath2 = [book5 bookBundlePath];

  if (!bookBundlePath2)
  {
    v23 = _ITEpubParsingLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      databaseKey = [book4 databaseKey];
      bookAuthor = [book4 bookAuthor];
      bookTitle = [book4 bookTitle];
      assetLogID2 = [book4 assetLogID];
      bookBundlePath3 = [book4 bookBundlePath];
      assetID2 = [book4 assetID];
      v43 = 138413570;
      v44 = databaseKey;
      v45 = 2112;
      v46 = bookAuthor;
      v47 = 2112;
      v48 = bookTitle;
      v49 = 2114;
      v50 = assetLogID2;
      v51 = 2112;
      v52 = bookBundlePath3;
      v53 = 2112;
      v54 = assetID2;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Parsing Not Possible -- No Bundle Path: [%@] {%@ - %@} - %{public}@ - %@:%@", &v43, 0x3Eu);
    }

    v30 = BCIMLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v43 = 136315650;
      v44 = "[BKEpubBookParser parse:]";
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v47 = 1024;
      LODWORD(v48) = 368;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%s %s:%d", &v43, 0x1Cu);
    }

    v21 = BCIMLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      databaseKey2 = [book4 databaseKey];
      bookAuthor2 = [book4 bookAuthor];
      bookTitle2 = [book4 bookTitle];
      v43 = 138412802;
      v44 = databaseKey2;
      v45 = 2112;
      v46 = bookAuthor2;
      v47 = 2112;
      v48 = bookTitle2;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "@Parsing Not Possible -- No Bundle Path: [%@] {%@ - %@}", &v43, 0x20u);
    }

    _fullParse = -1000;
    goto LABEL_26;
  }

  if (![book4 wasParsed])
  {
    goto LABEL_9;
  }

  isDirty = [book4 isDirty];
  if ([isDirty BOOLValue] & 1) != 0 || (-[NSObject needsReparsing](book4, "needsReparsing"))
  {

LABEL_9:
    v14 = _ITEpubParsingLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      assetLogID3 = [book4 assetLogID];
      bookBundlePath4 = [book4 bookBundlePath];
      assetID3 = [book4 assetID];
      v43 = 138543874;
      v44 = assetLogID3;
      v45 = 2112;
      v46 = bookBundlePath4;
      v47 = 2112;
      v48 = assetID3;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Performing full parse on %{public}@ - %@:%@", &v43, 0x20u);
    }

    _fullParse = [(BKEpubBookParser *)self _fullParse];
    if (!_fullParse)
    {
      v34 = +[NSDate date];
      [book4 setParseDate:v34];

      [book4 setIsDirty:&__kCFBooleanFalse];
LABEL_28:
      _fullParse = 0;
      goto LABEL_29;
    }

    v19 = _ITEpubParsingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v43 = 67109120;
      LODWORD(v44) = _fullParse;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Full parse failure: %d", &v43, 8u);
    }

    v20 = BCIMLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v43 = 136315650;
      v44 = "[BKEpubBookParser parse:]";
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v47 = 1024;
      LODWORD(v48) = 347;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%s %s:%d", &v43, 0x1Cu);
    }

    v21 = BCIMLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v43 = 67109120;
    LODWORD(v44) = _fullParse;
    v22 = "@_fullParse: %d";
    goto LABEL_18;
  }

  v36 = BEAlwaysFullParseEPUB();

  if (v36)
  {
    goto LABEL_9;
  }

  v37 = _ITEpubParsingLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    assetLogID4 = [book4 assetLogID];
    bookBundlePath5 = [book4 bookBundlePath];
    assetID4 = [book4 assetID];
    v43 = 138543874;
    v44 = assetLogID4;
    v45 = 2112;
    v46 = bookBundlePath5;
    v47 = 2112;
    v48 = assetID4;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Performing touchup parse on %{public}@ - %@:%@", &v43, 0x20u);
  }

  _fullParse = [(BKEpubBookParser *)self _touchUpParse];
  if (_fullParse)
  {
    v41 = _ITEpubParsingLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v43 = 67109120;
      LODWORD(v44) = _fullParse;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Touch up parse failure: %d", &v43, 8u);
    }

    v42 = BCIMLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = 136315650;
      v44 = "[BKEpubBookParser parse:]";
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v47 = 1024;
      LODWORD(v48) = 360;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%s %s:%d", &v43, 0x1Cu);
    }

    v21 = BCIMLog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v43 = 67109120;
    LODWORD(v44) = _fullParse;
    v22 = "@_touchUpParse: %d";
LABEL_18:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, v22, &v43, 8u);
LABEL_26:
  }

LABEL_29:

  return _fullParse;
}

- (void)tryEmbeddedHrefForCoverArtHref:(id)href
{
  hrefCopy = href;
  if (hrefCopy)
  {
    v14 = hrefCopy;
    v5 = hrefCopy;
    book = [(BKBookParser *)self book];
    bookContentSubpath = [book bookContentSubpath];
    v8 = [bookContentSubpath length];

    v9 = v5;
    if (v8)
    {
      book2 = [(BKBookParser *)self book];
      bookContentSubpath2 = [book2 bookContentSubpath];
      v9 = [bookContentSubpath2 stringByAppendingPathComponent:v5];
    }

    book3 = [(BKBookParser *)self book];
    [book3 setEmbeddedArtHref:v9];

    book4 = [(BKBookParser *)self book];
    [book4 setEmbeddedArtHrefRejected:0];

    hrefCopy = v14;
  }
}

- (void)constructBKProtectionInfoWithReadable:(BKReadableFormat *)readable
{
  if (!readable)
  {
    return;
  }

  book = [(BKBookParser *)self book];
  sinfInfo = [book sinfInfo];
  allObjects = [sinfInfo allObjects];
  v7 = [allObjects count];

  if (v7)
  {
    book2 = [(BKBookParser *)self book];
    book3 = [(BKBookParser *)self book];
    sinfInfo2 = [book3 sinfInfo];
    [book2 removeSinfInfo:sinfInfo2];
  }

  if (self->_illegalEncryptionAlgorithm)
  {
    book4 = [(BKBookParser *)self book];
    managedObjectContext = [book4 managedObjectContext];

    v20 = [BKProtectionInfo newEmptyProtectionInfo:managedObjectContext];
    managedObjectContext2 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
    [(__CFDictionary *)v20 setSinfNumber:managedObjectContext2];
    book5 = [(BKBookParser *)self book];
    [book5 addSinfInfoObject:v20];
  }

  else
  {
    managedObjectContext = readable->var17;
    v20 = readable->var16;
    if (!v20)
    {
      goto LABEL_7;
    }

    book6 = [(BKBookParser *)self book];
    managedObjectContext2 = [book6 managedObjectContext];

    book5 = [(__CFDictionary *)managedObjectContext keyEnumerator];
    for (i = 0; ; i = nextObject)
    {
      nextObject = [book5 nextObject];

      if (!nextObject)
      {
        break;
      }

      v16 = [(__CFDictionary *)managedObjectContext objectForKey:nextObject];
      v17 = [BKProtectionInfo newEmptyProtectionInfo:managedObjectContext2];
      v18 = [[NSNumber alloc] initWithInt:{objc_msgSend(nextObject, "intValue")}];
      [v17 setSinfNumber:v18];
      [v17 setSinfBlob:v16];
      book7 = [(BKBookParser *)self book];
      [book7 addSinfInfoObject:v17];
    }
  }

LABEL_7:
}

- (BOOL)isLegalEncryption:(id)encryption
{
  encryptionCopy = encryption;
  v4 = encryptionCopy;
  if (!encryptionCopy || ([encryptionCopy rangeOfString:@".apple.com"], v5) || (objc_msgSend(v4, "rangeOfString:", BEAdobeFontManglingAlgorithm), v6) || (objc_msgSend(v4, "rangeOfString:", BEIDPFFontManglingAlgorithm), v7))
  {
    v8 = 1;
  }

  else
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "[BKEpubBookParser isLegalEncryption:]";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v16 = 1024;
      v17 = 462;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s %s:%d", &v12, 0x1Cu);
    }

    v11 = BCIMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "@***** Unrecognized Encryption Algorithm: %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isLegalCompression:(id)compression
{
  compressionCopy = compression;
  if ([compressionCopy length] && (objc_msgSend(compressionCopy, "isEqualToString:", @"none") & 1) == 0)
  {
    v5 = BCIMLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[BKEpubBookParser isLegalCompression:]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v12 = 1024;
      v13 = 483;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s %s:%d", &v8, 0x1Cu);
    }

    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = compressionCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@***** Unrecognized Compression Algorithm: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)mediaOverlayHrefForManifestInfo:(__CFDictionary *)info readable:(BKReadableFormat *)readable
{
  Value = CFDictionaryGetValue(info, @"media-overlay");
  if (Value && (v6 = (*(readable->var0 + 6))(readable, Value)) != 0)
  {
    v7 = v6;
    v8 = CFDictionaryGetValue(v6, @"unescaped_href");
    v9 = v8;
    if (v8)
    {
      stringByRemovingPercentEncoding = [v8 stringByRemovingPercentEncoding];
      v11 = stringByRemovingPercentEncoding;
      if (stringByRemovingPercentEncoding)
      {
        v12 = stringByRemovingPercentEncoding;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)constructBKDocumentWithReadable:(BKReadableFormat *)readable chapters:(id)chapters landmarks:(id)landmarks physicalPages:(id)pages
{
  chaptersCopy = chapters;
  landmarksCopy = landmarks;
  pagesCopy = pages;
  readableCopy = readable;
  if (readable)
  {
    book = [(BKBookParser *)self book];
    managedObjectContext = [book managedObjectContext];

    LODWORD(book) = (*(readable->var0 + 4))(readable);
    v12 = readable->var16;
    v64 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
    v13 = [[NSNumber alloc] initWithBool:1];
    v14 = [[NSNumber alloc] initWithBool:0];
    v55 = [[NSNumber alloc] initWithBool:1];
    v68 = [[NSMutableDictionary alloc] initWithCapacity:book];
    v57 = objc_alloc_init(NSMutableDictionary);
    context = objc_autoreleasePoolPush();
    book2 = [(BKBookParser *)self book];
    v56 = chaptersCopy;
    databaseKey = [book2 databaseKey];

    v16 = (book - 1);
    v61 = v14;
    v62 = v12;
    v67 = v13;
    selfCopy = self;
    do
    {
      if (v16 == -1)
      {
        break;
      }

      v17 = (*(readableCopy->var0 + 5))(readableCopy, v16);
      Value = CFDictionaryGetValue(v17, @"unescaped_href");
      if (v12)
      {
        v19 = [(__CFDictionary *)v12 objectForKey:Value];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 objectForKey:@"encryptionAlgorithm"];
          v22 = [v20 objectForKey:@"compressionAlgorithm"];
          if (![(BKEpubBookParser *)selfCopy isLegalEncryption:v21]|| ![(BKEpubBookParser *)selfCopy isLegalCompression:v22])
          {
            selfCopy->_illegalEncryptionAlgorithm = 1;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      if (!selfCopy->_illegalEncryptionAlgorithm)
      {
        v23 = [(BKEpubBookParser *)selfCopy mediaOverlayHrefForManifestInfo:v17 readable:readableCopy];
        v24 = [BKDocument newEmptyDocument:managedObjectContext];
        stringByRemovingPercentEncoding = [Value stringByRemovingPercentEncoding];
        v66 = stringByRemovingPercentEncoding;
        if (stringByRemovingPercentEncoding)
        {
          v26 = stringByRemovingPercentEncoding;
        }

        else
        {
          v26 = Value;
        }

        [v24 setHref:v26];
        [v24 setMediaOverlayHref:v23];
        [v24 setMime:{CFDictionaryGetValue(v17, @"media-type"}];
        [v24 setManifestId:{CFDictionaryGetValue(v17, @"id"}];
        [v24 setFallbackId:{CFDictionaryGetValue(v17, @"fallback"}];
        [v24 setManifestProperties:{CFDictionaryGetValue(v17, @"properties"}];
        [v24 setDocumentOrdinal:v64];
        [v24 setBookDatabaseKey:databaseKey];
        if (v20)
        {
          v27 = [v20 objectForKey:@"encryptionAlgorithm"];
          v28 = [v20 objectForKey:@"compressionAlgorithm"];
          v29 = [v20 objectForKey:@"fairplay-id"];
          if (v29)
          {
            v58 = v23;
            v30 = [[NSNumber alloc] initWithInt:{objc_msgSend(v29, "intValue")}];
            [v24 setSinfNumber:v30];

            v23 = v58;
          }

          [v24 setCompressionAlgorithm:v28];
          [v24 setEncryptionAlgorithm:v27];
        }

        [v68 setObject:v24 forKey:Value];

        v12 = v62;
      }

      if (v17)
      {
        CFRelease(v17);
      }

      illegalEncryptionAlgorithm = selfCopy->_illegalEncryptionAlgorithm;
      self = selfCopy;

      v16 = (v16 - 1);
    }

    while (!illegalEncryptionAlgorithm);

    chaptersCopy = v56;
    objc_autoreleasePoolPop(context);
    if (!self->_illegalEncryptionAlgorithm)
    {
      v32 = (*(readableCopy->var0 + 7))(readableCopy);
      if (v32)
      {
        v33 = (v32 - 1);
        do
        {
          v34 = (*(readableCopy->var0 + 8))(readableCopy, v33);
          if ([v34 length])
          {
            v35 = [[NSNumber alloc] initWithInt:v33];
            v36 = [v68 objectForKey:v34];
            documentOrdinal = [v36 documentOrdinal];
            integerValue = [documentOrdinal integerValue];

            if (integerValue != -1)
            {
              v39 = [BKDocument documentKeyWithHref:v34 documentOrdinal:v35];
              v40 = [v68 objectForKey:v39];

              if (!v40)
              {
                v41 = [v57 objectForKey:v34];
                if (!v41)
                {
                  v42 = +[NSMutableArray array];
                  [v57 setObject:v42 forKey:v34];
                  v41 = v42;
                  [v42 addObject:v34];
                }

                [v41 addObject:v39];
                v43 = [BKDocument newEmptyDocument:managedObjectContext];
                [v43 copyPropertiesFrom:v36];
                v44 = [NSNumber numberWithBool:0];
                [v43 setNonlinearElement:v44];

                [v68 setObject:v43 forKey:v39];
                v36 = v43;
                chaptersCopy = v56;
              }
            }

            if (v36)
            {
              [v36 setDocumentOrdinal:v35];
              v45 = (*(readableCopy->var0 + 9))(readableCopy, v33);
              v46 = v45;
              if (v45)
              {
                if (!CFBooleanGetValue(v45))
                {
                  [v36 setNonlinearElement:v55];
                }

                CFRelease(v46);
              }

              v47 = [chaptersCopy objectForKey:v34];

              if (v47)
              {
                [v36 setHasTocElements:v67];
              }

              v48 = [landmarksCopy objectForKey:v34];

              if (v48)
              {
                [v36 setHasLandmarkElements:v67];
              }

              v49 = [pagesCopy objectForKey:v34];

              if (v49)
              {
                [v36 setHasPhysicalElements:v67];
              }
            }

            v34 = 0;
          }

          v33 = (v33 - 1);
        }

        while (v33 != -1);
      }
    }

    allValues = [v57 allValues];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_A05F4;
    v71[3] = &unk_1E4FE0;
    v51 = v68;
    v72 = v51;
    v52 = v61;
    v73 = v52;
    v53 = v67;
    v74 = v53;
    [allValues enumerateObjectsUsingBlock:v71];
  }
}

- (int)constructEntity:(id)entity withNavPoint:(void *)point absoluteOrder:(int)order indentationLevel:(int)level withAnchorInfo:(id)info createdObjects:(id)objects
{
  entityCopy = entity;
  infoCopy = info;
  objectsCopy = objects;
  orderCopy = order;
  if (order < 0)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    book = [(BKBookParser *)self book];
    managedObjectContext = [book managedObjectContext];

    v40 = managedObjectContext;
    v18 = [NSEntityDescription insertNewObjectForEntityForName:entityCopy inManagedObjectContext:managedObjectContext];
    v19 = ITNavPoint::contentFileIncludingHash(point);
    v39 = *(point + 11);
    v38 = [NSURL URLWithString:?];
    path = [v38 path];
    book2 = [(BKBookParser *)self book];
    basePlusContentPath = [book2 basePlusContentPath];

    v37 = basePlusContentPath;
    v22 = [NSString pathRelativeToContentBase:basePlusContentPath forRelativePath:v19 startingFromAbsoluteFolderPath:path];

    v42 = v22;
    stringByRemovingPercentEncoding = [v22 stringByRemovingPercentEncoding];
    if ([stringByRemovingPercentEncoding length])
    {
      [v18 setValue:stringByRemovingPercentEncoding forKey:@"href"];
    }

    else
    {
      [v18 setValue:&stru_1E7188 forKey:@"href"];
    }

    stringByRemovingURLFragment = [v22 stringByRemovingURLFragment];
    if ([stringByRemovingURLFragment length])
    {
      [v18 setValue:stringByRemovingURLFragment forKey:@"baseHref"];
      v25 = [NSNumber numberWithBool:1];
      [infoCopy setObject:v25 forKey:stringByRemovingURLFragment];
    }

    else
    {
      [v18 setValue:&stru_1E7188 forKey:@"baseHref"];
    }

    v26 = *(point + 10);
    if (![(__CFString *)v26 length])
    {

      v26 = &stru_1E7188;
    }

    [v18 setValue:v26 forKey:@"name"];
    v27 = *(point + 12);
    if (![(__CFString *)v27 length])
    {

      v27 = &stru_1E7188;
    }

    [v18 setValue:v27 forKey:@"htmlName"];
    v28 = [NSNumber numberWithInt:level];
    [v18 setValue:v28 forKey:@"indentationLevel"];

    v29 = [NSNumber numberWithInt:orderCopy];
    [v18 setValue:v29 forKey:@"absoluteOrder"];

    v30 = *(point + 7);
    if ([v30 length])
    {
      [v18 setValue:v30 forKey:@"type"];
    }

    [objectsCopy addObject:v18];
    v23 = (level + 1);

    v24 = orderCopy + 1;
  }

  v31 = *(point + 3) - *(point + 2);
  if (v31)
  {
    v32 = 0;
    v33 = v31 >> 3;
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    do
    {
      v35 = ITNavPoint::childAtIndex(point);
      if (v35)
      {
        v24 = [(BKEpubBookParser *)self constructEntity:entityCopy withNavPoint:v35 absoluteOrder:v24 indentationLevel:v23 withAnchorInfo:infoCopy createdObjects:objectsCopy];
      }

      ++v32;
    }

    while (v34 != v32);
  }

  return v24;
}

- (void)constructBKNavigationInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info
{
  infoCopy = info;
  if (readable)
  {
    var13 = readable->var13;
    if (var13)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKNavigationInfo" withNavPoint:var13 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:infoCopy createdObjects:v8];
      book = [(BKBookParser *)self book];
      [book addChapters:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)constructBKLandmarkInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info
{
  infoCopy = info;
  if (readable)
  {
    var14 = readable->var14;
    if (var14)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKLandmarkInfo" withNavPoint:var14 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:infoCopy createdObjects:v8];
      book = [(BKBookParser *)self book];
      [book addLandmarks:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)constructBKPhysicalPageWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info
{
  infoCopy = info;
  if (readable)
  {
    var15 = readable->var15;
    if (var15)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKPhysicalPage" withNavPoint:var15 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:infoCopy createdObjects:v8];
      book = [(BKBookParser *)self book];
      [book addPhysicalPages:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

+ (id)bookExtraInfoCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"BookCachedData"];

  return v4;
}

- (id)createBookExtraInfoCacheDirectoryIfNecessary
{
  bookExtraInfoCacheDirectory = [objc_opt_class() bookExtraInfoCacheDirectory];
  v3 = [NSURL fileURLWithPath:bookExtraInfoCacheDirectory isDirectory:1];
  v4 = +[NSFileManager defaultManager];
  relativePath = [v3 relativePath];
  [v4 createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:0];

  return bookExtraInfoCacheDirectory;
}

+ (id)bookCachedDataPathForBookWithKey:(id)key
{
  keyCopy = key;
  bookExtraInfoCacheDirectory = [self bookExtraInfoCacheDirectory];
  v6 = [keyCopy stringByAppendingPathExtension:@"plist"];
  v7 = [bookExtraInfoCacheDirectory stringByAppendingPathComponent:v6];

  return v7;
}

- (void)constructBKIdCfiMappingsWithEpub:(void *)epub
{
  v4 = (*(*epub + 176))(epub, a2);
  if (v4)
  {
    v5 = v4;
    createBookExtraInfoCacheDirectoryIfNecessary = [(BKEpubBookParser *)self createBookExtraInfoCacheDirectoryIfNecessary];
    v7 = objc_opt_class();
    book = [(BKBookParser *)self book];
    databaseKey = [book databaseKey];
    v10 = [v7 bookCachedDataPathForBookWithKey:databaseKey];

    v15 = @"tocCfiIdMap";
    v16 = v5;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = 0;
    v12 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v14];
    v13 = v14;
    if (v12)
    {
      [v12 writeToFile:v10 atomically:1];
    }

    CFRelease(v5);
  }
}

+ (id)cachedDataForBookDatabaseKey:(id)key cacheKey:(id)cacheKey
{
  cacheKeyCopy = cacheKey;
  v7 = [self bookCachedDataPathForBookWithKey:key];
  v8 = [NSDictionary dictionaryWithContentsOfFile:v7];
  v9 = [v8 objectForKey:cacheKeyCopy];

  return v9;
}

+ (CGSize)_computeFixedLayoutDimensionsFrom:(id)from forBook:(id)book
{
  fromCopy = from;
  bookCopy = book;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (fromCopy)
  {
    sinfNumber = [fromCopy sinfNumber];
    if (sinfNumber)
    {
      sinfNumber2 = [fromCopy sinfNumber];
      intValue = [sinfNumber2 intValue];

      if (intValue < 1)
      {
        sinfNumber = 0;
      }

      else
      {
        sinfNumber3 = [fromCopy sinfNumber];
        v13 = [NSPredicate predicateWithFormat:@"sinfNumber ==[n] %@", sinfNumber3];

        sinfInfo = [bookCopy sinfInfo];
        v15 = [sinfInfo filteredSetUsingPredicate:v13];

        if ([v15 count] == &dword_0 + 1)
        {
          sinfNumber = [v15 anyObject];
        }

        else
        {
          bookBundlePath = [bookCopy bookBundlePath];
          [NSException raise:@"NSIllegalState" format:@"Book sinf information appears invalid: %@", bookBundlePath];

          sinfNumber = 0;
        }
      }
    }

    bookBundlePath2 = [bookCopy bookBundlePath];
    bookContentSubpath = [bookCopy bookContentSubpath];
    v19 = [bookContentSubpath length];

    if (v19)
    {
      bookContentSubpath2 = [bookCopy bookContentSubpath];
      v21 = [bookBundlePath2 stringByAppendingPathComponent:bookContentSubpath2];
    }

    else
    {
      v21 = bookBundlePath2;
    }

    href = [fromCopy href];
    v23 = [v21 stringByAppendingPathComponent:href];

    v24 = objc_autoreleasePoolPush();
    v38 = 0;
    sinfBlob = [sinfNumber sinfBlob];
    v37 = 0;
    v26 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v23 sinfData:sinfBlob refetch:&v38 error:&v37];
    v27 = v37;

    if (v26)
    {
      if ([(ITEpubFixedLayoutParser *)v26 length])
      {
        v29 = ITEpubFixedLayoutParser::dimensionsFromData(v26, v28);
        v30 = v29;
        if (v29 <= 0)
        {
          v33 = _ITEpubParsingLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Width read from decrypted data is 0 for fixed layout.", buf, 2u);
          }
        }

        else
        {
          width = HIDWORD(v29);
        }

        if (v30 > 0)
        {
          height = v30;
LABEL_29:

          objc_autoreleasePoolPop(v24);
          goto LABEL_30;
        }

        v31 = _ITEpubParsingLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v32 = "Height read from decrypted data is 0 for fixed layout.";
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      v31 = _ITEpubParsingLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v32 = "Decrypted data length is 0. Cannot read fixed layout size from it.";
    }

    else
    {
      v31 = _ITEpubParsingLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v32 = "Decrypted data is nil";
    }

LABEL_27:
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_28;
  }

LABEL_30:

  v34 = width;
  v35 = height;
  result.height = v35;
  result.width = v34;
  return result;
}

+ (BOOL)recomputeFixedLayoutDimensionsForBook:(id)book
{
  bookCopy = book;
  if ([bookCopy isFixedLayout])
  {
    if ((BEAlwaysFullParseEPUB() & 1) == 0)
    {
      hasComputedFixedLayoutSize = [bookCopy hasComputedFixedLayoutSize];
      if ([hasComputedFixedLayoutSize BOOLValue])
      {
        isDirty = [bookCopy isDirty];
        bOOLValue = [isDirty BOOLValue];

        if (!bOOLValue)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }
    }

    firstDocumentLocation = [bookCopy firstDocumentLocation];
    v7 = [bookCopy documentContainingLocation:firstDocumentLocation];
    [self _computeFixedLayoutDimensionsFrom:v7 forBook:bookCopy];
    v9 = v8;
    v11 = v10;

    v12 = v9 == CGSizeZero.width;
    v13 = v11 == CGSizeZero.height;
    if (v12 && v13)
    {
      v11 = 768.0;
    }

    v54 = 0u;
    v55 = 0u;
    if (v12 && v13)
    {
      v9 = 1024.0;
    }

    v56 = 0uLL;
    v57 = 0uLL;
    obj = [bookCopy sortedDocuments];
    v14 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v14)
    {
      v50 = 0;
      v16 = *v55;
      *&v15 = 138412802;
      v49 = v15;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v54 + 1) + 8 * v17);
          [self _computeFixedLayoutDimensionsFrom:v18 forBook:{bookCopy, v49}];
          v21 = v19;
          v22 = v20;
          if (v19 == CGSizeZero.width && v20 == CGSizeZero.height)
          {
            href = [v18 href];
            tocPageHref = [bookCopy tocPageHref];
            v30 = [href isEqualToString:tocPageHref];

            if (v30)
            {
              v31 = _ITEpubParsingLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                href2 = [v18 href];
                v67.width = v9;
                v67.height = v11;
                v33 = NSStringFromCGSize(v67);
                *buf = 138412546;
                v59 = href2;
                v60 = 2112;
                v61 = v33;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Book document (%@) size computed from epub was 0, setting size to %@ and ignoring error because it's the TOC.", buf, 0x16u);
              }
            }

            else
            {
              v34 = _ITEpubParsingLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                href3 = [v18 href];
                v68.width = v9;
                v68.height = v11;
                v36 = NSStringFromCGSize(v68);
                *buf = 138412546;
                v59 = href3;
                v60 = 2112;
                v61 = v36;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Book document (%@) size computed from epub was 0, setting size to %@ and marking book info as dirty.", buf, 0x16u);
              }

              ++v50;
            }

            v22 = v11;
            v21 = v9;
          }

          else
          {
            if (v20 == 0.0)
            {
              v24 = _ITEpubParsingLog();
              v22 = round(v11 * (v21 / v9));
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                href4 = [v18 href];
                v65.width = v21;
                v65.height = v22;
                v26 = NSStringFromCGSize(v65);
                v66.width = v9;
                v66.height = v11;
                v27 = NSStringFromCGSize(v66);
                *buf = v49;
                v59 = href4;
                v60 = 2114;
                v61 = v26;
                v62 = 2114;
                v63 = v27;
                _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Book document (%@) height computed from epub was 0, using %{public}@ based on aspect ratio of previous size %{public}@.", buf, 0x20u);
              }

LABEL_23:

              goto LABEL_32;
            }

            if (v19 == 0.0)
            {
              v24 = _ITEpubParsingLog();
              v21 = round(v9 * (v22 / v11));
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                href5 = [v18 href];
                v70.width = v21;
                v70.height = v22;
                v43 = NSStringFromCGSize(v70);
                v71.width = v9;
                v71.height = v11;
                v44 = NSStringFromCGSize(v71);
                *buf = v49;
                v59 = href5;
                v60 = 2114;
                v61 = v43;
                v62 = 2114;
                v63 = v44;
                _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Book document (%@) width computed from epub was 0, using %{public}@ based on aspect ratio of previous size %{public}@.", buf, 0x20u);
              }

              goto LABEL_23;
            }

            v11 = v20;
            v9 = v19;
          }

LABEL_32:
          v37 = _ITEpubParsingLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            href6 = [v18 href];
            v69.width = v21;
            v69.height = v22;
            v39 = NSStringFromCGSize(v69);
            *buf = 138412546;
            v59 = href6;
            v60 = 2114;
            v61 = v39;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Book document (%@) validated size: %{public}@", buf, 0x16u);
          }

          v40 = [NSNumber numberWithDouble:v21];
          [v18 setFixedLayoutWidth:v40];

          v41 = [NSNumber numberWithDouble:v22];
          [v18 setFixedLayoutHeight:v41];

          v17 = v17 + 1;
        }

        while (v14 != v17);
        v45 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
        v14 = v45;
        if (!v45)
        {
          v46 = v50 == 0;
          goto LABEL_44;
        }
      }
    }

    v46 = 1;
LABEL_44:

    v47 = [NSNumber numberWithBool:v46];
    [bookCopy setHasComputedFixedLayoutSize:v47];
  }

LABEL_45:

  return 0;
}

- (void)setPublisherInfoFromParser:(BKReadableFormat *)parser
{
  var10 = parser->var10;
  if (var10)
  {
    CFRetain(var10);
    v6 = parser->var10;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  book = [(BKBookParser *)self book];
  publisherName = [book publisherName];
  if ([publisherName length])
  {
    book2 = [(BKBookParser *)self book];
    publisherName2 = [book2 publisherName];
    v12 = [(__CFString *)v7 isEqualToString:publisherName2];

    if ((v12 & 1) == 0)
    {
      v13 = _ITEpubParsingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        book3 = [(BKBookParser *)self book];
        publisherName3 = [book3 publisherName];
        v57 = 138544386;
        v58 = @"self.book.publisherName";
        v59 = 2160;
        v60 = 1752392040;
        v61 = 2112;
        v62 = v7;
        v63 = 2160;
        v64 = 1752392040;
        v65 = 2112;
        v66 = publisherName3;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v57, 0x34u);
      }
    }
  }

  else
  {
  }

  v16 = parser->var10;
  if (v16 && (CFRetain(v16), (book5 = parser->var10) != 0))
  {
    book4 = [(BKBookParser *)self book];
    [book4 setPublisherName:book5];
  }

  else
  {
    book5 = [(BKBookParser *)self book];
    [book5 setPublisherName:0];
  }

  var11 = parser->var11;
  if (var11)
  {
    CFRetain(var11);
    v20 = parser->var11;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  book6 = [(BKBookParser *)self book];
  publisherLocation = [book6 publisherLocation];
  if (![publisherLocation length])
  {

LABEL_22:
    goto LABEL_23;
  }

  book7 = [(BKBookParser *)self book];
  publisherLocation2 = [book7 publisherLocation];
  v26 = [(__CFString *)v21 isEqualToString:publisherLocation2];

  if ((v26 & 1) == 0)
  {
    book6 = _ITEpubParsingLog();
    if (os_log_type_enabled(book6, OS_LOG_TYPE_DEFAULT))
    {
      book8 = [(BKBookParser *)self book];
      publisherLocation3 = [book8 publisherLocation];
      v57 = 138544386;
      v58 = @"self.book.publisherLocation";
      v59 = 2160;
      v60 = 1752392040;
      v61 = 2112;
      v62 = v21;
      v63 = 2160;
      v64 = 1752392040;
      v65 = 2112;
      v66 = publisherLocation3;
      _os_log_impl(&dword_0, book6, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v57, 0x34u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v29 = parser->var11;
  if (v29 && (CFRetain(v29), (book10 = parser->var11) != 0))
  {
    book9 = [(BKBookParser *)self book];
    [book9 setPublisherLocation:book10];
  }

  else
  {
    book10 = [(BKBookParser *)self book];
    [book10 setPublisherLocation:0];
  }

  var12 = parser->var12;
  if (var12)
  {
    CFRetain(var12);
    v33 = parser->var12;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  book11 = [(BKBookParser *)self book];
  publisherYear = [book11 publisherYear];
  if (![publisherYear length])
  {

LABEL_35:
    goto LABEL_36;
  }

  book12 = [(BKBookParser *)self book];
  publisherYear2 = [book12 publisherYear];
  v39 = [(__CFString *)v34 isEqualToString:publisherYear2];

  if ((v39 & 1) == 0)
  {
    book11 = _ITEpubParsingLog();
    if (os_log_type_enabled(book11, OS_LOG_TYPE_DEFAULT))
    {
      book13 = [(BKBookParser *)self book];
      publisherYear3 = [book13 publisherYear];
      v57 = 138544386;
      v58 = @"self.book.publisherYear";
      v59 = 2160;
      v60 = 1752392040;
      v61 = 2112;
      v62 = v34;
      v63 = 2160;
      v64 = 1752392040;
      v65 = 2112;
      v66 = publisherYear3;
      _os_log_impl(&dword_0, book11, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v57, 0x34u);
    }

    goto LABEL_35;
  }

LABEL_36:

  v42 = parser->var12;
  if (v42 && (CFRetain(v42), (book15 = parser->var12) != 0))
  {
    book14 = [(BKBookParser *)self book];
    [book14 setPublisherYear:book15];
  }

  else
  {
    book15 = [(BKBookParser *)self book];
    [book15 setPublisherYear:0];
  }

  book16 = [(BKBookParser *)self book];
  publisherName4 = [book16 publisherName];
  v47 = publisherName4 == 0;

  if (v47)
  {
    book17 = [(BKBookParser *)self book];
    [book17 setPublisherName:&stru_1E7188];
  }

  book18 = [(BKBookParser *)self book];
  publisherLocation4 = [book18 publisherLocation];
  v51 = publisherLocation4 == 0;

  if (v51)
  {
    book19 = [(BKBookParser *)self book];
    [book19 setPublisherLocation:&stru_1E7188];
  }

  book20 = [(BKBookParser *)self book];
  publisherYear4 = [book20 publisherYear];
  v55 = publisherYear4 == 0;

  if (v55)
  {
    book21 = [(BKBookParser *)self book];
    [book21 setPublisherYear:&stru_1E7188];
  }
}

- (void)setAppleDisplayOptionsFromParser:(BKReadableFormat *)parser
{
  book = [(BKBookParser *)self book];

  if (!book)
  {
    return;
  }

  v34 = (*(parser->var0 + 14))(parser);
  if (v34)
  {
    objc_opt_class();
    v6 = [v34 valueForKey:@"fixed-layout"];
    v7 = BUDynamicCast();

    if ([v7 isEqualToString:@"true"])
    {
      book2 = [(BKBookParser *)self book];
      [book2 setFixedLayout:1];
    }

    v9 = [v34 valueForKey:@"interactive"];
    v10 = [v9 isEqualToString:@"true"];

    if (v10)
    {
      book3 = [(BKBookParser *)self book];
      [book3 setInteractive:1];
    }

    objc_opt_class();
    v12 = [v34 valueForKey:@"specified-fonts"];
    v13 = BUDynamicCast();

    if ([v13 isEqualToString:@"true"])
    {
      book4 = [(BKBookParser *)self book];
      [book4 setHasBuiltInFonts:1];
    }

    objc_opt_class();
    v15 = [v34 valueForKey:@"binding"];
    v16 = BUDynamicCast();

    if ([v16 isEqualToString:@"false"])
    {
      book5 = [(BKBookParser *)self book];
      [book5 setHidesSpine:1];
    }

    objc_opt_class();
    v18 = [v34 valueForKey:@"spread"];
    v19 = BUDynamicCast();
    book6 = [(BKBookParser *)self book];
    [book6 setFixedLayoutSpread:v19];

    objc_opt_class();
    v21 = [v34 valueForKey:@"flow"];
    v22 = BUDynamicCast();
    book7 = [(BKBookParser *)self book];
    [book7 setFixedLayoutFlow:v22];

    objc_opt_class();
    v24 = [v34 valueForKey:@"open-to-spread"];
    v25 = BUDynamicCast();

    if (v25)
    {
      if ([v25 isEqualToString:@"true"])
      {
        book8 = [(BKBookParser *)self book];
        [book8 setOpenToSpread:1];
      }

      else
      {
        book8 = [(BKBookParser *)self book];
        [book8 setOpenToSpread:0];
      }
    }

    else
    {
      book8 = [(BKBookParser *)self book];
      [book8 setOpenToSpread:0x7FFFFFFFFFFFFFFFLL];
    }

    objc_opt_class();
    v27 = [v34 valueForKey:@"orientation-lock"];
    v28 = BUDynamicCast();

    if (!v28)
    {
      goto LABEL_23;
    }

    if ([v28 isEqualToString:@"portrait-only"])
    {
      book9 = [(BKBookParser *)self book];
      [book9 setLandscapeProhibited:1];
    }

    else
    {
      if (![v28 isEqualToString:@"landscape-only"])
      {
LABEL_23:
        objc_opt_class();
        v30 = [v34 valueForKey:@"respect-image-size-class"];
        v31 = BUDynamicCast();

        if ([v31 length])
        {
          book10 = [(BKBookParser *)self book];
          [book10 setRespectImageSizeClass:v31];

          book11 = [(BKBookParser *)self book];
          [book11 setRespectImageSizeClassIsPrefix:0];
        }

        goto LABEL_26;
      }

      book9 = [(BKBookParser *)self book];
      [book9 setPortraitProhibited:1];
    }

    goto LABEL_23;
  }

LABEL_26:
}

- (void)setObeyPageBreaksFromPlist:(id)plist
{
  v6 = [plist valueForKey:@"obeyPageBreaks"];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = &dword_0 + 1;
  }

  book = [(BKBookParser *)self book];
  [book setObeyPageBreaks:bOOLValue];
}

- (void)setArtworkTemplateFromPlist:(id)plist
{
  v7 = [plist valueForKey:@"artwork-template-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v7;
LABEL_5:
    v5 = stringValue;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v7 stringValue];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([v5 length])
  {
    book = [(BKBookParser *)self book];
    [book setGenericCoverTemplate:v5];
  }
}

- (void)setLanguageFromPlist:(id)plist
{
  v5 = [IMLibraryPlist languageFromPlistEntry:plist];
  if (v5)
  {
    book = [(BKBookParser *)self book];
    [book setBookLanguage:v5];
  }
}

- (void)setCoverWritingModeFromPlist:(id)plist
{
  imIsDefaultWritingMode = [IMLibraryPlist coverWritingModeFromPlistEntry:plist];
  v5 = imIsDefaultWritingMode;
  if (imIsDefaultWritingMode)
  {
    v7 = imIsDefaultWritingMode;
    imIsDefaultWritingMode = [imIsDefaultWritingMode imIsDefaultWritingMode];
    v5 = v7;
    if ((imIsDefaultWritingMode & 1) == 0)
    {
      book = [(BKBookParser *)self book];
      [book setCoverWritingModeString:v7];

      v5 = v7;
    }
  }

  _objc_release_x1(imIsDefaultWritingMode, v5);
}

- (void)setScrollAxisModeFromPlist:(id)plist
{
  v5 = [IMLibraryPlist scrollDirectionFromPlistEntry:plist];
  if (v5 && (([v5 isEqualToString:@"horizontal"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"vertical")))
  {
    book = [(BKBookParser *)self book];
    [book setScrollDirection:v5];
  }
}

- (void)setEndOfBookExperienceFromPlist:(id)plist
{
  [IMLibraryPlist endOfBookExperiencesFromItunesMetadataEntry:plist];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v22)
  {
    v21 = *v32;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v31 + 1) + 8 * i);
        v25 = [IMLibraryPlist experienceKindFromExperienceEntry:v4];
        if ([v25 isEqualToString:@"end-of-book"])
        {
          v23 = [IMLibraryPlist experienceLocationFromExperienceEntry:v4];
          v20 = [IMLibraryPlist experienceLocationTypeFromExperienceEntry:v4];
          if ([v20 isEqualToString:@"cfi"])
          {
            book = [(BKBookParser *)self book];
            [book setEndOfBookLocation:v23];

            book2 = [(BKBookParser *)self book];
            [book2 setEndOfBookConfidence:&off_1F1880];

            book3 = [(BKBookParser *)self book];
            [book3 setEndOfBookValidRange:0];
          }

          v24 = [IMLibraryPlist experienceVersionFromExperienceEntry:v4];
          book4 = [(BKBookParser *)self book];
          [book4 setEndOfBookVersion:v24];

          v9 = [IMLibraryPlist experienceParamsFromExperienceEntry:v4];
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = *v28;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v28 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = [IMLibraryPlist experienceConfidenceFromExperienceParamEntry:*(*(&v27 + 1) + 8 * j)];
                v15 = v14;
                if (v14)
                {
                  [v14 floatValue];
                  if (*&v16 > 1.0)
                  {
                    *&v16 = 1.0;
                  }

                  if (*&v16 < 0.0)
                  {
                    *&v16 = 0.0;
                  }

                  v17 = [NSNumber numberWithFloat:v16];
                  book5 = [(BKBookParser *)self book];
                  [book5 setEndOfBookConfidence:v17];
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v11);
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v22);
  }
}

- (void)resetItunesMetadata
{
  book = [(BKBookParser *)self book];
  bookBundlePath = [book bookBundlePath];
  v6 = [bookBundlePath stringByAppendingPathComponent:@"iTunesMetadata.plist"];

  if (v6)
  {
    v5 = [NSDictionary dictionaryWithContentsOfFile:?];
    if (v5)
    {
      [(BKEpubBookParser *)self setObeyPageBreaksFromPlist:v5];
      [(BKEpubBookParser *)self setArtworkTemplateFromPlist:v5];
      [(BKEpubBookParser *)self setLanguageFromPlist:v5];
      [(BKEpubBookParser *)self setCoverWritingModeFromPlist:v5];
      [(BKEpubBookParser *)self setScrollAxisModeFromPlist:v5];
      [(BKEpubBookParser *)self setEndOfBookExperienceFromPlist:v5];
    }
  }

  _objc_release_x2();
}

+ (BOOL)isValidMimeType:(id)type
{
  typeCopy = type;
  uTF8String = [typeCopy UTF8String];
  v5 = [typeCopy length];
  LOBYTE(uTF8String) = ITEpubFolder::isMimetypeFileContentsValid(uTF8String, v5, 0, 0, v6) != 0;

  return uTF8String;
}

@end