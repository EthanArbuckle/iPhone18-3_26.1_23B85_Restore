@interface HMHomeNetworkInfo
- (BOOL)isEqual:(id)a3;
- (HMHomeNetworkInfo)initWithCoder:(id)a3;
- (HMHomeNetworkInfo)initWithIpv4Addresses:(id)a3 ipv6Addresses:(id)a4 ipv4NetworkSignature:(id)a5 ipv6NetworkSignature:(id)a6 binaryIPv4NetworkSignature:(id)a7 binaryIPv6NetworkSignature:(id)a8 routerIPV4:(id)a9 routerIPV6:(id)a10 wiFiInfo:(id)a11;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeNetworkInfo

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:@"[HMHomeNetworkInfo]"];
  v4 = [(HMHomeNetworkInfo *)self ipv4Addresses];
  if (v4 || ([(HMHomeNetworkInfo *)self routerIPV4], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HMHomeNetworkInfo *)self ipv4NetworkSignature], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v43 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];

    if (!v43)
    {
      goto LABEL_13;
    }
  }

  [v3 addObject:@"<IPv4>:"];
  v5 = [(HMHomeNetworkInfo *)self ipv4Addresses];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(HMHomeNetworkInfo *)self ipv4Addresses];
    v8 = [v6 stringWithFormat:@"Address: %@", v7];
    [v3 addObject:v8];
  }

  v9 = [(HMHomeNetworkInfo *)self routerIPV4];

  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(HMHomeNetworkInfo *)self routerIPV4];
    v12 = [v10 stringWithFormat:@"Router: %@", v11];
    [v3 addObject:v12];
  }

  v13 = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];

  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
    v16 = [v14 stringWithFormat:@"Deprecated Network Signature String %@", v15];
    [v3 addObject:v16];
  }

  v17 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];

  if (v17)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
    v20 = [v18 stringWithFormat:@"Network Signature %@", v19];
    [v3 addObject:v20];
  }

LABEL_13:
  v21 = [(HMHomeNetworkInfo *)self ipv6Addresses];
  if (v21 || ([(HMHomeNetworkInfo *)self routerIPV6], (v21 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HMHomeNetworkInfo *)self ipv6NetworkSignature], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v44 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];

    if (!v44)
    {
      goto LABEL_25;
    }
  }

  [v3 addObject:@"<IPv6>:"];
  v22 = [(HMHomeNetworkInfo *)self ipv6Addresses];

  if (v22)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(HMHomeNetworkInfo *)self ipv6Addresses];
    v25 = [v23 stringWithFormat:@"Address: %@", v24];
    [v3 addObject:v25];
  }

  v26 = [(HMHomeNetworkInfo *)self routerIPV6];

  if (v26)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [(HMHomeNetworkInfo *)self routerIPV6];
    v29 = [v27 stringWithFormat:@"Router: %@", v28];
    [v3 addObject:v29];
  }

  v30 = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];

  if (v30)
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
    v33 = [v31 stringWithFormat:@"Deprecated Network Signature String %@", v32];
    [v3 addObject:v33];
  }

  v34 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];

  if (v34)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
    v37 = [v35 stringWithFormat:@"Network Signature %@", v36];
    [v3 addObject:v37];
  }

LABEL_25:
  v38 = [(HMHomeNetworkInfo *)self wiFiInfo];

  if (v38)
  {
    [v3 addObject:@"<WiFi>:"];
    v39 = [(HMHomeNetworkInfo *)self wiFiInfo];
    v40 = [v39 description];
    [v3 addObject:v40];
  }

  v41 = [v3 componentsJoinedByString:@"\n"];

  return v41;
}

- (unint64_t)hash
{
  v3 = [(HMHomeNetworkInfo *)self ipv4Addresses];
  v4 = [v3 hash];

  v5 = [(HMHomeNetworkInfo *)self ipv6Addresses];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
  v8 = [v7 hash];

  v9 = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
  v12 = [v11 hash];

  v13 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
  v14 = v12 ^ [v13 hash];

  v15 = [(HMHomeNetworkInfo *)self routerIPV4];
  v16 = v10 ^ v14 ^ [v15 hash];

  v17 = [(HMHomeNetworkInfo *)self routerIPV6];
  v18 = [v17 hash];

  v19 = [(HMHomeNetworkInfo *)self wiFiInfo];
  v20 = v18 ^ [v19 hash];

  return v16 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(HMHomeNetworkInfo *)self ipv4Addresses];
  v8 = [v6 ipv4Addresses];
  v9 = HMFEqualObjects();

  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HMHomeNetworkInfo *)self ipv6Addresses];
  v12 = [v6 ipv6Addresses];
  v13 = HMFEqualObjects();

  v14 = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
  v15 = [v6 ipv4NetworkSignature];
  v16 = HMFEqualObjects();

  v17 = v10 & v13 & v16;
  v18 = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
  v19 = [v6 ipv6NetworkSignature];
  v20 = HMFEqualObjects();

  v21 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
  v22 = [v6 binaryIPv4NetworkSignature];
  v23 = HMFEqualObjects();

  v24 = v20 & v23;
  v25 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
  v26 = [v6 binaryIPv6NetworkSignature];
  v27 = HMFEqualObjects();

  v28 = v17 & v24 & v27;
  v29 = [(HMHomeNetworkInfo *)self routerIPV4];
  v30 = [v6 routerIPV4];
  v31 = HMFEqualObjects();

  v32 = [(HMHomeNetworkInfo *)self routerIPV6];
  v33 = [v6 routerIPV6];
  v34 = HMFEqualObjects();

  v35 = [(HMHomeNetworkInfo *)self wiFiInfo];
  v36 = [v6 wiFiInfo];

  v37 = HMFEqualObjects();
  return v28 & v31 & v34 & v37;
}

- (HMHomeNetworkInfo)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v6 = [v3 setWithArray:v5];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"Ipv4Addresses"];

  v8 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Ipv6Addresses"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPv4NetworkSignature"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPv6NetworkSignature"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BinaryIPv4NetworkSignature"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BinaryIPv6NetworkSignature"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RouterIPV4"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RouterIPV6"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiInfo"];

  v19 = v7;
  v20 = [(HMHomeNetworkInfo *)self initWithIpv4Addresses:v7 ipv6Addresses:v11 ipv4NetworkSignature:v12 ipv6NetworkSignature:v13 binaryIPv4NetworkSignature:v14 binaryIPv6NetworkSignature:v15 routerIPV4:v16 routerIPV6:v17 wiFiInfo:v18];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMHomeNetworkInfo *)self ipv4Addresses];
  [v4 encodeObject:v5 forKey:@"Ipv4Addresses"];

  v6 = [(HMHomeNetworkInfo *)self ipv6Addresses];
  [v4 encodeObject:v6 forKey:@"Ipv6Addresses"];

  v7 = [(HMHomeNetworkInfo *)self ipv4NetworkSignature];
  [v4 encodeObject:v7 forKey:@"IPv4NetworkSignature"];

  v8 = [(HMHomeNetworkInfo *)self ipv6NetworkSignature];
  [v4 encodeObject:v8 forKey:@"IPv6NetworkSignature"];

  v9 = [(HMHomeNetworkInfo *)self binaryIPv4NetworkSignature];
  [v4 encodeObject:v9 forKey:@"BinaryIPv4NetworkSignature"];

  v10 = [(HMHomeNetworkInfo *)self binaryIPv6NetworkSignature];
  [v4 encodeObject:v10 forKey:@"BinaryIPv6NetworkSignature"];

  v11 = [(HMHomeNetworkInfo *)self routerIPV4];
  [v4 encodeObject:v11 forKey:@"RouterIPV4"];

  v12 = [(HMHomeNetworkInfo *)self routerIPV6];
  [v4 encodeObject:v12 forKey:@"RouterIPV6"];

  v13 = [(HMHomeNetworkInfo *)self wiFiInfo];
  [v4 encodeObject:v13 forKey:@"WiFiInfo"];
}

- (HMHomeNetworkInfo)initWithIpv4Addresses:(id)a3 ipv6Addresses:(id)a4 ipv4NetworkSignature:(id)a5 ipv6NetworkSignature:(id)a6 binaryIPv4NetworkSignature:(id)a7 binaryIPv6NetworkSignature:(id)a8 routerIPV4:(id)a9 routerIPV6:(id)a10 wiFiInfo:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = HMHomeNetworkInfo;
  v19 = [(HMHomeNetworkInfo *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_ipv4Addresses, a3);
    objc_storeStrong(&v20->_ipv6Addresses, a4);
    objc_storeStrong(&v20->_ipv4NetworkSignature, a5);
    objc_storeStrong(&v20->_ipv6NetworkSignature, a6);
    objc_storeStrong(&v20->_binaryIPv4NetworkSignature, a7);
    objc_storeStrong(&v20->_binaryIPv6NetworkSignature, a8);
    objc_storeStrong(&v20->_routerIPV4, a9);
    objc_storeStrong(&v20->_routerIPV6, a10);
    objc_storeStrong(&v20->_wiFiInfo, a11);
  }

  return v20;
}

@end