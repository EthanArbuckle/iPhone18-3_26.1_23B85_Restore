@interface MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest
- (MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedRequest:(id)request unpersonalizedContentDescriptors:(id)descriptors representedObjects:(id)objects;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest

- (MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest)initWithUnpersonalizedRequest:(id)request unpersonalizedContentDescriptors:(id)descriptors representedObjects:(id)objects
{
  requestCopy = request;
  descriptorsCopy = descriptors;
  objectsCopy = objects;
  v25.receiver = self;
  v25.super_class = MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest;
  v11 = [(MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest *)&v25 init];
  if (v11)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v12 = getMPStoreLibraryPersonalizationRequestClass_softClass;
    v30 = getMPStoreLibraryPersonalizationRequestClass_softClass;
    if (!getMPStoreLibraryPersonalizationRequestClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getMPStoreLibraryPersonalizationRequestClass_block_invoke;
      v26[3] = &unk_278229610;
      v26[4] = &v27;
      __getMPStoreLibraryPersonalizationRequestClass_block_invoke(v26);
      v12 = v28[3];
    }

    v13 = v12;
    _Block_object_dispose(&v27, 8);
    v14 = [v12 alloc];
    _underlyingRequest = [requestCopy _underlyingRequest];
    _underlyingSectionedCollection = [descriptorsCopy _underlyingSectionedCollection];
    v17 = [v14 initWithUnpersonalizedRequest:_underlyingRequest unpersonalizedContentDescriptors:_underlyingSectionedCollection];
    underlyingPersonalizationRequest = v11->_underlyingPersonalizationRequest;
    v11->_underlyingPersonalizationRequest = v17;

    v19 = v11->_underlyingPersonalizationRequest;
    _underlyingSectionedCollection2 = [objectsCopy _underlyingSectionedCollection];
    [(MPStoreLibraryPersonalizationRequest *)v19 setRepresentedObjects:_underlyingSectionedCollection2];

    v21 = v11->_underlyingPersonalizationRequest;
    _underlyingRequest2 = [requestCopy _underlyingRequest];
    itemProperties = [_underlyingRequest2 itemProperties];
    [(MPStoreLibraryPersonalizationRequest *)v21 setItemProperties:itemProperties];
  }

  return v11;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingPersonalizationRequest = self->_underlyingPersonalizationRequest;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__MusicKit_SoftLinking_MPStoreLibraryPersonalizationRequest_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_2782296F0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MPStoreLibraryPersonalizationRequest *)underlyingPersonalizationRequest performWithResponseHandler:v7];
}

@end