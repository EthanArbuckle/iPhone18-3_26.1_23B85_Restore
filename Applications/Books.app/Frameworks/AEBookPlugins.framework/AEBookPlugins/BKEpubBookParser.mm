@interface BKEpubBookParser
+ (BOOL)canParse:(id)a3;
+ (BOOL)isValidMimeType:(id)a3;
+ (BOOL)recomputeFixedLayoutDimensionsForBook:(id)a3;
+ (CGSize)_computeFixedLayoutDimensionsFrom:(id)a3 forBook:(id)a4;
+ (id)bookCachedDataPathForBookWithKey:(id)a3;
+ (id)bookExtraInfoCacheDirectory;
+ (id)cachedDataForBookDatabaseKey:(id)a3 cacheKey:(id)a4;
- (BOOL)isDifferentParserVersion:(id)a3;
- (BOOL)isLegalCompression:(id)a3;
- (BOOL)isLegalEncryption:(id)a3;
- (id)createBookExtraInfoCacheDirectoryIfNecessary;
- (id)mediaOverlayHrefForManifestInfo:(__CFDictionary *)a3 readable:(BKReadableFormat *)a4;
- (int)_fullParse;
- (int)_touchUpParse;
- (int)constructEntity:(id)a3 withNavPoint:(void *)a4 absoluteOrder:(int)a5 indentationLevel:(int)a6 withAnchorInfo:(id)a7 createdObjects:(id)a8;
- (int)parse:(BOOL)a3;
- (void)constructBKDocumentWithReadable:(BKReadableFormat *)a3 chapters:(id)a4 landmarks:(id)a5 physicalPages:(id)a6;
- (void)constructBKIdCfiMappingsWithEpub:(void *)a3;
- (void)constructBKLandmarkInfoWithReadable:(BKReadableFormat *)a3 withAnchorInfo:(id)a4;
- (void)constructBKNavigationInfoWithReadable:(BKReadableFormat *)a3 withAnchorInfo:(id)a4;
- (void)constructBKPhysicalPageWithReadable:(BKReadableFormat *)a3 withAnchorInfo:(id)a4;
- (void)constructBKProtectionInfoWithReadable:(BKReadableFormat *)a3;
- (void)createEpubParser:(int)a3 errorCode:(int *)a4;
- (void)resetItunesMetadata;
- (void)setAppleDisplayOptionsFromParser:(BKReadableFormat *)a3;
- (void)setArtworkTemplateFromPlist:(id)a3;
- (void)setCoverWritingModeFromPlist:(id)a3;
- (void)setEndOfBookExperienceFromPlist:(id)a3;
- (void)setLanguageFromPlist:(id)a3;
- (void)setObeyPageBreaksFromPlist:(id)a3;
- (void)setPublisherInfoFromParser:(BKReadableFormat *)a3;
- (void)setScrollAxisModeFromPlist:(id)a3;
- (void)tryEmbeddedHrefForCoverArtHref:(id)a3;
@end

@implementation BKEpubBookParser

+ (BOOL)canParse:(id)a3
{
  v3 = a3;
  if (BookFormatByFilePath())
  {
    v5 = 0;
  }

  else
  {
    v5 = ITEpubFolder::isMimeCorrect(v3, 0, 0, v4) != 0;
  }

  return v5;
}

- (void)createEpubParser:(int)a3 errorCode:(int *)a4
{
  v5 = [(BKBookParser *)self book];
  [v5 bookBundlePath];

  v6 = +[BLLibrary defaultBookLibrary];
  v7 = [(BKBookParser *)self book];
  v8 = [v7 bookBundlePath];
  v9 = [NSURL fileURLWithPath:v8];
  v10 = [v6 _perUserBookURLForBookURL:v9];
  v11 = [v10 path];
  v12 = [v11 mutableCopy];

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
    v7 = [(BKBookParser *)self book];
    [v7 resetAsNewlyDownloaded];

    v8 = (*(*v3 + 136))(v3);
    v9 = [(BKBookParser *)self book];
    v10 = [v9 bookBundlePath];
    v11 = [v8 stringByReplacingOccurrencesOfString:v10 withString:&stru_1E7188];
    v12 = [(BKBookParser *)self book];
    [v12 setBookContentSubpath:v11];

    v13 = [(BKBookParser *)self book];
    v14 = [v13 bookAuthor];
    LODWORD(v9) = v14 == 0;

    if (!v9)
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
    v18 = [(BKBookParser *)self book];
    v19 = [v18 bookAuthor];
    if ([v19 length])
    {
      v20 = [(BKBookParser *)self book];
      v21 = [v20 bookAuthor];
      v22 = [v17 isEqualToString:v21];

      if (v22)
      {
        goto LABEL_18;
      }

      v18 = _ITEpubParsingLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(BKBookParser *)self book];
        v24 = [v23 bookAuthor];
        *buf = 138544386;
        v198 = @"self.book.bookAuthor";
        v199 = 2160;
        v200 = 1752392040;
        v201 = 2112;
        v202 = v17;
        v203 = 2160;
        v204 = 1752392040;
        v205 = 2112;
        v206 = v24;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

LABEL_18:
    v25 = v3[4];
    if (v25 && (CFRetain(v25), (v26 = v3[4]) != 0))
    {
      v27 = [(BKBookParser *)self book];
      [v27 setBookAuthor:v26];
    }

    else
    {
      v26 = [(BKBookParser *)self book];
      [v26 setBookAuthor:0];
    }

LABEL_23:
    v28 = [(BKBookParser *)self book];
    v29 = [v28 bookTitle];
    v30 = v29 == 0;

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
    v34 = [(BKBookParser *)self book];
    v35 = [v34 bookTitle];
    if ([v35 length])
    {
      v36 = [(BKBookParser *)self book];
      v37 = [v36 bookTitle];
      v38 = [v33 isEqualToString:v37];

      if (v38)
      {
        goto LABEL_33;
      }

      v34 = _ITEpubParsingLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(BKBookParser *)self book];
        v40 = [v39 bookTitle];
        *buf = 138544386;
        v198 = @"self.book.bookTitle";
        v199 = 2160;
        v200 = 1752392040;
        v201 = 2112;
        v202 = v33;
        v203 = 2160;
        v204 = 1752392040;
        v205 = 2112;
        v206 = v40;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

LABEL_33:
    v41 = v3[5];
    if (v41 && (CFRetain(v41), (v42 = v3[5]) != 0))
    {
      v43 = [(BKBookParser *)self book];
      [v43 setBookTitle:v42];
    }

    else
    {
      v42 = [(BKBookParser *)self book];
      [v42 setBookTitle:0];
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
    v47 = [(BKBookParser *)self book];
    v48 = [v47 bookLanguage];
    if ([v48 length])
    {
      v49 = [(BKBookParser *)self book];
      v50 = [v49 bookLanguage];
      v51 = [v46 isEqualToString:v50];

      if (v51)
      {
LABEL_47:

        v54 = v3[6];
        if (v54 && (CFRetain(v54), (v55 = v3[6]) != 0))
        {
          v56 = [(BKBookParser *)self book];
          [v56 setBookLanguage:v55];
        }

        else
        {
          v55 = [(BKBookParser *)self book];
          [v55 setBookLanguage:0];
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
        v60 = [(BKBookParser *)self book];
        v61 = [v60 genre];
        if ([v61 length])
        {
          v62 = [(BKBookParser *)self book];
          v63 = [v62 genre];
          v64 = [v59 isEqualToString:v63];

          if (v64)
          {
LABEL_60:

            v67 = v3[7];
            if (v67 && (CFRetain(v67), (v68 = v3[7]) != 0))
            {
              v69 = [(BKBookParser *)self book];
              [v69 setGenre:v68];
            }

            else
            {
              v68 = [(BKBookParser *)self book];
              [v68 setGenre:0];
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
            v73 = [(BKBookParser *)self book];
            v74 = [v73 bookEpubId];
            if ([v74 length])
            {
              v75 = [(BKBookParser *)self book];
              v76 = [v75 bookEpubId];
              v77 = [v72 isEqualToString:v76];

              if (v77)
              {
LABEL_73:

                v80 = v3[8];
                if (v80 && (CFRetain(v80), (v81 = v3[8]) != 0))
                {
                  v82 = [(BKBookParser *)self book];
                  [v82 setBookEpubId:v81];
                }

                else
                {
                  v81 = [(BKBookParser *)self book];
                  [v81 setBookEpubId:0];
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
                v86 = [(BKBookParser *)self book];
                v87 = [v86 bookEpubIdWithUUIDScheme];
                if ([v87 length])
                {
                  v88 = [(BKBookParser *)self book];
                  v89 = [v88 bookEpubIdWithUUIDScheme];
                  v90 = [v85 isEqualToString:v89];

                  if (v90)
                  {
LABEL_86:

                    v93 = v3[9];
                    if (v93 && (CFRetain(v93), (v94 = v3[9]) != 0))
                    {
                      v95 = [(BKBookParser *)self book];
                      [v95 setBookEpubIdWithUUIDScheme:v94];
                    }

                    else
                    {
                      v94 = [(BKBookParser *)self book];
                      [v94 setBookEpubIdWithUUIDScheme:0];
                    }

                    v96 = ITEpubFolder::dcTermsModified(v3);
                    v97 = [(BKBookParser *)self book];
                    [v97 setDcTermsModified:v96];

                    v98 = ITEpubFolder::readingDirection(v3);
                    v99 = [(BKBookParser *)self book];
                    [v99 setReadingDirection:v98];

                    active = ITEpubFolder::mediaActiveClass(v3);
                    v101 = [(BKBookParser *)self book];
                    [v101 setMediaActiveClass:active];

                    v102 = ITEpubFolder::pageProgressionDirection(v3);
                    if (v102)
                    {
                      v103 = v102;
                    }

                    else
                    {
                      v103 = @"default";
                    }

                    v104 = [(BKBookParser *)self book];
                    [v104 setPageProgressionDirection:v103];

                    v105 = ITEpubFolder::dcTermsContributor(v3);
                    v106 = [(BKBookParser *)self book];
                    [v106 setDcTermsContributor:v105];

                    v107 = [(BKBookParser *)self book];
                    v108 = [v107 bookLanguage];
                    if (([IMLanguageUtilities languageIsArabic:v108]& 1) != 0)
                    {
                      v109 = 1;
                    }

                    else
                    {
                      v110 = [(BKBookParser *)self book];
                      v111 = [v110 bookLanguage];
                      v109 = [IMLanguageUtilities languageIsHebrew:v111];
                    }

                    v112 = [(BKBookParser *)self book];
                    v113 = [v112 pageProgressionDirection];
                    v114 = [v113 isEqualToString:@"default"];

                    if ((v114 & v109) != 0)
                    {
                      v115 = [(BKBookParser *)self book];
                      [v115 setPageProgressionDirection:@"rtl"];
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

                    v118 = [(BKBookParser *)self book];
                    [v118 setCoverWritingModeString:v117];

                    v119 = ITEpubFolder::scrollDirection(v3);
                    if (v119)
                    {
                      v120 = v119;
                    }

                    else
                    {
                      v120 = @"default";
                    }

                    v121 = [(BKBookParser *)self book];
                    [v121 setScrollDirection:v120];

                    if (ITEpubFolder::ebpajGuideVersion(v3))
                    {
                      v122 = [(BKBookParser *)self book];
                      v123 = [v122 bookLanguage];
                      v124 = [v123 caseInsensitiveCompare:@"ja"] == 0;

                      if (v124 || (-[BKBookParser book](self, "book"), v125 = objc_claimAutoreleasedReturnValue(), [v125 bookLanguage], v126 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend(v126, "rangeOfString:options:", @"ja", 9) == 0, v126, v125, v127) && ((-[BKBookParser book](self, "book"), v128 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v128, "bookLanguage"), v129 = objc_claimAutoreleasedReturnValue(), v130 = objc_msgSend(v129, "characterAtIndex:", 2), v129, v128, v130 == 95) || v130 == 45))
                      {
                        v131 = [(BKBookParser *)self book];
                        [v131 setRespectImageSizeClass:@"gaiji"];

                        v132 = [(BKBookParser *)self book];
                        [v132 setRespectImageSizeClassIsPrefix:1];
                      }
                    }

                    [(BKEpubBookParser *)self setPublisherInfoFromParser:v3];
                    [(BKEpubBookParser *)self setAppleDisplayOptionsFromParser:v3];
                    [(BKEpubBookParser *)self resetItunesMetadata];
                    v133 = [(BKBookParser *)self book];
                    v134 = [v133 bookLanguage];
                    v135 = [NSLocale canonicalLanguageIdentifierFromString:v134];
                    v136 = [(BKBookParser *)self book];
                    [v136 setBookLanguage:v135];

                    v137 = ITEpubFolder::spineIndexInPackage(v3);
                    if ((v137 & 0x80000000) != 0)
                    {
                      v138 = 0;
                    }

                    else
                    {
                      v138 = [NSNumber numberWithInt:v137];
                    }

                    v139 = [(BKBookParser *)self book];
                    [v139 setSpineIndexInPackage:v138];

                    if (v137 >= 0)
                    {
                    }

                    v140 = (*(*v3 + 96))(v3);
                    [(BKEpubBookParser *)self tryEmbeddedHrefForCoverArtHref:v140];
                    if (v140)
                    {
                      CFRelease(v140);
                    }

                    v141 = [(BKBookParser *)self book];
                    [v141 setDateLastOpened:0];

                    v142 = (*(*v3 + 152))(v3);
                    v143 = [(BKBookParser *)self book];
                    v144 = [v143 parserOPFPath];
                    if ([v144 length])
                    {
                      v145 = [(BKBookParser *)self book];
                      v146 = [v145 parserOPFPath];
                      v147 = [v142 isEqualToString:v146];

                      if (v147)
                      {
                        goto LABEL_123;
                      }

                      v143 = _ITEpubParsingLog();
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                      {
                        v148 = [(BKBookParser *)self book];
                        v149 = [v148 parserOPFPath];
                        *buf = 138544386;
                        v198 = @"self.book.parserOPFPath";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v142;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = v149;
                        _os_log_impl(&dword_0, v143, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
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
                    v153 = [(BKBookParser *)self book];
                    v154 = [v153 parserNCXPath];
                    if ([v154 length])
                    {
                      v155 = [(BKBookParser *)self book];
                      v156 = [v155 parserNCXPath];
                      v157 = [v152 isEqualToString:v156];

                      if (v157)
                      {
                        goto LABEL_132;
                      }

                      v153 = _ITEpubParsingLog();
                      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                      {
                        v158 = [(BKBookParser *)self book];
                        v159 = [v158 parserNCXPath];
                        *buf = 138544386;
                        v198 = @"self.book.parserNCXPath";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v152;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = v159;
                        _os_log_impl(&dword_0, v153, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
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
                    v163 = [(BKBookParser *)self book];
                    v164 = [v163 firstDocumentHref];
                    if ([v164 length])
                    {
                      v165 = [(BKBookParser *)self book];
                      v166 = [v165 firstDocumentHref];
                      v167 = [v162 isEqualToString:v166];

                      if (v167)
                      {
                        goto LABEL_141;
                      }

                      v163 = _ITEpubParsingLog();
                      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                      {
                        v168 = [(BKBookParser *)self book];
                        v169 = [v168 firstDocumentHref];
                        *buf = 138544386;
                        v198 = @"self.book.firstDocumentHref";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v162;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = v169;
                        _os_log_impl(&dword_0, v163, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
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
                    v173 = [(BKBookParser *)self book];
                    v174 = [v173 tocPageHref];
                    if ([v174 length])
                    {
                      v175 = [(BKBookParser *)self book];
                      v176 = [v175 tocPageHref];
                      v177 = [v172 isEqualToString:v176];

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

                        v185 = [(BKBookParser *)self book];
                        LODWORD(v183) = [BKEpubBookParser recomputeFixedLayoutDimensionsForBook:v185];

                        if (v183)
                        {
                          v196 = -998;
                          v6 = [(BKBookParser *)self book];
                          [v6 resetAsNewlyDownloaded];
                        }

                        else
                        {
                          illegalEncryptionAlgorithm = self->_illegalEncryptionAlgorithm;
                          v187 = [(BKBookParser *)self book];
                          v6 = v187;
                          if (illegalEncryptionAlgorithm)
                          {
                            [v187 setParserVersion:@"BKEpubBookParser - IllegalEncryption - 10.04.2011"];
                          }

                          else
                          {
                            [v187 setParserVersion:@"BookEPUB Parser - 2024.09.26"];
                          }
                        }

                        goto LABEL_158;
                      }

                      v173 = _ITEpubParsingLog();
                      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                      {
                        v178 = [(BKBookParser *)self book];
                        v179 = [v178 tocPageHref];
                        *buf = 138544386;
                        v198 = @"self.book.tocPageHref";
                        v199 = 2160;
                        v200 = 1752392040;
                        v201 = 2112;
                        v202 = v172;
                        v203 = 2160;
                        v204 = 1752392040;
                        v205 = 2112;
                        v206 = v179;
                        _os_log_impl(&dword_0, v173, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_150;
                  }

                  v86 = _ITEpubParsingLog();
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    v91 = [(BKBookParser *)self book];
                    v92 = [v91 bookEpubIdWithUUIDScheme];
                    *buf = 138544386;
                    v198 = @"self.book.bookEpubIdWithUUIDScheme";
                    v199 = 2160;
                    v200 = 1752392040;
                    v201 = 2112;
                    v202 = v85;
                    v203 = 2160;
                    v204 = 1752392040;
                    v205 = 2112;
                    v206 = v92;
                    _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                  }
                }

                else
                {
                }

                goto LABEL_86;
              }

              v73 = _ITEpubParsingLog();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v78 = [(BKBookParser *)self book];
                v79 = [v78 bookEpubId];
                *buf = 138544386;
                v198 = @"self.book.bookEpubId";
                v199 = 2160;
                v200 = 1752392040;
                v201 = 2112;
                v202 = v72;
                v203 = 2160;
                v204 = 1752392040;
                v205 = 2112;
                v206 = v79;
                _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
              }
            }

            else
            {
            }

            goto LABEL_73;
          }

          v60 = _ITEpubParsingLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v65 = [(BKBookParser *)self book];
            v66 = [v65 genre];
            *buf = 138544386;
            v198 = @"self.book.genre";
            v199 = 2160;
            v200 = 1752392040;
            v201 = 2112;
            v202 = v59;
            v203 = 2160;
            v204 = 1752392040;
            v205 = 2112;
            v206 = v66;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
          }
        }

        else
        {
        }

        goto LABEL_60;
      }

      v47 = _ITEpubParsingLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [(BKBookParser *)self book];
        v53 = [v52 bookLanguage];
        *buf = 138544386;
        v198 = @"self.book.bookLanguage";
        v199 = 2160;
        v200 = 1752392040;
        v201 = 2112;
        v202 = v46;
        v203 = 2160;
        v204 = 1752392040;
        v205 = 2112;
        v206 = v53;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
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

  v6 = BCIMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v198) = v196;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@createEpubParser error: %d", buf, 8u);
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
        v190 = [(BKBookParser *)self book];
        v191 = [v190 assetLogID];
        v192 = [(BKBookParser *)self book];
        v193 = [v192 bookBundlePath];
        v194 = [(BKBookParser *)self book];
        v195 = [v194 assetID];
        *buf = 138543874;
        v198 = v191;
        v199 = 2112;
        v200 = v193;
        v201 = 2112;
        v202 = v195;
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

- (BOOL)isDifferentParserVersion:(id)a3
{
  v3 = a3;
  v4 = [v3 parserVersion];
  if (v4)
  {
    v5 = [v3 parserVersion];
    v6 = [@"BookEPUB Parser - 2024.09.26" isEqualToString:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (int)_touchUpParse
{
  v3 = [(BKBookParser *)self book];
  v4 = [(BKEpubBookParser *)self isDifferentParserVersion:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [(BKBookParser *)self book];
  v6 = [v5 parserVersion];
  if (v6)
  {
    v7 = [(BKBookParser *)self book];
    v8 = [v7 parserVersion];
    v9 = [@"BKEpubBookParser - IllegalEncryption - 10.04.2011" isEqualToString:v8];

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

- (int)parse:(BOOL)a3
{
  if (a3)
  {
    v4 = _ITEpubParsingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(BKBookParser *)self book];
      v6 = [v5 assetLogID];
      v7 = [(BKBookParser *)self book];
      v8 = [v7 bookBundlePath];
      v9 = [(BKBookParser *)self book];
      v10 = [v9 assetID];
      v43 = 138543874;
      v44 = v6;
      v45 = 2112;
      v46 = v8;
      v47 = 2112;
      v48 = v10;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Skipping all parsing for %{public}@ - %@:%@ -- Why would we do this?", &v43, 0x20u);
    }

    goto LABEL_28;
  }

  v4 = [(BKBookParser *)self book];
  v11 = [(BKBookParser *)self book];
  v12 = [v11 bookBundlePath];

  if (!v12)
  {
    v23 = _ITEpubParsingLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v4 databaseKey];
      v25 = [v4 bookAuthor];
      v26 = [v4 bookTitle];
      v27 = [v4 assetLogID];
      v28 = [v4 bookBundlePath];
      v29 = [v4 assetID];
      v43 = 138413570;
      v44 = v24;
      v45 = 2112;
      v46 = v25;
      v47 = 2112;
      v48 = v26;
      v49 = 2114;
      v50 = v27;
      v51 = 2112;
      v52 = v28;
      v53 = 2112;
      v54 = v29;
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
      v31 = [v4 databaseKey];
      v32 = [v4 bookAuthor];
      v33 = [v4 bookTitle];
      v43 = 138412802;
      v44 = v31;
      v45 = 2112;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "@Parsing Not Possible -- No Bundle Path: [%@] {%@ - %@}", &v43, 0x20u);
    }

    v18 = -1000;
    goto LABEL_26;
  }

  if (![v4 wasParsed])
  {
    goto LABEL_9;
  }

  v13 = [v4 isDirty];
  if ([v13 BOOLValue] & 1) != 0 || (-[NSObject needsReparsing](v4, "needsReparsing"))
  {

LABEL_9:
    v14 = _ITEpubParsingLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 assetLogID];
      v16 = [v4 bookBundlePath];
      v17 = [v4 assetID];
      v43 = 138543874;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Performing full parse on %{public}@ - %@:%@", &v43, 0x20u);
    }

    v18 = [(BKEpubBookParser *)self _fullParse];
    if (!v18)
    {
      v34 = +[NSDate date];
      [v4 setParseDate:v34];

      [v4 setIsDirty:&__kCFBooleanFalse];
LABEL_28:
      v18 = 0;
      goto LABEL_29;
    }

    v19 = _ITEpubParsingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v43 = 67109120;
      LODWORD(v44) = v18;
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
    LODWORD(v44) = v18;
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
    v38 = [v4 assetLogID];
    v39 = [v4 bookBundlePath];
    v40 = [v4 assetID];
    v43 = 138543874;
    v44 = v38;
    v45 = 2112;
    v46 = v39;
    v47 = 2112;
    v48 = v40;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Performing touchup parse on %{public}@ - %@:%@", &v43, 0x20u);
  }

  v18 = [(BKEpubBookParser *)self _touchUpParse];
  if (v18)
  {
    v41 = _ITEpubParsingLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v43 = 67109120;
      LODWORD(v44) = v18;
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
    LODWORD(v44) = v18;
    v22 = "@_touchUpParse: %d";
LABEL_18:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, v22, &v43, 8u);
LABEL_26:
  }

LABEL_29:

  return v18;
}

- (void)tryEmbeddedHrefForCoverArtHref:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = v4;
    v6 = [(BKBookParser *)self book];
    v7 = [v6 bookContentSubpath];
    v8 = [v7 length];

    v9 = v5;
    if (v8)
    {
      v10 = [(BKBookParser *)self book];
      v11 = [v10 bookContentSubpath];
      v9 = [v11 stringByAppendingPathComponent:v5];
    }

    v12 = [(BKBookParser *)self book];
    [v12 setEmbeddedArtHref:v9];

    v13 = [(BKBookParser *)self book];
    [v13 setEmbeddedArtHrefRejected:0];

    v4 = v14;
  }
}

- (void)constructBKProtectionInfoWithReadable:(BKReadableFormat *)a3
{
  if (!a3)
  {
    return;
  }

  v21 = [(BKBookParser *)self book];
  v5 = [v21 sinfInfo];
  v6 = [v5 allObjects];
  v7 = [v6 count];

  if (v7)
  {
    v22 = [(BKBookParser *)self book];
    v8 = [(BKBookParser *)self book];
    v9 = [v8 sinfInfo];
    [v22 removeSinfInfo:v9];
  }

  if (self->_illegalEncryptionAlgorithm)
  {
    v10 = [(BKBookParser *)self book];
    v23 = [v10 managedObjectContext];

    v20 = [BKProtectionInfo newEmptyProtectionInfo:v23];
    v11 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
    [(__CFDictionary *)v20 setSinfNumber:v11];
    v12 = [(BKBookParser *)self book];
    [v12 addSinfInfoObject:v20];
  }

  else
  {
    v23 = a3->var17;
    v20 = a3->var16;
    if (!v20)
    {
      goto LABEL_7;
    }

    v13 = [(BKBookParser *)self book];
    v11 = [v13 managedObjectContext];

    v12 = [(__CFDictionary *)v23 keyEnumerator];
    for (i = 0; ; i = v15)
    {
      v15 = [v12 nextObject];

      if (!v15)
      {
        break;
      }

      v16 = [(__CFDictionary *)v23 objectForKey:v15];
      v17 = [BKProtectionInfo newEmptyProtectionInfo:v11];
      v18 = [[NSNumber alloc] initWithInt:{objc_msgSend(v15, "intValue")}];
      [v17 setSinfNumber:v18];
      [v17 setSinfBlob:v16];
      v19 = [(BKBookParser *)self book];
      [v19 addSinfInfoObject:v17];
    }
  }

LABEL_7:
}

- (BOOL)isLegalEncryption:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 rangeOfString:@".apple.com"], v5) || (objc_msgSend(v4, "rangeOfString:", BEAdobeFontManglingAlgorithm), v6) || (objc_msgSend(v4, "rangeOfString:", BEIDPFFontManglingAlgorithm), v7))
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

- (BOOL)isLegalCompression:(id)a3
{
  v3 = a3;
  if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", @"none") & 1) == 0)
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
      v9 = v3;
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

- (id)mediaOverlayHrefForManifestInfo:(__CFDictionary *)a3 readable:(BKReadableFormat *)a4
{
  Value = CFDictionaryGetValue(a3, @"media-overlay");
  if (Value && (v6 = (*(a4->var0 + 6))(a4, Value)) != 0)
  {
    v7 = v6;
    v8 = CFDictionaryGetValue(v6, @"unescaped_href");
    v9 = v8;
    if (v8)
    {
      v10 = [v8 stringByRemovingPercentEncoding];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
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

- (void)constructBKDocumentWithReadable:(BKReadableFormat *)a3 chapters:(id)a4 landmarks:(id)a5 physicalPages:(id)a6
{
  v10 = a4;
  v60 = a5;
  v59 = a6;
  v69 = a3;
  if (a3)
  {
    v11 = [(BKBookParser *)self book];
    v65 = [v11 managedObjectContext];

    LODWORD(v11) = (*(a3->var0 + 4))(a3);
    v12 = a3->var16;
    v64 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
    v13 = [[NSNumber alloc] initWithBool:1];
    v14 = [[NSNumber alloc] initWithBool:0];
    v55 = [[NSNumber alloc] initWithBool:1];
    v68 = [[NSMutableDictionary alloc] initWithCapacity:v11];
    v57 = objc_alloc_init(NSMutableDictionary);
    context = objc_autoreleasePoolPush();
    v15 = [(BKBookParser *)self book];
    v56 = v10;
    v63 = [v15 databaseKey];

    v16 = (v11 - 1);
    v61 = v14;
    v62 = v12;
    v67 = v13;
    v70 = self;
    do
    {
      if (v16 == -1)
      {
        break;
      }

      v17 = (*(v69->var0 + 5))(v69, v16);
      Value = CFDictionaryGetValue(v17, @"unescaped_href");
      if (v12)
      {
        v19 = [(__CFDictionary *)v12 objectForKey:Value];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 objectForKey:@"encryptionAlgorithm"];
          v22 = [v20 objectForKey:@"compressionAlgorithm"];
          if (![(BKEpubBookParser *)v70 isLegalEncryption:v21]|| ![(BKEpubBookParser *)v70 isLegalCompression:v22])
          {
            v70->_illegalEncryptionAlgorithm = 1;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      if (!v70->_illegalEncryptionAlgorithm)
      {
        v23 = [(BKEpubBookParser *)v70 mediaOverlayHrefForManifestInfo:v17 readable:v69];
        v24 = [BKDocument newEmptyDocument:v65];
        v25 = [Value stringByRemovingPercentEncoding];
        v66 = v25;
        if (v25)
        {
          v26 = v25;
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
        [v24 setBookDatabaseKey:v63];
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

      illegalEncryptionAlgorithm = v70->_illegalEncryptionAlgorithm;
      self = v70;

      v16 = (v16 - 1);
    }

    while (!illegalEncryptionAlgorithm);

    v10 = v56;
    objc_autoreleasePoolPop(context);
    if (!self->_illegalEncryptionAlgorithm)
    {
      v32 = (*(v69->var0 + 7))(v69);
      if (v32)
      {
        v33 = (v32 - 1);
        do
        {
          v34 = (*(v69->var0 + 8))(v69, v33);
          if ([v34 length])
          {
            v35 = [[NSNumber alloc] initWithInt:v33];
            v36 = [v68 objectForKey:v34];
            v37 = [v36 documentOrdinal];
            v38 = [v37 integerValue];

            if (v38 != -1)
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
                v43 = [BKDocument newEmptyDocument:v65];
                [v43 copyPropertiesFrom:v36];
                v44 = [NSNumber numberWithBool:0];
                [v43 setNonlinearElement:v44];

                [v68 setObject:v43 forKey:v39];
                v36 = v43;
                v10 = v56;
              }
            }

            if (v36)
            {
              [v36 setDocumentOrdinal:v35];
              v45 = (*(v69->var0 + 9))(v69, v33);
              v46 = v45;
              if (v45)
              {
                if (!CFBooleanGetValue(v45))
                {
                  [v36 setNonlinearElement:v55];
                }

                CFRelease(v46);
              }

              v47 = [v10 objectForKey:v34];

              if (v47)
              {
                [v36 setHasTocElements:v67];
              }

              v48 = [v60 objectForKey:v34];

              if (v48)
              {
                [v36 setHasLandmarkElements:v67];
              }

              v49 = [v59 objectForKey:v34];

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

    v50 = [v57 allValues];
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
    [v50 enumerateObjectsUsingBlock:v71];
  }
}

- (int)constructEntity:(id)a3 withNavPoint:(void *)a4 absoluteOrder:(int)a5 indentationLevel:(int)a6 withAnchorInfo:(id)a7 createdObjects:(id)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a8;
  v45 = a5;
  if (a5 < 0)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v16 = [(BKBookParser *)self book];
    v17 = [v16 managedObjectContext];

    v40 = v17;
    v18 = [NSEntityDescription insertNewObjectForEntityForName:v13 inManagedObjectContext:v17];
    v19 = ITNavPoint::contentFileIncludingHash(a4);
    v39 = *(a4 + 11);
    v38 = [NSURL URLWithString:?];
    v43 = [v38 path];
    v20 = [(BKBookParser *)self book];
    v21 = [v20 basePlusContentPath];

    v37 = v21;
    v22 = [NSString pathRelativeToContentBase:v21 forRelativePath:v19 startingFromAbsoluteFolderPath:v43];

    v42 = v22;
    v41 = [v22 stringByRemovingPercentEncoding];
    if ([v41 length])
    {
      [v18 setValue:v41 forKey:@"href"];
    }

    else
    {
      [v18 setValue:&stru_1E7188 forKey:@"href"];
    }

    v44 = [v22 stringByRemovingURLFragment];
    if ([v44 length])
    {
      [v18 setValue:v44 forKey:@"baseHref"];
      v25 = [NSNumber numberWithBool:1];
      [v14 setObject:v25 forKey:v44];
    }

    else
    {
      [v18 setValue:&stru_1E7188 forKey:@"baseHref"];
    }

    v26 = *(a4 + 10);
    if (![(__CFString *)v26 length])
    {

      v26 = &stru_1E7188;
    }

    [v18 setValue:v26 forKey:@"name"];
    v27 = *(a4 + 12);
    if (![(__CFString *)v27 length])
    {

      v27 = &stru_1E7188;
    }

    [v18 setValue:v27 forKey:@"htmlName"];
    v28 = [NSNumber numberWithInt:a6];
    [v18 setValue:v28 forKey:@"indentationLevel"];

    v29 = [NSNumber numberWithInt:v45];
    [v18 setValue:v29 forKey:@"absoluteOrder"];

    v30 = *(a4 + 7);
    if ([v30 length])
    {
      [v18 setValue:v30 forKey:@"type"];
    }

    [v15 addObject:v18];
    v23 = (a6 + 1);

    v24 = v45 + 1;
  }

  v31 = *(a4 + 3) - *(a4 + 2);
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
      v35 = ITNavPoint::childAtIndex(a4);
      if (v35)
      {
        v24 = [(BKEpubBookParser *)self constructEntity:v13 withNavPoint:v35 absoluteOrder:v24 indentationLevel:v23 withAnchorInfo:v14 createdObjects:v15];
      }

      ++v32;
    }

    while (v34 != v32);
  }

  return v24;
}

- (void)constructBKNavigationInfoWithReadable:(BKReadableFormat *)a3 withAnchorInfo:(id)a4
{
  v10 = a4;
  if (a3)
  {
    var13 = a3->var13;
    if (var13)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKNavigationInfo" withNavPoint:var13 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:v10 createdObjects:v8];
      v9 = [(BKBookParser *)self book];
      [v9 addChapters:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)constructBKLandmarkInfoWithReadable:(BKReadableFormat *)a3 withAnchorInfo:(id)a4
{
  v10 = a4;
  if (a3)
  {
    var14 = a3->var14;
    if (var14)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKLandmarkInfo" withNavPoint:var14 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:v10 createdObjects:v8];
      v9 = [(BKBookParser *)self book];
      [v9 addLandmarks:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)constructBKPhysicalPageWithReadable:(BKReadableFormat *)a3 withAnchorInfo:(id)a4
{
  v10 = a4;
  if (a3)
  {
    var15 = a3->var15;
    if (var15)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKPhysicalPage" withNavPoint:var15 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:v10 createdObjects:v8];
      v9 = [(BKBookParser *)self book];
      [v9 addPhysicalPages:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

+ (id)bookExtraInfoCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"BookCachedData"];

  return v4;
}

- (id)createBookExtraInfoCacheDirectoryIfNecessary
{
  v2 = [objc_opt_class() bookExtraInfoCacheDirectory];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 relativePath];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  return v2;
}

+ (id)bookCachedDataPathForBookWithKey:(id)a3
{
  v4 = a3;
  v5 = [a1 bookExtraInfoCacheDirectory];
  v6 = [v4 stringByAppendingPathExtension:@"plist"];
  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (void)constructBKIdCfiMappingsWithEpub:(void *)a3
{
  v4 = (*(*a3 + 176))(a3, a2);
  if (v4)
  {
    v5 = v4;
    v6 = [(BKEpubBookParser *)self createBookExtraInfoCacheDirectoryIfNecessary];
    v7 = objc_opt_class();
    v8 = [(BKBookParser *)self book];
    v9 = [v8 databaseKey];
    v10 = [v7 bookCachedDataPathForBookWithKey:v9];

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

+ (id)cachedDataForBookDatabaseKey:(id)a3 cacheKey:(id)a4
{
  v6 = a4;
  v7 = [a1 bookCachedDataPathForBookWithKey:a3];
  v8 = [NSDictionary dictionaryWithContentsOfFile:v7];
  v9 = [v8 objectForKey:v6];

  return v9;
}

+ (CGSize)_computeFixedLayoutDimensionsFrom:(id)a3 forBook:(id)a4
{
  v5 = a3;
  v6 = a4;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (v5)
  {
    v9 = [v5 sinfNumber];
    if (v9)
    {
      v10 = [v5 sinfNumber];
      v11 = [v10 intValue];

      if (v11 < 1)
      {
        v9 = 0;
      }

      else
      {
        v12 = [v5 sinfNumber];
        v13 = [NSPredicate predicateWithFormat:@"sinfNumber ==[n] %@", v12];

        v14 = [v6 sinfInfo];
        v15 = [v14 filteredSetUsingPredicate:v13];

        if ([v15 count] == &dword_0 + 1)
        {
          v9 = [v15 anyObject];
        }

        else
        {
          v16 = [v6 bookBundlePath];
          [NSException raise:@"NSIllegalState" format:@"Book sinf information appears invalid: %@", v16];

          v9 = 0;
        }
      }
    }

    v17 = [v6 bookBundlePath];
    v18 = [v6 bookContentSubpath];
    v19 = [v18 length];

    if (v19)
    {
      v20 = [v6 bookContentSubpath];
      v21 = [v17 stringByAppendingPathComponent:v20];
    }

    else
    {
      v21 = v17;
    }

    v22 = [v5 href];
    v23 = [v21 stringByAppendingPathComponent:v22];

    v24 = objc_autoreleasePoolPush();
    v38 = 0;
    v25 = [v9 sinfBlob];
    v37 = 0;
    v26 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v23 sinfData:v25 refetch:&v38 error:&v37];
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

+ (BOOL)recomputeFixedLayoutDimensionsForBook:(id)a3
{
  v53 = a3;
  if ([v53 isFixedLayout])
  {
    if ((BEAlwaysFullParseEPUB() & 1) == 0)
    {
      v3 = [v53 hasComputedFixedLayoutSize];
      if ([v3 BOOLValue])
      {
        v4 = [v53 isDirty];
        v5 = [v4 BOOLValue];

        if (!v5)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }
    }

    v6 = [v53 firstDocumentLocation];
    v7 = [v53 documentContainingLocation:v6];
    [a1 _computeFixedLayoutDimensionsFrom:v7 forBook:v53];
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
    obj = [v53 sortedDocuments];
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
          [a1 _computeFixedLayoutDimensionsFrom:v18 forBook:{v53, v49}];
          v21 = v19;
          v22 = v20;
          if (v19 == CGSizeZero.width && v20 == CGSizeZero.height)
          {
            v28 = [v18 href];
            v29 = [v53 tocPageHref];
            v30 = [v28 isEqualToString:v29];

            if (v30)
            {
              v31 = _ITEpubParsingLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = [v18 href];
                v67.width = v9;
                v67.height = v11;
                v33 = NSStringFromCGSize(v67);
                *buf = 138412546;
                v59 = v32;
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
                v35 = [v18 href];
                v68.width = v9;
                v68.height = v11;
                v36 = NSStringFromCGSize(v68);
                *buf = 138412546;
                v59 = v35;
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
                v25 = [v18 href];
                v65.width = v21;
                v65.height = v22;
                v26 = NSStringFromCGSize(v65);
                v66.width = v9;
                v66.height = v11;
                v27 = NSStringFromCGSize(v66);
                *buf = v49;
                v59 = v25;
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
                v42 = [v18 href];
                v70.width = v21;
                v70.height = v22;
                v43 = NSStringFromCGSize(v70);
                v71.width = v9;
                v71.height = v11;
                v44 = NSStringFromCGSize(v71);
                *buf = v49;
                v59 = v42;
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
            v38 = [v18 href];
            v69.width = v21;
            v69.height = v22;
            v39 = NSStringFromCGSize(v69);
            *buf = 138412546;
            v59 = v38;
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
    [v53 setHasComputedFixedLayoutSize:v47];
  }

LABEL_45:

  return 0;
}

- (void)setPublisherInfoFromParser:(BKReadableFormat *)a3
{
  var10 = a3->var10;
  if (var10)
  {
    CFRetain(var10);
    v6 = a3->var10;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(BKBookParser *)self book];
  v9 = [v8 publisherName];
  if ([v9 length])
  {
    v10 = [(BKBookParser *)self book];
    v11 = [v10 publisherName];
    v12 = [(__CFString *)v7 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = _ITEpubParsingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(BKBookParser *)self book];
        v15 = [v14 publisherName];
        v57 = 138544386;
        v58 = @"self.book.publisherName";
        v59 = 2160;
        v60 = 1752392040;
        v61 = 2112;
        v62 = v7;
        v63 = 2160;
        v64 = 1752392040;
        v65 = 2112;
        v66 = v15;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v57, 0x34u);
      }
    }
  }

  else
  {
  }

  v16 = a3->var10;
  if (v16 && (CFRetain(v16), (v17 = a3->var10) != 0))
  {
    v18 = [(BKBookParser *)self book];
    [v18 setPublisherName:v17];
  }

  else
  {
    v17 = [(BKBookParser *)self book];
    [v17 setPublisherName:0];
  }

  var11 = a3->var11;
  if (var11)
  {
    CFRetain(var11);
    v20 = a3->var11;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [(BKBookParser *)self book];
  v23 = [v22 publisherLocation];
  if (![v23 length])
  {

LABEL_22:
    goto LABEL_23;
  }

  v24 = [(BKBookParser *)self book];
  v25 = [v24 publisherLocation];
  v26 = [(__CFString *)v21 isEqualToString:v25];

  if ((v26 & 1) == 0)
  {
    v22 = _ITEpubParsingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(BKBookParser *)self book];
      v28 = [v27 publisherLocation];
      v57 = 138544386;
      v58 = @"self.book.publisherLocation";
      v59 = 2160;
      v60 = 1752392040;
      v61 = 2112;
      v62 = v21;
      v63 = 2160;
      v64 = 1752392040;
      v65 = 2112;
      v66 = v28;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v57, 0x34u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v29 = a3->var11;
  if (v29 && (CFRetain(v29), (v30 = a3->var11) != 0))
  {
    v31 = [(BKBookParser *)self book];
    [v31 setPublisherLocation:v30];
  }

  else
  {
    v30 = [(BKBookParser *)self book];
    [v30 setPublisherLocation:0];
  }

  var12 = a3->var12;
  if (var12)
  {
    CFRetain(var12);
    v33 = a3->var12;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  v35 = [(BKBookParser *)self book];
  v36 = [v35 publisherYear];
  if (![v36 length])
  {

LABEL_35:
    goto LABEL_36;
  }

  v37 = [(BKBookParser *)self book];
  v38 = [v37 publisherYear];
  v39 = [(__CFString *)v34 isEqualToString:v38];

  if ((v39 & 1) == 0)
  {
    v35 = _ITEpubParsingLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(BKBookParser *)self book];
      v41 = [v40 publisherYear];
      v57 = 138544386;
      v58 = @"self.book.publisherYear";
      v59 = 2160;
      v60 = 1752392040;
      v61 = 2112;
      v62 = v34;
      v63 = 2160;
      v64 = 1752392040;
      v65 = 2112;
      v66 = v41;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v57, 0x34u);
    }

    goto LABEL_35;
  }

LABEL_36:

  v42 = a3->var12;
  if (v42 && (CFRetain(v42), (v43 = a3->var12) != 0))
  {
    v44 = [(BKBookParser *)self book];
    [v44 setPublisherYear:v43];
  }

  else
  {
    v43 = [(BKBookParser *)self book];
    [v43 setPublisherYear:0];
  }

  v45 = [(BKBookParser *)self book];
  v46 = [v45 publisherName];
  v47 = v46 == 0;

  if (v47)
  {
    v48 = [(BKBookParser *)self book];
    [v48 setPublisherName:&stru_1E7188];
  }

  v49 = [(BKBookParser *)self book];
  v50 = [v49 publisherLocation];
  v51 = v50 == 0;

  if (v51)
  {
    v52 = [(BKBookParser *)self book];
    [v52 setPublisherLocation:&stru_1E7188];
  }

  v53 = [(BKBookParser *)self book];
  v54 = [v53 publisherYear];
  v55 = v54 == 0;

  if (v55)
  {
    v56 = [(BKBookParser *)self book];
    [v56 setPublisherYear:&stru_1E7188];
  }
}

- (void)setAppleDisplayOptionsFromParser:(BKReadableFormat *)a3
{
  v5 = [(BKBookParser *)self book];

  if (!v5)
  {
    return;
  }

  v34 = (*(a3->var0 + 14))(a3);
  if (v34)
  {
    objc_opt_class();
    v6 = [v34 valueForKey:@"fixed-layout"];
    v7 = BUDynamicCast();

    if ([v7 isEqualToString:@"true"])
    {
      v8 = [(BKBookParser *)self book];
      [v8 setFixedLayout:1];
    }

    v9 = [v34 valueForKey:@"interactive"];
    v10 = [v9 isEqualToString:@"true"];

    if (v10)
    {
      v11 = [(BKBookParser *)self book];
      [v11 setInteractive:1];
    }

    objc_opt_class();
    v12 = [v34 valueForKey:@"specified-fonts"];
    v13 = BUDynamicCast();

    if ([v13 isEqualToString:@"true"])
    {
      v14 = [(BKBookParser *)self book];
      [v14 setHasBuiltInFonts:1];
    }

    objc_opt_class();
    v15 = [v34 valueForKey:@"binding"];
    v16 = BUDynamicCast();

    if ([v16 isEqualToString:@"false"])
    {
      v17 = [(BKBookParser *)self book];
      [v17 setHidesSpine:1];
    }

    objc_opt_class();
    v18 = [v34 valueForKey:@"spread"];
    v19 = BUDynamicCast();
    v20 = [(BKBookParser *)self book];
    [v20 setFixedLayoutSpread:v19];

    objc_opt_class();
    v21 = [v34 valueForKey:@"flow"];
    v22 = BUDynamicCast();
    v23 = [(BKBookParser *)self book];
    [v23 setFixedLayoutFlow:v22];

    objc_opt_class();
    v24 = [v34 valueForKey:@"open-to-spread"];
    v25 = BUDynamicCast();

    if (v25)
    {
      if ([v25 isEqualToString:@"true"])
      {
        v26 = [(BKBookParser *)self book];
        [v26 setOpenToSpread:1];
      }

      else
      {
        v26 = [(BKBookParser *)self book];
        [v26 setOpenToSpread:0];
      }
    }

    else
    {
      v26 = [(BKBookParser *)self book];
      [v26 setOpenToSpread:0x7FFFFFFFFFFFFFFFLL];
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
      v29 = [(BKBookParser *)self book];
      [v29 setLandscapeProhibited:1];
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
          v32 = [(BKBookParser *)self book];
          [v32 setRespectImageSizeClass:v31];

          v33 = [(BKBookParser *)self book];
          [v33 setRespectImageSizeClassIsPrefix:0];
        }

        goto LABEL_26;
      }

      v29 = [(BKBookParser *)self book];
      [v29 setPortraitProhibited:1];
    }

    goto LABEL_23;
  }

LABEL_26:
}

- (void)setObeyPageBreaksFromPlist:(id)a3
{
  v6 = [a3 valueForKey:@"obeyPageBreaks"];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = &dword_0 + 1;
  }

  v5 = [(BKBookParser *)self book];
  [v5 setObeyPageBreaks:v4];
}

- (void)setArtworkTemplateFromPlist:(id)a3
{
  v7 = [a3 valueForKey:@"artwork-template-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v7 stringValue];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([v5 length])
  {
    v6 = [(BKBookParser *)self book];
    [v6 setGenericCoverTemplate:v5];
  }
}

- (void)setLanguageFromPlist:(id)a3
{
  v5 = [IMLibraryPlist languageFromPlistEntry:a3];
  if (v5)
  {
    v4 = [(BKBookParser *)self book];
    [v4 setBookLanguage:v5];
  }
}

- (void)setCoverWritingModeFromPlist:(id)a3
{
  v4 = [IMLibraryPlist coverWritingModeFromPlistEntry:a3];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [v4 imIsDefaultWritingMode];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      v6 = [(BKBookParser *)self book];
      [v6 setCoverWritingModeString:v7];

      v5 = v7;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)setScrollAxisModeFromPlist:(id)a3
{
  v5 = [IMLibraryPlist scrollDirectionFromPlistEntry:a3];
  if (v5 && (([v5 isEqualToString:@"horizontal"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"vertical")))
  {
    v4 = [(BKBookParser *)self book];
    [v4 setScrollDirection:v5];
  }
}

- (void)setEndOfBookExperienceFromPlist:(id)a3
{
  [IMLibraryPlist endOfBookExperiencesFromItunesMetadataEntry:a3];
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
            v5 = [(BKBookParser *)self book];
            [v5 setEndOfBookLocation:v23];

            v6 = [(BKBookParser *)self book];
            [v6 setEndOfBookConfidence:&off_1F1880];

            v7 = [(BKBookParser *)self book];
            [v7 setEndOfBookValidRange:0];
          }

          v24 = [IMLibraryPlist experienceVersionFromExperienceEntry:v4];
          v8 = [(BKBookParser *)self book];
          [v8 setEndOfBookVersion:v24];

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
                  v18 = [(BKBookParser *)self book];
                  [v18 setEndOfBookConfidence:v17];
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
  v3 = [(BKBookParser *)self book];
  v4 = [v3 bookBundlePath];
  v6 = [v4 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

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

+ (BOOL)isValidMimeType:(id)a3
{
  v3 = a3;
  v4 = [v3 UTF8String];
  v5 = [v3 length];
  LOBYTE(v4) = ITEpubFolder::isMimetypeFileContentsValid(v4, v5, 0, 0, v6) != 0;

  return v4;
}

@end