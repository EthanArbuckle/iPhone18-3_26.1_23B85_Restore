@interface MusicStoreCollectionSongsRequest
- (MusicStoreCollectionSongsRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MusicStoreCollectionSongsRequest

- (MusicStoreCollectionSongsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MusicStoreCollectionSongsRequest;
  v5 = [(MusicStoreCollectionSongsRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MusicStoreCollectionSongsRequestCollectionIdentifiers"];
    collectionIdentifiers = v5->_collectionIdentifiers;
    v5->_collectionIdentifiers = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MusicStoreCollectionSongsRequest;
  coderCopy = coder;
  [(MusicStoreCollectionSongsRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_collectionIdentifiers forKey:{@"MusicStoreCollectionSongsRequestCollectionIdentifiers", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MusicStoreCollectionSongsRequest;
  v4 = [(MusicStoreCollectionSongsRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_collectionIdentifiers);
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MusicStoreCollectionSongsRequestOperation alloc];
  v6 = [(MusicStoreCollectionSongsRequest *)self copy];
  v7 = [(MusicStoreCollectionSongsRequestOperation *)v5 initWithRequest:v6 responseHandler:handlerCopy];

  return v7;
}

@end