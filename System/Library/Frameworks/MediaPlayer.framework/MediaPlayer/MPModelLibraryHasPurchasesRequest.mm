@interface MPModelLibraryHasPurchasesRequest
- (MPMediaLibrary)mediaLibrary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryHasPurchasesRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryHasPurchasesRequestOperation);
  [(MPModelLibraryHasPurchasesRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryHasPurchasesRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    modelObject = [(MPModelLibraryHasPurchasesRequest *)self modelObject];
    [v4 setModelObject:modelObject];

    itemKind = [(MPModelLibraryHasPurchasesRequest *)self itemKind];
    [v4 setItemKind:itemKind];

    mediaLibrary = [(MPModelLibraryHasPurchasesRequest *)self mediaLibrary];
    [v4 setMediaLibrary:mediaLibrary];
  }

  return v4;
}

- (MPMediaLibrary)mediaLibrary
{
  mediaLibrary = self->_mediaLibrary;
  if (mediaLibrary)
  {
    v3 = mediaLibrary;
  }

  else
  {
    v3 = +[MPMediaLibrary deviceMediaLibrary];
  }

  return v3;
}

@end