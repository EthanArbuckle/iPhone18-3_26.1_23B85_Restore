@interface CLSAbstractAsset
- (BOOL)devModeOn;
- (BOOL)hasNotBeenRereferencedByServer;
- (BOOL)isDownloaded;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidFileURL:(id)l isThumbnail:(BOOL)thumbnail;
- (BOOL)isValidStreamingURL:(id)l;
- (BOOL)validateObject:(id *)object;
- (CLSAbstractAsset)initWithCoder:(id)coder;
- (Class)parentEntityClass;
- (NSString)filenameExtension;
- (NSString)title;
- (NSURL)URL;
- (NSURL)thumbnailURL;
- (UTType)fileUTType;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)downloadObservers;
- (id)filenameForCKContentStoreCache;
- (id)pendingStreamingURLCompletions;
- (id)pendingThumbnailURLCompletions;
- (id)pendingURLCompletions;
- (id)thumbnailFilenameForCKContentStoreCache;
- (int64_t)displayOrder;
- (int64_t)schoolworkSyncStatus;
- (void)addDownloadObserver:(id)observer;
- (void)addToPendingStreamingURLCompletions:(id)completions;
- (void)addToPendingThumbnailURLCompletions:(id)completions;
- (void)addToPendingURLCompletions:(id)completions;
- (void)becomeChildOf:(id)of;
- (void)clientRemote_downloadCompleted:(BOOL)completed error:(id)error;
- (void)clientRemote_downloadProgressFraction:(double)fraction error:(id)error;
- (void)clientRemote_invalidate;
- (void)cloudKitAssetUrlSuitableForOpeningWithCompletion:(id)completion;
- (void)cloudKitThumbnailUrlSuitableForOpeningWithCompletion:(id)completion;
- (void)dealloc;
- (void)driveAssetUrlSuitableForOpeningWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithObject:(id)object;
- (void)queued_notifyDownloadCompletion;
- (void)queued_notifyDownloadProgressFraction:(double)fraction;
- (void)removeDownloadObserver:(id)observer;
- (void)setDisplayOrder:(int64_t)order;
- (void)setFileSizeInBytesFromURL:(id)l;
- (void)setFileUTType:(id)type;
- (void)setFileUTTypeFromURL:(id)l;
- (void)setSchoolworkSyncStatus:(int64_t)status;
- (void)setThumbnailURL:(id)l;
- (void)setTitle:(id)title;
- (void)setURL:(id)l;
- (void)thumbnailURLSuitableForOpeningWithCompletion:(id)completion;
- (void)urlSuitableForOpeningWithCompletion:(id)completion;
- (void)urlSuitableForStreamingWithCompletion:(id)completion;
@end

@implementation CLSAbstractAsset

- (id)_init
{
  v13.receiver = self;
  v13.super_class = CLSAbstractAsset;
  _init = [(CLSObject *)&v13 _init];
  v3 = _init;
  if (_init)
  {
    atomic_store(0, _init + 288);
    atomic_store(0, _init + 289);
    atomic_store(0, _init + 290);
    v4 = objc_opt_new();
    v5 = *(v3 + 20);
    *(v3 + 20) = v4;

    v6 = objc_opt_new();
    v7 = *(v3 + 37);
    *(v3 + 37) = v6;

    v8 = objc_opt_new();
    v9 = *(v3 + 38);
    *(v3 + 38) = v8;

    v10 = objc_opt_new();
    v11 = *(v3 + 39);
    *(v3 + 39) = v10;
  }

  return v3;
}

- (void)dealloc
{
  URL = self->_URL;
  if (URL && self->_URLIsSecurityScoped)
  {
    objc_msgSend_stopAccessingSecurityScopedResource(URL, a2, v2);
  }

  compressedURL = self->_compressedURL;
  if (compressedURL && self->_compressedURLIsSecurityScoped)
  {
    objc_msgSend_stopAccessingSecurityScopedResource(compressedURL, a2, v2);
  }

  v6.receiver = self;
  v6.super_class = CLSAbstractAsset;
  [(CLSAbstractAsset *)&v6 dealloc];
}

- (CLSAbstractAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v96.receiver = self;
  v96.super_class = CLSAbstractAsset;
  v5 = [(CLSObject *)&v96 initWithCoder:coderCopy];
  v5->_type = objc_msgSend_decodeIntegerForKey_(coderCopy, v6, @"type");
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"url");
  URL = v5->_URL;
  v5->_URL = v9;

  v11 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"compressedURL");
  compressedURL = v5->_compressedURL;
  v5->_compressedURL = v13;

  v15 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"urlExpirationDate");
  urlExpirationDate = v5->_urlExpirationDate;
  v5->_urlExpirationDate = v17;

  v19 = objc_opt_class();
  v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"url_sb");
  if (v22)
  {
    objc_msgSend_attachSandboxExtensionToken_(v5->_URL, v21, v22);
    if ((CLSExecutableLinkedOnOrAfter_iOS15_1_macOS_12_0() & 1) == 0)
    {
      v5->_URLIsSecurityScoped = objc_msgSend_startAccessingSecurityScopedResource(v5->_URL, v23, v24);
    }
  }

  v25 = objc_opt_class();
  v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"compressedURL_sb");
  if (v28)
  {
    objc_msgSend_attachSandboxExtensionToken_(v5->_compressedURL, v27, v22);
    if ((CLSExecutableLinkedOnOrAfter_iOS15_1_macOS_12_0() & 1) == 0)
    {
      v5->_compressedURLIsSecurityScoped = objc_msgSend_startAccessingSecurityScopedResource(v5->_URL, v29, v30);
    }
  }

  v31 = objc_opt_class();
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"thumbnailURL");
  thumbnailURL = v5->_thumbnailURL;
  v5->_thumbnailURL = v33;

  v35 = objc_opt_class();
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"thumbnailURL_sb");
  if (v38)
  {
    objc_msgSend_attachSandboxExtensionToken_(v5->_thumbnailURL, v37, v38);
  }

  v5->_original = objc_msgSend_decodeBoolForKey_(coderCopy, v37, @"original");
  v5->_schoolworkSyncStatus = objc_msgSend_decodeIntegerForKey_(coderCopy, v39, @"schoolworkSyncStatus");
  v5->_fileSizeInBytes = objc_msgSend_decodeIntegerForKey_(coderCopy, v40, @"fileSizeInBytes");
  v41 = objc_opt_class();
  v44 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v42, v41, @"fileUTTypeIdentifier");
  if (v44)
  {
    v45 = objc_msgSend_typeWithIdentifier_(MEMORY[0x277CE1CB8], v43, v44);
    fileUTType = v5->_fileUTType;
    v5->_fileUTType = v45;
  }

  v47 = objc_opt_class();
  v49 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v48, v47, @"originalFilename");
  originalFilename = v5->_originalFilename;
  v5->_originalFilename = v49;

  v51 = objc_opt_class();
  v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v52, v51, @"title");
  title = v5->_title;
  v5->_title = v53;

  v5->_displayOrder = objc_msgSend_decodeIntegerForKey_(coderCopy, v55, @"displayOrder");
  v56 = objc_opt_class();
  v58 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v57, v56, @"ownerPersonID");
  ownerPersonID = v5->_ownerPersonID;
  v5->_ownerPersonID = v58;

  objc_msgSend_decodeDoubleForKey_(coderCopy, v60, @"durationInSeconds");
  v5->_durationInSeconds = v61;
  v5->_parentEntityType = objc_msgSend_decodeIntegerForKey_(coderCopy, v62, @"parentEntityType");
  v63 = objc_opt_class();
  v65 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"brItemID");
  brItemID = v5->_brItemID;
  v5->_brItemID = v65;

  v67 = objc_opt_class();
  v69 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v68, v67, @"brOwnerName");
  brOwnerName = v5->_brOwnerName;
  v5->_brOwnerName = v69;

  v71 = objc_opt_class();
  v73 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v72, v71, @"brZoneName");
  brZoneName = v5->_brZoneName;
  v5->_brZoneName = v73;

  v75 = objc_opt_class();
  v77 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v76, v75, @"brShareName");
  brShareName = v5->_brShareName;
  v5->_brShareName = v77;

  v79 = objc_opt_class();
  v81 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v80, v79, @"ubiquitousContainerName");
  ubiquitousContainerName = v5->_ubiquitousContainerName;
  v5->_ubiquitousContainerName = v81;

  v83 = objc_opt_class();
  v85 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v84, v83, @"relativePathWithinContainer");
  relativePathWithinContainer = v5->_relativePathWithinContainer;
  v5->_relativePathWithinContainer = v85;

  if (v5->_ubiquitousContainerName)
  {
    if (!v5->_type)
    {
      v5->_type = 1;
    }

    if (!v5->_parentEntityType)
    {
      v5->_parentEntityType = 2;
    }
  }

  atomic_store(0, &v5->_thumbnailURLRequested);
  atomic_store(0, &v5->_URLRequested);
  atomic_store(0, &v5->_streamingURLRequested);
  v87 = objc_opt_new();
  downloadObservers = v5->_downloadObservers;
  v5->_downloadObservers = v87;

  v89 = objc_opt_new();
  pendingURLCompletions = v5->_pendingURLCompletions;
  v5->_pendingURLCompletions = v89;

  v91 = objc_opt_new();
  pendingStreamingURLCompletions = v5->_pendingStreamingURLCompletions;
  v5->_pendingStreamingURLCompletions = v91;

  v93 = objc_opt_new();
  pendingThumbnailURLCompletions = v5->_pendingThumbnailURLCompletions;
  v5->_pendingThumbnailURLCompletions = v93;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = CLSAbstractAsset;
  [(CLSObject *)&v44 encodeWithCoder:coderCopy];
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, self->_type, @"type");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_urlExpirationDate, @"urlExpirationDate");
  URL = self->_URL;
  if (URL)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v7, URL, @"url");
    v12 = objc_msgSend_sandboxExtensionTokenForAnyProcess(self->_URL, v9, v10);
    if (v12)
    {
      objc_msgSend_encodeObject_forKey_(coderCopy, v11, v12, @"url_sb");
    }
  }

  compressedURL = self->_compressedURL;
  if (compressedURL)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v7, compressedURL, @"compressedURL");
    v17 = objc_msgSend_sandboxExtensionTokenForAnyProcess(self->_compressedURL, v14, v15);
    if (v17)
    {
      objc_msgSend_encodeObject_forKey_(coderCopy, v16, v17, @"compressedURL_sb");
    }
  }

  thumbnailURL = self->_thumbnailURL;
  if (thumbnailURL)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v7, thumbnailURL, @"thumbnailURL");
    v22 = objc_msgSend_sandboxExtensionTokenForAnyProcess(self->_thumbnailURL, v19, v20);
    if (v22)
    {
      objc_msgSend_encodeObject_forKey_(coderCopy, v21, v22, @"thumbnailURL_sb");
    }
  }

  objc_msgSend_encodeBool_forKey_(coderCopy, v7, self->_original, @"original");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v23, self->_schoolworkSyncStatus, @"schoolworkSyncStatus");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v24, self->_fileSizeInBytes, @"fileSizeInBytes");
  v27 = objc_msgSend_fileUTType(self, v25, v26);
  v30 = v27;
  if (v27)
  {
    v32 = objc_msgSend_identifier(v27, v28, v29);
    if (v32)
    {
      objc_msgSend_encodeObject_forKey_(coderCopy, v31, v32, @"fileUTTypeIdentifier");
    }
  }

  objc_msgSend_encodeObject_forKey_(coderCopy, v28, self->_originalFilename, @"originalFilename");
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, self->_title, @"title");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v34, self->_displayOrder, @"displayOrder");
  objc_msgSend_encodeDouble_forKey_(coderCopy, v35, @"durationInSeconds", self->_durationInSeconds);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, self->_ownerPersonID, @"ownerPersonID");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v37, self->_parentEntityType, @"parentEntityType");
  objc_msgSend_encodeObject_forKey_(coderCopy, v38, self->_brItemID, @"brItemID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v39, self->_brZoneName, @"brZoneName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, self->_brOwnerName, @"brOwnerName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v41, self->_brShareName, @"brShareName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v42, self->_ubiquitousContainerName, @"ubiquitousContainerName");
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, self->_relativePathWithinContainer, @"relativePathWithinContainer");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend__init(v7, v8, v9);
  objc_msgSend_lock(self, v11, v12);
  URL = self->_URL;
  v14 = self->_thumbnailURL;
  v15 = URL;
  objc_msgSend_unlock(self, v16, v17);
  v20 = objc_msgSend_objectID(self, v18, v19);
  v23 = objc_msgSend_copy(v20, v21, v22);
  objc_msgSend_setObjectID_(v10, v24, v23);

  v27 = objc_msgSend_dateCreated(self, v25, v26);
  v30 = objc_msgSend_copy(v27, v28, v29);
  objc_msgSend_setDateCreated_(v10, v31, v30);

  v34 = objc_msgSend_dateLastModified(self, v32, v33);
  v37 = objc_msgSend_copy(v34, v35, v36);
  objc_msgSend_setDateLastModified_(v10, v38, v37);

  v41 = objc_msgSend_parentObjectID(self, v39, v40);
  v44 = objc_msgSend_copy(v41, v42, v43);
  objc_msgSend_setParentObjectID_(v10, v45, v44);

  v48 = objc_msgSend_type(self, v46, v47);
  objc_msgSend_setType_(v10, v49, v48);
  v52 = objc_msgSend_copy(v15, v50, v51);
  objc_msgSend_setURL_(v10, v53, v52);

  v56 = objc_msgSend_urlExpirationDate(self, v54, v55);
  v59 = objc_msgSend_copy(v56, v57, v58);
  objc_msgSend_setUrlExpirationDate_(v10, v60, v59);

  v63 = objc_msgSend_copy(v14, v61, v62);
  objc_msgSend_setThumbnailURL_(v10, v64, v63);

  isOriginal = objc_msgSend_isOriginal(self, v65, v66);
  objc_msgSend_setOriginal_(v10, v68, isOriginal);
  v71 = objc_msgSend_originalFilename(self, v69, v70);
  v74 = objc_msgSend_copy(v71, v72, v73);
  objc_msgSend_setOriginalFilename_(v10, v75, v74);

  v78 = objc_msgSend_schoolworkSyncStatus(self, v76, v77);
  objc_msgSend_setSchoolworkSyncStatus_(v10, v79, v78);
  v82 = objc_msgSend_fileSizeInBytes(self, v80, v81);
  objc_msgSend_setFileSizeInBytes_(v10, v83, v82);
  v86 = objc_msgSend_filenameExtension(self, v84, v85);
  v89 = objc_msgSend_copy(v86, v87, v88);
  objc_msgSend_setFilenameExtension_(v10, v90, v89);

  v93 = objc_msgSend_fileUTType(self, v91, v92);
  v96 = objc_msgSend_copy(v93, v94, v95);
  objc_msgSend_setFileUTType_(v10, v97, v96);

  v100 = objc_msgSend_title(self, v98, v99);
  v103 = objc_msgSend_copy(v100, v101, v102);
  objc_msgSend_setTitle_(v10, v104, v103);

  v107 = objc_msgSend_displayOrder(self, v105, v106);
  objc_msgSend_setDisplayOrder_(v10, v108, v107);
  objc_msgSend_durationInSeconds(self, v109, v110);
  objc_msgSend_setDurationInSeconds_(v10, v111, v112);
  v115 = objc_msgSend_ownerPersonID(self, v113, v114);
  v118 = objc_msgSend_copy(v115, v116, v117);
  objc_msgSend_setOwnerPersonID_(v10, v119, v118);

  v122 = objc_msgSend_parentEntityType(self, v120, v121);
  objc_msgSend_setParentEntityType_(v10, v123, v122);
  v126 = objc_msgSend_brItemID(self, v124, v125);
  v129 = objc_msgSend_copy(v126, v127, v128);
  objc_msgSend_setBrItemID_(v10, v130, v129);

  v133 = objc_msgSend_brOwnerName(self, v131, v132);
  v136 = objc_msgSend_copy(v133, v134, v135);
  objc_msgSend_setBrOwnerName_(v10, v137, v136);

  v140 = objc_msgSend_brZoneName(self, v138, v139);
  v143 = objc_msgSend_copy(v140, v141, v142);
  objc_msgSend_setBrZoneName_(v10, v144, v143);

  v147 = objc_msgSend_brShareName(self, v145, v146);
  v150 = objc_msgSend_copy(v147, v148, v149);
  objc_msgSend_setBrShareName_(v10, v151, v150);

  v154 = objc_msgSend_ubiquitousContainerName(self, v152, v153);
  v157 = objc_msgSend_copy(v154, v155, v156);
  objc_msgSend_setUbiquitousContainerName_(v10, v158, v157);

  v161 = objc_msgSend_relativePathWithinContainer(self, v159, v160);
  v164 = objc_msgSend_copy(v161, v162, v163);
  objc_msgSend_setRelativePathWithinContainer_(v10, v165, v164);

  isDownloaded = objc_msgSend_isDownloaded(self, v166, v167);
  objc_msgSend_setDownloaded_(v10, v169, isDownloaded);
  objc_msgSend_fractionDownloaded(self, v170, v171);
  objc_msgSend_setFractionDownloaded_(v10, v172, v173);
  v176 = objc_msgSend_downloadError(self, v174, v175);
  v179 = objc_msgSend_copy(v176, v177, v178);
  objc_msgSend_setDownloadError_(v10, v180, v179);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    isEqual = 0;
    goto LABEL_183;
  }

  v5 = equalCopy;
  objc_msgSend_lock(self, v6, v7);
  v8 = self->_URL;
  isOriginal = 120;
  v10 = self->_thumbnailURL;
  objc_msgSend_unlock(self, v11, v12);
  objc_msgSend_lock(v5, v13, v14);
  v15 = v5[14];
  v16 = v5[15];
  objc_msgSend_unlock(v5, v17, v18);
  objc_msgSend_objectID(self, v19, v20);
  v393 = v10;
  v394 = v8;
  v391 = v16;
  v390 = v392 = v15;
  if (!v390)
  {
    v331 = objc_msgSend_objectID(v5, v21, v22);
    if (!v331)
    {
      v331 = 0;
      isOriginal = 0;
      goto LABEL_12;
    }
  }

  v23 = objc_msgSend_objectID(self, v21, v22);
  if (!v23)
  {
    v334 = 0;
    v372 = 0;
    v371 = 0;
    v398 = 0;
    v389 = 0;
    v402 = 0;
    v369 = 0;
    v366 = 0;
    v34 = 0;
    v388 = 0;
    v401 = 0uLL;
    v387 = 0;
    v400 = 0;
    v362 = 0;
    v356 = 0;
    v365 = 0;
    v386 = 0;
    v399 = 0;
    v361 = 0;
    v363 = 0;
    v385 = 0;
    v397 = 0;
    v355 = 0;
    v353 = 0;
    v358 = 0;
    v384 = 0;
    v396 = 0;
    v338 = 0;
    v335 = 0;
    v360 = 0;
    v383 = 0;
    v395 = 0;
    v346 = 0;
    v339 = 0;
    v359 = 0;
    v382 = 0;
    v380 = 0;
    v348 = 0;
    v357 = 0;
    v381 = 0;
    v378 = 0;
    v342 = 0;
    v344 = 0;
    v352 = 0;
    v379 = 0;
    v376 = 0;
    v337 = 0;
    v341 = 0;
    v349 = 0;
    v377 = 0;
    v374 = 0;
    v336 = 0;
    v343 = 0;
    v350 = 0;
    v375 = 0;
    v370 = 0;
    v340 = 0;
    v345 = 0;
    v354 = 0;
    v373 = 0;
    v367 = 0;
    v347 = 0;
    v351 = 0;
    v364 = 0;
    v368 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    isEqual = 0;
    v403 = 1;
    goto LABEL_30;
  }

  v334 = v23;
  v26 = objc_msgSend_objectID(v5, v24, v25);
  if (!v26)
  {
    v333 = 0;
    v371 = 0;
    v398 = 0;
    v389 = 0;
    v402 = 0;
    v369 = 0;
    v366 = 0;
    v34 = 0;
    v388 = 0;
    v401 = 0uLL;
    v387 = 0;
    v400 = 0;
    v362 = 0;
    v356 = 0;
    v365 = 0;
    v386 = 0;
    v399 = 0;
    v361 = 0;
    v363 = 0;
    v385 = 0;
    v397 = 0;
    v355 = 0;
    v353 = 0;
    v358 = 0;
    v384 = 0;
    v396 = 0;
    v338 = 0;
    v335 = 0;
    v360 = 0;
    v383 = 0;
    v395 = 0;
    v346 = 0;
    v339 = 0;
    v359 = 0;
    v382 = 0;
    v380 = 0;
    v348 = 0;
    v357 = 0;
    v381 = 0;
    v378 = 0;
    v342 = 0;
    v344 = 0;
    v352 = 0;
    v379 = 0;
    v376 = 0;
    v337 = 0;
    v341 = 0;
    v349 = 0;
    v377 = 0;
    v374 = 0;
    v336 = 0;
    v343 = 0;
    v350 = 0;
    v375 = 0;
    v370 = 0;
    v340 = 0;
    v345 = 0;
    v354 = 0;
    v373 = 0;
    v367 = 0;
    v347 = 0;
    v351 = 0;
    v364 = 0;
    v368 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    isEqual = 0;
    v403 = 1;
    v372 = 1;
    goto LABEL_30;
  }

  v333 = v26;
  v29 = objc_msgSend_objectID(self, v27, v28);
  objc_msgSend_objectID(v5, v30, v31);
  v329 = v330 = v29;
  isEqualToString = objc_msgSend_isEqualToString_(v29, v32, v329);
  isOriginal = 1;
  if (isEqualToString)
  {
LABEL_12:
    v39 = objc_msgSend_parentObjectID(self, v21, v22);
    v389 = v39 == 0;
    v328 = v39;
    v403 = isOriginal;
    if (v39 || (objc_msgSend_parentObjectID(v5, v40, v41), (v325 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v42 = objc_msgSend_parentObjectID(self, v40, v41);
      if (!v42)
      {
        v327 = 0;
        v369 = 0;
        v366 = 0;
        v34 = 0;
        v388 = 0;
        v401 = 0uLL;
        v387 = 0;
        v400 = 0;
        v362 = 0;
        v356 = 0;
        v365 = 0;
        v386 = 0;
        v399 = 0;
        v361 = 0;
        v363 = 0;
        v385 = 0;
        v397 = 0;
        v355 = 0;
        v353 = 0;
        v358 = 0;
        v384 = 0;
        v396 = 0;
        v338 = 0;
        v335 = 0;
        v360 = 0;
        v383 = 0;
        v395 = 0;
        v346 = 0;
        v339 = 0;
        v359 = 0;
        v382 = 0;
        v380 = 0;
        v348 = 0;
        v357 = 0;
        v381 = 0;
        v378 = 0;
        v342 = 0;
        v344 = 0;
        v352 = 0;
        v379 = 0;
        v376 = 0;
        v337 = 0;
        v341 = 0;
        v349 = 0;
        v377 = 0;
        v374 = 0;
        v336 = 0;
        v343 = 0;
        v350 = 0;
        v375 = 0;
        v370 = 0;
        v340 = 0;
        v345 = 0;
        v354 = 0;
        v373 = 0;
        v367 = 0;
        v347 = 0;
        v351 = 0;
        v364 = 0;
        v368 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        isEqual = 0;
        v398 = 1;
        v372 = isOriginal;
        v371 = isOriginal;
        v402 = 1;
        goto LABEL_30;
      }

      v327 = v42;
      v45 = objc_msgSend_parentObjectID(v5, v43, v44);
      if (!v45)
      {
        v326 = 0;
        v366 = 0;
        v34 = 0;
        v388 = 0;
        v401 = 0uLL;
        v387 = 0;
        v400 = 0;
        v362 = 0;
        v356 = 0;
        v365 = 0;
        v386 = 0;
        v399 = 0;
        v361 = 0;
        v363 = 0;
        v385 = 0;
        v397 = 0;
        v355 = 0;
        v353 = 0;
        v358 = 0;
        v384 = 0;
        v396 = 0;
        v338 = 0;
        v335 = 0;
        v360 = 0;
        v383 = 0;
        v395 = 0;
        v346 = 0;
        v339 = 0;
        v359 = 0;
        v382 = 0;
        v380 = 0;
        v348 = 0;
        v357 = 0;
        v381 = 0;
        v378 = 0;
        v342 = 0;
        v344 = 0;
        v352 = 0;
        v379 = 0;
        v376 = 0;
        v337 = 0;
        v341 = 0;
        v349 = 0;
        v377 = 0;
        v374 = 0;
        v336 = 0;
        v343 = 0;
        v350 = 0;
        v375 = 0;
        v370 = 0;
        v340 = 0;
        v345 = 0;
        v354 = 0;
        v373 = 0;
        v367 = 0;
        v347 = 0;
        v351 = 0;
        v364 = 0;
        v368 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        isEqual = 0;
        v398 = 1;
        v372 = isOriginal;
        v371 = isOriginal;
        v402 = 1;
        v369 = 1;
        goto LABEL_30;
      }

      v326 = v45;
      v48 = objc_msgSend_parentObjectID(self, v46, v47);
      objc_msgSend_parentObjectID(v5, v49, v50);
      v323 = v324 = v48;
      if (!objc_msgSend_isEqualToString_(v48, v51, v323))
      {
        v398 = 1;
        v34 = 0;
        v388 = 0;
        v401 = 0uLL;
        v387 = 0;
        v400 = 0;
        v362 = 0;
        v356 = 0;
        v365 = 0;
        v386 = 0;
        v399 = 0;
        v361 = 0;
        v363 = 0;
        v385 = 0;
        v397 = 0;
        v355 = 0;
        v353 = 0;
        v358 = 0;
        v384 = 0;
        v396 = 0;
        v338 = 0;
        v335 = 0;
        v360 = 0;
        v383 = 0;
        v395 = 0;
        v346 = 0;
        v339 = 0;
        v359 = 0;
        v382 = 0;
        v380 = 0;
        v348 = 0;
        v357 = 0;
        v381 = 0;
        v378 = 0;
        v342 = 0;
        v344 = 0;
        v352 = 0;
        v379 = 0;
        v376 = 0;
        v337 = 0;
        v341 = 0;
        v349 = 0;
        v377 = 0;
        v374 = 0;
        v336 = 0;
        v343 = 0;
        v350 = 0;
        v375 = 0;
        v370 = 0;
        v340 = 0;
        v345 = 0;
        v354 = 0;
        v373 = 0;
        v367 = 0;
        v347 = 0;
        v351 = 0;
        v364 = 0;
        v368 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        isEqual = 0;
        v372 = isOriginal;
        v371 = isOriginal;
        v402 = 1;
        v369 = 1;
        v52 = 1;
        goto LABEL_29;
      }

      v402 = 1;
    }

    else
    {
      v325 = 0;
      v402 = 0;
    }

    isOriginal = objc_msgSend_type(self, v40, v41);
    if (isOriginal == objc_msgSend_type(v5, v53, v54))
    {
      HIDWORD(v401) = (v8 | v15) != 0;
      isOriginal = v403;
      if (v8 | v15)
      {
        v34 = 0;
        if (!v8 || !v15)
        {
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v388 = 0;
          v401 = 0uLL;
          v387 = 0;
          v400 = 0;
          v362 = 0;
          v356 = 0;
          v365 = 0;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          v363 = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          goto LABEL_30;
        }

        v57 = objc_msgSend_absoluteString(v8, v55, v56);
        objc_msgSend_absoluteString(v15, v58, v59);
        v318 = v319 = v57;
        if (objc_msgSend_caseInsensitiveCompare_(v57, v60, v318))
        {
          v34 = 0;
          v388 = 0;
          *(&v401 + 1) = 0x100000000;
          *&v401 = 0;
          v387 = 0;
          v400 = 0;
          v362 = 0;
          v356 = 0;
          v365 = 0;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          v363 = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          goto LABEL_30;
        }
      }

      v322 = objc_msgSend_urlExpirationDate(self, v55, v56);
      v388 = v322 == 0;
      if (v322 || (objc_msgSend_urlExpirationDate(v5, v64, v65), (v332 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v66 = objc_msgSend_urlExpirationDate(self, v64, v65);
        if (!v66)
        {
          v321 = 0;
          *&v401 = 0;
          v387 = 0;
          v400 = 0;
          v362 = 0;
          v356 = 0;
          v365 = 0;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          v363 = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          DWORD2(v401) = 1;
          goto LABEL_30;
        }

        v321 = v66;
        v69 = objc_msgSend_urlExpirationDate(v5, v67, v68);
        if (!v69)
        {
          v320 = 0;
          *&v401 = 0;
          v387 = 0;
          v400 = 0;
          v362 = 0;
          v356 = 0;
          v365 = 0x100000000;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          v363 = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          DWORD2(v401) = 1;
          goto LABEL_30;
        }

        v320 = v69;
        v72 = objc_msgSend_urlExpirationDate(self, v70, v71);
        objc_msgSend_urlExpirationDate(v5, v73, v74);
        v316 = v317 = v72;
        if (!objc_msgSend_isEqualToDate_(v72, v75, v316))
        {
          v398 = 1;
          *&v401 = 0;
          v387 = 0;
          v400 = 0;
          v362 = 0;
          v356 = 0;
          v365 = 0x100000000;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          LODWORD(v363) = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          DWORD2(v401) = 1;
          v77 = 1;
LABEL_202:
          HIDWORD(v363) = v77;
          goto LABEL_30;
        }

        DWORD2(v401) = 1;
        v76 = v332;
        isOriginal = v403;
      }

      else
      {
        v76 = 0;
        DWORD2(v401) = 0;
      }

      LODWORD(v401) = (v10 | v16) != 0;
      v332 = v76;
      if (v10 | v16)
      {
        DWORD1(v401) = 0;
        if (!v10 || !v16)
        {
          v398 = 1;
          v372 = isOriginal;
          v371 = isOriginal;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          isEqual = 0;
          v400 = 0;
          LODWORD(v401) = 0;
          v387 = 0;
          v362 = 0;
          v356 = 0;
          v365 = *(&v401 + 4);
          v386 = 0;
          v399 = 0;
          v361 = 0;
          v363 = *(&v401 + 4);
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          goto LABEL_30;
        }

        v78 = objc_msgSend_absoluteString(v10, v64, v65);
        objc_msgSend_absoluteString(v16, v79, v80);
        v312 = v313 = v78;
        if (objc_msgSend_caseInsensitiveCompare_(v78, v81, v312))
        {
          v387 = 0;
          v400 = 0;
          v362 = 0;
          v356 = 0;
          v365 = __PAIR64__(DWORD2(v401), 0);
          v386 = 0;
          v399 = 0;
          v361 = 0;
          v363 = __PAIR64__(DWORD2(v401), 0);
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          *&v401 = 1;
          goto LABEL_30;
        }
      }

      isOriginal = objc_msgSend_isOriginal(self, v64, v65);
      if (isOriginal != objc_msgSend_isOriginal(v5, v82, v83))
      {
        DWORD1(v401) = 0;
        v387 = 0;
        v400 = 0;
        v362 = 0;
        v356 = 0;
        v365 = __PAIR64__(DWORD2(v401), 0);
        v386 = 0;
        v399 = 0;
        v361 = 0;
        LODWORD(v363) = 0;
        v385 = 0;
        v397 = 0;
        v355 = 0;
        v353 = 0;
        v358 = 0;
        v384 = 0;
        v396 = 0;
        v338 = 0;
        v335 = 0;
        v360 = 0;
        v383 = 0;
        v395 = 0;
        v346 = 0;
        v339 = 0;
        v359 = 0;
        v382 = 0;
        v380 = 0;
        v348 = 0;
        v357 = 0;
        v381 = 0;
        v378 = 0;
        v342 = 0;
        v344 = 0;
        v352 = 0;
        v379 = 0;
        v376 = 0;
        v337 = 0;
        v341 = 0;
        v349 = 0;
        v377 = 0;
        v374 = 0;
        v336 = 0;
        v343 = 0;
        v350 = 0;
        v375 = 0;
        v370 = 0;
        v340 = 0;
        v345 = 0;
        v354 = 0;
        v373 = 0;
        v367 = 0;
        v347 = 0;
        v351 = 0;
        v364 = 0;
        v368 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        isEqual = 0;
        v398 = 1;
        v372 = v403;
        v371 = v403;
        v369 = v402;
        v366 = v402;
        v34 = 1;
        v77 = DWORD2(v401);
        goto LABEL_202;
      }

      v86 = objc_msgSend_originalFilename(self, v84, v85);
      v387 = v86 == 0;
      isOriginal = v403;
      v315 = v86;
      if (v86 || (objc_msgSend_originalFilename(v5, v87, v88), (v310 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v89 = objc_msgSend_originalFilename(self, v87, v88);
        if (!v89)
        {
          v314 = 0;
          v362 = 0;
          v356 = 0;
          LODWORD(v365) = 0;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          LODWORD(v363) = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          HIDWORD(v365) = DWORD2(v401);
          HIDWORD(v363) = DWORD2(v401);
          DWORD1(v401) = 1;
          v400 = 1;
          goto LABEL_30;
        }

        v314 = v89;
        v92 = objc_msgSend_originalFilename(v5, v90, v91);
        if (!v92)
        {
          v311 = 0;
          v356 = 0;
          LODWORD(v365) = 0;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          LODWORD(v363) = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          HIDWORD(v365) = DWORD2(v401);
          HIDWORD(v363) = DWORD2(v401);
          DWORD1(v401) = 1;
          v400 = 1;
          v362 = 1;
          goto LABEL_30;
        }

        v311 = v92;
        isOriginal = objc_msgSend_originalFilename(self, v93, v94);
        v308 = objc_msgSend_originalFilename(v5, v95, v96);
        v309 = isOriginal;
        if (!objc_msgSend_isEqualToString_(isOriginal, v97, v308))
        {
          v398 = 1;
          LODWORD(v365) = 0;
          v386 = 0;
          v399 = 0;
          v361 = 0;
          LODWORD(v363) = 0;
          v385 = 0;
          v397 = 0;
          v355 = 0;
          v353 = 0;
          v358 = 0;
          v384 = 0;
          v396 = 0;
          v338 = 0;
          v335 = 0;
          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          HIDWORD(v365) = DWORD2(v401);
          HIDWORD(v363) = DWORD2(v401);
          DWORD1(v401) = 1;
          v400 = 1;
          v362 = 1;
          v98 = 1;
          goto LABEL_223;
        }

        v400 = 1;
      }

      else
      {
        v310 = 0;
        v400 = 0;
      }

      isOriginal = objc_msgSend_schoolworkSyncStatus(self, v87, v88);
      if (isOriginal == objc_msgSend_schoolworkSyncStatus(v5, v99, v100))
      {
        isOriginal = objc_msgSend_fileSizeInBytes(self, v101, v102);
        if (isOriginal == objc_msgSend_fileSizeInBytes(v5, v103, v104))
        {
          v107 = objc_msgSend_filenameExtension(self, v105, v106);
          v386 = v107 == 0;
          v306 = v107;
          if (v107 || (objc_msgSend_filenameExtension(v5, v108, v109), (v304 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v307 = objc_msgSend_filenameExtension(self, v108, v109);
            if (!v307)
            {
              v307 = 0;
              v361 = 0;
              LODWORD(v363) = 0;
              v385 = 0;
              v397 = 0;
              v355 = 0;
              v353 = 0;
              v358 = 0;
              v384 = 0;
              v396 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              v399 = 1;
              goto LABEL_30;
            }

            v305 = objc_msgSend_filenameExtension(v5, v110, v111);
            if (!v305)
            {
              v305 = 0;
              v361 = 0x100000000;
              LODWORD(v363) = 0;
              v385 = 0;
              v397 = 0;
              v355 = 0;
              v353 = 0;
              v358 = 0;
              v384 = 0;
              v396 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              v399 = 1;
              goto LABEL_30;
            }

            isOriginal = objc_msgSend_filenameExtension(self, v112, v113);
            v301 = objc_msgSend_filenameExtension(v5, v114, v115);
            v302 = isOriginal;
            v398 = 1;
            if (!objc_msgSend_isEqualToString_(isOriginal, v116, v301))
            {
              LODWORD(v363) = 0;
              v385 = 0;
              v397 = 0;
              v355 = 0;
              v353 = 0;
              v358 = 0;
              v384 = 0;
              v396 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              v399 = 1;
              v361 = 0x100000001;
              goto LABEL_30;
            }

            v399 = 1;
          }

          else
          {
            v304 = 0;
            v399 = 0;
          }

          v117 = objc_msgSend_fileUTType(self, v108, v109);
          v385 = v117 == 0;
          v300 = v117;
          if (v117 || (objc_msgSend_fileUTType(v5, v118, v119), (v298 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v303 = objc_msgSend_fileUTType(self, v118, v119);
            if (!v303)
            {
              v303 = 0;
              v355 = 0;
              v353 = 0;
              v358 = 0;
              v384 = 0;
              v396 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v397 = 1;
              goto LABEL_30;
            }

            v299 = objc_msgSend_fileUTType(self, v120, v121);
            if (!v299)
            {
              v299 = 0;
              v353 = 0;
              v358 = 0;
              v384 = 0;
              v396 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v397 = 1;
              v355 = 1;
              goto LABEL_30;
            }

            isOriginal = objc_msgSend_fileUTType(self, v122, v123);
            v295 = objc_msgSend_fileUTType(v5, v124, v125);
            v296 = isOriginal;
            v398 = 1;
            if (!objc_msgSend_isEqual_(isOriginal, v126, v295))
            {
              v358 = 0;
              v384 = 0;
              v396 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v397 = 1;
              v355 = 1;
              v353 = 1;
              goto LABEL_30;
            }

            v397 = 1;
          }

          else
          {
            v298 = 0;
            v397 = 0;
          }

          v127 = objc_msgSend_title(self, v118, v119);
          v384 = v127 == 0;
          v294 = v127;
          if (v127 || (objc_msgSend_title(v5, v128, v129), (v292 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v297 = objc_msgSend_title(self, v128, v129);
            if (!v297)
            {
              v297 = 0;
              v338 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v355 = v397;
              v353 = v397;
              v358 = 1;
              v396 = 1;
              goto LABEL_30;
            }

            v293 = objc_msgSend_title(v5, v130, v131);
            if (!v293)
            {
              v293 = 0;
              v335 = 0;
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v355 = v397;
              v353 = v397;
              v358 = 1;
              v396 = 1;
              v338 = 1;
              goto LABEL_30;
            }

            isOriginal = objc_msgSend_title(self, v132, v133);
            v290 = objc_msgSend_title(v5, v134, v135);
            v291 = isOriginal;
            v398 = 1;
            if (!objc_msgSend_isEqualToString_(isOriginal, v136, v290))
            {
              v360 = 0;
              v383 = 0;
              v395 = 0;
              v346 = 0;
              v339 = 0;
              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v355 = v397;
              v353 = v397;
              v358 = 1;
              v396 = 1;
              v338 = 1;
              v137 = 1;
              goto LABEL_257;
            }

            v396 = 1;
          }

          else
          {
            v292 = 0;
            v396 = 0;
          }

          isOriginal = objc_msgSend_displayOrder(self, v128, v129);
          if (isOriginal == objc_msgSend_displayOrder(v5, v138, v139))
          {
            objc_msgSend_durationInSeconds(self, v140, v141);
            v143 = v142;
            objc_msgSend_durationInSeconds(v5, v144, v145);
            if (v143 == v148)
            {
              v149 = objc_msgSend_ownerPersonID(self, v146, v147);
              v383 = v149 == 0;
              v288 = v149;
              if (v149 || (objc_msgSend_ownerPersonID(v5, v150, v151), (v286 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v289 = objc_msgSend_ownerPersonID(self, v150, v151);
                if (!v289)
                {
                  v289 = 0;
                  v346 = 0;
                  v339 = 0;
                  v359 = 0;
                  v382 = 0;
                  v380 = 0;
                  v348 = 0;
                  v357 = 0;
                  v381 = 0;
                  v378 = 0;
                  v342 = 0;
                  v344 = 0;
                  v352 = 0;
                  v379 = 0;
                  v376 = 0;
                  v337 = 0;
                  v341 = 0;
                  v349 = 0;
                  v377 = 0;
                  v374 = 0;
                  v336 = 0;
                  v343 = 0;
                  v350 = 0;
                  v375 = 0;
                  v370 = 0;
                  v340 = 0;
                  v345 = 0;
                  v354 = 0;
                  v373 = 0;
                  v367 = 0;
                  v347 = 0;
                  v351 = 0;
                  v364 = 0;
                  v368 = 0;
                  v35 = 0;
                  v36 = 0;
                  v37 = 0;
                  isEqual = 0;
                  v398 = 1;
                  v372 = v403;
                  v371 = v403;
                  v369 = v402;
                  v366 = v402;
                  v34 = 1;
                  HIDWORD(v365) = DWORD2(v401);
                  HIDWORD(v363) = DWORD2(v401);
                  DWORD1(v401) = 1;
                  v362 = v400;
                  v356 = v400;
                  LODWORD(v365) = 1;
                  HIDWORD(v361) = v399;
                  LODWORD(v361) = v399;
                  LODWORD(v363) = 1;
                  v355 = v397;
                  v353 = v397;
                  v358 = 1;
                  v338 = v396;
                  v335 = v396;
                  v360 = 1;
                  v395 = 1;
                  goto LABEL_30;
                }

                v287 = objc_msgSend_ownerPersonID(v5, v152, v153);
                if (!v287)
                {
                  v287 = 0;
                  v339 = 0;
                  v359 = 0;
                  v382 = 0;
                  v380 = 0;
                  v348 = 0;
                  v357 = 0;
                  v381 = 0;
                  v378 = 0;
                  v342 = 0;
                  v344 = 0;
                  v352 = 0;
                  v379 = 0;
                  v376 = 0;
                  v337 = 0;
                  v341 = 0;
                  v349 = 0;
                  v377 = 0;
                  v374 = 0;
                  v336 = 0;
                  v343 = 0;
                  v350 = 0;
                  v375 = 0;
                  v370 = 0;
                  v340 = 0;
                  v345 = 0;
                  v354 = 0;
                  v373 = 0;
                  v367 = 0;
                  v347 = 0;
                  v351 = 0;
                  v364 = 0;
                  v368 = 0;
                  v35 = 0;
                  v36 = 0;
                  v37 = 0;
                  isEqual = 0;
                  v398 = 1;
                  v372 = v403;
                  v371 = v403;
                  v369 = v402;
                  v366 = v402;
                  v34 = 1;
                  HIDWORD(v365) = DWORD2(v401);
                  HIDWORD(v363) = DWORD2(v401);
                  DWORD1(v401) = 1;
                  v362 = v400;
                  v356 = v400;
                  LODWORD(v365) = 1;
                  HIDWORD(v361) = v399;
                  LODWORD(v361) = v399;
                  LODWORD(v363) = 1;
                  v355 = v397;
                  v353 = v397;
                  v358 = 1;
                  v338 = v396;
                  v335 = v396;
                  v360 = 1;
                  v395 = 1;
                  v346 = 1;
                  goto LABEL_30;
                }

                isOriginal = objc_msgSend_ownerPersonID(self, v154, v155);
                v284 = objc_msgSend_ownerPersonID(v5, v156, v157);
                v285 = isOriginal;
                v398 = 1;
                if (!objc_msgSend_isEqualToString_(isOriginal, v158, v284))
                {
                  v359 = 0;
                  v382 = 0;
                  v380 = 0;
                  v348 = 0;
                  v357 = 0;
                  v381 = 0;
                  v378 = 0;
                  v342 = 0;
                  v344 = 0;
                  v352 = 0;
                  v379 = 0;
                  v376 = 0;
                  v337 = 0;
                  v341 = 0;
                  v349 = 0;
                  v377 = 0;
                  v374 = 0;
                  v336 = 0;
                  v343 = 0;
                  v350 = 0;
                  v375 = 0;
                  v370 = 0;
                  v340 = 0;
                  v345 = 0;
                  v354 = 0;
                  v373 = 0;
                  v367 = 0;
                  v347 = 0;
                  v351 = 0;
                  v364 = 0;
                  v368 = 0;
                  v35 = 0;
                  v36 = 0;
                  v37 = 0;
                  isEqual = 0;
                  v372 = v403;
                  v371 = v403;
                  v369 = v402;
                  v366 = v402;
                  v34 = 1;
                  HIDWORD(v365) = DWORD2(v401);
                  HIDWORD(v363) = DWORD2(v401);
                  DWORD1(v401) = 1;
                  v362 = v400;
                  v356 = v400;
                  LODWORD(v365) = 1;
                  HIDWORD(v361) = v399;
                  LODWORD(v361) = v399;
                  LODWORD(v363) = 1;
                  v355 = v397;
                  v353 = v397;
                  v358 = 1;
                  v338 = v396;
                  v335 = v396;
                  v360 = 1;
                  v395 = 1;
                  v346 = 1;
                  v159 = 1;
                  goto LABEL_270;
                }

                v395 = 1;
              }

              else
              {
                v286 = 0;
                v395 = 0;
              }

              isOriginal = objc_msgSend_parentEntityType(self, v150, v151);
              if (isOriginal == objc_msgSend_parentEntityType(v5, v160, v161))
              {
                v164 = objc_msgSend_brItemID(self, v162, v163);
                v382 = v164 == 0;
                v282 = v164;
                if (v164 || (objc_msgSend_brItemID(v5, v165, v166), (v280 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v283 = objc_msgSend_brItemID(self, v165, v166);
                  if (!v283)
                  {
                    v283 = 0;
                    v348 = 0;
                    v357 = 0;
                    v381 = 0;
                    v378 = 0;
                    v342 = 0;
                    v344 = 0;
                    v352 = 0;
                    v379 = 0;
                    v376 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    v380 = 1;
                    goto LABEL_30;
                  }

                  v281 = objc_msgSend_brItemID(v5, v167, v168);
                  if (!v281)
                  {
                    v281 = 0;
                    v357 = 0;
                    v381 = 0;
                    v378 = 0;
                    v342 = 0;
                    v344 = 0;
                    v352 = 0;
                    v379 = 0;
                    v376 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    v380 = 1;
                    v348 = 1;
                    goto LABEL_30;
                  }

                  isOriginal = objc_msgSend_brItemID(self, v169, v170);
                  v278 = objc_msgSend_brItemID(v5, v171, v172);
                  v279 = isOriginal;
                  v398 = 1;
                  if (!objc_msgSend_isEqualToString_(isOriginal, v173, v278))
                  {
                    v357 = 0;
                    v381 = 0;
                    v378 = 0;
                    v342 = 0;
                    v344 = 0;
                    v352 = 0;
                    v379 = 0;
                    v376 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    v380 = 1;
                    v348 = 0x100000001;
                    goto LABEL_30;
                  }

                  v380 = 1;
                }

                else
                {
                  v280 = 0;
                  v380 = 0;
                }

                v174 = objc_msgSend_brOwnerName(self, v165, v166);
                v381 = v174 == 0;
                v276 = v174;
                if (v174 || (objc_msgSend_brOwnerName(v5, v175, v176), (v275 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v277 = objc_msgSend_brOwnerName(self, v175, v176);
                  if (!v277)
                  {
                    v277 = 0;
                    v342 = 0;
                    v344 = 0;
                    v352 = 0;
                    v379 = 0;
                    v376 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v378 = 1;
                    goto LABEL_30;
                  }

                  v274 = objc_msgSend_brOwnerName(v5, v177, v178);
                  if (!v274)
                  {
                    v274 = 0;
                    v344 = 0;
                    v352 = 0;
                    v379 = 0;
                    v376 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v378 = 1;
                    v342 = 1;
                    goto LABEL_30;
                  }

                  isOriginal = objc_msgSend_brOwnerName(self, v179, v180);
                  v271 = objc_msgSend_brOwnerName(v5, v181, v182);
                  v272 = isOriginal;
                  v398 = 1;
                  if (!objc_msgSend_isEqualToString_(isOriginal, v183, v271))
                  {
                    v352 = 0;
                    v379 = 0;
                    v376 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v378 = 1;
                    v342 = 1;
                    v344 = 1;
                    goto LABEL_30;
                  }

                  v378 = 1;
                }

                else
                {
                  v275 = 0;
                  v378 = 0;
                }

                v184 = objc_msgSend_brZoneName(self, v175, v176);
                v379 = v184 == 0;
                v270 = v184;
                if (v184 || (objc_msgSend_brZoneName(v5, v185, v186), (v269 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v273 = objc_msgSend_brZoneName(self, v185, v186);
                  if (!v273)
                  {
                    v273 = 0;
                    v337 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v376 = 1;
                    goto LABEL_30;
                  }

                  v268 = objc_msgSend_brZoneName(v5, v187, v188);
                  if (!v268)
                  {
                    v268 = 0;
                    v341 = 0;
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v376 = 1;
                    v337 = 1;
                    goto LABEL_30;
                  }

                  isOriginal = objc_msgSend_brZoneName(self, v189, v190);
                  v266 = objc_msgSend_brZoneName(v5, v191, v192);
                  v267 = isOriginal;
                  v398 = 1;
                  if (!objc_msgSend_isEqualToString_(isOriginal, v193, v266))
                  {
                    v349 = 0;
                    v377 = 0;
                    v374 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v376 = 1;
                    v337 = 1;
                    v341 = 1;
                    goto LABEL_30;
                  }

                  v376 = 1;
                }

                else
                {
                  v269 = 0;
                  v376 = 0;
                }

                v194 = objc_msgSend_brShareName(self, v185, v186);
                v377 = v194 == 0;
                v265 = v194;
                if (v194 || (objc_msgSend_brShareName(v5, v195, v196), (v264 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v263 = objc_msgSend_brShareName(self, v195, v196);
                  if (!v263)
                  {
                    v263 = 0;
                    v336 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v374 = 1;
                    goto LABEL_30;
                  }

                  v262 = objc_msgSend_brShareName(v5, v197, v198);
                  if (!v262)
                  {
                    v262 = 0;
                    v343 = 0;
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v374 = 1;
                    v336 = 1;
                    goto LABEL_30;
                  }

                  isOriginal = objc_msgSend_brShareName(self, v199, v200);
                  v260 = objc_msgSend_brShareName(v5, v201, v202);
                  v261 = isOriginal;
                  v398 = 1;
                  if (!objc_msgSend_isEqualToString_(isOriginal, v203, v260))
                  {
                    v350 = 0;
                    v375 = 0;
                    v370 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v374 = 1;
                    v336 = 1;
                    v343 = 1;
                    goto LABEL_30;
                  }

                  v374 = 1;
                }

                else
                {
                  v264 = 0;
                  v374 = 0;
                }

                v204 = objc_msgSend_ubiquitousContainerName(self, v195, v196);
                v375 = v204 == 0;
                v259 = v204;
                if (v204 || (objc_msgSend_ubiquitousContainerName(v5, v205, v206), (v258 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v257 = objc_msgSend_ubiquitousContainerName(self, v205, v206);
                  if (!v257)
                  {
                    v257 = 0;
                    v340 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v336 = v374;
                    v343 = v374;
                    v350 = 1;
                    v370 = 1;
                    goto LABEL_30;
                  }

                  v256 = objc_msgSend_ubiquitousContainerName(v5, v207, v208);
                  if (!v256)
                  {
                    v256 = 0;
                    v345 = 0;
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v336 = v374;
                    v343 = v374;
                    v350 = 1;
                    v370 = 1;
                    v340 = 1;
                    goto LABEL_30;
                  }

                  isOriginal = objc_msgSend_ubiquitousContainerName(self, v209, v210);
                  v254 = objc_msgSend_ubiquitousContainerName(v5, v211, v212);
                  v255 = isOriginal;
                  v398 = 1;
                  if (!objc_msgSend_isEqualToString_(isOriginal, v213, v254))
                  {
                    v354 = 0;
                    v373 = 0;
                    v367 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v336 = v374;
                    v343 = v374;
                    v350 = 1;
                    v370 = 1;
                    v340 = 1;
                    v345 = 1;
                    goto LABEL_30;
                  }

                  v370 = 1;
                }

                else
                {
                  v258 = 0;
                  v370 = 0;
                }

                v214 = objc_msgSend_relativePathWithinContainer(self, v205, v206);
                v373 = v214 == 0;
                v253 = v214;
                if (v214 || (objc_msgSend_relativePathWithinContainer(v5, v215, v216), (v252 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v251 = objc_msgSend_relativePathWithinContainer(self, v215, v216);
                  if (!v251)
                  {
                    v251 = 0;
                    v347 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v336 = v374;
                    v343 = v374;
                    v350 = 1;
                    v340 = v370;
                    v345 = v370;
                    v354 = 1;
                    v367 = 1;
                    goto LABEL_30;
                  }

                  v250 = objc_msgSend_relativePathWithinContainer(v5, v217, v218);
                  if (!v250)
                  {
                    v250 = 0;
                    v351 = 0;
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v398 = 1;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v336 = v374;
                    v343 = v374;
                    v350 = 1;
                    v340 = v370;
                    v345 = v370;
                    v354 = 1;
                    v367 = 1;
                    v347 = 1;
                    goto LABEL_30;
                  }

                  isOriginal = objc_msgSend_relativePathWithinContainer(self, v219, v220);
                  v248 = objc_msgSend_relativePathWithinContainer(v5, v221, v222);
                  v249 = isOriginal;
                  v398 = 1;
                  if (!objc_msgSend_isEqualToString_(isOriginal, v223, v248))
                  {
                    v364 = 0;
                    v368 = 0;
                    v35 = 0;
                    v36 = 0;
                    v37 = 0;
                    isEqual = 0;
                    v372 = v403;
                    v371 = v403;
                    v369 = v402;
                    v366 = v402;
                    v34 = 1;
                    HIDWORD(v365) = DWORD2(v401);
                    HIDWORD(v363) = DWORD2(v401);
                    DWORD1(v401) = 1;
                    v362 = v400;
                    v356 = v400;
                    LODWORD(v365) = 1;
                    HIDWORD(v361) = v399;
                    LODWORD(v361) = v399;
                    LODWORD(v363) = 1;
                    v355 = v397;
                    v353 = v397;
                    v358 = 1;
                    v338 = v396;
                    v335 = v396;
                    v360 = 1;
                    v346 = v395;
                    v339 = v395;
                    v359 = 1;
                    LODWORD(v348) = v380;
                    HIDWORD(v348) = v380;
                    v357 = 1;
                    v342 = v378;
                    v344 = v378;
                    v352 = 1;
                    v337 = v376;
                    v341 = v376;
                    v349 = 1;
                    v336 = v374;
                    v343 = v374;
                    v350 = 1;
                    v340 = v370;
                    v345 = v370;
                    v354 = 1;
                    v367 = 1;
                    v347 = 1;
                    v224 = 1;
LABEL_333:
                    v351 = v224;
                    goto LABEL_30;
                  }

                  v367 = 1;
                }

                else
                {
                  v252 = 0;
                  v367 = 0;
                }

                isOriginal = objc_msgSend_isDownloaded(self, v215, v216);
                if (isOriginal == objc_msgSend_isDownloaded(v5, v225, v226))
                {
                  objc_msgSend_fractionDownloaded(self, v227, v228);
                  v230 = v229;
                  objc_msgSend_fractionDownloaded(v5, v231, v232);
                  if (v230 == v235)
                  {
                    v236 = objc_msgSend_downloadError(self, v233, v234);
                    v368 = v236 == 0;
                    v247 = v236;
                    if (v236 || (objc_msgSend_downloadError(v5, v237, v238), (v246 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v16 = objc_msgSend_downloadError(self, v237, v238);
                      if (v16)
                      {
                        isOriginal = objc_msgSend_downloadError(self, v239, v240);
                        if (isOriginal)
                        {
                          v15 = objc_msgSend_downloadError(self, v241, v242);
                          v10 = objc_msgSend_downloadError(v5, v243, v244);
                          isEqual = objc_msgSend_isEqual_(v15, v245, v10);
                          v398 = 1;
                          v372 = v403;
                          v371 = v403;
                          v369 = v402;
                          v366 = v402;
                          v34 = 1;
                          HIDWORD(v365) = DWORD2(v401);
                          HIDWORD(v363) = DWORD2(v401);
                          DWORD1(v401) = 1;
                          v362 = v400;
                          v356 = v400;
                          LODWORD(v365) = 1;
                          HIDWORD(v361) = v399;
                          LODWORD(v361) = v399;
                          LODWORD(v363) = 1;
                          v355 = v397;
                          v353 = v397;
                          v358 = 1;
                          v338 = v396;
                          v335 = v396;
                          v360 = 1;
                          v346 = v395;
                          v339 = v395;
                          v359 = 1;
                          LODWORD(v348) = v380;
                          HIDWORD(v348) = v380;
                          v357 = 1;
                          v342 = v378;
                          v344 = v378;
                          v352 = 1;
                          v337 = v376;
                          v341 = v376;
                          v349 = 1;
                          v336 = v374;
                          v343 = v374;
                          v350 = 1;
                          v340 = v370;
                          v345 = v370;
                          v354 = 1;
                          v347 = v367;
                          v351 = v367;
                          v37 = 1;
                        }

                        else
                        {
                          v37 = 0;
                          isEqual = 0;
                          v398 = 1;
                          v372 = v403;
                          v371 = v403;
                          v369 = v402;
                          v366 = v402;
                          v34 = 1;
                          HIDWORD(v365) = DWORD2(v401);
                          HIDWORD(v363) = DWORD2(v401);
                          DWORD1(v401) = 1;
                          v362 = v400;
                          v356 = v400;
                          LODWORD(v365) = 1;
                          HIDWORD(v361) = v399;
                          LODWORD(v361) = v399;
                          LODWORD(v363) = 1;
                          v355 = v397;
                          v353 = v397;
                          v358 = 1;
                          v338 = v396;
                          v335 = v396;
                          v360 = 1;
                          v346 = v395;
                          v339 = v395;
                          v359 = 1;
                          LODWORD(v348) = v380;
                          HIDWORD(v348) = v380;
                          v357 = 1;
                          v342 = v378;
                          v344 = v378;
                          v352 = 1;
                          v337 = v376;
                          v341 = v376;
                          v349 = 1;
                          v336 = v374;
                          v343 = v374;
                          v350 = 1;
                          v340 = v370;
                          v345 = v370;
                          v354 = 1;
                          v347 = v367;
                          v351 = v367;
                        }

                        v364 = 1;
                        v35 = 1;
                        v36 = 1;
                      }

                      else
                      {
                        v36 = 0;
                        v37 = 0;
                        isEqual = 0;
                        v398 = 1;
                        v372 = v403;
                        v371 = v403;
                        v369 = v402;
                        v366 = v402;
                        v34 = 1;
                        HIDWORD(v365) = DWORD2(v401);
                        HIDWORD(v363) = DWORD2(v401);
                        DWORD1(v401) = 1;
                        v362 = v400;
                        v356 = v400;
                        LODWORD(v365) = 1;
                        HIDWORD(v361) = v399;
                        LODWORD(v361) = v399;
                        LODWORD(v363) = 1;
                        v355 = v397;
                        v353 = v397;
                        v358 = 1;
                        v338 = v396;
                        v335 = v396;
                        v360 = 1;
                        v346 = v395;
                        v339 = v395;
                        v359 = 1;
                        LODWORD(v348) = v380;
                        HIDWORD(v348) = v380;
                        v357 = 1;
                        v342 = v378;
                        v344 = v378;
                        v352 = 1;
                        v337 = v376;
                        v341 = v376;
                        v349 = 1;
                        v336 = v374;
                        v343 = v374;
                        v350 = 1;
                        v340 = v370;
                        v345 = v370;
                        v354 = 1;
                        v347 = v367;
                        v351 = v367;
                        v364 = 1;
                        v35 = 1;
                      }
                    }

                    else
                    {
                      v246 = 0;
                      v247 = 0;
                      v35 = 0;
                      v36 = 0;
                      v37 = 0;
                      v398 = 1;
                      v372 = v403;
                      v371 = v403;
                      v369 = v402;
                      v366 = v402;
                      v34 = 1;
                      HIDWORD(v365) = DWORD2(v401);
                      HIDWORD(v363) = DWORD2(v401);
                      DWORD1(v401) = 1;
                      v362 = v400;
                      v356 = v400;
                      LODWORD(v365) = 1;
                      HIDWORD(v361) = v399;
                      LODWORD(v361) = v399;
                      LODWORD(v363) = 1;
                      v355 = v397;
                      v353 = v397;
                      v358 = 1;
                      v338 = v396;
                      v335 = v396;
                      v360 = 1;
                      v346 = v395;
                      v339 = v395;
                      v359 = 1;
                      LODWORD(v348) = v380;
                      HIDWORD(v348) = v380;
                      v357 = 1;
                      v342 = v378;
                      v344 = v378;
                      v352 = 1;
                      v337 = v376;
                      v341 = v376;
                      v349 = 1;
                      v336 = v374;
                      v343 = v374;
                      v350 = 1;
                      v340 = v370;
                      v345 = v370;
                      v354 = 1;
                      v347 = v367;
                      v351 = v367;
                      v364 = 1;
                      v368 = 1;
                      isEqual = 1;
                    }

                    goto LABEL_30;
                  }
                }

                v364 = 0;
                v368 = 0;
                v35 = 0;
                v36 = 0;
                v37 = 0;
                isEqual = 0;
                v398 = 1;
                v372 = v403;
                v371 = v403;
                v369 = v402;
                v366 = v402;
                v34 = 1;
                HIDWORD(v365) = DWORD2(v401);
                HIDWORD(v363) = DWORD2(v401);
                DWORD1(v401) = 1;
                v362 = v400;
                v356 = v400;
                LODWORD(v365) = 1;
                HIDWORD(v361) = v399;
                LODWORD(v361) = v399;
                LODWORD(v363) = 1;
                v355 = v397;
                v353 = v397;
                v358 = 1;
                v338 = v396;
                v335 = v396;
                v360 = 1;
                v346 = v395;
                v339 = v395;
                v359 = 1;
                LODWORD(v348) = v380;
                HIDWORD(v348) = v380;
                v357 = 1;
                v342 = v378;
                v344 = v378;
                v352 = 1;
                v337 = v376;
                v341 = v376;
                v349 = 1;
                v336 = v374;
                v343 = v374;
                v350 = 1;
                v340 = v370;
                v345 = v370;
                v354 = 1;
                v224 = v367;
                v347 = v367;
                goto LABEL_333;
              }

              v359 = 0;
              v382 = 0;
              v380 = 0;
              v348 = 0;
              v357 = 0;
              v381 = 0;
              v378 = 0;
              v342 = 0;
              v344 = 0;
              v352 = 0;
              v379 = 0;
              v376 = 0;
              v337 = 0;
              v341 = 0;
              v349 = 0;
              v377 = 0;
              v374 = 0;
              v336 = 0;
              v343 = 0;
              v350 = 0;
              v375 = 0;
              v370 = 0;
              v340 = 0;
              v345 = 0;
              v354 = 0;
              v373 = 0;
              v367 = 0;
              v347 = 0;
              v351 = 0;
              v364 = 0;
              v368 = 0;
              v35 = 0;
              v36 = 0;
              v37 = 0;
              isEqual = 0;
              v398 = 1;
              v372 = v403;
              v371 = v403;
              v369 = v402;
              v366 = v402;
              v34 = 1;
              HIDWORD(v365) = DWORD2(v401);
              HIDWORD(v363) = DWORD2(v401);
              DWORD1(v401) = 1;
              v362 = v400;
              v356 = v400;
              LODWORD(v365) = 1;
              HIDWORD(v361) = v399;
              LODWORD(v361) = v399;
              LODWORD(v363) = 1;
              v355 = v397;
              v353 = v397;
              v358 = 1;
              v338 = v396;
              v335 = v396;
              v360 = 1;
              v159 = v395;
              v346 = v395;
LABEL_270:
              v339 = v159;
              goto LABEL_30;
            }
          }

          v360 = 0;
          v383 = 0;
          v395 = 0;
          v346 = 0;
          v339 = 0;
          v359 = 0;
          v382 = 0;
          v380 = 0;
          v348 = 0;
          v357 = 0;
          v381 = 0;
          v378 = 0;
          v342 = 0;
          v344 = 0;
          v352 = 0;
          v379 = 0;
          v376 = 0;
          v337 = 0;
          v341 = 0;
          v349 = 0;
          v377 = 0;
          v374 = 0;
          v336 = 0;
          v343 = 0;
          v350 = 0;
          v375 = 0;
          v370 = 0;
          v340 = 0;
          v345 = 0;
          v354 = 0;
          v373 = 0;
          v367 = 0;
          v347 = 0;
          v351 = 0;
          v364 = 0;
          v368 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          isEqual = 0;
          v398 = 1;
          v372 = v403;
          v371 = v403;
          v369 = v402;
          v366 = v402;
          v34 = 1;
          HIDWORD(v365) = DWORD2(v401);
          HIDWORD(v363) = DWORD2(v401);
          DWORD1(v401) = 1;
          v362 = v400;
          v356 = v400;
          LODWORD(v365) = 1;
          HIDWORD(v361) = v399;
          LODWORD(v361) = v399;
          LODWORD(v363) = 1;
          v355 = v397;
          v353 = v397;
          v358 = 1;
          v137 = v396;
          v338 = v396;
LABEL_257:
          v335 = v137;
          goto LABEL_30;
        }
      }

      LODWORD(v365) = 0;
      v386 = 0;
      v399 = 0;
      v361 = 0;
      LODWORD(v363) = 0;
      v385 = 0;
      v397 = 0;
      v355 = 0;
      v353 = 0;
      v358 = 0;
      v384 = 0;
      v396 = 0;
      v338 = 0;
      v335 = 0;
      v360 = 0;
      v383 = 0;
      v395 = 0;
      v346 = 0;
      v339 = 0;
      v359 = 0;
      v382 = 0;
      v380 = 0;
      v348 = 0;
      v357 = 0;
      v381 = 0;
      v378 = 0;
      v342 = 0;
      v344 = 0;
      v352 = 0;
      v379 = 0;
      v376 = 0;
      v337 = 0;
      v341 = 0;
      v349 = 0;
      v377 = 0;
      v374 = 0;
      v336 = 0;
      v343 = 0;
      v350 = 0;
      v375 = 0;
      v370 = 0;
      v340 = 0;
      v345 = 0;
      v354 = 0;
      v373 = 0;
      v367 = 0;
      v347 = 0;
      v351 = 0;
      v364 = 0;
      v368 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      isEqual = 0;
      v398 = 1;
      v372 = v403;
      v371 = v403;
      v369 = v402;
      v366 = v402;
      v34 = 1;
      HIDWORD(v365) = DWORD2(v401);
      HIDWORD(v363) = DWORD2(v401);
      DWORD1(v401) = 1;
      v98 = v400;
      v362 = v400;
LABEL_223:
      v356 = v98;
      goto LABEL_30;
    }

    v34 = 0;
    v388 = 0;
    v401 = 0uLL;
    v387 = 0;
    v400 = 0;
    v362 = 0;
    v356 = 0;
    v365 = 0;
    v386 = 0;
    v399 = 0;
    v361 = 0;
    v363 = 0;
    v385 = 0;
    v397 = 0;
    v355 = 0;
    v353 = 0;
    v358 = 0;
    v384 = 0;
    v396 = 0;
    v338 = 0;
    v335 = 0;
    v360 = 0;
    v383 = 0;
    v395 = 0;
    v346 = 0;
    v339 = 0;
    v359 = 0;
    v382 = 0;
    v380 = 0;
    v348 = 0;
    v357 = 0;
    v381 = 0;
    v378 = 0;
    v342 = 0;
    v344 = 0;
    v352 = 0;
    v379 = 0;
    v376 = 0;
    v337 = 0;
    v341 = 0;
    v349 = 0;
    v377 = 0;
    v374 = 0;
    v336 = 0;
    v343 = 0;
    v350 = 0;
    v375 = 0;
    v370 = 0;
    v340 = 0;
    v345 = 0;
    v354 = 0;
    v373 = 0;
    v367 = 0;
    v347 = 0;
    v351 = 0;
    v364 = 0;
    v368 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    isEqual = 0;
    v398 = 1;
    v372 = v403;
    v371 = v403;
    v52 = v402;
    v369 = v402;
LABEL_29:
    v366 = v52;
    goto LABEL_30;
  }

  v402 = 0;
  v403 = 1;
  v398 = 0;
  v389 = 0;
  v369 = 0;
  v366 = 0;
  v34 = 0;
  v388 = 0;
  v401 = 0uLL;
  v387 = 0;
  v400 = 0;
  v362 = 0;
  v356 = 0;
  v365 = 0;
  v386 = 0;
  v399 = 0;
  v361 = 0;
  v363 = 0;
  v385 = 0;
  v397 = 0;
  v355 = 0;
  v353 = 0;
  v358 = 0;
  v384 = 0;
  v396 = 0;
  v338 = 0;
  v335 = 0;
  v360 = 0;
  v383 = 0;
  v395 = 0;
  v346 = 0;
  v339 = 0;
  v359 = 0;
  v382 = 0;
  v380 = 0;
  v348 = 0;
  v357 = 0;
  v381 = 0;
  v378 = 0;
  v342 = 0;
  v344 = 0;
  v352 = 0;
  v379 = 0;
  v376 = 0;
  v337 = 0;
  v341 = 0;
  v349 = 0;
  v377 = 0;
  v374 = 0;
  v336 = 0;
  v343 = 0;
  v350 = 0;
  v375 = 0;
  v370 = 0;
  v340 = 0;
  v345 = 0;
  v354 = 0;
  v373 = 0;
  v367 = 0;
  v347 = 0;
  v351 = 0;
  v364 = 0;
  v368 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  isEqual = 0;
  v372 = 1;
  v371 = 1;
LABEL_30:
  if (v37)
  {
    v61 = v34;
    v62 = v36;

    v36 = v62;
    v34 = v61;
  }

  if (v36)
  {
  }

  if (v35)
  {
  }

  if (v368)
  {
  }

  if (v364)
  {
  }

  if (v351)
  {
  }

  if (v347)
  {
  }

  if (v367)
  {
  }

  if (v373)
  {
  }

  if (v354)
  {
  }

  if (v345)
  {
  }

  if (v340)
  {
  }

  if (v370)
  {
  }

  if (v375)
  {
  }

  if (v350)
  {
  }

  if (v343)
  {
  }

  if (v336)
  {
  }

  if (v374)
  {
  }

  if (v377)
  {
  }

  if (v349)
  {
  }

  if (v341)
  {
  }

  if (v337)
  {
  }

  if (v376)
  {
  }

  if (v379)
  {
  }

  if (v352)
  {
  }

  if (v344)
  {
  }

  if (v342)
  {
  }

  if (v378)
  {
  }

  if (v381)
  {
  }

  if (v357)
  {
  }

  if (HIDWORD(v348))
  {
  }

  if (v348)
  {
  }

  if (v380)
  {
  }

  if (v382)
  {
  }

  if (v359)
  {
  }

  if (v339)
  {
  }

  if (v346)
  {
  }

  if (v395)
  {
  }

  if (v383)
  {
  }

  if (v360)
  {
  }

  if (v335)
  {
  }

  if (v338)
  {
  }

  if (v396)
  {
  }

  if (v384)
  {
  }

  if (v358)
  {
  }

  if (v353)
  {
  }

  if (v355)
  {
  }

  if (v397)
  {
  }

  if (v385)
  {
  }

  if (v363)
  {
  }

  if (v361)
  {
  }

  if (HIDWORD(v361))
  {
  }

  if (v399)
  {
  }

  if (v386)
  {
  }

  if (v365)
  {
  }

  if (v356)
  {
  }

  if (v362)
  {
  }

  if (v400)
  {
  }

  if (v387)
  {
  }

  if (DWORD1(v401))
  {
  }

  if (v401)
  {
  }

  if (HIDWORD(v363))
  {
  }

  if (HIDWORD(v365))
  {
  }

  if (DWORD2(v401))
  {
  }

  if (v388)
  {
  }

  if (v34)
  {
  }

  if (HIDWORD(v401))
  {
  }

  if (v366)
  {
  }

  if (v369)
  {
  }

  if (v402)
  {
  }

  if (v389)
  {
  }

  if (v398)
  {
  }

  if (v371)
  {
  }

  if (v372)
  {
  }

  if (v403)
  {
  }

  if (!v390)
  {
  }

LABEL_183:
  return isEqual;
}

- (BOOL)devModeOn
{
  v3 = objc_msgSend_currentUser(CLSDataStore, a2, v2);
  v6 = objc_msgSend_devMode(v3, v4, v5) != 0;

  return v6;
}

- (void)setFileSizeInBytesFromURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = lCopy;
  if (lCopy && objc_msgSend_isFileURL(lCopy, v5, v6) && (objc_msgSend_type(self, v8, v9) & 0xFFFFFFFFFFFFFFFDLL) == 1 && objc_msgSend_cls_fileExists(v7, v10, v11))
  {
    v26 = 0;
    v13 = *MEMORY[0x277CBE838];
    v25 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v7, v12, &v26, v13, &v25);
    v15 = v26;
    v18 = v25;
    if (ResourceValue_forKey_error)
    {
      objc_msgSend_lock(self, v16, v17);
      self->_fileSizeInBytes = objc_msgSend_integerValue(v15, v19, v20);
      objc_msgSend_unlock(self, v21, v22);
    }

    else
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v23 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v28 = v7;
        v29 = 2114;
        v30 = v18;
        _os_log_error_impl(&dword_236F71000, v23, OS_LOG_TYPE_ERROR, "Failed to get fileSize resource from URL: '%{public}@', error:  '%{public}@'.", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setFileUTTypeFromURL:(id)l
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy && (objc_msgSend_type(self, v4, v5) & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (objc_msgSend_cls_fileExists(lCopy, v7, v8))
    {
      v27 = 0;
      v11 = *MEMORY[0x277CBE7B8];
      v26 = 0;
      ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(lCopy, v9, &v27, v11, &v26);
      v13 = v27;
      v16 = v26;
      if (ResourceValue_forKey_error)
      {
LABEL_16:
        objc_msgSend_lock(self, v14, v15);
        fileUTType = self->_fileUTType;
        self->_fileUTType = v13;

        objc_msgSend_unlock(self, v23, v24);
        goto LABEL_17;
      }

      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v17 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v29 = lCopy;
        v30 = 2114;
        v31 = v16;
        _os_log_error_impl(&dword_236F71000, v17, OS_LOG_TYPE_ERROR, "Failed to get UTTYpe resource from URL: '%{public}@', error:  '%{public}@'. Trying to use the file extension to get UTType.", buf, 0x16u);
      }
    }

    else
    {
      v13 = 0;
      v16 = 0;
    }

    v18 = objc_msgSend_pathExtension(lCopy, v9, v10);
    v20 = objc_msgSend_typeWithFilenameExtension_(MEMORY[0x277CE1CB8], v19, v18);

    if (!v20)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v21 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v18;
        _os_log_error_impl(&dword_236F71000, v21, OS_LOG_TYPE_ERROR, "Failed to get UTTYpe from file extension: '%@'.", buf, 0xCu);
      }
    }

    v13 = v20;
    goto LABEL_16;
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

- (NSURL)URL
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_URL;
  objc_msgSend_unlock(self, v5, v6);
  if (CurrentProcessBundleIdentiferMatches(@"com.apple.schoolwork.ClassKitApp"))
  {
    type = self->_type;
    if ((type | 2) == 3 && self->_schoolworkSyncStatus == 2)
    {
      if (type != 3)
      {
        if (type != 1)
        {
          goto LABEL_12;
        }

LABEL_10:
        if (objc_msgSend_isValidFileURL_isThumbnail_(self, v7, v4, 0))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v10 = objc_msgSend_fileUTType(self, v7, v8);
      v12 = objc_msgSend_conformsToType_(v10, v11, *MEMORY[0x277CE1D08]);

      if (!v12)
      {
        goto LABEL_10;
      }

      if ((objc_msgSend_isValidStreamingURL_(self, v7, v4) & 1) == 0)
      {
LABEL_11:

        v4 = 0;
      }
    }
  }

LABEL_12:

  return v4;
}

- (void)setURL:(id)l
{
  lCopy = l;
  objc_msgSend_lock(self, v6, v7);
  v12 = objc_msgSend_path(self->_URL, v8, v9);
  if (!v12)
  {
    v3 = objc_msgSend_path(lCopy, v10, v11);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v13 = objc_msgSend_path(self->_URL, v10, v11);
  if (!v13)
  {
LABEL_9:
    if (!v12)
    {
    }

    goto LABEL_12;
  }

  v16 = v13;
  v17 = objc_msgSend_path(lCopy, v14, v15);
  if (!v17)
  {

    goto LABEL_9;
  }

  v20 = v17;
  v21 = objc_msgSend_path(self->_URL, v18, v19);
  v24 = objc_msgSend_path(lCopy, v22, v23);
  isEqualToString = objc_msgSend_isEqualToString_(v21, v25, v24);

  if (v12)
  {

    if (isEqualToString)
    {
      goto LABEL_22;
    }

LABEL_12:
    if (self->_URL && self->_URLIsSecurityScoped && (CLSExecutableLinkedOnOrAfter_iOS15_1_macOS_12_0() & 1) == 0)
    {
      objc_msgSend_stopAccessingSecurityScopedResource(self->_URL, v27, v28);
      self->_URLIsSecurityScoped = 0;
    }

    objc_storeStrong(&self->_URL, l);
    if (self->_URL)
    {
      v30 = CLSExecutableLinkedOnOrAfter_iOS15_1_macOS_12_0();
      URL = self->_URL;
      if ((v30 & 1) == 0)
      {
        self->_URLIsSecurityScoped = objc_msgSend_startAccessingSecurityScopedResource(self->_URL, v29, URL);
        objc_msgSend_setFileSizeInBytesFromURL_(self, v32, self->_URL);
LABEL_21:
        objc_msgSend_setFileUTTypeFromURL_(self, v33, self->_URL);
        goto LABEL_22;
      }
    }

    else
    {
      URL = 0;
    }

    objc_msgSend_setFileSizeInBytesFromURL_(self, v29, URL);
    goto LABEL_21;
  }

  if ((isEqualToString & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  objc_msgSend_unlock(self, v10, v11);
}

- (NSURL)thumbnailURL
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_thumbnailURL;
  objc_msgSend_unlock(self, v5, v6);
  if (CurrentProcessBundleIdentiferMatches(@"com.apple.schoolwork.ClassKitApp") && (objc_msgSend_isValidFileURL_isThumbnail_(self, v7, v4, 1) & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (void)setThumbnailURL:(id)l
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = lCopy;
  if (!lCopy)
  {
    goto LABEL_11;
  }

  if (objc_msgSend_isFileURL(lCopy, v7, v8))
  {
    v13 = objc_msgSend_pathExtension(v9, v10, v11);
    if (v13)
    {
      v14 = objc_msgSend_typeWithFilenameExtension_(MEMORY[0x277CE1CB8], v12, v13);
      v16 = objc_msgSend_conformsToType_(v14, v15, *MEMORY[0x277CE1DC0]);
    }

    else
    {
      v16 = 0;
    }

    objc_msgSend_sizeOfImageAtURL_(CLSImageUtils, v12, v9);
    v18 = v17;
    v20 = v19;

    if (v16)
    {
      if (v18 <= 1024.0 && v20 <= 1024.0)
      {
LABEL_11:
        objc_msgSend_lock(self, v7, v8);
        v26 = objc_msgSend_path(self->_thumbnailURL, v22, v23);
        if (!v26)
        {
          v3 = objc_msgSend_path(v9, v24, v25);
          if (!v3)
          {
            goto LABEL_27;
          }
        }

        v27 = objc_msgSend_path(self->_thumbnailURL, v24, v25);
        if (v27)
        {
          v30 = v27;
          v31 = objc_msgSend_path(v9, v28, v29);
          if (v31)
          {
            v34 = v31;
            v43 = v3;
            v35 = objc_msgSend_path(self->_thumbnailURL, v32, v33);
            v38 = objc_msgSend_path(v9, v36, v37);
            isEqualToString = objc_msgSend_isEqualToString_(v35, v39, v38);

            if (v26)
            {

              if (isEqualToString)
              {
                goto LABEL_27;
              }
            }

            else
            {

              if (isEqualToString)
              {
                goto LABEL_27;
              }
            }

LABEL_26:
            objc_storeStrong(&self->_thumbnailURL, l);
LABEL_27:
            objc_msgSend_unlock(self, v24, v25);
            goto LABEL_28;
          }
        }

        if (!v26)
        {
        }

        goto LABEL_26;
      }
    }
  }

  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v41 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v45 = v9;
    _os_log_error_impl(&dword_236F71000, v41, OS_LOG_TYPE_ERROR, "Failed to set thumbnailURL since the supplied thumbnail is either not a JPEG or at least one of its dimensions is > 1024. thumbnailURL: %@", buf, 0xCu);
  }

LABEL_28:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithObject:(id)object
{
  v52[13] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v44.receiver = self;
  v44.super_class = CLSAbstractAsset;
  [(CLSObject *)&v44 mergeWithObject:objectCopy];
  v52[0] = @"ownerPersonID";
  v52[1] = @"brItemID";
  v52[2] = @"brZoneName";
  v52[3] = @"brOwnerName";
  v52[4] = @"brShareName";
  v52[5] = @"ubiquitousContainerName";
  v52[6] = @"relativePathWithinContainer";
  v52[7] = @"parentObjectID";
  v52[8] = @"schoolworkSyncStatus";
  v52[9] = @"downloaded";
  v52[10] = @"fractionDownloaded";
  v52[11] = @"displayOrder";
  v52[12] = @"originalFilename";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v52, 13);
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v7 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
  {
    v33 = v7;
    v35 = objc_msgSend_valueForKey_(self, v34, @"objectID");
    v37 = objc_msgSend_valueForKey_(self, v36, @"originalFilename");
    v39 = objc_msgSend_valueForKey_(objectCopy, v38, @"originalFilename");
    *buf = 138412802;
    v47 = v35;
    v48 = 2112;
    v49 = v37;
    v50 = 2112;
    v51 = v39;
    _os_log_debug_impl(&dword_236F71000, v33, OS_LOG_TYPE_DEBUG, "Asset merging: %@ = %@ - %@", buf, 0x20u);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v45, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = objc_msgSend_valueForKey_(objectCopy, v11, v15, v40);
        objc_msgSend_setValue_forKey_(self, v17, v16, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v40, v45, 16);
    }

    while (v12);
  }

  v18 = objectCopy[15];
  v19 = objectCopy[14];
  v21 = objc_msgSend_valueForKey_(objectCopy, v20, @"urlExpirationDate");
  objc_msgSend_lock(self, v22, v23);
  v24 = self->_thumbnailURL;
  v25 = self->_URL;
  objc_msgSend_unlock(self, v26, v27);
  if (v21)
  {
    urlExpirationDate = self->_urlExpirationDate;
    if (!urlExpirationDate || objc_msgSend_compare_(v21, v28, urlExpirationDate) == 1)
    {
      objc_storeStrong(&self->_urlExpirationDate, v21);
      objc_msgSend_setURL_(self, v30, v19);
    }
  }

  if (v25)
  {
    v31 = 1;
  }

  else
  {
    v31 = v19 == 0;
  }

  if (!v31)
  {
    objc_msgSend_setURL_(self, v28, v19);
  }

  if (!v24 && v18)
  {
    objc_msgSend_setThumbnailURL_(self, v28, v18);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (NSString)filenameExtension
{
  v3 = objc_msgSend_fileUTType(self, a2, v2);
  v6 = objc_msgSend_preferredFilenameExtension(v3, v4, v5);

  return v6;
}

- (UTType)fileUTType
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_fileUTType;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setFileUTType:(id)type
{
  typeCopy = type;
  objc_msgSend_lock(self, v6, v7);
  v12 = typeCopy;
  if ((objc_msgSend_isEqual_(self->_fileUTType, v8, v12) & 1) == 0)
  {
    objc_storeStrong(&self->_fileUTType, type);
    objc_msgSend_setModified_(self, v11, 1);
  }

  objc_msgSend_unlock(self, v9, v10);
}

- (int64_t)schoolworkSyncStatus
{
  objc_msgSend_lock(self, a2, v2);
  schoolworkSyncStatus = self->_schoolworkSyncStatus;
  objc_msgSend_unlock(self, v5, v6);
  if (schoolworkSyncStatus == 4)
  {
    if (CLSExecutableLinkedOnOrAfter_iOS15_1_macOS_12_0())
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return schoolworkSyncStatus;
}

- (void)setSchoolworkSyncStatus:(int64_t)status
{
  objc_msgSend_lock(self, a2, status);
  if (self->_schoolworkSyncStatus != status)
  {
    self->_schoolworkSyncStatus = status;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

- (BOOL)isDownloaded
{
  objc_msgSend_lock(self, a2, v2);
  downloaded = self->_downloaded;
  objc_msgSend_unlock(self, v5, v6);
  return downloaded;
}

- (NSString)title
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_title;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  objc_msgSend_lock(self, v6, v7);
  v8 = titleCopy;
  title = self->_title;
  v12 = v8;
  if (v8 | title && (!v8 || !title || (objc_msgSend_isEqualToString_(title, v8, v8) & 1) == 0))
  {
    objc_storeStrong(&self->_title, title);
    objc_msgSend_setModified_(self, v11, 1);
  }

  objc_msgSend_unlock(self, v8, v9);
}

- (int64_t)displayOrder
{
  objc_msgSend_lock(self, a2, v2);
  displayOrder = self->_displayOrder;
  objc_msgSend_unlock(self, v5, v6);
  return displayOrder;
}

- (void)setDisplayOrder:(int64_t)order
{
  objc_msgSend_lock(self, a2, order);
  if (self->_displayOrder != order)
  {
    self->_displayOrder = order;
    objc_msgSend_setModified_(self, v5, 1);
  }

  objc_msgSend_unlock(self, v5, v6);
}

- (BOOL)validateObject:(id *)object
{
  v4.receiver = self;
  v4.super_class = CLSAbstractAsset;
  return [(CLSObject *)&v4 validateObject:object];
}

- (void)addDownloadObserver:(id)observer
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  objc_msgSend_lock(self, v5, v6);
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = observerCopy;
    _os_log_impl(&dword_236F71000, v7, OS_LOG_TYPE_DEFAULT, "adding download observer: %@", &v17, 0xCu);
  }

  objc_msgSend_addObject_(self->_downloadObservers, v8, observerCopy);
  objc_msgSend_unlock(self, v9, v10);
  if (objc_msgSend_devModeOn(self, v11, v12))
  {
    objc_msgSend_setDownloaded_(self, v13, 1);
    objc_msgSend_queued_notifyDownloadCompletion(self, v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeDownloadObserver:(id)observer
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  objc_msgSend_lock(self, v5, v6);
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = observerCopy;
    _os_log_impl(&dword_236F71000, v7, OS_LOG_TYPE_DEFAULT, "removing download observer: %@", &v12, 0xCu);
  }

  objc_msgSend_removeObject_(self->_downloadObservers, v8, observerCopy);
  objc_msgSend_unlock(self, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)downloadObservers
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_copy(self->_downloadObservers, v4, v5);
  objc_msgSend_unlock(self, v7, v8);

  return v6;
}

- (void)queued_notifyDownloadProgressFraction:(double)fraction
{
  v5 = objc_msgSend_downloadObservers(self, a2, v3, fraction);
  if (objc_msgSend_count(v5, v6, v7))
  {
    objc_initWeak(&location, self);
    v8 = sub_236F7E1C8();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236F7E21C;
    block[3] = &unk_278A179D0;
    objc_copyWeak(&v11, &location);
    v10 = v5;
    dispatch_async(v8, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)queued_notifyDownloadCompletion
{
  v4 = objc_msgSend_downloadObservers(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    objc_initWeak(&location, self);
    v7 = sub_236F7E1C8();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236F7E4B0;
    block[3] = &unk_278A179D0;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    dispatch_async(v7, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)becomeChildOf:(id)of
{
  v74 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(v6, v8, v7) & 1) != 0 || (v11 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v6, v12, v11)))
  {
    v13 = 1;
  }

  else
  {
    v33 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(v6, v34, v33) & 1) != 0 || (v35 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v6, v36, v35)))
    {
      v13 = 2;
    }

    else
    {
      v57 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(v6, v58, v57) & 1) != 0 || (v59 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v6, v60, v59)))
      {
        v13 = 3;
      }

      else
      {
        v61 = objc_opt_class();
        if (objc_msgSend_isSubclassOfClass_(v6, v62, v61))
        {
          v13 = 4;
        }

        else
        {
          v63 = objc_opt_class();
          if (objc_msgSend_isSubclassOfClass_(v6, v64, v63) & 1) != 0 || (v65 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v6, v66, v65)))
          {
            v13 = 5;
          }

          else
          {
            v67 = objc_opt_class();
            if (objc_msgSend_isSubclassOfClass_(v6, v68, v67))
            {
              v13 = 6;
            }

            else
            {
              if (qword_280B2A720 != -1)
              {
                dispatch_once(&qword_280B2A720, &unk_284A07B28);
              }

              v69 = CLSLogMultimedia;
              if (os_log_type_enabled(CLSLogMultimedia, OS_LOG_TYPE_ERROR))
              {
                v70 = 138543618;
                selfCopy = self;
                v72 = 2114;
                v73 = ofCopy;
                _os_log_error_impl(&dword_236F71000, v69, OS_LOG_TYPE_ERROR, "Asset '%{public}@' cannot be added to %{public}@", &v70, 0x16u);
              }

              v13 = 0;
            }
          }
        }
      }
    }
  }

  if (objc_msgSend_type(self, v9, v10) == 3)
  {
    v17 = objc_msgSend_parentObjectID(self, v14, v15);
    if (v17 || (objc_msgSend_objectID(ofCopy, v14, v16), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = objc_msgSend_parentObjectID(self, v14, v16);
      if (v18)
      {
        v21 = v18;
        v22 = objc_msgSend_objectID(ofCopy, v19, v20);
        if (v22)
        {
          v25 = v22;
          v26 = objc_msgSend_parentObjectID(self, v23, v24);
          v29 = objc_msgSend_objectID(ofCopy, v27, v28);
          isEqualToString = objc_msgSend_isEqualToString_(v26, v30, v29);

          if (v17)
          {

            if (isEqualToString)
            {
              goto LABEL_20;
            }
          }

          else
          {

            if (isEqualToString)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_19;
        }
      }

      if (v17)
      {
        v3 = v17;
      }

LABEL_19:
      objc_msgSend_removeFromParentWithoutDeleting(self, v14, v32);
    }
  }

LABEL_20:
  objc_msgSend_addChild_changedPropertyName_(ofCopy, v14, self, @"assets");
  v41 = objc_msgSend_parentObjectID(self, v37, v38);
  if (!v41)
  {
    v3 = objc_msgSend_objectID(ofCopy, v39, v40);
    if (!v3)
    {
      goto LABEL_33;
    }
  }

  v42 = objc_msgSend_parentObjectID(self, v39, v40);
  if (!v42)
  {
    if (v41)
    {
LABEL_29:

      goto LABEL_34;
    }

LABEL_28:

    goto LABEL_29;
  }

  v45 = v42;
  v46 = objc_msgSend_objectID(ofCopy, v43, v44);
  if (!v46)
  {

    if (v41)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v49 = v46;
  v50 = objc_msgSend_parentObjectID(self, v47, v48);
  v53 = objc_msgSend_objectID(ofCopy, v51, v52);
  v55 = objc_msgSend_isEqualToString_(v50, v54, v53);

  if (v41)
  {

    if (!v55)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v55)
  {
LABEL_33:
    objc_msgSend_setParentEntityType_(self, v39, v13);
  }

LABEL_34:

  v56 = *MEMORY[0x277D85DE8];
}

- (Class)parentEntityClass
{
  v3 = objc_msgSend_parentEntityType(self, a2, v2);
  if ((v3 - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_278A17B00[v3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

- (id)filenameForCKContentStoreCache
{
  v4 = objc_msgSend_originalFilename(self, a2, v2);
  v7 = objc_msgSend_pathExtension(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_fileUTType(self, v8, v9);
    v7 = objc_msgSend_preferredFilenameExtension(v10, v11, v12);
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_objectID(self, v8, v9);
  v16 = objc_msgSend_stringWithFormat_(v13, v15, @"file_%@.%@", v14, v7);

  return v16;
}

- (id)thumbnailFilenameForCKContentStoreCache
{
  v4 = objc_msgSend_preferredFilenameExtension(*MEMORY[0x277CE1DC0], a2, v2);
  v5 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_objectID(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v5, v9, @"thumb_%@.%@", v8, v4);

  return v10;
}

- (BOOL)hasNotBeenRereferencedByServer
{
  v3 = objc_msgSend_brZoneName(self, a2, v2);
  hasSuffix = objc_msgSend_hasSuffix_(v3, v4, @"_Asset");

  return hasSuffix;
}

- (void)urlSuitableForOpeningWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_type(self, v5, v6);
  switch(v7)
  {
    case 3:
      objc_msgSend_cloudKitAssetUrlSuitableForOpeningWithCompletion_(self, v8, completionCopy);
      break;
    case 2:
      v10 = objc_msgSend_URL(self, v8, v9);
      completionCopy[2](completionCopy, v10, 0);

      break;
    case 1:
      objc_msgSend_driveAssetUrlSuitableForOpeningWithCompletion_(self, v8, completionCopy);
      break;
    default:
      v11 = qos_class_self();
      v12 = dispatch_get_global_queue(v11, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_236F7ED80;
      block[3] = &unk_278A179F8;
      v14 = completionCopy;
      dispatch_async(v12, block);

      break;
  }
}

- (void)driveAssetUrlSuitableForOpeningWithCompletion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_236F7F294;
  v50[3] = &unk_278A17A48;
  v50[4] = self;
  v5 = completionCopy;
  v51 = v5;
  v6 = MEMORY[0x2383C3E80](v50);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_236F7F498;
  v49[3] = &unk_278A17A70;
  v49[4] = self;
  v9 = MEMORY[0x2383C3E80](v49);
  if (self->_type == 1)
  {
    objc_msgSend_lock(self, v7, v8);
    v10 = self->_URL;
    objc_msgSend_unlock(self, v11, v12);
    if (objc_msgSend_isValidFileURL_isThumbnail_(self, v13, v10, 0))
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v14 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
        v19 = objc_msgSend_objectID(self, v17, v18);
        *buf = 138412290;
        v53 = v19;
        _os_log_impl(&dword_236F71000, v16, OS_LOG_TYPE_DEFAULT, "driveAssetUrlSuitableForOpeningWithCompletion, file exists on device, returning cached url for iCloudDrive asset: %@", buf, 0xCu);
      }

      objc_msgSend_setDownloaded_(self, v15, 1);
      objc_msgSend_clientRemote_downloadCompleted_error_(self, v20, 1, 0);
      (v6)[2](v6, v10, 0);
    }

    else
    {
      v22 = atomic_exchange(&self->_URLRequested._Value, 1u);
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v23 = CLSLogAsset;
      if (v22)
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
        {
          v25 = v23;
          v28 = objc_msgSend_objectID(self, v26, v27);
          *buf = 138412290;
          v53 = v28;
          _os_log_impl(&dword_236F71000, v25, OS_LOG_TYPE_INFO, "There is a pending request to look up url for iCloudDrive asset '%@'. Will complete the request when the pending request completes.", buf, 0xCu);
        }

        objc_msgSend_addToPendingURLCompletions_(self, v24, v5);
      }

      else
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v23;
          v34 = objc_msgSend_objectID(self, v32, v33);
          *buf = 138412290;
          v53 = v34;
          _os_log_impl(&dword_236F71000, v31, OS_LOG_TYPE_DEFAULT, "looking up url for iCloudDrive asset: %@", buf, 0xCu);
        }

        v35 = objc_msgSend_brItemID(self, v29, v30);
        v40 = objc_msgSend_dataStore(self, v36, v37);
        if (!v40)
        {
          v40 = objc_msgSend_shared(CLSDataStore, v38, v39);
        }

        v41 = objc_msgSend_brOwnerName(self, v38, v39);
        v44 = objc_msgSend_brZoneName(self, v42, v43);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = sub_236F7F734;
        v46[3] = &unk_278A17A98;
        v46[4] = self;
        v47 = v6;
        v48 = v9;
        objc_msgSend_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_(v40, v45, v10, v35, v41, v44, v46);
      }
    }
  }

  else
  {
    v10 = objc_msgSend_cls_createErrorWithCode_format_(MEMORY[0x277CCA9B8], v7, 2, @"driveAssetUrlSuitableForOpeningWithCompletion called for an asset type != CLSAssetTypeiCloudDrive");
    (v6)[2](v6, 0, v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValidFileURL:(id)l isThumbnail:(BOOL)thumbnail
{
  lCopy = l;
  v9 = lCopy;
  if (lCopy && objc_msgSend_isFileURL(lCopy, v7, v8))
  {
    started = objc_msgSend_startAccessingSecurityScopedResource(v9, v10, v11);
    v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14);
    v18 = objc_msgSend_path(v9, v16, v17);
    v20 = objc_msgSend_fileExistsAtPath_(v15, v19, v18);

    if (started)
    {
      objc_msgSend_stopAccessingSecurityScopedResource(v9, v21, v22);
    }

    if (v20 && !thumbnail && self->_type == 1)
    {
      v23 = objc_msgSend_br_itemID(v9, v21, v22);
      v25 = v23;
      brItemID = self->_brItemID;
      if (v23)
      {
        if (brItemID && (objc_msgSend_isEqualToString_(v23, v24, brItemID) & 1) != 0)
        {
          goto LABEL_16;
        }
      }

      else if (!brItemID)
      {
LABEL_16:

        goto LABEL_13;
      }

      LOBYTE(v20) = 0;
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

LABEL_13:

  return v20;
}

- (BOOL)isValidStreamingURL:(id)l
{
  lCopy = l;
  if (lCopy && self->_type == 3)
  {
    v7 = objc_msgSend_urlExpirationDate(self, v4, v5);
    v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
    v12 = objc_msgSend_compare_(v7, v11, v10) == 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)pendingURLCompletions
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_copy(self->_pendingURLCompletions, v4, v5);
  objc_msgSend_removeAllObjects(self->_pendingURLCompletions, v7, v8);
  objc_msgSend_unlock(self, v9, v10);

  return v6;
}

- (void)addToPendingURLCompletions:(id)completions
{
  completionsCopy = completions;
  objc_msgSend_lock(self, v5, v6);
  pendingURLCompletions = self->_pendingURLCompletions;
  v8 = MEMORY[0x2383C3E80](completionsCopy);

  objc_msgSend_addObject_(pendingURLCompletions, v9, v8);

  objc_msgSend_unlock(self, v10, v11);
}

- (id)pendingStreamingURLCompletions
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_copy(self->_pendingStreamingURLCompletions, v4, v5);
  objc_msgSend_removeAllObjects(self->_pendingStreamingURLCompletions, v7, v8);
  objc_msgSend_unlock(self, v9, v10);

  return v6;
}

- (void)addToPendingStreamingURLCompletions:(id)completions
{
  completionsCopy = completions;
  objc_msgSend_lock(self, v5, v6);
  pendingStreamingURLCompletions = self->_pendingStreamingURLCompletions;
  v8 = MEMORY[0x2383C3E80](completionsCopy);

  objc_msgSend_addObject_(pendingStreamingURLCompletions, v9, v8);

  objc_msgSend_unlock(self, v10, v11);
}

- (id)pendingThumbnailURLCompletions
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_copy(self->_pendingThumbnailURLCompletions, v4, v5);
  objc_msgSend_removeAllObjects(self->_pendingThumbnailURLCompletions, v7, v8);
  objc_msgSend_unlock(self, v9, v10);

  return v6;
}

- (void)addToPendingThumbnailURLCompletions:(id)completions
{
  completionsCopy = completions;
  objc_msgSend_lock(self, v5, v6);
  pendingThumbnailURLCompletions = self->_pendingThumbnailURLCompletions;
  v8 = MEMORY[0x2383C3E80](completionsCopy);

  objc_msgSend_addObject_(pendingThumbnailURLCompletions, v9, v8);

  objc_msgSend_unlock(self, v10, v11);
}

- (void)cloudKitAssetUrlSuitableForOpeningWithCompletion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_236F8023C;
  v42[3] = &unk_278A17A48;
  v42[4] = self;
  v5 = completionCopy;
  v43 = v5;
  v6 = MEMORY[0x2383C3E80](v42);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_236F80418;
  v41[3] = &unk_278A17A70;
  v41[4] = self;
  v8 = MEMORY[0x2383C3E80](v41);
  if (self->_type == 3)
  {
    if (objc_msgSend_conformsToType_(self->_fileUTType, v7, *MEMORY[0x277CE1D08]))
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v11 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x277CCA9B8];
        v15 = v13 = v11;
        *buf = 138412290;
        selfCopy2 = v15;
        _os_log_impl(&dword_236F71000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: %@", buf, 0xCu);
      }
    }

    objc_msgSend_lock(self, v9, v10);
    v16 = self->_URL;
    objc_msgSend_unlock(self, v17, v18);
    if (objc_msgSend_isValidFileURL_isThumbnail_(self, v19, v16, 0))
    {
      objc_msgSend_setDownloaded_(self, v20, 1);
      objc_msgSend_clientRemote_downloadCompleted_error_(self, v21, 1, 0);
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v22 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_236F71000, v22, OS_LOG_TYPE_DEFAULT, "cloudKitAssetUrlSuitableForOpeningWithCompletion, file exists on device, returning cached url for cloudkit asset: %@", buf, 0xCu);
      }

      (v6)[2](v6, v16, 0);
    }

    else if (self->_brItemID)
    {
      v24 = atomic_exchange(&self->_URLRequested._Value, 1u);
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v25 = CLSLogAsset;
      if (v24)
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
        {
          v27 = v25;
          v30 = objc_msgSend_objectID(self, v28, v29);
          *buf = 138412290;
          selfCopy2 = v30;
          _os_log_impl(&dword_236F71000, v27, OS_LOG_TYPE_INFO, "There is a pending request to look up url for CloudKit asset: '%@'. Will complete the request when the pending request completes", buf, 0xCu);
        }

        objc_msgSend_addToPendingURLCompletions_(self, v26, v5);
      }

      else
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_236F71000, v25, OS_LOG_TYPE_DEFAULT, "looking up url for CloudKit asset: %@", buf, 0xCu);
        }

        v36 = objc_msgSend_dataStore(self, v32, v33);
        if (!v36)
        {
          v36 = objc_msgSend_shared(CLSDataStore, v34, v35);
        }

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_236F80694;
        v38[3] = &unk_278A17A98;
        v38[4] = self;
        v39 = v6;
        v40 = v8;
        objc_msgSend_cloudKitUrlSuitableForOpeningForAsset_completion_(v36, v37, self, v38);
      }
    }

    else
    {
      v31 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v20, 344, @"CKAsset is not available for this asset.");
      (v6)[2](v6, 0, v31);
    }
  }

  else
    v16 = {;
    (v6)[2](v6, 0, v16);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)thumbnailURLSuitableForOpeningWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_type(self, v5, v6) == 3 && (objc_msgSend_conformsToType_(self->_fileUTType, v7, *MEMORY[0x277CE1D00]) & 1) == 0)
  {
    objc_msgSend_cloudKitThumbnailUrlSuitableForOpeningWithCompletion_(self, v8, completionCopy);
  }

  else
  {
    v9 = qos_class_self();
    v10 = dispatch_get_global_queue(v9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236F8086C;
    block[3] = &unk_278A179F8;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

- (void)cloudKitThumbnailUrlSuitableForOpeningWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_236F80D28;
  v34[3] = &unk_278A17A48;
  v34[4] = self;
  v5 = completionCopy;
  v35 = v5;
  v6 = MEMORY[0x2383C3E80](v34);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_236F80F04;
  v33[3] = &unk_278A17A70;
  v33[4] = self;
  v9 = MEMORY[0x2383C3E80](v33);
  if (self->_type == 3)
  {
    objc_msgSend_lock(self, v7, v8);
    v10 = self->_thumbnailURL;
    objc_msgSend_unlock(self, v11, v12);
    if (objc_msgSend_isValidFileURL_isThumbnail_(self, v13, v10, 1))
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v15 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_236F71000, v15, OS_LOG_TYPE_DEFAULT, "cloudKitThumbnailUrlSuitableForOpeningWithCompletion, file exists on device, returning cached thumbnailURL for cloudkit asset: %@", buf, 0xCu);
      }

      objc_msgSend_setDownloaded_(self, v16, 1);
      objc_msgSend_clientRemote_downloadCompleted_error_(self, v17, 1, 0);
      (v6)[2](v6, v10, 0);
    }

    else if (self->_brItemID)
    {
      v19 = atomic_exchange(&self->_thumbnailURLRequested._Value, 1u);
      if (qword_280B2A720 != -1)
      {
        v29 = v19;
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
        v19 = v29;
      }

      v20 = CLSLogAsset;
      if (v19)
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_236F71000, v20, OS_LOG_TYPE_INFO, "there is a pending request to look up thumbnailURL for CloudKit asset: '%@'. will complete this request when the pending request completes", buf, 0xCu);
        }

        objc_msgSend_addToPendingThumbnailURLCompletions_(self, v21, v5);
      }

      else
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_236F71000, v20, OS_LOG_TYPE_DEFAULT, "looking up thumbnailURL for CloudKit asset: %@", buf, 0xCu);
        }

        v27 = objc_msgSend_dataStore(self, v23, v24);
        if (!v27)
        {
          v27 = objc_msgSend_shared(CLSDataStore, v25, v26);
        }

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_236F81180;
        v30[3] = &unk_278A17A98;
        v30[4] = self;
        v31 = v6;
        v32 = v9;
        objc_msgSend_cloudKitThumbnailUrlSuitableForOpeningForAsset_completion_(v27, v28, self, v30);
      }
    }

    else
    {
      v22 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v14, 344, @"Thumbnail is not available for this asset.");
      (v6)[2](v6, 0, v22);
    }
  }

  else
    v10 = {;
    (v6)[2](v6, 0, v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)urlSuitableForStreamingWithCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_236F81680;
  v32[3] = &unk_278A17A48;
  v32[4] = self;
  v5 = completionCopy;
  v33 = v5;
  v6 = MEMORY[0x2383C3E80](v32);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_236F8185C;
  v31[3] = &unk_278A17A70;
  v31[4] = self;
  v9 = MEMORY[0x2383C3E80](v31);
  if (self->_type == 3)
  {
    objc_msgSend_lock(self, v7, v8);
    v10 = self->_URL;
    objc_msgSend_unlock(self, v11, v12);
    if (objc_msgSend_isValidStreamingURL_(self, v13, v10))
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v15 = CLSLogAsset;
      if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = v10;
        _os_log_impl(&dword_236F71000, v15, OS_LOG_TYPE_DEFAULT, "done getting streaming url for CloudKit asset, returning cached url: %@", buf, 0xCu);
      }

      (v6)[2](v6, v10, 0);
    }

    else if (self->_brItemID)
    {
      v17 = atomic_exchange(&self->_streamingURLRequested._Value, 1u);
      if (qword_280B2A720 != -1)
      {
        v27 = v17;
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
        v17 = v27;
      }

      v18 = CLSLogAsset;
      if (v17)
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_236F71000, v18, OS_LOG_TYPE_INFO, "there is a pending request to look up streaming url for CloudKit asset: '%@'. will complete the request when the pending request completes", buf, 0xCu);
        }

        objc_msgSend_addToPendingStreamingURLCompletions_(self, v19, v5);
      }

      else
      {
        if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_236F71000, v18, OS_LOG_TYPE_DEFAULT, "looking up streaming url for CloudKit asset: %@", buf, 0xCu);
        }

        v25 = objc_msgSend_dataStore(self, v21, v22);
        if (!v25)
        {
          v25 = objc_msgSend_shared(CLSDataStore, v23, v24);
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_236F81AD8;
        v28[3] = &unk_278A17AC0;
        v28[4] = self;
        v29 = v6;
        v30 = v9;
        objc_msgSend_cloudKitUrlSuitableForStreamingAsset_completion_(v25, v26, self, v28);
      }
    }

    else
    {
      v20 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v14, 344, @"Streaming URL is not available for this asset.");
      (v6)[2](v6, 0, v20);
    }
  }

  else
    v10 = {;
    (v6)[2](v6, 0, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)clientRemote_invalidate
{
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v2 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_236F71000, v2, OS_LOG_TYPE_DEBUG, "CLSAssetDownloadProgressNotifiable clientRemote_invalidate called", v3, 2u);
  }
}

- (void)clientRemote_downloadProgressFraction:(double)fraction error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218242;
    fractionCopy = fraction;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_debug_impl(&dword_236F71000, v7, OS_LOG_TYPE_DEBUG, "clientRemote_downloadProgressFraction called: progressFraction = %4.2f, error = %@", &v16, 0x16u);
  }

  objc_msgSend_lock(self, v8, v9);
  downloadError = self->_downloadError;
  self->_downloadError = errorCopy;

  self->_fractionDownloaded = fraction;
  objc_msgSend_unlock(self, v11, v12);
  objc_msgSend_queued_notifyDownloadProgressFraction_(self, v13, v14, fraction);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)clientRemote_downloadCompleted:(BOOL)completed error:(id)error
{
  completedCopy = completed;
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v7 = CLSLogAsset;
  if (os_log_type_enabled(CLSLogAsset, OS_LOG_TYPE_DEBUG))
  {
    v16[0] = 67109378;
    v16[1] = completedCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_debug_impl(&dword_236F71000, v7, OS_LOG_TYPE_DEBUG, "clientRemote_downloadCompleted called: completed = %d, error = %@", v16, 0x12u);
  }

  objc_msgSend_lock(self, v8, v9);
  downloadError = self->_downloadError;
  self->_downloadError = errorCopy;

  self->_downloaded = completedCopy;
  objc_msgSend_unlock(self, v11, v12);
  objc_msgSend_queued_notifyDownloadCompletion(self, v13, v14);
  v15 = *MEMORY[0x277D85DE8];
}

@end