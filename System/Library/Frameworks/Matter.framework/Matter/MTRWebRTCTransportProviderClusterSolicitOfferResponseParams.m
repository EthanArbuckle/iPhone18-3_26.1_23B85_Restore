@interface MTRWebRTCTransportProviderClusterSolicitOfferResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)init;
- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterSolicitOfferResponseParams

- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRWebRTCTransportProviderClusterSolicitOfferResponseParams;
  v2 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = &unk_284C3E4C8;

    deferredOffer = v3->_deferredOffer;
    v3->_deferredOffer = &unk_284C3E4C8;

    videoStreamID = v3->_videoStreamID;
    v3->_videoStreamID = 0;

    audioStreamID = v3->_audioStreamID;
    v3->_audioStreamID = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams);
  v5 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self webRTCSessionID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setWebRTCSessionID:v5];

  v6 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self deferredOffer];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setDeferredOffer:v6];

  v7 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self videoStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setVideoStreamID:v7];

  v8 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self audioStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setAudioStreamID:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ deferredOffer:%@; videoStreamID:%@; audioStreamID:%@; >", v5, self->_webRTCSessionID, self->_deferredOffer, self->_videoStreamID, self->_audioStreamID];;

  return v6;
}

- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = MTRWebRTCTransportProviderClusterSolicitOfferResponseParams;
  v7 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:1363 commandID:1 error:a4];
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 1), *(v17 + 3));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F3343C(&v12, v16);
      if (!v8)
      {
        v8 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRWebRTCTransportProviderClusterSolicitOfferResponseParams;
  v4 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a3];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setWebRTCSessionID:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 2)];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setDeferredOffer:v6];

  if (*(a3 + 4) == 1 && (sub_238E0A934(a3 + 4)[2] & 1) != 0)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = sub_238E0A934(a3 + 4);
    if ((v8[2] & 1) == 0)
    {
      goto LABEL_12;
    }

    v9 = [v7 numberWithUnsignedShort:*v8];
    [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setVideoStreamID:v9];
  }

  else
  {
    [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setVideoStreamID:0];
  }

  v11 = *(a3 + 10);
  v10 = a3 + 10;
  if (v11 != 1 || (sub_238E0A934(v10)[2] & 1) == 0)
  {
    [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setAudioStreamID:0];
    goto LABEL_11;
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = sub_238E0A934(v10);
  if ((v13[2] & 1) == 0)
  {
LABEL_12:
    sub_238EA195C();
  }

  v14 = [v12 numberWithUnsignedShort:*v13];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setAudioStreamID:v14];

LABEL_11:
  v15 = 0;
  v16 = 0;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

@end