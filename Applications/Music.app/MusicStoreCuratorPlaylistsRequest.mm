@interface MusicStoreCuratorPlaylistsRequest
- (MusicStoreCuratorPlaylistsRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MusicStoreCuratorPlaylistsRequest

- (MusicStoreCuratorPlaylistsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MusicStoreCuratorPlaylistsRequest;
  v5 = [(MusicStoreCuratorPlaylistsRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_curatorStoreAdamID = [coderCopy decodeInt64ForKey:@"MusicStoreCuratorPlaylistsRequestCuratorStoreAdamID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MusicStoreCuratorPlaylistsRequest;
  coderCopy = coder;
  [(MusicStoreCuratorPlaylistsRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_curatorStoreAdamID forKey:{@"MusicStoreCuratorPlaylistsRequestCuratorStoreAdamID", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = MusicStoreCuratorPlaylistsRequest;
  result = [(MusicStoreCuratorPlaylistsRequest *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 1) = self->_curatorStoreAdamID;
  }

  return result;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MusicStoreCuratorPlaylistsRequestOperation alloc];
  v6 = [(MusicStoreCuratorPlaylistsRequest *)self copy];
  v7 = [(MusicStoreCuratorPlaylistsRequestOperation *)v5 initWithRequest:v6 responseHandler:handlerCopy];

  return v7;
}

@end