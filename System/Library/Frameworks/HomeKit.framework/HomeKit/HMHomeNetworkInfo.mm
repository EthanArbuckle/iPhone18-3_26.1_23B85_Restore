@interface HMHomeNetworkInfo
- (BOOL)isEqual:(id)equal;
- (HMHomeNetworkInfo)initWithCoder:(id)coder;
- (HMHomeNetworkInfo)initWithIpv4Addresses:(id)addresses ipv6Addresses:(id)ipv6Addresses ipv4NetworkSignature:(id)signature ipv6NetworkSignature:(id)networkSignature binaryIPv4NetworkSignature:(id)pv4NetworkSignature binaryIPv6NetworkSignature:(id)pv6NetworkSignature routerIPV4:(id)v4 routerIPV6:(id)self0 wiFiInfo:(id)self1;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeNetworkInfo

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:@"[HMHomeNetworkInfo]"];
  ipv4Addresses = [(HMHomeNetworkInfo *)self ipv4Addresses];
  if (ipv4Addresses || ([(HMHomeNetworkInfo *)self routerIPV4], (ipv4Addresses = objc_claimAutoreleasedReturnValue()) != 0) || ([(HMHomeNetworkInfo *)self ipv4NetworkSignature], (ipv4Addresses = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    binaryIPv4NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];

    if (!binaryIPv4NetworkSignature)
    {
      goto LABEL_13;
    }
  }

  [v3 addObject:@"<IPv4>:"];
  ipv4Addresses2 = [(HMHomeNetworkInfo *)self ipv4Addresses];

  if (ipv4Addresses2)
  {
    v6 = MEMORY[0x1E696AEC0];
    ipv4Addresses3 = [(HMHomeNetworkInfo *)self ipv4Addresses];
    v8 = [v6 stringWithFormat:@"Address: %@", ipv4Addresses3];
    [v3 addObject:v8];
  }

  routerIPV4 = [(HMHomeNetworkInfo *)self routerIPV4];

  if (routerIPV4)
  {
    v10 = MEMORY[0x1E696AEC0];
    routerIPV42 = [(HMHomeNetworkInfo *)self routerIPV4];
    v12 = [v10 stringWithFormat:@"Router: %@", routerIPV42];
    [v3 addObject:v12];
  }

  ipv4NetworkSignature = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];

  if (ipv4NetworkSignature)
  {
    v14 = MEMORY[0x1E696AEC0];
    ipv4NetworkSignature2 = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
    v16 = [v14 stringWithFormat:@"Deprecated Network Signature String %@", ipv4NetworkSignature2];
    [v3 addObject:v16];
  }

  binaryIPv4NetworkSignature2 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];

  if (binaryIPv4NetworkSignature2)
  {
    v18 = MEMORY[0x1E696AEC0];
    binaryIPv4NetworkSignature3 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
    v20 = [v18 stringWithFormat:@"Network Signature %@", binaryIPv4NetworkSignature3];
    [v3 addObject:v20];
  }

LABEL_13:
  ipv6Addresses = [(HMHomeNetworkInfo *)self ipv6Addresses];
  if (ipv6Addresses || ([(HMHomeNetworkInfo *)self routerIPV6], (ipv6Addresses = objc_claimAutoreleasedReturnValue()) != 0) || ([(HMHomeNetworkInfo *)self ipv6NetworkSignature], (ipv6Addresses = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    binaryIPv6NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];

    if (!binaryIPv6NetworkSignature)
    {
      goto LABEL_25;
    }
  }

  [v3 addObject:@"<IPv6>:"];
  ipv6Addresses2 = [(HMHomeNetworkInfo *)self ipv6Addresses];

  if (ipv6Addresses2)
  {
    v23 = MEMORY[0x1E696AEC0];
    ipv6Addresses3 = [(HMHomeNetworkInfo *)self ipv6Addresses];
    v25 = [v23 stringWithFormat:@"Address: %@", ipv6Addresses3];
    [v3 addObject:v25];
  }

  routerIPV6 = [(HMHomeNetworkInfo *)self routerIPV6];

  if (routerIPV6)
  {
    v27 = MEMORY[0x1E696AEC0];
    routerIPV62 = [(HMHomeNetworkInfo *)self routerIPV6];
    v29 = [v27 stringWithFormat:@"Router: %@", routerIPV62];
    [v3 addObject:v29];
  }

  ipv6NetworkSignature = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];

  if (ipv6NetworkSignature)
  {
    v31 = MEMORY[0x1E696AEC0];
    ipv6NetworkSignature2 = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
    v33 = [v31 stringWithFormat:@"Deprecated Network Signature String %@", ipv6NetworkSignature2];
    [v3 addObject:v33];
  }

  binaryIPv6NetworkSignature2 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];

  if (binaryIPv6NetworkSignature2)
  {
    v35 = MEMORY[0x1E696AEC0];
    binaryIPv6NetworkSignature3 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
    v37 = [v35 stringWithFormat:@"Network Signature %@", binaryIPv6NetworkSignature3];
    [v3 addObject:v37];
  }

LABEL_25:
  wiFiInfo = [(HMHomeNetworkInfo *)self wiFiInfo];

  if (wiFiInfo)
  {
    [v3 addObject:@"<WiFi>:"];
    wiFiInfo2 = [(HMHomeNetworkInfo *)self wiFiInfo];
    v40 = [wiFiInfo2 description];
    [v3 addObject:v40];
  }

  v41 = [v3 componentsJoinedByString:@"\n"];

  return v41;
}

- (unint64_t)hash
{
  ipv4Addresses = [(HMHomeNetworkInfo *)self ipv4Addresses];
  v4 = [ipv4Addresses hash];

  ipv6Addresses = [(HMHomeNetworkInfo *)self ipv6Addresses];
  v6 = [ipv6Addresses hash] ^ v4;

  ipv4NetworkSignature = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
  v8 = [ipv4NetworkSignature hash];

  ipv6NetworkSignature = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
  v10 = v6 ^ v8 ^ [ipv6NetworkSignature hash];

  binaryIPv4NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
  v12 = [binaryIPv4NetworkSignature hash];

  binaryIPv6NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
  v14 = v12 ^ [binaryIPv6NetworkSignature hash];

  routerIPV4 = [(HMHomeNetworkInfo *)self routerIPV4];
  v16 = v10 ^ v14 ^ [routerIPV4 hash];

  routerIPV6 = [(HMHomeNetworkInfo *)self routerIPV6];
  v18 = [routerIPV6 hash];

  wiFiInfo = [(HMHomeNetworkInfo *)self wiFiInfo];
  v20 = v18 ^ [wiFiInfo hash];

  return v16 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  ipv4Addresses = [(HMHomeNetworkInfo *)self ipv4Addresses];
  ipv4Addresses2 = [v6 ipv4Addresses];
  v9 = HMFEqualObjects();

  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  ipv6Addresses = [(HMHomeNetworkInfo *)self ipv6Addresses];
  ipv6Addresses2 = [v6 ipv6Addresses];
  v13 = HMFEqualObjects();

  ipv4NetworkSignature = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
  ipv4NetworkSignature2 = [v6 ipv4NetworkSignature];
  v16 = HMFEqualObjects();

  v17 = v10 & v13 & v16;
  ipv6NetworkSignature = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
  ipv6NetworkSignature2 = [v6 ipv6NetworkSignature];
  v20 = HMFEqualObjects();

  binaryIPv4NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
  binaryIPv4NetworkSignature2 = [v6 binaryIPv4NetworkSignature];
  v23 = HMFEqualObjects();

  v24 = v20 & v23;
  binaryIPv6NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
  binaryIPv6NetworkSignature2 = [v6 binaryIPv6NetworkSignature];
  v27 = HMFEqualObjects();

  v28 = v17 & v24 & v27;
  routerIPV4 = [(HMHomeNetworkInfo *)self routerIPV4];
  routerIPV42 = [v6 routerIPV4];
  v31 = HMFEqualObjects();

  routerIPV6 = [(HMHomeNetworkInfo *)self routerIPV6];
  routerIPV62 = [v6 routerIPV6];
  v34 = HMFEqualObjects();

  wiFiInfo = [(HMHomeNetworkInfo *)self wiFiInfo];
  wiFiInfo2 = [v6 wiFiInfo];

  v37 = HMFEqualObjects();
  return v28 & v31 & v34 & v37;
}

- (HMHomeNetworkInfo)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v6 = [v3 setWithArray:v5];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"Ipv4Addresses"];

  v8 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Ipv6Addresses"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IPv4NetworkSignature"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IPv6NetworkSignature"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BinaryIPv4NetworkSignature"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BinaryIPv6NetworkSignature"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RouterIPV4"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RouterIPV6"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiInfo"];

  v19 = v7;
  v20 = [(HMHomeNetworkInfo *)self initWithIpv4Addresses:v7 ipv6Addresses:v11 ipv4NetworkSignature:v12 ipv6NetworkSignature:v13 binaryIPv4NetworkSignature:v14 binaryIPv6NetworkSignature:v15 routerIPV4:v16 routerIPV6:v17 wiFiInfo:v18];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ipv4Addresses = [(HMHomeNetworkInfo *)self ipv4Addresses];
  [coderCopy encodeObject:ipv4Addresses forKey:@"Ipv4Addresses"];

  ipv6Addresses = [(HMHomeNetworkInfo *)self ipv6Addresses];
  [coderCopy encodeObject:ipv6Addresses forKey:@"Ipv6Addresses"];

  ipv4NetworkSignature = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
  [coderCopy encodeObject:ipv4NetworkSignature forKey:@"IPv4NetworkSignature"];

  ipv6NetworkSignature = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
  [coderCopy encodeObject:ipv6NetworkSignature forKey:@"IPv6NetworkSignature"];

  binaryIPv4NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
  [coderCopy encodeObject:binaryIPv4NetworkSignature forKey:@"BinaryIPv4NetworkSignature"];

  binaryIPv6NetworkSignature = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
  [coderCopy encodeObject:binaryIPv6NetworkSignature forKey:@"BinaryIPv6NetworkSignature"];

  routerIPV4 = [(HMHomeNetworkInfo *)self routerIPV4];
  [coderCopy encodeObject:routerIPV4 forKey:@"RouterIPV4"];

  routerIPV6 = [(HMHomeNetworkInfo *)self routerIPV6];
  [coderCopy encodeObject:routerIPV6 forKey:@"RouterIPV6"];

  wiFiInfo = [(HMHomeNetworkInfo *)self wiFiInfo];
  [coderCopy encodeObject:wiFiInfo forKey:@"WiFiInfo"];
}

- (HMHomeNetworkInfo)initWithIpv4Addresses:(id)addresses ipv6Addresses:(id)ipv6Addresses ipv4NetworkSignature:(id)signature ipv6NetworkSignature:(id)networkSignature binaryIPv4NetworkSignature:(id)pv4NetworkSignature binaryIPv6NetworkSignature:(id)pv6NetworkSignature routerIPV4:(id)v4 routerIPV6:(id)self0 wiFiInfo:(id)self1
{
  addressesCopy = addresses;
  ipv6AddressesCopy = ipv6Addresses;
  signatureCopy = signature;
  networkSignatureCopy = networkSignature;
  pv4NetworkSignatureCopy = pv4NetworkSignature;
  pv6NetworkSignatureCopy = pv6NetworkSignature;
  v4Copy = v4;
  v6Copy = v6;
  infoCopy = info;
  v30.receiver = self;
  v30.super_class = HMHomeNetworkInfo;
  v19 = [(HMHomeNetworkInfo *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_ipv4Addresses, addresses);
    objc_storeStrong(&v20->_ipv6Addresses, ipv6Addresses);
    objc_storeStrong(&v20->_ipv4NetworkSignature, signature);
    objc_storeStrong(&v20->_ipv6NetworkSignature, networkSignature);
    objc_storeStrong(&v20->_binaryIPv4NetworkSignature, pv4NetworkSignature);
    objc_storeStrong(&v20->_binaryIPv6NetworkSignature, pv6NetworkSignature);
    objc_storeStrong(&v20->_routerIPV4, v4);
    objc_storeStrong(&v20->_routerIPV6, v6);
    objc_storeStrong(&v20->_wiFiInfo, info);
  }

  return v20;
}

@end