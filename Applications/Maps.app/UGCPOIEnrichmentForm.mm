@interface UGCPOIEnrichmentForm
+ (id)addPOIEnrichmentFormWithMapItem:(id)item photosForm:(id)form ratingsForm:(id)ratingsForm;
+ (id)editPOIEnrichmentFormWithMapItem:(id)item parentSubmissionIdentifier:(id)identifier photosForm:(id)form ratingsForm:(id)ratingsForm;
- (BOOL)isComplete;
- (BOOL)isEdited;
- (BOOL)isEmpty;
- (BOOL)passesMinimumRequirementsToBeSubmittable;
- (UGCPOIEnrichmentForm)initWithMapItem:(id)item actionType:(int64_t)type photosForm:(id)form ratingsForm:(id)ratingsForm;
- (UGCPOIEnrichmentForm)initWithMapItem:(id)item parentSubmissionIdentifier:(id)identifier photosForm:(id)form ratingsForm:(id)ratingsForm;
- (int64_t)actionType;
- (void)_fillSubmissionFields:(id)fields;
- (void)fillSubmissionFields:(id)fields;
- (void)fillSubmissionFieldsForPhotos:(id)photos;
- (void)fillSubmissionFieldsForRatings:(id)ratings;
@end

@implementation UGCPOIEnrichmentForm

- (void)_fillSubmissionFields:(id)fields
{
  fieldsCopy = fields;
  poiEnrichment = [fieldsCopy poiEnrichment];
  if ([(UGCPOIEnrichmentForm *)self actionType]== 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [poiEnrichment setAction:v5];
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _placeData = [_geoMapItem _placeData];
  v8 = [GEORPPoiEnrichmentPlaceContext buildPlaceContextWithPlaceData:_placeData];
  [poiEnrichment setPlaceContext:v8];

  if (([(UGCPOIEnrichmentForm *)self actionType]== 1 || [(UGCPOIEnrichmentForm *)self actionType]== 2) && [(NSString *)self->_parentSubmissionIdentifier length])
  {
    [fieldsCopy setParentSubmissionIdentifier:self->_parentSubmissionIdentifier];
  }
}

- (void)fillSubmissionFieldsForRatings:(id)ratings
{
  ratingsCopy = ratings;
  [(UGCPOIEnrichmentForm *)self _fillSubmissionFields:ratingsCopy];
  [(UGCRatingsForm *)self->_ratingsForm fillSubmissionFields:ratingsCopy];
  if (([(UGCPOIEnrichmentForm *)self actionType]== 1 || [(UGCPOIEnrichmentForm *)self actionType]== 2) && [(NSString *)self->_parentSubmissionIdentifier length])
  {
    parentSubmissionIdentifier = [(UGCRatingsForm *)self->_ratingsForm parentSubmissionIdentifier];
    [ratingsCopy setParentSubmissionIdentifier:parentSubmissionIdentifier];
  }
}

- (void)fillSubmissionFieldsForPhotos:(id)photos
{
  photosCopy = photos;
  [(UGCPOIEnrichmentForm *)self _fillSubmissionFields:photosCopy];
  [(UGCPhotosForm *)self->_photosForm fillSubmissionFields:photosCopy];
  if (([(UGCPOIEnrichmentForm *)self actionType]== 1 || [(UGCPOIEnrichmentForm *)self actionType]== 2) && [(NSString *)self->_parentSubmissionIdentifier length])
  {
    parentSubmissionIdentifier = [(UGCPhotosForm *)self->_photosForm parentSubmissionIdentifier];
    [photosCopy setParentSubmissionIdentifier:parentSubmissionIdentifier];
  }
}

- (void)fillSubmissionFields:(id)fields
{
  fieldsCopy = fields;
  [(UGCPOIEnrichmentForm *)self _fillSubmissionFields:fieldsCopy];
  [(UGCRatingsForm *)self->_ratingsForm fillSubmissionFields:fieldsCopy];
  [(UGCPhotosForm *)self->_photosForm fillSubmissionFields:fieldsCopy];
}

- (BOOL)passesMinimumRequirementsToBeSubmittable
{
  ratingsForm = self->_ratingsForm;
  photosForm = self->_photosForm;
  if (ratingsForm)
  {
    passesMinimumRequirementsToBeSubmittable = [(UGCRatingsForm *)ratingsForm passesMinimumRequirementsToBeSubmittable];
    if (!photosForm || (passesMinimumRequirementsToBeSubmittable & 1) == 0)
    {
      return (photosForm == 0) & passesMinimumRequirementsToBeSubmittable;
    }

    photosForm = self->_photosForm;
  }

  return [(UGCPhotosForm *)photosForm passesMinimumRequirementsToBeSubmittable];
}

- (BOOL)isEdited
{
  if ([(UGCRatingsForm *)self->_ratingsForm isEdited])
  {
    return 1;
  }

  photosForm = self->_photosForm;

  return [(UGCPhotosForm *)photosForm isEdited];
}

- (BOOL)isEmpty
{
  isEmpty = [(UGCRatingsForm *)self->_ratingsForm isEmpty];
  if (isEmpty)
  {
    photosForm = self->_photosForm;

    LOBYTE(isEmpty) = [(UGCPhotosForm *)photosForm isEmpty];
  }

  return isEmpty;
}

- (int64_t)actionType
{
  if (self->_parentSubmissionIdentifier && [(UGCPOIEnrichmentForm *)self isEmpty])
  {
    return 2;
  }

  else
  {
    return self->_actionType;
  }
}

- (BOOL)isComplete
{
  if ([(UGCPOIEnrichmentForm *)self passesMinimumRequirementsToBeSubmittable])
  {
    if ([(UGCRatingsForm *)self->_ratingsForm isComplete])
    {
      isComplete = 1;
    }

    else
    {
      isComplete = [(UGCPhotosForm *)self->_photosForm isComplete];
    }

    actionType = [(UGCPOIEnrichmentForm *)self actionType];
    if (actionType == 2)
    {
      LOBYTE(isComplete) = 1;
    }

    else if (actionType == 1)
    {
      isComplete &= [(UGCPOIEnrichmentForm *)self isEdited];
    }
  }

  else
  {
    LOBYTE(isComplete) = 0;
  }

  return isComplete;
}

- (UGCPOIEnrichmentForm)initWithMapItem:(id)item actionType:(int64_t)type photosForm:(id)form ratingsForm:(id)ratingsForm
{
  itemCopy = item;
  formCopy = form;
  ratingsFormCopy = ratingsForm;
  v17.receiver = self;
  v17.super_class = UGCPOIEnrichmentForm;
  v14 = [(UGCForm *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mapItem, item);
    objc_storeStrong(&v15->_photosForm, form);
    objc_storeStrong(&v15->_ratingsForm, ratingsForm);
    v15->_actionType = type;
    [(UGCForm *)v15->_photosForm addObserver:v15];
    [(UGCForm *)v15->_ratingsForm addObserver:v15];
  }

  return v15;
}

- (UGCPOIEnrichmentForm)initWithMapItem:(id)item parentSubmissionIdentifier:(id)identifier photosForm:(id)form ratingsForm:(id)ratingsForm
{
  ratingsFormCopy = ratingsForm;
  formCopy = form;
  itemCopy = item;
  v13 = [[UGCPOIEnrichmentForm alloc] initWithMapItem:itemCopy actionType:1 photosForm:formCopy ratingsForm:ratingsFormCopy];

  if (v13)
  {
    v13->_parentSubmissionIdentifier = identifier;
  }

  return v13;
}

+ (id)editPOIEnrichmentFormWithMapItem:(id)item parentSubmissionIdentifier:(id)identifier photosForm:(id)form ratingsForm:(id)ratingsForm
{
  ratingsFormCopy = ratingsForm;
  formCopy = form;
  identifierCopy = identifier;
  itemCopy = item;
  v13 = [[UGCPOIEnrichmentForm alloc] initWithMapItem:itemCopy parentSubmissionIdentifier:identifierCopy photosForm:formCopy ratingsForm:ratingsFormCopy];

  return v13;
}

+ (id)addPOIEnrichmentFormWithMapItem:(id)item photosForm:(id)form ratingsForm:(id)ratingsForm
{
  ratingsFormCopy = ratingsForm;
  formCopy = form;
  itemCopy = item;
  v10 = [[UGCPOIEnrichmentForm alloc] initWithMapItem:itemCopy actionType:0 photosForm:formCopy ratingsForm:ratingsFormCopy];

  return v10;
}

@end