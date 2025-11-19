@interface _CLRangingPeerInternal
- (_CLRangingPeerInternal)initWithMacAddressAsUInt:(unint64_t)a3 secureRangingKeyID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation _CLRangingPeerInternal

- (_CLRangingPeerInternal)initWithMacAddressAsUInt:(unint64_t)a3 secureRangingKeyID:(id)a4
{
  v10.receiver = self;
  v10.super_class = _CLRangingPeerInternal;
  v6 = [(_CLRangingPeerInternal *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_macAddress = a3;
    secureRangingKeyID = v6->_secureRangingKeyID;
    if (secureRangingKeyID != a4)
    {

      v7->_secureRangingKeyID = [a4 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  macAddress = self->_macAddress;
  secureRangingKeyID = self->_secureRangingKeyID;

  return [v4 initWithMacAddressAsUInt:macAddress secureRangingKeyID:secureRangingKeyID];
}

@end