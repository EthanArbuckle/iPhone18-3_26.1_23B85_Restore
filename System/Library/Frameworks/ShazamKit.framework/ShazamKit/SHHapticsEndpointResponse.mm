@interface SHHapticsEndpointResponse
- (SHHapticsEndpointResponse)initWithRequestMediaItem:(id)a3 spatialTrackInformation:(id)a4 networkDownloadResponse:(id)a5;
@end

@implementation SHHapticsEndpointResponse

- (SHHapticsEndpointResponse)initWithRequestMediaItem:(id)a3 spatialTrackInformation:(id)a4 networkDownloadResponse:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHHapticsEndpointResponse;
  v12 = [(SHHapticsEndpointResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaItem, a3);
    objc_storeStrong(&v13->_spatialTrackInformation, a4);
    objc_storeStrong(&v13->_networkDownloadResponse, a5);
  }

  return v13;
}

@end