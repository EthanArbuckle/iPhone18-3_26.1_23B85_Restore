@interface MusicKit_SoftLinking_MPModelResponse
- (MusicKit_SoftLinking_MPModelResponse)initWithUnderlyingResponse:(id)response;
- (MusicKit_SoftLinking_MPSectionedCollection)results;
@end

@implementation MusicKit_SoftLinking_MPModelResponse

- (MusicKit_SoftLinking_MPModelResponse)initWithUnderlyingResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPModelResponse;
  v6 = [(MusicKit_SoftLinking_MPModelResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingResponse, response);
  }

  return v7;
}

- (MusicKit_SoftLinking_MPSectionedCollection)results
{
  v3 = [MusicKit_SoftLinking_MPSectionedCollection alloc];
  results = [(MPModelResponse *)self->_underlyingResponse results];
  v5 = [(MusicKit_SoftLinking_MPSectionedCollection *)v3 initWithUnderlyingSectionedCollection:results];

  return v5;
}

@end