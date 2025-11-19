@interface UGCSubmissionFields
- (GEORPIncidentFeedback)incidentFeedback;
- (GEORPPoiEnrichmentUpdate)poiEnrichment;
- (NSArray)photoList;
- (UGCSubmissionFields)init;
- (void)addPhoto:(id)a3;
@end

@implementation UGCSubmissionFields

- (void)addPhoto:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_photos containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_photos addObject:v4];
  }
}

- (NSArray)photoList
{
  v2 = [(NSMutableArray *)self->_photos copy];

  return v2;
}

- (GEORPIncidentFeedback)incidentFeedback
{
  incidentFeedback = self->_incidentFeedback;
  if (!incidentFeedback)
  {
    v4 = objc_alloc_init(GEORPIncidentFeedback);
    v5 = self->_incidentFeedback;
    self->_incidentFeedback = v4;

    incidentFeedback = self->_incidentFeedback;
  }

  return incidentFeedback;
}

- (GEORPPoiEnrichmentUpdate)poiEnrichment
{
  poiEnrichment = self->_poiEnrichment;
  if (!poiEnrichment)
  {
    v4 = objc_alloc_init(GEORPPoiEnrichmentUpdate);
    v5 = self->_poiEnrichment;
    self->_poiEnrichment = v4;

    poiEnrichment = self->_poiEnrichment;
  }

  return poiEnrichment;
}

- (UGCSubmissionFields)init
{
  v6.receiver = self;
  v6.super_class = UGCSubmissionFields;
  v2 = [(UGCSubmissionFields *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    photos = v2->_photos;
    v2->_photos = v3;
  }

  return v2;
}

@end