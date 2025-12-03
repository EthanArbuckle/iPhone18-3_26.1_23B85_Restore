@interface MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct
- (MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct

- (MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct;
  v2 = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    cmafInterface = v2->_cmafInterface;
    v2->_cmafInterface = &unk_284C3E588;

    segmentDuration = v3->_segmentDuration;
    v3->_segmentDuration = &unk_284C3E588;

    chunkDuration = v3->_chunkDuration;
    v3->_chunkDuration = &unk_284C3E588;

    sessionGroup = v3->_sessionGroup;
    v3->_sessionGroup = &unk_284C3E588;

    trackName = v3->_trackName;
    v3->_trackName = &stru_284BD0DD8;

    cencKey = v3->_cencKey;
    v3->_cencKey = 0;

    cencKeyID = v3->_cencKeyID;
    v3->_cencKeyID = 0;

    metadataEnabled = v3->_metadataEnabled;
    v3->_metadataEnabled = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct);
  cmafInterface = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self cmafInterface];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setCmafInterface:cmafInterface];

  segmentDuration = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self segmentDuration];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setSegmentDuration:segmentDuration];

  chunkDuration = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self chunkDuration];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setChunkDuration:chunkDuration];

  sessionGroup = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self sessionGroup];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setSessionGroup:sessionGroup];

  trackName = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self trackName];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setTrackName:trackName];

  cencKey = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self cencKey];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setCencKey:cencKey];

  cencKeyID = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self cencKeyID];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setCencKeyID:cencKeyID];

  metadataEnabled = [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)self metadataEnabled];
  [(MTRPushAVStreamTransportClusterCMAFContainerOptionsStruct *)v4 setMetadataEnabled:metadataEnabled];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  cmafInterface = self->_cmafInterface;
  segmentDuration = self->_segmentDuration;
  chunkDuration = self->_chunkDuration;
  sessionGroup = self->_sessionGroup;
  trackName = self->_trackName;
  v11 = [(NSData *)self->_cencKey base64EncodedStringWithOptions:0];
  v12 = [(NSData *)self->_cencKeyID base64EncodedStringWithOptions:0];
  v13 = [v3 stringWithFormat:@"<%@: cmafInterface:%@ segmentDuration:%@; chunkDuration:%@; sessionGroup:%@; trackName:%@; cencKey:%@; cencKeyID:%@; metadataEnabled:%@; >", v5, cmafInterface, segmentDuration, chunkDuration, sessionGroup, trackName, v11, v12, self->_metadataEnabled];;

  return v13;
}

@end