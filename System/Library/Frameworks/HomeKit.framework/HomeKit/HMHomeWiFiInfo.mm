@interface HMHomeWiFiInfo
- (BOOL)isEqual:(id)a3;
- (HMHomeWiFiInfo)initWithCoder:(id)a3;
- (HMHomeWiFiInfo)initWithSSID:(id)a3 requiresPassword:(BOOL)a4 macAddress:(id)a5 BSSID:(id)a6 displayName:(id)a7 security:(id)a8 RSSI:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeWiFiInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMHomeWiFiInfo *)self SSID];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMHomeWiFiInfo requiresPassword](self, "requiresPassword")}];
  v6 = [(HMHomeWiFiInfo *)self BSSID];
  v7 = [(HMHomeWiFiInfo *)self displayName];
  v8 = [(HMHomeWiFiInfo *)self security];
  v9 = [(HMHomeWiFiInfo *)self RSSI];
  v10 = [v3 stringWithFormat:@"[HMHomeWiFiInfo: SSID = %@, requiresPassword = %@ BSSID = %@ Display Name = %@ Security Type = %@ RSSI = %@]", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HMHomeWiFiInfo *)self SSID];
  v4 = [v3 hash];

  v5 = v4 + [(HMHomeWiFiInfo *)self requiresPassword];
  v6 = [(HMHomeWiFiInfo *)self BSSID];
  v7 = [v6 hash];

  v8 = [(HMHomeWiFiInfo *)self displayName];
  v9 = v7 ^ [v8 hash];

  v10 = [(HMHomeWiFiInfo *)self security];
  v11 = v9 ^ [v10 hash] ^ v5;

  v12 = [(HMHomeWiFiInfo *)self RSSI];
  v13 = [v12 hash];

  return v11 ^ v13;
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
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [(HMHomeWiFiInfo *)self SSID];
  v8 = [v6 SSID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [(HMHomeWiFiInfo *)self requiresPassword];
  if (v10 != [v6 requiresPassword])
  {
    goto LABEL_11;
  }

  v11 = [(HMHomeWiFiInfo *)self BSSID];
  v12 = [v6 BSSID];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [(HMHomeWiFiInfo *)self RSSI];
  v15 = [v6 RSSI];
  v16 = HMFEqualObjects();

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [(HMHomeWiFiInfo *)self displayName];
  v18 = [v6 displayName];
  v19 = HMFEqualObjects();

  if (v19)
  {
    v20 = [(HMHomeWiFiInfo *)self security];
    v21 = [v6 security];
    v22 = HMFEqualObjects();
  }

  else
  {
LABEL_11:
    v22 = 0;
  }

  return v22;
}

- (HMHomeWiFiInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PWD"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MAC"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BSSID"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DISPLAY"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RSSI"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SEC"];

  v12 = -[HMHomeWiFiInfo initWithSSID:requiresPassword:macAddress:BSSID:displayName:security:RSSI:](self, "initWithSSID:requiresPassword:macAddress:BSSID:displayName:security:RSSI:", v5, [v6 BOOLValue], v7, v8, v9, v11, v10);
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(HMHomeWiFiInfo *)self SSID];

  if (v4)
  {
    v5 = [(HMHomeWiFiInfo *)self SSID];
    [v12 encodeObject:v5 forKey:@"SSID"];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMHomeWiFiInfo requiresPassword](self, "requiresPassword")}];
    [v12 encodeObject:v6 forKey:@"PWD"];

    v7 = [(HMHomeWiFiInfo *)self macAddress];
    [v12 encodeObject:v7 forKey:@"MAC"];

    v8 = [(HMHomeWiFiInfo *)self BSSID];
    [v12 encodeObject:v8 forKey:@"BSSID"];

    v9 = [(HMHomeWiFiInfo *)self RSSI];
    [v12 encodeObject:v9 forKey:@"RSSI"];

    v10 = [(HMHomeWiFiInfo *)self displayName];
    [v12 encodeObject:v10 forKey:@"DISPLAY"];

    v11 = [(HMHomeWiFiInfo *)self security];
    [v12 encodeObject:v11 forKey:@"SEC"];
  }
}

- (HMHomeWiFiInfo)initWithSSID:(id)a3 requiresPassword:(BOOL)a4 macAddress:(id)a5 BSSID:(id)a6 displayName:(id)a7 security:(id)a8 RSSI:(id)a9
{
  v24 = a3;
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = HMHomeWiFiInfo;
  v18 = [(HMHomeWiFiInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_SSID, a3);
    v19->_requiresPassword = a4;
    objc_storeStrong(&v19->_macAddress, a5);
    objc_storeStrong(&v19->_BSSID, a6);
    objc_storeStrong(&v19->_displayName, a7);
    objc_storeStrong(&v19->_security, a8);
    objc_storeStrong(&v19->_RSSI, a9);
  }

  return v19;
}

@end