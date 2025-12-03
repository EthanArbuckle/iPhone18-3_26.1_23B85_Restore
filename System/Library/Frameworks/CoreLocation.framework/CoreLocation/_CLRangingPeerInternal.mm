@interface _CLRangingPeerInternal
- (_CLRangingPeerInternal)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation _CLRangingPeerInternal

- (_CLRangingPeerInternal)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d
{
  v10.receiver = self;
  v10.super_class = _CLRangingPeerInternal;
  v6 = [(_CLRangingPeerInternal *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_macAddress = int;
    secureRangingKeyID = v6->_secureRangingKeyID;
    if (secureRangingKeyID != d)
    {

      v7->_secureRangingKeyID = [d copy];
    }
  }

  return v7;
}

- (void)dealloc
{
  self->_secureRangingKeyID = 0;
  v3.receiver = self;
  v3.super_class = _CLRangingPeerInternal;
  [(_CLRangingPeerInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  macAddress = self->_macAddress;
  secureRangingKeyID = self->_secureRangingKeyID;

  return [v4 initWithMacAddressAsUInt:macAddress secureRangingKeyID:secureRangingKeyID];
}

@end