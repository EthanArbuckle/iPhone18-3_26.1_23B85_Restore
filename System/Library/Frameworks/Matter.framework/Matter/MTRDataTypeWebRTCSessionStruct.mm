@interface MTRDataTypeWebRTCSessionStruct
- (MTRDataTypeWebRTCSessionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypeWebRTCSessionStruct

- (MTRDataTypeWebRTCSessionStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRDataTypeWebRTCSessionStruct;
  v2 = [(MTRDataTypeWebRTCSessionStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    id = v2->_id;
    v2->_id = &unk_284C3E588;

    peerNodeID = v3->_peerNodeID;
    v3->_peerNodeID = &unk_284C3E588;

    peerEndpointID = v3->_peerEndpointID;
    v3->_peerEndpointID = &unk_284C3E588;

    streamUsage = v3->_streamUsage;
    v3->_streamUsage = &unk_284C3E588;

    videoStreamID = v3->_videoStreamID;
    v3->_videoStreamID = 0;

    audioStreamID = v3->_audioStreamID;
    v3->_audioStreamID = 0;

    metadataEnabled = v3->_metadataEnabled;
    v3->_metadataEnabled = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypeWebRTCSessionStruct);
  v5 = [(MTRDataTypeWebRTCSessionStruct *)self id];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setId:v5];

  peerNodeID = [(MTRDataTypeWebRTCSessionStruct *)self peerNodeID];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setPeerNodeID:peerNodeID];

  peerEndpointID = [(MTRDataTypeWebRTCSessionStruct *)self peerEndpointID];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setPeerEndpointID:peerEndpointID];

  streamUsage = [(MTRDataTypeWebRTCSessionStruct *)self streamUsage];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setStreamUsage:streamUsage];

  videoStreamID = [(MTRDataTypeWebRTCSessionStruct *)self videoStreamID];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setVideoStreamID:videoStreamID];

  audioStreamID = [(MTRDataTypeWebRTCSessionStruct *)self audioStreamID];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setAudioStreamID:audioStreamID];

  metadataEnabled = [(MTRDataTypeWebRTCSessionStruct *)self metadataEnabled];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setMetadataEnabled:metadataEnabled];

  fabricIndex = [(MTRDataTypeWebRTCSessionStruct *)self fabricIndex];
  [(MTRDataTypeWebRTCSessionStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: id:%@ peerNodeID:%@; peerEndpointID:%@; streamUsage:%@; videoStreamID:%@; audioStreamID:%@; metadataEnabled:%@; fabricIndex:%@; >", v5, self->_id, self->_peerNodeID, self->_peerEndpointID, self->_streamUsage, self->_videoStreamID, self->_audioStreamID, self->_metadataEnabled, self->_fabricIndex];;

  return v6;
}

@end