@interface LPMetadataProviderSpecializationContext
- (LPEvent)event;
- (LPMetadataProviderSpecializationContext)initWithOriginalURL:(id)l postRedirectURL:(id)rL MIMEType:(id)type webView:(id)view hasLoadedResource:(BOOL)resource shouldFetchSubresources:(BOOL)subresources allowedSpecializations:(unint64_t)specializations fetchIsNotUserInitiated:(BOOL)self0;
- (void)ensureEventWithSpecialization:(unint64_t)specialization;
@end

@implementation LPMetadataProviderSpecializationContext

- (LPMetadataProviderSpecializationContext)initWithOriginalURL:(id)l postRedirectURL:(id)rL MIMEType:(id)type webView:(id)view hasLoadedResource:(BOOL)resource shouldFetchSubresources:(BOOL)subresources allowedSpecializations:(unint64_t)specializations fetchIsNotUserInitiated:(BOOL)self0
{
  lCopy = l;
  rLCopy = rL;
  typeCopy = type;
  viewCopy = view;
  v25.receiver = self;
  v25.super_class = LPMetadataProviderSpecializationContext;
  v20 = [(LPMetadataProviderSpecializationContext *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_originalURL, l);
    objc_storeStrong(&v21->_postRedirectURL, rL);
    objc_storeStrong(&v21->_MIMEType, type);
    objc_storeStrong(&v21->_webView, view);
    v21->_hasLoadedResource = resource;
    v21->_shouldFetchSubresources = subresources;
    v21->_allowedSpecializations = specializations;
    v21->_fetchIsNotUserInitiated = initiated;
    v22 = v21;
  }

  return v21;
}

- (LPEvent)event
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  event = selfCopy->_event;
  if (!event)
  {
    v4 = (*(selfCopy->_eventGenerator + 2))();
    v5 = selfCopy->_event;
    selfCopy->_event = v4;

    eventGenerator = selfCopy->_eventGenerator;
    selfCopy->_eventGenerator = 0;

    event = selfCopy->_event;
  }

  v7 = event;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)ensureEventWithSpecialization:(unint64_t)specialization
{
  event = [(LPMetadataProviderSpecializationContext *)self event];
  event = self->_event;

  [(LPEvent *)event setSpecialization:specialization];
}

@end