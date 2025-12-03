@interface _CLRangingPeer
+ (id)hexStringMacAddressFromUInt:(unint64_t)int;
+ (unint64_t)uintMacAddressFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeer:(id)peer;
- (_CLRangingPeer)initWithCoder:(id)coder;
- (_CLRangingPeer)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d;
- (_CLRangingPeer)initWithMacAddressAsString:(id)string secureRangingKeyID:(id)d;
- (_CLRangingPeer)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getMacAddressAsString;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLRangingPeer

- (_CLRangingPeer)initWithMacAddressAsUInt:(unint64_t)int secureRangingKeyID:(id)d
{
  if (HIWORD(int))
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = _CLRangingPeer;
  v7 = [(_CLRangingPeer *)&v9 init];
  if (v7)
  {
    v7->_internal = [[_CLRangingPeerInternal alloc] initWithMacAddressAsUInt:int secureRangingKeyID:d];
  }

  return v7;
}

- (_CLRangingPeer)initWithMacAddressAsString:(id)string secureRangingKeyID:(id)d
{
  if (!string)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v7 = [_CLRangingPeer uintMacAddressFromString:string];
  if (v7 == -1)
  {
    return 0;
  }

  return [(_CLRangingPeer *)self initWithMacAddressAsUInt:v7 secureRangingKeyID:d];
}

- (_CLRangingPeer)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d
{
  if (!data)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  *&v8.octet[4] = 0;
  *v8.octet = 0;
  [data getBytes:&v8 length:6];
  return -[_CLRangingPeer initWithMacAddressAsString:secureRangingKeyID:](self, "initWithMacAddressAsString:secureRangingKeyID:", [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa(&v8)], d);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLRangingPeer;
  [(_CLRangingPeer *)&v3 dealloc];
}

- (id)getMacAddressAsString
{
  [(_CLRangingPeer *)self macAddress];

  return MEMORY[0x1EEE66B58](_CLRangingPeer, sel_hexStringMacAddressFromUInt_);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];

  return [v4 initWithMacAddressAsUInt:v6 secureRangingKeyID:v7];
}

- (_CLRangingPeer)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeInt64ForKey:@"kCLCodingKeyRangingPeerMacAddress"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerSecureRangingKeyID"];

  return [(_CLRangingPeer *)self initWithMacAddressAsUInt:v6 secureRangingKeyID:v7];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  [coder encodeInt64:internal[1] forKey:@"kCLCodingKeyRangingPeerMacAddress"];
  v7 = internal[2];

  [coder encodeObject:v7 forKey:@"kCLCodingKeyRangingPeerSecureRangingKeyID"];
}

- (id)description
{
  internal = self->_internal;
  v3 = MEMORY[0x1E696AEC0];
  getMacAddressAsString = [(_CLRangingPeer *)self getMacAddressAsString];
  if (internal[2])
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  return [v3 stringWithFormat:@"Peer:%@ hasKey:%s", getMacAddressAsString, v5];
}

- (BOOL)isEqualToPeer:(id)peer
{
  if (self == peer)
  {
    return 1;
  }

  macAddress = [(_CLRangingPeer *)self macAddress];
  return macAddress == [peer macAddress] && (objc_msgSend(peer, "secureRangingKeyID") && -[NSData isEqualToData:](-[_CLRangingPeer secureRangingKeyID](self, "secureRangingKeyID"), "isEqualToData:", objc_msgSend(peer, "secureRangingKeyID")) || !objc_msgSend(peer, "secureRangingKeyID") && !-[_CLRangingPeer secureRangingKeyID](self, "secureRangingKeyID"));
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToPeer_);
}

+ (unint64_t)uintMacAddressFromString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  if (!string)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [string length];
  if ((v6 - 18) <= 0xFFFFFFFFFFFFFFF8)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [string getCharacters:v20 range:{0, v6}];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v6 & 0x7FFFFFFF;
    v12 = v11 + 1;
    v13 = &v20[v11 - 1];
    while (1)
    {
      v14 = *v13--;
      v15 = v14 << 24;
      if (v14 << 24 == 973078528)
      {
        ++v8;
        if (v10 == 2)
        {
          v10 = 0;
          goto LABEL_16;
        }

        if (v10 != 1)
        {
          goto LABEL_20;
        }

        v10 = 0;
      }

      else
      {
        v19 = 0;
        if (![objc_msgSend(MEMORY[0x1E696AE88] scannerWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%c", (v15 >> 24))), "scanHexInt:", &v19}] || v19 == -1)
        {
LABEL_20:
          v16 = 0;
          goto LABEL_21;
        }

        v7 += v19 << v9;
        ++v10;
      }

      v9 += 4;
LABEL_16:
      if (--v12 <= 1)
      {
        goto LABEL_19;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_19:
  v16 = 1;
LABEL_21:
  if ((v16 & (v8 == 5)) != 0)
  {
    result = v7;
  }

  else
  {
    result = -1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)hexStringMacAddressFromUInt:(unint64_t)int
{
  v13 = *MEMORY[0x1E69E9840];
  if (HIWORD(int))
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = xmmword_19BA8C830;
  v5 = v12;
  v6 = 8;
  v7 = vdupq_n_s64(6uLL);
  v8 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v7, v4)).u8[0])
    {
      *(v5 - 1) = (int >> (v6 - 8));
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v4)).i32[1])
    {
      *v5 = (int >> v6);
    }

    v4 = vaddq_s64(v4, v8);
    v6 += 16;
    v5 += 2;
  }

  while (v6 != 56);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *v4.i64, v12[4], v12[3], v12[2], v12[1], v12[0], v11];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end