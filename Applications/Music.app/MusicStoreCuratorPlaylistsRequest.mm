@interface MusicStoreCuratorPlaylistsRequest
- (MusicStoreCuratorPlaylistsRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MusicStoreCuratorPlaylistsRequest

- (MusicStoreCuratorPlaylistsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MusicStoreCuratorPlaylistsRequest;
  v5 = [(MusicStoreCuratorPlaylistsRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_curatorStoreAdamID = [v4 decodeInt64ForKey:@"MusicStoreCuratorPlaylistsRequestCuratorStoreAdamID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MusicStoreCuratorPlaylistsRequest;
  v4 = a3;
  [(MusicStoreCuratorPlaylistsRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_curatorStoreAdamID forKey:{@"MusicStoreCuratorPlaylistsRequestCuratorStoreAdamID", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = MusicStoreCuratorPlaylistsRequest;
  result = [(MusicStoreCuratorPlaylistsRequest *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 1) = self->_curatorStoreAdamID;
  }

  return result;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [MusicStoreCuratorPlaylistsRequestOperation alloc];
  v6 = [(MusicStoreCuratorPlaylistsRequest *)self copy];
  v7 = [(MusicStoreCuratorPlaylistsRequestOperation *)v5 initWithRequest:v6 responseHandler:v4];

  return v7;
}

@end