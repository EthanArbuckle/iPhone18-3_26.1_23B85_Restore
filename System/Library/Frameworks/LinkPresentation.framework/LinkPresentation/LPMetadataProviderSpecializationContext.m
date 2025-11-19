@interface LPMetadataProviderSpecializationContext
- (LPEvent)event;
- (LPMetadataProviderSpecializationContext)initWithOriginalURL:(id)a3 postRedirectURL:(id)a4 MIMEType:(id)a5 webView:(id)a6 hasLoadedResource:(BOOL)a7 shouldFetchSubresources:(BOOL)a8 allowedSpecializations:(unint64_t)a9 fetchIsNotUserInitiated:(BOOL)a10;
- (void)ensureEventWithSpecialization:(unint64_t)a3;
@end

@implementation LPMetadataProviderSpecializationContext

- (LPMetadataProviderSpecializationContext)initWithOriginalURL:(id)a3 postRedirectURL:(id)a4 MIMEType:(id)a5 webView:(id)a6 hasLoadedResource:(BOOL)a7 shouldFetchSubresources:(BOOL)a8 allowedSpecializations:(unint64_t)a9 fetchIsNotUserInitiated:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v24 = a6;
  v25.receiver = self;
  v25.super_class = LPMetadataProviderSpecializationContext;
  v20 = [(LPMetadataProviderSpecializationContext *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_originalURL, a3);
    objc_storeStrong(&v21->_postRedirectURL, a4);
    objc_storeStrong(&v21->_MIMEType, a5);
    objc_storeStrong(&v21->_webView, a6);
    v21->_hasLoadedResource = a7;
    v21->_shouldFetchSubresources = a8;
    v21->_allowedSpecializations = a9;
    v21->_fetchIsNotUserInitiated = a10;
    v22 = v21;
  }

  return v21;
}

- (LPEvent)event
{
  v2 = self;
  objc_sync_enter(v2);
  event = v2->_event;
  if (!event)
  {
    v4 = (*(v2->_eventGenerator + 2))();
    v5 = v2->_event;
    v2->_event = v4;

    eventGenerator = v2->_eventGenerator;
    v2->_eventGenerator = 0;

    event = v2->_event;
  }

  v7 = event;
  objc_sync_exit(v2);

  return v7;
}

- (void)ensureEventWithSpecialization:(unint64_t)a3
{
  v5 = [(LPMetadataProviderSpecializationContext *)self event];
  event = self->_event;

  [(LPEvent *)event setSpecialization:a3];
}

@end