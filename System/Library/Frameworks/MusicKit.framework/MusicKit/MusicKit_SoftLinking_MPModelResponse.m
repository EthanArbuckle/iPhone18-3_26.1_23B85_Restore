@interface MusicKit_SoftLinking_MPModelResponse
- (MusicKit_SoftLinking_MPModelResponse)initWithUnderlyingResponse:(id)a3;
- (MusicKit_SoftLinking_MPSectionedCollection)results;
@end

@implementation MusicKit_SoftLinking_MPModelResponse

- (MusicKit_SoftLinking_MPModelResponse)initWithUnderlyingResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPModelResponse;
  v6 = [(MusicKit_SoftLinking_MPModelResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingResponse, a3);
  }

  return v7;
}

- (MusicKit_SoftLinking_MPSectionedCollection)results
{
  v3 = [MusicKit_SoftLinking_MPSectionedCollection alloc];
  v4 = [(MPModelResponse *)self->_underlyingResponse results];
  v5 = [(MusicKit_SoftLinking_MPSectionedCollection *)v3 initWithUnderlyingSectionedCollection:v4];

  return v5;
}

@end