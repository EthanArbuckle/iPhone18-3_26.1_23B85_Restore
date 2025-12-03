@interface UGCPhotosForm
+ (id)addPhotosFormWithPlaceQuestionnaire:(id)questionnaire photosWithMetadata:(id)metadata;
+ (id)editPhotosFormWithPlaceQuestionnaire:(id)questionnaire previouslySubmittedImages:(id)images;
- (BOOL)_addPhoto:(id)photo;
- (BOOL)_isCompleteForDelete;
- (BOOL)isComplete;
- (BOOL)isEdited;
- (BOOL)isEmpty;
- (BOOL)removePhotoWithIdentifier:(id)identifier;
- (NSArray)activePhotoList;
- (NSArray)addedPhotosWithMetadata;
- (NSArray)currentExistingPhotos;
- (NSArray)removedExistingPhotos;
- (UGCPhotosForm)initWithActionType:(int64_t)type initialPhotos:(id)photos maximumNumberOfPhotos:(unint64_t)ofPhotos;
- (id)addedPhotos;
- (int64_t)indexOfPhotoWithIdentifier:(id)identifier;
- (unint64_t)maximumNumberOfPhotosPerSubmission;
- (unint64_t)numberOfAddedPhotos;
- (void)_fillSubmissionFieldsForAddOrEdit:(id)edit;
- (void)_fillSubmissionFieldsForDelete:(id)delete;
- (void)addPhoto:(id)photo;
- (void)addPhotoListWithMetadata:(id)metadata;
- (void)fillSubmissionFields:(id)fields;
@end

@implementation UGCPhotosForm

- (unint64_t)maximumNumberOfPhotosPerSubmission
{
  if (MapsFeature_IsEnabled_SydneyARP())
  {

    return [(UGCPhotosForm *)self maximumNumberOfPhotos];
  }

  else
  {

    return GEOConfigGetUInteger();
  }
}

- (void)_fillSubmissionFieldsForDelete:(id)delete
{
  poiEnrichment = [delete poiEnrichment];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  currentExistingPhotos = [(UGCPhotosForm *)self currentExistingPhotos];
  v6 = [currentExistingPhotos countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(currentExistingPhotos);
        }

        identifier = [*(*(&v23 + 1) + 8 * v9) identifier];
        v11 = [GEORPImageUpdate deleteImageUpdateWithImageId:identifier];

        [poiEnrichment addImageUpdate:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [currentExistingPhotos countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  removedExistingPhotos = [(UGCPhotosForm *)self removedExistingPhotos];
  v13 = [removedExistingPhotos countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(removedExistingPhotos);
        }

        identifier2 = [*(*(&v19 + 1) + 8 * v16) identifier];
        v18 = [GEORPImageUpdate deleteImageUpdateWithImageId:identifier2];

        [poiEnrichment addImageUpdate:v18];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [removedExistingPhotos countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }
}

- (void)_fillSubmissionFieldsForAddOrEdit:(id)edit
{
  editCopy = edit;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  addedPhotosWithMetadata = [(UGCPhotosForm *)self addedPhotosWithMetadata];
  v6 = [addedPhotosWithMetadata countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(addedPhotosWithMetadata);
        }

        [editCopy addPhoto:*(*(&v33 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [addedPhotosWithMetadata countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  poiEnrichment = [editCopy poiEnrichment];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  currentExistingPhotos = [(UGCPhotosForm *)self currentExistingPhotos];
  v12 = [currentExistingPhotos countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(currentExistingPhotos);
        }

        identifier = [*(*(&v29 + 1) + 8 * v15) identifier];
        v17 = [GEORPImageUpdate unmodifiedImageUpdateWithImageId:identifier];

        [poiEnrichment addImageUpdate:v17];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [currentExistingPhotos countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  removedExistingPhotos = [(UGCPhotosForm *)self removedExistingPhotos];
  v19 = [removedExistingPhotos countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(removedExistingPhotos);
        }

        identifier2 = [*(*(&v25 + 1) + 8 * v22) identifier];
        v24 = [GEORPImageUpdate deleteImageUpdateWithImageId:identifier2];

        [poiEnrichment addImageUpdate:v24];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [removedExistingPhotos countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }
}

- (void)fillSubmissionFields:(id)fields
{
  fieldsCopy = fields;
  actionType = self->_actionType;
  if (actionType >= 2)
  {
    if (actionType != 2)
    {
      goto LABEL_6;
    }

    v6 = fieldsCopy;
    [(UGCPhotosForm *)self _fillSubmissionFieldsForDelete:fieldsCopy];
  }

  else
  {
    v6 = fieldsCopy;
    [(UGCPhotosForm *)self _fillSubmissionFieldsForAddOrEdit:fieldsCopy];
  }

  fieldsCopy = v6;
LABEL_6:
}

- (BOOL)isEdited
{
  removedExistingPhotos = [(UGCPhotosForm *)self removedExistingPhotos];
  if ([removedExistingPhotos count])
  {
    v4 = 1;
  }

  else
  {
    addedPhotosWithMetadata = [(UGCPhotosForm *)self addedPhotosWithMetadata];
    v4 = [addedPhotosWithMetadata count] != 0;
  }

  return v4;
}

- (BOOL)isEmpty
{
  activePhotoList = [(UGCPhotosForm *)self activePhotoList];
  v3 = [activePhotoList count] == 0;

  return v3;
}

- (BOOL)_isCompleteForDelete
{
  activePhotoList = [(UGCPhotosForm *)self activePhotoList];
  if ([activePhotoList count])
  {
    isEdited = 0;
  }

  else
  {
    isEdited = [(UGCPhotosForm *)self isEdited];
  }

  return isEdited;
}

- (BOOL)isComplete
{
  if (![(UGCPhotosForm *)self passesMinimumRequirementsToBeSubmittable])
  {
    return 0;
  }

  actionType = self->_actionType;
  if (actionType < 2)
  {

    return [(UGCPhotosForm *)self _isCompleteForAddOrEdit];
  }

  if (actionType != 2)
  {
    return 0;
  }

  return [(UGCPhotosForm *)self _isCompleteForDelete];
}

- (id)addedPhotos
{
  addedPhotosWithMetadata = [(UGCPhotosForm *)self addedPhotosWithMetadata];
  v3 = [addedPhotosWithMetadata copy];

  return v3;
}

- (unint64_t)numberOfAddedPhotos
{
  addedPhotosWithMetadata = [(UGCPhotosForm *)self addedPhotosWithMetadata];
  v3 = [addedPhotosWithMetadata count];

  return v3;
}

- (NSArray)removedExistingPhotos
{
  v2 = [(NSMutableArray *)self->_removedExistingPhotos copy];

  return v2;
}

- (NSArray)currentExistingPhotos
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activePhotoList = [(UGCPhotosForm *)self activePhotoList];
  v5 = [activePhotoList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(activePhotoList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 needsToBeDownloaded])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [activePhotoList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (int64_t)indexOfPhotoWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activePhotoList = [(UGCPhotosForm *)self activePhotoList];
  v6 = [activePhotoList count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      activePhotoList2 = [(UGCPhotosForm *)self activePhotoList];
      v9 = [activePhotoList2 objectAtIndexedSubscript:v7];
      identifier = [v9 identifier];
      v11 = [identifier isEqualToString:identifierCopy];

      if (v11)
      {
        break;
      }

      ++v7;
      activePhotoList3 = [(UGCPhotosForm *)self activePhotoList];
      v13 = [activePhotoList3 count];

      if (v7 >= v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (NSArray)addedPhotosWithMetadata
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activePhotoList = [(UGCPhotosForm *)self activePhotoList];
  v5 = [activePhotoList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(activePhotoList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 needsToBeDownloaded] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [activePhotoList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (NSArray)activePhotoList
{
  v2 = [(NSMutableArray *)self->_activePhotoList copy];

  return v2;
}

- (BOOL)removePhotoWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = 24;
  v6 = self->_activePhotoList;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v17 = 24;
    selfCopy = self;
    v8 = 0;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:identifierCopy];

        if (v14)
        {
          v7 = v12;
          goto LABEL_11;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v11 = v8;
LABEL_11:
    v5 = v17;
    self = selfCopy;
  }

  else
  {
    v11 = 0;
  }

  v15 = [*(&self->super.super.isa + v5) count];
  if (v11 < v15)
  {
    [*(&self->super.super.isa + v5) removeObjectAtIndex:v11];
    if (v7 && [v7 needsToBeDownloaded])
    {
      [(NSMutableArray *)self->_removedExistingPhotos addObject:v7];
    }

    [(UGCForm *)self _notifyObserversOfChange];
  }

  return v11 < v15;
}

- (BOOL)_addPhoto:(id)photo
{
  photoCopy = photo;
  if (([(NSMutableArray *)self->_activePhotoList containsObject:photoCopy]& 1) != 0 || MapsFeature_IsEnabled_SydneyARP() && (v6 = [(UGCPhotosForm *)self numberOfAddedPhotos], v6 >= [(UGCPhotosForm *)self maximumNumberOfPhotos]))
  {
    v5 = 0;
  }

  else
  {
    [(NSMutableArray *)self->_activePhotoList addObject:photoCopy];
    v5 = 1;
  }

  return v5;
}

- (void)addPhotoListWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [metadataCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(metadataCopy);
        }

        v7 |= [(UGCPhotosForm *)self _addPhoto:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [metadataCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
    if (v7)
    {
      [(UGCForm *)self _notifyObserversOfChange];
    }
  }
}

- (void)addPhoto:(id)photo
{
  photoCopy = photo;
  if (sub_1006E6728(self))
  {
    if ([(UGCPhotosForm *)self _addPhoto:photoCopy])
    {
      [(UGCForm *)self _notifyObserversOfChange];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: numberOfPhotoSlotsAvailableForForm(self) > 0", v5, 2u);
  }
}

- (UGCPhotosForm)initWithActionType:(int64_t)type initialPhotos:(id)photos maximumNumberOfPhotos:(unint64_t)ofPhotos
{
  photosCopy = photos;
  v16.receiver = self;
  v16.super_class = UGCPhotosForm;
  v9 = [(UGCForm *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_actionType = type;
    v11 = [photosCopy mutableCopy];
    activePhotoList = v10->_activePhotoList;
    v10->_activePhotoList = v11;

    v13 = objc_alloc_init(NSMutableArray);
    removedExistingPhotos = v10->_removedExistingPhotos;
    v10->_removedExistingPhotos = v13;

    v10->_maximumNumberOfPhotos = ofPhotos;
  }

  return v10;
}

+ (id)addPhotosFormWithPlaceQuestionnaire:(id)questionnaire photosWithMetadata:(id)metadata
{
  questionnaireCopy = questionnaire;
  metadataCopy = metadata;
  if ([questionnaireCopy canCollectPhotos])
  {
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      UInteger = [questionnaireCopy maximumNumberOfPhotos];
    }

    else
    {
      UInteger = GEOConfigGetUInteger();
    }

    v8 = [[UGCPhotosForm alloc] initWithActionType:0 initialPhotos:&__NSArray0__struct maximumNumberOfPhotos:UInteger];
    [(UGCPhotosForm *)v8 addPhotoListWithMetadata:metadataCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)editPhotosFormWithPlaceQuestionnaire:(id)questionnaire previouslySubmittedImages:(id)images
{
  questionnaireCopy = questionnaire;
  imagesCopy = images;
  if ([imagesCopy count])
  {
    v8 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = imagesCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [UGCDownloadablePhoto alloc];
          v16 = [(UGCDownloadablePhoto *)v15 initWithGEORPEnrichmentImage:v14, v23];
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    if (MapsFeature_IsEnabled_SydneyARP())
    {
      UInteger = [questionnaireCopy maximumNumberOfPhotos];
    }

    else
    {
      UInteger = GEOConfigGetUInteger();
    }

    v19 = UInteger;
    v20 = [UGCPhotosForm alloc];
    v21 = [v8 copy];
    v18 = [(UGCPhotosForm *)v20 initWithActionType:1 initialPhotos:v21 maximumNumberOfPhotos:v19];
  }

  else
  {
    v18 = [self addPhotosFormWithPlaceQuestionnaire:questionnaireCopy photosWithMetadata:&__NSArray0__struct];
  }

  return v18;
}

@end