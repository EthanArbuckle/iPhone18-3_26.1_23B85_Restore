@interface SHHapticsEndpointResponse
- (SHHapticsEndpointResponse)initWithRequestMediaItem:(id)item spatialTrackInformation:(id)information networkDownloadResponse:(id)response;
@end

@implementation SHHapticsEndpointResponse

- (SHHapticsEndpointResponse)initWithRequestMediaItem:(id)item spatialTrackInformation:(id)information networkDownloadResponse:(id)response
{
  itemCopy = item;
  informationCopy = information;
  responseCopy = response;
  v15.receiver = self;
  v15.super_class = SHHapticsEndpointResponse;
  v12 = [(SHHapticsEndpointResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaItem, item);
    objc_storeStrong(&v13->_spatialTrackInformation, information);
    objc_storeStrong(&v13->_networkDownloadResponse, response);
  }

  return v13;
}

@end