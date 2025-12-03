@interface MusicKit_SoftLinking_MPStoreLibraryPersonalizationResponse
- (MusicKit_SoftLinking_MPMutableSectionedCollection)representedObjectResults;
- (MusicKit_SoftLinking_MPStoreLibraryPersonalizationResponse)initWithUnderlyingPersonalizationResponse:(id)response;
@end

@implementation MusicKit_SoftLinking_MPStoreLibraryPersonalizationResponse

- (MusicKit_SoftLinking_MPStoreLibraryPersonalizationResponse)initWithUnderlyingPersonalizationResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPStoreLibraryPersonalizationResponse;
  v6 = [(MusicKit_SoftLinking_MPModelResponse *)&v9 initWithUnderlyingResponse:responseCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingResponse, response);
  }

  return v7;
}

- (MusicKit_SoftLinking_MPMutableSectionedCollection)representedObjectResults
{
  v3 = [MusicKit_SoftLinking_MPSectionedCollection alloc];
  representedObjectResults = [(MPStoreLibraryPersonalizationResponse *)self->_underlyingResponse representedObjectResults];
  v5 = [(MusicKit_SoftLinking_MPSectionedCollection *)v3 initWithUnderlyingSectionedCollection:representedObjectResults];

  return v5;
}

@end