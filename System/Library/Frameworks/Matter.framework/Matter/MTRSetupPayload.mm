@interface MTRSetupPayload
+ (BOOL)isValidSetupPasscode:(id)passcode;
+ (MTRSetupPayload)new;
+ (MTRSetupPayload)setupPayloadWithOnboardingPayload:(NSString *)onboardingPayload error:(NSError *)error;
+ (NSNumber)generateRandomSetupPasscode;
+ (NSUInteger)generateRandomPIN;
- (BOOL)isEqual:(id)equal;
- (MTRDiscoveryCapabilities)discoveryCapabilities;
- (MTRSetupPayload)init;
- (MTRSetupPayload)initWithCoder:(id)coder;
- (MTRSetupPayload)initWithPayload:(id)payload;
- (MTRSetupPayload)initWithSetupPasscode:(NSNumber *)setupPasscode discriminator:(NSNumber *)discriminator;
- (NSArray)vendorElements;
- (NSNumber)discriminator;
- (NSNumber)rendezvousInformation;
- (NSString)manualEntryCode;
- (NSString)qrCodeString:(NSError *)error;
- (NSString)serialNumber;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)vendorElementWithTag:(id)tag;
- (unint64_t)hash;
- (void)addOrReplaceVendorElement:(id)element;
- (void)encodeWithCoder:(id)coder;
- (void)removeVendorElementWithTag:(id)tag;
- (void)setCommissioningFlow:(MTRCommissioningFlow)commissioningFlow;
- (void)setDiscoveryCapabilities:(MTRDiscoveryCapabilities)discoveryCapabilities;
- (void)setDiscriminator:(NSNumber *)discriminator;
- (void)setHasShortDiscriminator:(BOOL)hasShortDiscriminator;
- (void)setProductID:(NSNumber *)productID;
- (void)setRendezvousInformation:(NSNumber *)rendezvousInformation;
- (void)setSerialNumber:(NSString *)serialNumber;
- (void)setSetupPasscode:(NSNumber *)setupPasscode;
- (void)setVendorID:(NSNumber *)vendorID;
- (void)setVersion:(NSNumber *)version;
@end

@implementation MTRSetupPayload

- (MTRSetupPayload)initWithPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy hasPrefix:@"MT:"])
  {
    v5 = sub_2392E01C4(self, payloadCopy);
  }

  else
  {
    v5 = sub_2392E026C(self, payloadCopy);
  }

  v6 = v5;

  return v6;
}

- (MTRSetupPayload)initWithSetupPasscode:(NSNumber *)setupPasscode discriminator:(NSNumber *)discriminator
{
  v6 = setupPasscode;
  v7 = discriminator;
  v10.receiver = self;
  v10.super_class = MTRSetupPayload;
  v8 = [(MTRSetupPayload *)&v10 init];
  [(MTRSetupPayload *)v8 setSetupPasscode:v6];
  [(MTRSetupPayload *)v8 setDiscriminator:v7];
  [(MTRSetupPayload *)v8 setDiscoveryCapabilities:7];

  return v8;
}

- (void)setVersion:(NSNumber *)version
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = version;
  v5 = v4;
  if (self->_concatenatedQRCode)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to change version of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    self->_payload.version = [(NSNumber *)v4 unsignedIntegerValue];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setVendorID:(NSNumber *)vendorID
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = vendorID;
  v5 = v4;
  if (self->_concatenatedQRCode)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to change vendorID of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    self->_payload.vendorID = [(NSNumber *)v4 unsignedIntegerValue];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setProductID:(NSNumber *)productID
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = productID;
  v5 = v4;
  if (self->_concatenatedQRCode)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to change productID of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    self->_payload.productID = [(NSNumber *)v4 unsignedIntegerValue];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setCommissioningFlow:(MTRCommissioningFlow)commissioningFlow
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_concatenatedQRCode)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Unable to change commissioningFlow of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    self->_payload.commissioningFlow = commissioningFlow;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (MTRDiscoveryCapabilities)discoveryCapabilities
{
  mHasValue = self->_payload.rendezvousInformation.mValueHolder.mHasValue;
  p_rendezvousInformation = &self->_payload.rendezvousInformation;
  if (!mHasValue)
  {
    return 0;
  }

  v4 = sub_2392E0F30(p_rendezvousInformation);
  if (*v4)
  {
    return *v4;
  }

  else
  {
    return 4;
  }
}

- (void)setDiscoveryCapabilities:(MTRDiscoveryCapabilities)discoveryCapabilities
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_concatenatedQRCode)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Unable to change discoveryCapabilities of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else if (discoveryCapabilities)
  {
    self->_payload.rendezvousInformation.mValueHolder.mHasValue = 1;
    self->_payload.rendezvousInformation.mValueHolder.mValue.mData = discoveryCapabilities;
  }

  else
  {
    self->_payload.rendezvousInformation.mValueHolder.mHasValue = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (NSNumber)discriminator
{
  shadowDiscriminator = self->_shadowDiscriminator;
  if (shadowDiscriminator)
  {
    v3 = shadowDiscriminator;
  }

  else
  {
    v4 = MEMORY[0x277CCABB0];
    if (self->_payload.discriminator.mIsShortDiscriminator)
    {
      mDiscriminator_low = LOBYTE(self->_payload.discriminator.mDiscriminator);
    }

    else
    {
      mDiscriminator_low = sub_2392E10A8(&self->_payload.discriminator);
    }

    v3 = [v4 numberWithInt:mDiscriminator_low];
  }

  return v3;
}

- (void)setDiscriminator:(NSNumber *)discriminator
{
  v4 = discriminator;
  sub_23952D5F0(self, [(NSNumber *)v4 unsignedIntegerValue]& 0xFFF, [(MTRSetupPayload *)self hasShortDiscriminator]);
}

- (void)setHasShortDiscriminator:(BOOL)hasShortDiscriminator
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_concatenatedQRCode)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%@ Unable to change hasShortDiscriminator of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    goto LABEL_10;
  }

  v5 = hasShortDiscriminator;
  if ([(MTRSetupPayload *)self hasShortDiscriminator]== hasShortDiscriminator)
  {
LABEL_10:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  discriminator = [(MTRSetupPayload *)self discriminator];
  sub_23952D5F0(self, [discriminator unsignedShortValue], v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSetupPasscode:(NSNumber *)setupPasscode
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = setupPasscode;
  v5 = v4;
  if (self->_concatenatedQRCode)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to change setupPasscode of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    self->_payload.setUpPINCode = [(NSNumber *)v4 unsignedIntegerValue];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)serialNumber
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (sub_2394900B8(&self->_payload, __p))
  {
    v2 = 0;
  }

  else
  {
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

- (void)setSerialNumber:(NSString *)serialNumber
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = serialNumber;
  v5 = v4;
  if (!self->_concatenatedQRCode)
  {
    if (!v4)
    {
      sub_239490268(&self->_payload);
      goto LABEL_21;
    }

    serialNumber = [(MTRSetupPayload *)self serialNumber];
    v8 = serialNumber;
    if (serialNumber)
    {
      if ([serialNumber isEqualToString:v5])
      {

        goto LABEL_21;
      }

      sub_239490268(&self->_payload);
    }

    sub_238DD0E08(__p, [(NSString *)v5 UTF8String]);
    v9 = sub_23948FF28(&self->_payload, __p);
    v10 = v9;
    if (v15 < 0)
    {
      operator delete(__p[0]);
      if (!v10)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else if (!v9)
    {
      goto LABEL_20;
    }

    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_2393C9138();
      *buf = 136315138;
      selfCopy = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Ignoring unexpected error in SetupPayload::addSerialNumber: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    goto LABEL_20;
  }

  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to change serialNumber of concatenated QR code", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

LABEL_21:

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)vendorElements
{
  sub_23948FDCC(&self->_payload, &v8);
  if (v8 == v9)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x277CBEB18]);
    v3 = [v2 initWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3)];
    v4 = v8;
    for (i = v9; v4 != i; v4 += 40)
    {
      v6 = sub_2392DFC3C([MTROptionalQRCodeInfo alloc], v4);
      if (v6)
      {
        [v3 addObject:v6];
      }
    }
  }

  v10 = &v8;
  sub_2392E32D4(&v10);

  return v3;
}

- (id)vendorElementWithTag:(id)tag
{
  tagCopy = tag;
  __p = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  v5 = sub_2392DFAF8(tagCopy);
  if (sub_2394903B0(&self->_payload, v5, v8))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_2392DFC3C([MTROptionalQRCodeInfo alloc], v8);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return v6;
}

- (void)removeVendorElementWithTag:(id)tag
{
  v11 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  v5 = tagCopy;
  if (self->_concatenatedQRCode)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to modify vendor elements of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v7 = sub_2392DFAF8(tagCopy);
    sub_23948FE9C(&self->_payload, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addOrReplaceVendorElement:(id)element
{
  v11 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v5 = elementCopy;
  if (self->_concatenatedQRCode)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Unable to modify vendor elements of concatenated QR code", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    if (!elementCopy)
    {
      sub_23921D8FC(@"element");
    }

    if (sub_2392DFD00(elementCopy, &self->_payload))
    {
      v8 = sub_2393D9044(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        selfCopy = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Internal error: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      abort();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)manualEntryCode
{
  *v7 = *&self->_payload.version;
  *&v7[3] = *(&self->_payload.vendorID + 1);
  if (self->_payload.rendezvousInformation.mValueHolder.mHasValue)
  {
    v9.mData = self->_payload.rendezvousInformation.mValueHolder.mValue;
  }

  v10 = *&self->_payload.discriminator.mDiscriminator;
  setUpPINCode_high = HIWORD(self->_payload.setUpPINCode);
  v12 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (sub_23948CB80(v7, __p))
  {
    v2 = 0;
  }

  else
  {
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

+ (BOOL)isValidSetupPasscode:(id)passcode
{
  passcodeCopy = passcode;
  unsignedLongLongValue = [passcodeCopy unsignedLongLongValue];
  if (HIDWORD(unsignedLongLongValue))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_23948FB60(unsignedLongLongValue);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTRSetupPayload alloc];
  *v7 = *&self->_payload.version;
  *&v7[3] = *(&self->_payload.vendorID + 1);
  if (self->_payload.rendezvousInformation.mValueHolder.mHasValue)
  {
    v9.mData = self->_payload.rendezvousInformation.mValueHolder.mValue;
  }

  v10 = *&self->_payload.discriminator.mDiscriminator;
  setUpPINCode_high = HIWORD(self->_payload.setUpPINCode);
  sub_238EF5AB4(v12, &self->_payload.optionalVendorData);
  sub_238EF5F84(v13, &self->_payload.optionalExtensionData);
  v5 = sub_2392E09E0(v4, v7);
  sub_238EF5F20(v13, v13[1]);
  sub_238EF5F20(v12, v12[1]);
  objc_storeStrong(v5 + 10, self->_shadowDiscriminator);
  objc_storeStrong(v5 + 11, self->_concatenatedQRCode);
  return v5;
}

- (unint64_t)hash
{
  if (self->_concatenatedQRCode)
  {
    concatenatedQRCode = self->_concatenatedQRCode;

    return MEMORY[0x2821F9670](concatenatedQRCode, sel_hash);
  }

  else
  {
    discriminator = [(MTRSetupPayload *)self discriminator];
    unsignedIntegerValue = [discriminator unsignedIntegerValue];

    return unsignedIntegerValue;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    concatenatedQRCode = self->_concatenatedQRCode;
    if ((concatenatedQRCode != 0) != (*(v7 + 11) == 0))
    {
      if (concatenatedQRCode)
      {
        v9 = [(NSString *)concatenatedQRCode isEqual:?];
LABEL_8:
        v6 = v9;
LABEL_10:

        goto LABEL_11;
      }

      if (sub_239490610(&self->_payload, v7 + 8))
      {
        v9 = sub_238DB32F8(self->_shadowDiscriminator, *(v7 + 10));
        goto LABEL_8;
      }
    }

    v6 = 0;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  hasShortDiscriminator = [(MTRSetupPayload *)self hasShortDiscriminator];
  discriminator = [(MTRSetupPayload *)self discriminator];
  unsignedIntValue = [discriminator unsignedIntValue];
  v7 = 3;
  if (hasShortDiscriminator)
  {
    v7 = 1;
  }

  v8 = [v3 stringWithFormat:@"<MTRSetupPayload: discriminator=0x%0*x", v7, unsignedIntValue];

  discoveryCapabilities = [(MTRSetupPayload *)self discoveryCapabilities];
  if (discoveryCapabilities)
  {
    string = [MEMORY[0x277CCAB68] string];
    v11 = string;
    if (discoveryCapabilities)
    {
      [string appendString:@"|SoftAP"];
      discoveryCapabilities &= ~1uLL;
    }

    if ((discoveryCapabilities & 2) != 0)
    {
      [v11 appendString:@"|BLE"];
      discoveryCapabilities &= ~2uLL;
    }

    if ((discoveryCapabilities & 4) != 0)
    {
      [v11 appendString:@"|OnNetwork"];
      discoveryCapabilities &= ~4uLL;
    }

    if ((discoveryCapabilities & 0x10) != 0)
    {
      [v11 appendString:@"|NFC"];
      discoveryCapabilities &= ~0x10uLL;
    }

    if (discoveryCapabilities)
    {
      [v11 appendFormat:@"|0x%llx", discoveryCapabilities];
    }

    v12 = [v11 substringFromIndex:1];

    [v8 appendFormat:@" discoveryCapabilities=%@", v12];
  }

  commissioningFlow = [(MTRSetupPayload *)self commissioningFlow];
  if (commissioningFlow)
  {
    [v8 appendFormat:@" commissioningFlow=0x%llx", commissioningFlow];
  }

  if (self->_concatenatedQRCode)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v8 appendFormat:@", concatenated: %@>", v14];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2392E1CC0(self, 1);
  [coderCopy encodeObject:v4 forKey:@"qr"];

  version = [(MTRSetupPayload *)self version];
  [coderCopy encodeObject:version forKey:@"MTRSP.ck.version"];

  vendorID = [(MTRSetupPayload *)self vendorID];
  [coderCopy encodeObject:vendorID forKey:@"MTRSP.ck.vendorID"];

  productID = [(MTRSetupPayload *)self productID];
  [coderCopy encodeObject:productID forKey:@"MTRSP.ck.productID"];

  [coderCopy encodeInteger:-[MTRSetupPayload commissioningFlow](self forKey:{"commissioningFlow"), @"MTRSP.ck.commissioningFlow"}];
  rendezvousInformation = [(MTRSetupPayload *)self rendezvousInformation];
  [coderCopy encodeObject:rendezvousInformation forKey:@"MTRSP.ck.rendezvousFlags"];

  [coderCopy encodeInteger:-[MTRSetupPayload hasShortDiscriminator](self forKey:{"hasShortDiscriminator"), @"MTRSP.ck.hasShortDiscriminator"}];
  discriminator = [(MTRSetupPayload *)self discriminator];
  [coderCopy encodeObject:discriminator forKey:@"MTRSP.ck.discriminator"];

  setupPasscode = [(MTRSetupPayload *)self setupPasscode];
  [coderCopy encodeObject:setupPasscode forKey:@"MTRSP.ck.setupPINCode"];

  serialNumber = [(MTRSetupPayload *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"MTRSP.ck.serialNumber"];
}

- (MTRSetupPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MTRSetupPayload;
  v5 = [(MTRSetupPayload *)&v15 init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qr"];
  if (v6)
  {
    sub_2392E0530(v5, v6, 0);
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.version"];
    [(MTRSetupPayload *)v5 setVersion:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.vendorID"];
    [(MTRSetupPayload *)v5 setVendorID:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.productID"];
    [(MTRSetupPayload *)v5 setProductID:v9];

    -[MTRSetupPayload setCommissioningFlow:](v5, "setCommissioningFlow:", [coderCopy decodeIntegerForKey:@"MTRSP.ck.commissioningFlow"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.setupPINCode"];
    [(MTRSetupPayload *)v5 setSetupPasscode:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.serialNumber"];
    [(MTRSetupPayload *)v5 setSerialNumber:v11];
  }

  -[MTRSetupPayload setHasShortDiscriminator:](v5, "setHasShortDiscriminator:", [coderCopy decodeIntegerForKey:@"MTRSP.ck.hasShortDiscriminator"] != 0);
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.discriminator"];
  [(MTRSetupPayload *)v5 setDiscriminator:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTRSP.ck.rendezvousFlags"];
  [(MTRSetupPayload *)v5 setRendezvousInformation:v13];

  return v5;
}

+ (NSUInteger)generateRandomPIN
{
  do
  {
    v2 = arc4random_uniform(0x5F5E0FEu);
    v3 = v2 + 1;
  }

  while (!sub_23948FB60(v2 + 1));
  return v3;
}

+ (NSNumber)generateRandomSetupPasscode
{
  v2 = MEMORY[0x277CCABB0];
  generateRandomPIN = [self generateRandomPIN];

  return [v2 numberWithUnsignedInteger:generateRandomPIN];
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 20) = 0;
  *(self + 6) = 0;
  *(self + 10) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  *(self + 9) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 7) = self + 64;
  return self;
}

- (MTRSetupPayload)init
{
  v3.receiver = self;
  v3.super_class = MTRSetupPayload;
  return [(MTRSetupPayload *)&v3 init];
}

+ (MTRSetupPayload)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MTRSetupPayload;
  return objc_msgSendSuper2(&v3, "new");
}

+ (MTRSetupPayload)setupPayloadWithOnboardingPayload:(NSString *)onboardingPayload error:(NSError *)error
{
  v5 = onboardingPayload;
  v6 = [[MTRSetupPayload alloc] initWithPayload:v5];
  v7 = v6;
  if (error && !v6)
  {
    *error = [MTRError errorWithCode:4];
  }

  return v7;
}

- (NSNumber)rendezvousInformation
{
  discoveryCapabilities = [(MTRSetupPayload *)self discoveryCapabilities];
  if (discoveryCapabilities)
  {
    discoveryCapabilities = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:discoveryCapabilities];
  }

  return discoveryCapabilities;
}

- (void)setRendezvousInformation:(NSNumber *)rendezvousInformation
{
  v4 = rendezvousInformation;
  v7 = v4;
  if (v4)
  {
    unsignedIntegerValue = [(NSNumber *)v4 unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      v6 = unsignedIntegerValue;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 0;
  }

  [(MTRSetupPayload *)self setDiscoveryCapabilities:v6];
}

- (NSString)qrCodeString:(NSError *)error
{
  qrCodeString = [(MTRSetupPayload *)self qrCodeString];
  v5 = qrCodeString;
  if (error && !qrCodeString)
  {
    *error = sub_23921C1E4(MTRError, 0x33C00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRSetupPayload.mm");
  }

  return v5;
}

@end