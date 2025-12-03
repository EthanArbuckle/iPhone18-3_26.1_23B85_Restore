@interface ENNote
- (BOOL)validateForLimits;
- (ENNote)init;
- (ENNote)initWithServiceNote:(id)note;
- (NSArray)resources;
- (NSDate)creationDate;
- (NSDate)modificationDate;
- (id)EDAMNoteToReplaceServiceNoteGUID:(id)d;
- (id)enmlContent;
- (void)addResource:(id)resource;
- (void)generateHTMLData:(id)data;
- (void)generateWebArchiveData:(id)data;
- (void)removeAllResources;
- (void)setContent:(id)content;
- (void)setResources:(id)resources;
- (void)setTagNames:(id)names;
- (void)setTitle:(id)title;
@end

@implementation ENNote

- (BOOL)validateForLimits
{
  v33 = *MEMORY[0x277D85DE8];
  enmlContent = [(ENNote *)self enmlContent];
  v4 = [enmlContent length];
  if (v4 < +[EDAMLimitsConstants EDAM_NOTE_CONTENT_LEN_MIN])
  {

LABEL_4:
    v8 = +[ENSession sharedSession];
    logger = [v8 logger];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Note fails validation for content length: %@", self];
    [logger evernoteLogInfoString:v10];

    v11 = 0;
    goto LABEL_18;
  }

  enmlContent2 = [(ENNote *)self enmlContent];
  v6 = [enmlContent2 length];
  v7 = +[EDAMLimitsConstants EDAM_NOTE_CONTENT_LEN_MAX];

  if (v6 > v7)
  {
    goto LABEL_4;
  }

  v12 = +[EDAMLimitsConstants EDAM_RESOURCE_SIZE_MAX_FREE];
  v13 = +[ENSession sharedSession];
  isPremiumUser = [v13 isPremiumUser];

  if (isPremiumUser)
  {
    v12 = +[EDAMLimitsConstants EDAM_RESOURCE_SIZE_MAX_PREMIUM];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  resources = [(ENNote *)self resources];
  v16 = [resources countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = v12;
    v19 = *v29;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(resources);
        }

        data = [*(*(&v28 + 1) + 8 * i) data];
        v22 = [data length];

        if (v22 > v18)
        {
          v23 = +[ENSession sharedSession];
          logger2 = [v23 logger];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Note fails validation for resource length: %@", self];
          [logger2 evernoteLogInfoString:v25];

          v11 = 0;
          goto LABEL_17;
        }
      }

      v17 = [resources countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_17:

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)EDAMNoteToReplaceServiceNoteGUID:(id)d
{
  v65 = *MEMORY[0x277D85DE8];
  dCopy = d;
  serviceNote = [(ENNote *)self serviceNote];
  if (!serviceNote)
  {
    goto LABEL_4;
  }

  serviceNote2 = [(ENNote *)self serviceNote];
  guid = [serviceNote2 guid];
  v7 = [guid isEqualToString:dCopy];

  if (v7)
  {
    serviceNote3 = [(ENNote *)self serviceNote];
    v9 = [serviceNote3 copy];

    [(EDAMNote *)v9 setGuid:0];
    [(EDAMNote *)v9 setNotebookGuid:0];
    [(EDAMNote *)v9 setUpdateSequenceNum:0];
  }

  else
  {
LABEL_4:
    v9 = objc_alloc_init(EDAMNote);
  }

  enmlContent = [(ENNote *)self enmlContent];
  [(EDAMNote *)v9 setContent:enmlContent];

  content = [(EDAMNote *)v9 content];

  if (!content)
  {
    v12 = [ENNoteContent noteContentWithString:&stru_2850323E8];
    v13 = [v12 enmlWithNote:self];
    [(EDAMNote *)v9 setContent:v13];
  }

  [(EDAMNote *)v9 setContentHash:0];
  [(EDAMNote *)v9 setContentLength:0];
  title = [(ENNote *)self title];
  [(EDAMNote *)v9 setTitle:title];

  title2 = [(EDAMNote *)v9 title];

  if (!title2)
  {
    [(EDAMNote *)v9 setTitle:@"Untitled Note"];
  }

  attributes = [(EDAMNote *)v9 attributes];

  if (!attributes)
  {
    v17 = objc_alloc_init(EDAMNoteAttributes);
    [(EDAMNote *)v9 setAttributes:v17];
  }

  v18 = +[ENSession sharedSession];
  sourceApplication = [v18 sourceApplication];

  attributes2 = [(EDAMNote *)v9 attributes];
  [attributes2 setSourceApplication:sourceApplication];

  attributes3 = [(EDAMNote *)v9 attributes];
  [attributes3 setSource:@"mobile.ios"];

  isReminder = [(ENNote *)self isReminder];
  attributes4 = [(EDAMNote *)v9 attributes];
  date = attributes4;
  if (isReminder)
  {
    reminderOrder = [attributes4 reminderOrder];

    if (reminderOrder)
    {
      goto LABEL_16;
    }

    v25 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v27 = [v25 numberWithDouble:v26 * 1000.0];
    attributes5 = [(EDAMNote *)v9 attributes];
    [attributes5 setReminderOrder:v27];
  }

  else
  {
    [attributes4 setReminderOrder:0];
  }

LABEL_16:
  sourceUrl = [(ENNote *)self sourceUrl];

  if (sourceUrl)
  {
    sourceUrl2 = [(ENNote *)self sourceUrl];
    attributes6 = [(EDAMNote *)v9 attributes];
    [attributes6 setSourceURL:sourceUrl2];
  }

  tagNames = [(ENNote *)self tagNames];

  if (tagNames)
  {
    tagNames2 = [(ENNote *)self tagNames];
    v34 = [tagNames2 mutableCopy];
    [(EDAMNote *)v9 setTagNames:v34];
  }

  array = [MEMORY[0x277CBEB18] array];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  resources = [(ENNote *)self resources];
  v37 = [resources countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v37)
  {
    v38 = *v60;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(resources);
        }

        eDAMResource = [*(*(&v59 + 1) + 8 * i) EDAMResource];
        if (eDAMResource)
        {
          [array addObject:eDAMResource];
        }
      }

      v37 = [resources countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v37);
  }

  [(EDAMNote *)v9 setResources:array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  edamAttributes = [(ENNote *)self edamAttributes];
  allKeys = [edamAttributes allKeys];

  v43 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v43)
  {
    v44 = *v56;
    v52 = *MEMORY[0x277CCA7D8];
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(allKeys);
        }

        v46 = *(*(&v55 + 1) + 8 * j);
        edamAttributes2 = [(ENNote *)self edamAttributes];
        v48 = [edamAttributes2 valueForKey:v46];

        attributes7 = [(EDAMNote *)v9 attributes];
        [attributes7 setValue:v48 forKey:v46];
      }

      v43 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v43);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setResources:(id)resources
{
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:resources];
  resources = self->_resources;
  self->_resources = v4;
}

- (id)enmlContent
{
  cachedENMLContent = [(ENNote *)self cachedENMLContent];

  if (!cachedENMLContent)
  {
    content = [(ENNote *)self content];
    v5 = [content enmlWithNote:self];
    [(ENNote *)self setCachedENMLContent:v5];
  }

  return [(ENNote *)self cachedENMLContent];
}

- (void)generateHTMLData:(id)data
{
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    v32 = dataCopy;
    enmlContent = [(ENNote *)self enmlContent];
    if (!enmlContent)
    {
      v7 = [ENNoteContent noteContentWithString:&stru_2850323E8];
      enmlContent = [v7 enmlWithNote:self];
    }

    v31 = enmlContent;
    v8 = MEMORY[0x277CBEB18];
    resources = [(ENNote *)self resources];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(resources, "count")}];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    resources2 = [(ENNote *)self resources];
    v12 = [resources2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(resources2);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          eDAMResource = [v16 EDAMResource];
          attributes = [eDAMResource attributes];
          sourceURL = [attributes sourceURL];

          if (!sourceURL)
          {
            dataHash = [v16 dataHash];
            enlowercaseHexDigits = [dataHash enlowercaseHexDigits];

            mimeType = [v16 mimeType];
            v23 = [ENMIMEUtils fileExtensionForMIMEType:mimeType];

            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://example.com/%@.%@", enlowercaseHexDigits, v23];
            attributes2 = [eDAMResource attributes];
            [attributes2 setSourceURL:v24];
          }

          [v10 addObject:eDAMResource];
        }

        v13 = [resources2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    v26 = objc_alloc_init(ENMLUtility);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __27__ENNote_generateHTMLData___block_invoke;
    v33[3] = &unk_278C1EB88;
    v5 = v32;
    v34 = v32;
    [(ENMLUtility *)v26 generateHTMLFromENML:v31 referencedResources:v10 completion:v33];
  }

  else
  {
    v27 = +[ENSession sharedSession];
    logger = [v27 logger];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"-generateHTMLData: requires a completion handler!"];
    [logger evernoteLogErrorString:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __27__ENNote_generateHTMLData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = [a2 dataUsingEncoding:4];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = +[ENSession sharedSession];
    v8 = [v7 logger];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"+webArchiveData failed to convert ENML to HTML: %@", v10];
    [v8 evernoteLogInfoString:v9];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)generateWebArchiveData:(id)data
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    v39 = dataCopy;
    enmlContent = [(ENNote *)self enmlContent];
    if (!enmlContent)
    {
      v7 = [ENNoteContent noteContentWithString:&stru_2850323E8];
      enmlContent = [v7 enmlWithNote:self];
    }

    v38 = enmlContent;
    v8 = MEMORY[0x277CBEB18];
    resources = [(ENNote *)self resources];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(resources, "count")}];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    selfCopy = self;
    resources2 = [(ENNote *)self resources];
    v12 = [resources2 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(resources2);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          eDAMResource = [v16 EDAMResource];
          attributes = [eDAMResource attributes];
          sourceURL = [attributes sourceURL];

          if (!sourceURL)
          {
            dataHash = [v16 dataHash];
            enlowercaseHexDigits = [dataHash enlowercaseHexDigits];

            mimeType = [v16 mimeType];
            v23 = [ENMIMEUtils fileExtensionForMIMEType:mimeType];

            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://example.com/%@.%@", enlowercaseHexDigits, v23];
            attributes2 = [eDAMResource attributes];
            [attributes2 setSourceURL:v24];
          }

          [v10 addObject:eDAMResource];
        }

        v13 = [resources2 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v13);
    }

    v26 = objc_alloc_init(ENMLUtility);
    sourceUrl = [(ENNote *)selfCopy sourceUrl];
    if (sourceUrl)
    {
      v28 = MEMORY[0x277CBEBC0];
      sourceUrl2 = [(ENNote *)selfCopy sourceUrl];
      v30 = [v28 URLWithString:sourceUrl2];
    }

    else
    {
      v30 = 0;
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __33__ENNote_generateWebArchiveData___block_invoke;
    v40[3] = &unk_278C1DD30;
    v5 = v39;
    v42 = v10;
    v43 = v39;
    v41 = v30;
    v34 = v10;
    v35 = v30;
    [(ENMLUtility *)v26 generateHTMLFromENML:v38 referencedResources:v34 completion:v40];
  }

  else
  {
    v31 = +[ENSession sharedSession];
    logger = [v31 logger];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"-generateWebArchiveData: requires a completion handler!"];
    [logger evernoteLogErrorString:v33];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __33__ENNote_generateWebArchiveData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v31 = v5;
    v29 = [a2 dataUsingEncoding:4];
    v28 = [[ENWebResource alloc] initWithData:v29 URL:*(a1 + 32) MIMEType:@"text/html" textEncodingName:@"UTF-8" frameName:0];
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = a1;
    obj = *(a1 + 40);
    v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          v12 = [ENWebResource alloc];
          v13 = [v11 data];
          v14 = [v13 body];
          v15 = MEMORY[0x277CBEBC0];
          v16 = [v11 attributes];
          v17 = [v16 sourceURL];
          v18 = [v15 URLWithString:v17];
          v19 = [v11 mime];
          v20 = [(ENWebResource *)v12 initWithData:v14 URL:v18 MIMEType:v19 textEncodingName:0 frameName:0];

          [v33 addObject:v20];
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v21 = [[ENWebArchive alloc] initWithMainResource:v28 subresources:v33 subframeArchives:0];
    v22 = *(v30 + 48);
    v23 = [(ENWebArchive *)v21 data];
    (*(v22 + 16))(v22, v23);

    v6 = v31;
  }

  else
  {
    v24 = +[ENSession sharedSession];
    v25 = [v24 logger];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"+webArchiveData failed to convert ENML to HTML: %@", v6];
    [v25 evernoteLogInfoString:v26];

    (*(*(a1 + 48) + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)removeAllResources
{
  [(NSMutableArray *)self->_resources removeAllObjects];

  [(ENNote *)self invalidateCachedENML];
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  if (resourceCopy)
  {
    v9 = resourceCopy;
    v5 = [(NSMutableArray *)self->_resources count];
    if (v5 >= +[EDAMLimitsConstants EDAM_NOTE_RESOURCES_MAX])
    {
      v6 = +[ENSession sharedSession];
      logger = [v6 logger];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many resources already on note. Ignoring %@. Note %@.", v9, self];
      [logger evernoteLogInfoString:v8];
    }

    else
    {
      [(ENNote *)self invalidateCachedENML];
      [(NSMutableArray *)self->_resources addObject:v9];
    }

    resourceCopy = v9;
  }
}

- (NSArray)resources
{
  v2 = [(NSMutableArray *)self->_resources copy];

  return v2;
}

- (NSDate)creationDate
{
  v2 = MEMORY[0x277CBEAA8];
  serviceNote = [(ENNote *)self serviceNote];
  created = [serviceNote created];
  v5 = [v2 dateWithEDAMTimestamp:{objc_msgSend(created, "longValue")}];

  return v5;
}

- (NSDate)modificationDate
{
  v2 = MEMORY[0x277CBEAA8];
  serviceNote = [(ENNote *)self serviceNote];
  updated = [serviceNote updated];
  v5 = [v2 dateWithEDAMTimestamp:{objc_msgSend(updated, "longValue")}];

  return v5;
}

- (void)setTagNames:(id)names
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = +[EDAMLimitsConstants EDAM_TAG_NAME_REGEX];
        v13 = [v11 en_scrubUsingRegex:v12 withMinLength:+[EDAMLimitsConstants EDAM_TAG_NAME_LEN_MIN](EDAMLimitsConstants maxLength:{"EDAM_TAG_NAME_LEN_MIN"), +[EDAMLimitsConstants EDAM_TAG_NAME_LEN_MAX](EDAMLimitsConstants, "EDAM_TAG_NAME_LEN_MAX")}];

        if (v13)
        {
          [array addObject:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v14 = array;
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_tagNames, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  [(ENNote *)self invalidateCachedENML];
  content = self->_content;
  self->_content = contentCopy;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v7 = +[EDAMLimitsConstants EDAM_NOTE_TITLE_REGEX];
  v5 = [titleCopy en_scrubUsingRegex:v7 withMinLength:+[EDAMLimitsConstants EDAM_NOTE_TITLE_LEN_MIN](EDAMLimitsConstants maxLength:{"EDAM_NOTE_TITLE_LEN_MIN"), +[EDAMLimitsConstants EDAM_NOTE_TITLE_LEN_MAX](EDAMLimitsConstants, "EDAM_NOTE_TITLE_LEN_MAX")}];

  title = self->_title;
  self->_title = v5;
}

- (ENNote)initWithServiceNote:(id)note
{
  v37 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  v35.receiver = self;
  v35.super_class = ENNote;
  v5 = [(ENNote *)&v35 init];
  if (v5)
  {
    title = [noteCopy title];
    title = v5->_title;
    v5->_title = title;

    content = [noteCopy content];
    v9 = [ENNoteContent noteContentWithENML:content];
    content = v5->_content;
    v5->_content = v9;

    attributes = [noteCopy attributes];
    reminderOrder = [attributes reminderOrder];
    v5->_isReminder = reminderOrder != 0;

    attributes2 = [noteCopy attributes];
    sourceURL = [attributes2 sourceURL];
    sourceUrl = v5->_sourceUrl;
    v5->_sourceUrl = sourceURL;

    tagNames = [noteCopy tagNames];
    tagNames = v5->_tagNames;
    v5->_tagNames = tagNames;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resources = v5->_resources;
    v5->_resources = v18;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    resources = [noteCopy resources];
    v21 = [resources countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        v24 = 0;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(resources);
          }

          v25 = [ENResource resourceWithServiceResource:*(*(&v31 + 1) + 8 * v24)];
          if (v25)
          {
            [(NSMutableArray *)v5->_resources addObject:v25];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [resources countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    v26 = [noteCopy copy];
    [(ENNote *)v5 setServiceNote:v26];

    serviceNote = [(ENNote *)v5 serviceNote];
    [serviceNote setContent:0];

    serviceNote2 = [(ENNote *)v5 serviceNote];
    [serviceNote2 setResources:0];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ENNote)init
{
  v6.receiver = self;
  v6.super_class = ENNote;
  v2 = [(ENNote *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resources = v2->_resources;
    v2->_resources = v3;
  }

  return v2;
}

@end