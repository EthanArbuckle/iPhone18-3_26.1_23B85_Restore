@interface MTRChannelClusterChannelInfoStruct
- (MTRChannelClusterChannelInfoStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterChannelInfoStruct

- (MTRChannelClusterChannelInfoStruct)init
{
  v12.receiver = self;
  v12.super_class = MTRChannelClusterChannelInfoStruct;
  v2 = [(MTRChannelClusterChannelInfoStruct *)&v12 init];
  v3 = v2;
  if (v2)
  {
    majorNumber = v2->_majorNumber;
    v2->_majorNumber = &unk_284C3E588;

    minorNumber = v3->_minorNumber;
    v3->_minorNumber = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;

    callSign = v3->_callSign;
    v3->_callSign = 0;

    affiliateCallSign = v3->_affiliateCallSign;
    v3->_affiliateCallSign = 0;

    identifier = v3->_identifier;
    v3->_identifier = 0;

    type = v3->_type;
    v3->_type = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterChannelInfoStruct);
  majorNumber = [(MTRChannelClusterChannelInfoStruct *)self majorNumber];
  [(MTRChannelClusterChannelInfoStruct *)v4 setMajorNumber:majorNumber];

  minorNumber = [(MTRChannelClusterChannelInfoStruct *)self minorNumber];
  [(MTRChannelClusterChannelInfoStruct *)v4 setMinorNumber:minorNumber];

  name = [(MTRChannelClusterChannelInfoStruct *)self name];
  [(MTRChannelClusterChannelInfoStruct *)v4 setName:name];

  callSign = [(MTRChannelClusterChannelInfoStruct *)self callSign];
  [(MTRChannelClusterChannelInfoStruct *)v4 setCallSign:callSign];

  affiliateCallSign = [(MTRChannelClusterChannelInfoStruct *)self affiliateCallSign];
  [(MTRChannelClusterChannelInfoStruct *)v4 setAffiliateCallSign:affiliateCallSign];

  identifier = [(MTRChannelClusterChannelInfoStruct *)self identifier];
  [(MTRChannelClusterChannelInfoStruct *)v4 setIdentifier:identifier];

  type = [(MTRChannelClusterChannelInfoStruct *)self type];
  [(MTRChannelClusterChannelInfoStruct *)v4 setType:type];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: majorNumber:%@ minorNumber:%@; name:%@; callSign:%@; affiliateCallSign:%@; identifier:%@; type:%@; >", v5, self->_majorNumber, self->_minorNumber, self->_name, self->_callSign, self->_affiliateCallSign, self->_identifier, self->_type];;

  return v6;
}

@end