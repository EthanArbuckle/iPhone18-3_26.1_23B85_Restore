@interface MPModelLibraryHasPurchasesRequest
- (MPMediaLibrary)mediaLibrary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryHasPurchasesRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryHasPurchasesRequestOperation);
  [(MPModelLibraryHasPurchasesRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryHasPurchasesRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(MPModelLibraryHasPurchasesRequest *)self modelObject];
    [v4 setModelObject:v5];

    v6 = [(MPModelLibraryHasPurchasesRequest *)self itemKind];
    [v4 setItemKind:v6];

    v7 = [(MPModelLibraryHasPurchasesRequest *)self mediaLibrary];
    [v4 setMediaLibrary:v7];
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