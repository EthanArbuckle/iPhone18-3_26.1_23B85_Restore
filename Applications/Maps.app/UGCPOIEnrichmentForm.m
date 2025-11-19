@interface UGCPOIEnrichmentForm
+ (id)addPOIEnrichmentFormWithMapItem:(id)a3 photosForm:(id)a4 ratingsForm:(id)a5;
+ (id)editPOIEnrichmentFormWithMapItem:(id)a3 parentSubmissionIdentifier:(id)a4 photosForm:(id)a5 ratingsForm:(id)a6;
- (BOOL)isComplete;
- (BOOL)isEdited;
- (BOOL)isEmpty;
- (BOOL)passesMinimumRequirementsToBeSubmittable;
- (UGCPOIEnrichmentForm)initWithMapItem:(id)a3 actionType:(int64_t)a4 photosForm:(id)a5 ratingsForm:(id)a6;
- (UGCPOIEnrichmentForm)initWithMapItem:(id)a3 parentSubmissionIdentifier:(id)a4 photosForm:(id)a5 ratingsForm:(id)a6;
- (int64_t)actionType;
- (void)_fillSubmissionFields:(id)a3;
- (void)fillSubmissionFields:(id)a3;
- (void)fillSubmissionFieldsForPhotos:(id)a3;
- (void)fillSubmissionFieldsForRatings:(id)a3;
@end

@implementation UGCPOIEnrichmentForm

- (void)_fillSubmissionFields:(id)a3
{
  v9 = a3;
  v4 = [v9 poiEnrichment];
  if ([(UGCPOIEnrichmentForm *)self actionType]== 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v4 setAction:v5];
  v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v7 = [v6 _placeData];
  v8 = [GEORPPoiEnrichmentPlaceContext buildPlaceContextWithPlaceData:v7];
  [v4 setPlaceContext:v8];

  if (([(UGCPOIEnrichmentForm *)self actionType]== 1 || [(UGCPOIEnrichmentForm *)self actionType]== 2) && [(NSString *)self->_parentSubmissionIdentifier length])
  {
    [v9 setParentSubmissionIdentifier:self->_parentSubmissionIdentifier];
  }
}

- (void)fillSubmissionFieldsForRatings:(id)a3
{
  v5 = a3;
  [(UGCPOIEnrichmentForm *)self _fillSubmissionFields:v5];
  [(UGCRatingsForm *)self->_ratingsForm fillSubmissionFields:v5];
  if (([(UGCPOIEnrichmentForm *)self actionType]== 1 || [(UGCPOIEnrichmentForm *)self actionType]== 2) && [(NSString *)self->_parentSubmissionIdentifier length])
  {
    v4 = [(UGCRatingsForm *)self->_ratingsForm parentSubmissionIdentifier];
    [v5 setParentSubmissionIdentifier:v4];
  }
}

- (void)fillSubmissionFieldsForPhotos:(id)a3
{
  v5 = a3;
  [(UGCPOIEnrichmentForm *)self _fillSubmissionFields:v5];
  [(UGCPhotosForm *)self->_photosForm fillSubmissionFields:v5];
  if (([(UGCPOIEnrichmentForm *)self actionType]== 1 || [(UGCPOIEnrichmentForm *)self actionType]== 2) && [(NSString *)self->_parentSubmissionIdentifier length])
  {
    v4 = [(UGCPhotosForm *)self->_photosForm parentSubmissionIdentifier];
    [v5 setParentSubmissionIdentifier:v4];
  }
}

- (void)fillSubmissionFields:(id)a3
{
  v4 = a3;
  [(UGCPOIEnrichmentForm *)self _fillSubmissionFields:v4];
  [(UGCRatingsForm *)self->_ratingsForm fillSubmissionFields:v4];
  [(UGCPhotosForm *)self->_photosForm fillSubmissionFields:v4];
}

- (BOOL)passesMinimumRequirementsToBeSubmittable
{
  ratingsForm = self->_ratingsForm;
  photosForm = self->_photosForm;
  if (ratingsForm)
  {
    v5 = [(UGCRatingsForm *)ratingsForm passesMinimumRequirementsToBeSubmittable];
    if (!photosForm || (v5 & 1) == 0)
    {
      return (photosForm == 0) & v5;
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
  v3 = [(UGCRatingsForm *)self->_ratingsForm isEmpty];
  if (v3)
  {
    photosForm = self->_photosForm;

    LOBYTE(v3) = [(UGCPhotosForm *)photosForm isEmpty];
  }

  return v3;
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
      v3 = 1;
    }

    else
    {
      v3 = [(UGCPhotosForm *)self->_photosForm isComplete];
    }

    v4 = [(UGCPOIEnrichmentForm *)self actionType];
    if (v4 == 2)
    {
      LOBYTE(v3) = 1;
    }

    else if (v4 == 1)
    {
      v3 &= [(UGCPOIEnrichmentForm *)self isEdited];
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (UGCPOIEnrichmentForm)initWithMapItem:(id)a3 actionType:(int64_t)a4 photosForm:(id)a5 ratingsForm:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = UGCPOIEnrichmentForm;
  v14 = [(UGCForm *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mapItem, a3);
    objc_storeStrong(&v15->_photosForm, a5);
    objc_storeStrong(&v15->_ratingsForm, a6);
    v15->_actionType = a4;
    [(UGCForm *)v15->_photosForm addObserver:v15];
    [(UGCForm *)v15->_ratingsForm addObserver:v15];
  }

  return v15;
}

- (UGCPOIEnrichmentForm)initWithMapItem:(id)a3 parentSubmissionIdentifier:(id)a4 photosForm:(id)a5 ratingsForm:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[UGCPOIEnrichmentForm alloc] initWithMapItem:v12 actionType:1 photosForm:v11 ratingsForm:v10];

  if (v13)
  {
    v13->_parentSubmissionIdentifier = a4;
  }

  return v13;
}

+ (id)editPOIEnrichmentFormWithMapItem:(id)a3 parentSubmissionIdentifier:(id)a4 photosForm:(id)a5 ratingsForm:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[UGCPOIEnrichmentForm alloc] initWithMapItem:v12 parentSubmissionIdentifier:v11 photosForm:v10 ratingsForm:v9];

  return v13;
}

+ (id)addPOIEnrichmentFormWithMapItem:(id)a3 photosForm:(id)a4 ratingsForm:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[UGCPOIEnrichmentForm alloc] initWithMapItem:v9 actionType:0 photosForm:v8 ratingsForm:v7];

  return v10;
}

@end