@interface UGCPhotosForm
+ (id)addPhotosFormWithPlaceQuestionnaire:(id)a3 photosWithMetadata:(id)a4;
+ (id)editPhotosFormWithPlaceQuestionnaire:(id)a3 previouslySubmittedImages:(id)a4;
- (BOOL)_addPhoto:(id)a3;
- (BOOL)_isCompleteForDelete;
- (BOOL)isComplete;
- (BOOL)isEdited;
- (BOOL)isEmpty;
- (BOOL)removePhotoWithIdentifier:(id)a3;
- (NSArray)activePhotoList;
- (NSArray)addedPhotosWithMetadata;
- (NSArray)currentExistingPhotos;
- (NSArray)removedExistingPhotos;
- (UGCPhotosForm)initWithActionType:(int64_t)a3 initialPhotos:(id)a4 maximumNumberOfPhotos:(unint64_t)a5;
- (id)addedPhotos;
- (int64_t)indexOfPhotoWithIdentifier:(id)a3;
- (unint64_t)maximumNumberOfPhotosPerSubmission;
- (unint64_t)numberOfAddedPhotos;
- (void)_fillSubmissionFieldsForAddOrEdit:(id)a3;
- (void)_fillSubmissionFieldsForDelete:(id)a3;
- (void)addPhoto:(id)a3;
- (void)addPhotoListWithMetadata:(id)a3;
- (void)fillSubmissionFields:(id)a3;
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

- (void)_fillSubmissionFieldsForDelete:(id)a3
{
  v4 = [a3 poiEnrichment];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(UGCPhotosForm *)self currentExistingPhotos];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * v9) identifier];
        v11 = [GEORPImageUpdate deleteImageUpdateWithImageId:v10];

        [v4 addImageUpdate:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(UGCPhotosForm *)self removedExistingPhotos];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) identifier];
        v18 = [GEORPImageUpdate deleteImageUpdateWithImageId:v17];

        [v4 addImageUpdate:v18];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }
}

- (void)_fillSubmissionFieldsForAddOrEdit:(id)a3
{
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(UGCPhotosForm *)self addedPhotosWithMetadata];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 addPhoto:*(*(&v33 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v10 = [v4 poiEnrichment];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(UGCPhotosForm *)self currentExistingPhotos];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * v15) identifier];
        v17 = [GEORPImageUpdate unmodifiedImageUpdateWithImageId:v16];

        [v10 addImageUpdate:v17];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(UGCPhotosForm *)self removedExistingPhotos];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) identifier];
        v24 = [GEORPImageUpdate deleteImageUpdateWithImageId:v23];

        [v10 addImageUpdate:v24];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }
}

- (void)fillSubmissionFields:(id)a3
{
  v4 = a3;
  actionType = self->_actionType;
  if (actionType >= 2)
  {
    if (actionType != 2)
    {
      goto LABEL_6;
    }

    v6 = v4;
    [(UGCPhotosForm *)self _fillSubmissionFieldsForDelete:v4];
  }

  else
  {
    v6 = v4;
    [(UGCPhotosForm *)self _fillSubmissionFieldsForAddOrEdit:v4];
  }

  v4 = v6;
LABEL_6:
}

- (BOOL)isEdited
{
  v3 = [(UGCPhotosForm *)self removedExistingPhotos];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UGCPhotosForm *)self addedPhotosWithMetadata];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (BOOL)isEmpty
{
  v2 = [(UGCPhotosForm *)self activePhotoList];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)_isCompleteForDelete
{
  v3 = [(UGCPhotosForm *)self activePhotoList];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(UGCPhotosForm *)self isEdited];
  }

  return v4;
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
  v2 = [(UGCPhotosForm *)self addedPhotosWithMetadata];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)numberOfAddedPhotos
{
  v2 = [(UGCPhotosForm *)self addedPhotosWithMetadata];
  v3 = [v2 count];

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
  v4 = [(UGCPhotosForm *)self activePhotoList];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 needsToBeDownloaded])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (int64_t)indexOfPhotoWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UGCPhotosForm *)self activePhotoList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(UGCPhotosForm *)self activePhotoList];
      v9 = [v8 objectAtIndexedSubscript:v7];
      v10 = [v9 identifier];
      v11 = [v10 isEqualToString:v4];

      if (v11)
      {
        break;
      }

      ++v7;
      v12 = [(UGCPhotosForm *)self activePhotoList];
      v13 = [v12 count];

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
  v4 = [(UGCPhotosForm *)self activePhotoList];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 needsToBeDownloaded] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)removePhotoWithIdentifier:(id)a3
{
  v4 = a3;
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
    v18 = self;
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
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:v4];

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
    self = v18;
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

- (BOOL)_addPhoto:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_activePhotoList containsObject:v4]& 1) != 0 || MapsFeature_IsEnabled_SydneyARP() && (v6 = [(UGCPhotosForm *)self numberOfAddedPhotos], v6 >= [(UGCPhotosForm *)self maximumNumberOfPhotos]))
  {
    v5 = 0;
  }

  else
  {
    [(NSMutableArray *)self->_activePhotoList addObject:v4];
    v5 = 1;
  }

  return v5;
}

- (void)addPhotoListWithMetadata:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v7 |= [(UGCPhotosForm *)self _addPhoto:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
    if (v7)
    {
      [(UGCForm *)self _notifyObserversOfChange];
    }
  }
}

- (void)addPhoto:(id)a3
{
  v4 = a3;
  if (sub_1006E6728(self))
  {
    if ([(UGCPhotosForm *)self _addPhoto:v4])
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

- (UGCPhotosForm)initWithActionType:(int64_t)a3 initialPhotos:(id)a4 maximumNumberOfPhotos:(unint64_t)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = UGCPhotosForm;
  v9 = [(UGCForm *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_actionType = a3;
    v11 = [v8 mutableCopy];
    activePhotoList = v10->_activePhotoList;
    v10->_activePhotoList = v11;

    v13 = objc_alloc_init(NSMutableArray);
    removedExistingPhotos = v10->_removedExistingPhotos;
    v10->_removedExistingPhotos = v13;

    v10->_maximumNumberOfPhotos = a5;
  }

  return v10;
}

+ (id)addPhotosFormWithPlaceQuestionnaire:(id)a3 photosWithMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 canCollectPhotos])
  {
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      UInteger = [v5 maximumNumberOfPhotos];
    }

    else
    {
      UInteger = GEOConfigGetUInteger();
    }

    v8 = [[UGCPhotosForm alloc] initWithActionType:0 initialPhotos:&__NSArray0__struct maximumNumberOfPhotos:UInteger];
    [(UGCPhotosForm *)v8 addPhotoListWithMetadata:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)editPhotosFormWithPlaceQuestionnaire:(id)a3 previouslySubmittedImages:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
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
      UInteger = [v6 maximumNumberOfPhotos];
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
    v18 = [a1 addPhotosFormWithPlaceQuestionnaire:v6 photosWithMetadata:&__NSArray0__struct];
  }

  return v18;
}

@end