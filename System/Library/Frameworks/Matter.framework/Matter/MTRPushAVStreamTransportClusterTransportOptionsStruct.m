@interface MTRPushAVStreamTransportClusterTransportOptionsStruct
- (MTRPushAVStreamTransportClusterTransportOptionsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterTransportOptionsStruct

- (MTRPushAVStreamTransportClusterTransportOptionsStruct)init
{
  v16.receiver = self;
  v16.super_class = MTRPushAVStreamTransportClusterTransportOptionsStruct;
  v2 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)&v16 init];
  v3 = v2;
  if (v2)
  {
    streamUsage = v2->_streamUsage;
    v2->_streamUsage = &unk_284C3E588;

    videoStreamID = v3->_videoStreamID;
    v3->_videoStreamID = 0;

    audioStreamID = v3->_audioStreamID;
    v3->_audioStreamID = 0;

    endpointID = v3->_endpointID;
    v3->_endpointID = &unk_284C3E588;

    url = v3->_url;
    v3->_url = &stru_284BD0DD8;

    v9 = objc_opt_new();
    triggerOptions = v3->_triggerOptions;
    v3->_triggerOptions = v9;

    ingestMethod = v3->_ingestMethod;
    v3->_ingestMethod = &unk_284C3E588;

    v12 = objc_opt_new();
    containerOptions = v3->_containerOptions;
    v3->_containerOptions = v12;

    expiryTime = v3->_expiryTime;
    v3->_expiryTime = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterTransportOptionsStruct);
  v5 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self streamUsage];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setStreamUsage:v5];

  v6 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self videoStreamID];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setVideoStreamID:v6];

  v7 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self audioStreamID];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setAudioStreamID:v7];

  v8 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self endpointID];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setEndpointID:v8];

  v9 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self url];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setUrl:v9];

  v10 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self triggerOptions];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setTriggerOptions:v10];

  v11 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self ingestMethod];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setIngestMethod:v11];

  v12 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self containerOptions];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setContainerOptions:v12];

  v13 = [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)self expiryTime];
  [(MTRPushAVStreamTransportClusterTransportOptionsStruct *)v4 setExpiryTime:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: streamUsage:%@ videoStreamID:%@; audioStreamID:%@; endpointID:%@; url:%@; triggerOptions:%@; ingestMethod:%@; containerOptions:%@; expiryTime:%@; >", v5, self->_streamUsage, self->_videoStreamID, self->_audioStreamID, self->_endpointID, self->_url, self->_triggerOptions, self->_ingestMethod, self->_containerOptions, self->_expiryTime];;

  return v6;
}

@end