@interface MTRWebRTCTransportProviderClusterSFrameStruct
- (MTRWebRTCTransportProviderClusterSFrameStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterSFrameStruct

- (MTRWebRTCTransportProviderClusterSFrameStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRWebRTCTransportProviderClusterSFrameStruct;
  v2 = [(MTRWebRTCTransportProviderClusterSFrameStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    cipherSuite = v2->_cipherSuite;
    v2->_cipherSuite = &unk_284C3E588;

    data = [MEMORY[0x277CBEA90] data];
    baseKey = v3->_baseKey;
    v3->_baseKey = data;

    data2 = [MEMORY[0x277CBEA90] data];
    kid = v3->_kid;
    v3->_kid = data2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterSFrameStruct);
  cipherSuite = [(MTRWebRTCTransportProviderClusterSFrameStruct *)self cipherSuite];
  [(MTRWebRTCTransportProviderClusterSFrameStruct *)v4 setCipherSuite:cipherSuite];

  baseKey = [(MTRWebRTCTransportProviderClusterSFrameStruct *)self baseKey];
  [(MTRWebRTCTransportProviderClusterSFrameStruct *)v4 setBaseKey:baseKey];

  v7 = [(MTRWebRTCTransportProviderClusterSFrameStruct *)self kid];
  [(MTRWebRTCTransportProviderClusterSFrameStruct *)v4 setKid:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  cipherSuite = self->_cipherSuite;
  v7 = [(NSData *)self->_baseKey base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_kid base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: cipherSuite:%@ baseKey:%@; kid:%@; >", v5, cipherSuite, v7, v8];;

  return v9;
}

@end