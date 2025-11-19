@interface MTRPushAVStreamTransportClusterSupportedFormatStruct
- (MTRPushAVStreamTransportClusterSupportedFormatStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterSupportedFormatStruct

- (MTRPushAVStreamTransportClusterSupportedFormatStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRPushAVStreamTransportClusterSupportedFormatStruct;
  v2 = [(MTRPushAVStreamTransportClusterSupportedFormatStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    containerFormat = v2->_containerFormat;
    v2->_containerFormat = &unk_284C3E588;

    ingestMethod = v3->_ingestMethod;
    v3->_ingestMethod = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterSupportedFormatStruct);
  v5 = [(MTRPushAVStreamTransportClusterSupportedFormatStruct *)self containerFormat];
  [(MTRPushAVStreamTransportClusterSupportedFormatStruct *)v4 setContainerFormat:v5];

  v6 = [(MTRPushAVStreamTransportClusterSupportedFormatStruct *)self ingestMethod];
  [(MTRPushAVStreamTransportClusterSupportedFormatStruct *)v4 setIngestMethod:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: containerFormat:%@ ingestMethod:%@; >", v5, self->_containerFormat, self->_ingestMethod];;

  return v6;
}

@end