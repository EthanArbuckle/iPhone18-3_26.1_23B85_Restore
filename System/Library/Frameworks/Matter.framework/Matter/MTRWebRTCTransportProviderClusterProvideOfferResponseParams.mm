@interface MTRWebRTCTransportProviderClusterProvideOfferResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRWebRTCTransportProviderClusterProvideOfferResponseParams)init;
- (MTRWebRTCTransportProviderClusterProvideOfferResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRWebRTCTransportProviderClusterProvideOfferResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterProvideOfferResponseParams

- (MTRWebRTCTransportProviderClusterProvideOfferResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRWebRTCTransportProviderClusterProvideOfferResponseParams;
  v2 = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = &unk_284C3E4C8;

    videoStreamID = v3->_videoStreamID;
    v3->_videoStreamID = 0;

    audioStreamID = v3->_audioStreamID;
    v3->_audioStreamID = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterProvideOfferResponseParams);
  webRTCSessionID = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self webRTCSessionID];
  [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)v4 setWebRTCSessionID:webRTCSessionID];

  videoStreamID = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self videoStreamID];
  [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)v4 setVideoStreamID:videoStreamID];

  audioStreamID = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self audioStreamID];
  [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)v4 setAudioStreamID:audioStreamID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ videoStreamID:%@; audioStreamID:%@; >", v5, self->_webRTCSessionID, self->_videoStreamID, self->_audioStreamID];;

  return v6;
}

- (MTRWebRTCTransportProviderClusterProvideOfferResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRWebRTCTransportProviderClusterProvideOfferResponseParams;
  v7 = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1363 commandID:3 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F33898(&v12, v15);
      if (!v8)
      {
        v8 = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRWebRTCTransportProviderClusterProvideOfferResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRWebRTCTransportProviderClusterProvideOfferResponseParams;
  v4 = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self setWebRTCSessionID:v5];

  if (*(struct + 2) == 1 && (sub_238E0A934(struct + 2)[2] & 1) != 0)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = sub_238E0A934(struct + 2);
    if ((v7[2] & 1) == 0)
    {
      goto LABEL_12;
    }

    v8 = [v6 numberWithUnsignedShort:*v7];
    [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self setVideoStreamID:v8];
  }

  else
  {
    [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self setVideoStreamID:0];
  }

  v10 = *(struct + 8);
  v9 = struct + 8;
  if (v10 != 1 || (sub_238E0A934(v9)[2] & 1) == 0)
  {
    [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self setAudioStreamID:0];
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = sub_238E0A934(v9);
  if ((v12[2] & 1) == 0)
  {
LABEL_12:
    sub_238EA195C();
  }

  v13 = [v11 numberWithUnsignedShort:*v12];
  [(MTRWebRTCTransportProviderClusterProvideOfferResponseParams *)self setAudioStreamID:v13];

LABEL_11:
  v14 = 0;
  v15 = 0;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

@end