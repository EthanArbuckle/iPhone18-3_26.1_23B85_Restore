@interface MusicStoreCollectionSongsRequest
- (MusicStoreCollectionSongsRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MusicStoreCollectionSongsRequest

- (MusicStoreCollectionSongsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MusicStoreCollectionSongsRequest;
  v5 = [(MusicStoreCollectionSongsRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MusicStoreCollectionSongsRequestCollectionIdentifiers"];
    collectionIdentifiers = v5->_collectionIdentifiers;
    v5->_collectionIdentifiers = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MusicStoreCollectionSongsRequest;
  v4 = a3;
  [(MusicStoreCollectionSongsRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_collectionIdentifiers forKey:{@"MusicStoreCollectionSongsRequestCollectionIdentifiers", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MusicStoreCollectionSongsRequest;
  v4 = [(MusicStoreCollectionSongsRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_collectionIdentifiers);
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [MusicStoreCollectionSongsRequestOperation alloc];
  v6 = [(MusicStoreCollectionSongsRequest *)self copy];
  v7 = [(MusicStoreCollectionSongsRequestOperation *)v5 initWithRequest:v6 responseHandler:v4];

  return v7;
}

@end