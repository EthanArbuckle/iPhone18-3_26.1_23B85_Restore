@interface CTLazuliChatBotInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotInformation:(id)a3;
- (CTLazuliChatBotInformation)initWithCoder:(id)a3;
- (CTLazuliChatBotInformation)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotInformation *)self pcc];
  [v3 appendFormat:@", pcc = %@", v4];

  v5 = [(CTLazuliChatBotInformation *)self version];
  [v3 appendFormat:@", version = %@", v5];

  v6 = [(CTLazuliChatBotInformation *)self provider];
  [v3 appendFormat:@", provider = %@", v6];

  v7 = [(CTLazuliChatBotInformation *)self email];
  [v3 appendFormat:@", email = %@", v7];

  v8 = [(CTLazuliChatBotInformation *)self color];
  [v3 appendFormat:@", color = %@", v8];

  v9 = [(CTLazuliChatBotInformation *)self backgroundImage];
  [v3 appendFormat:@", backgroundImage = %@", v9];

  v10 = [(CTLazuliChatBotInformation *)self website];
  [v3 appendFormat:@", website = %@", v10];

  v11 = [(CTLazuliChatBotInformation *)self tcPageUrl];
  [v3 appendFormat:@", tcPageUrl = %@", v11];

  v12 = [(CTLazuliChatBotInformation *)self addresses];
  [v3 appendFormat:@", addresses = %@", v12];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotInformation:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotInformation *)self pcc];
  v6 = [v4 pcc];
  if (v5 != v6)
  {
    v54 = [(CTLazuliChatBotInformation *)self pcc];
    v52 = [v4 pcc];
    if (![v54 isEqualToCTLazuliChatBotPCC:?])
    {
      v7 = 0;
LABEL_43:

      goto LABEL_44;
    }
  }

  v8 = [(CTLazuliChatBotInformation *)self version];
  v9 = [v4 version];
  if (v8 == v9 || (-[CTLazuliChatBotInformation version](self, "version"), v53 = objc_claimAutoreleasedReturnValue(), [v4 version], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v53, "isEqualToString:")))
  {
    v10 = [(CTLazuliChatBotInformation *)self provider];
    v11 = [v4 provider];
    if (v10 != v11)
    {
      v50 = [(CTLazuliChatBotInformation *)self provider];
      v44 = [v4 provider];
      if (![v50 isEqualToString:?])
      {
        v7 = 0;
LABEL_39:

LABEL_40:
        if (v8 == v9)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    v47 = v10;
    v51 = [(CTLazuliChatBotInformation *)self email];
    v46 = [v4 email];
    if (v51 != v46)
    {
      v45 = [(CTLazuliChatBotInformation *)self email];
      v40 = [v4 email];
      if (![v45 isEqualToString:?])
      {
        v7 = 0;
        v12 = v51;
        v13 = v46;
LABEL_37:

LABEL_38:
        v10 = v47;
        if (v47 == v11)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    v48 = [(CTLazuliChatBotInformation *)self color];
    v42 = [v4 color];
    if (v48 != v42)
    {
      v41 = [(CTLazuliChatBotInformation *)self color];
      v36 = [v4 color];
      if (![v41 isEqualToString:?])
      {
        v7 = 0;
        v14 = v48;
        v15 = v42;
LABEL_35:

LABEL_36:
        v12 = v51;
        v13 = v46;
        if (v51 == v46)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v43 = [(CTLazuliChatBotInformation *)self backgroundImage];
    v38 = [v4 backgroundImage];
    if (v43 != v38)
    {
      v37 = [(CTLazuliChatBotInformation *)self backgroundImage];
      v32 = [v4 backgroundImage];
      if (![v37 isEqualToString:?])
      {
        v7 = 0;
        v16 = v43;
        v17 = v38;
LABEL_33:

LABEL_34:
        v14 = v48;
        v15 = v42;
        if (v48 == v42)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v39 = [(CTLazuliChatBotInformation *)self website];
    v34 = [v4 website];
    if (v39 != v34)
    {
      v33 = [(CTLazuliChatBotInformation *)self website];
      v29 = [v4 website];
      if (![v33 isEqual:?])
      {
        v7 = 0;
        v18 = v39;
        v19 = v34;
LABEL_31:

LABEL_32:
        v16 = v43;
        v17 = v38;
        if (v43 == v38)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    v35 = [(CTLazuliChatBotInformation *)self tcPageUrl];
    v31 = [v4 tcPageUrl];
    if (v35 == v31 || (-[CTLazuliChatBotInformation tcPageUrl](self, "tcPageUrl"), v30 = objc_claimAutoreleasedReturnValue(), [v4 tcPageUrl], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "isEqual:")))
    {
      v28 = [(CTLazuliChatBotInformation *)self addresses];
      v22 = [v4 addresses];
      v23 = v22;
      if (v28 == v22)
      {

        v7 = 1;
      }

      else
      {
        v26 = [(CTLazuliChatBotInformation *)self addresses];
        v24 = [v4 addresses];
        v7 = [v26 isEqualToCTLazuliChatBotAddressEntryList:v24];
      }

      v20 = v35;
      v21 = v31;
      if (v35 == v31)
      {
LABEL_30:

        v18 = v39;
        v19 = v34;
        if (v39 == v34)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v7 = 0;
      v20 = v35;
      v21 = v31;
    }

    goto LABEL_30;
  }

  v7 = 0;
LABEL_41:

LABEL_42:
  if (v5 != v6)
  {
    goto LABEL_43;
  }

LABEL_44:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotInformation *)self isEqualToCTLazuliChatBotInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotInformation allocWithZone:?];
  v6 = [(CTLazuliChatBotPCC *)self->_pcc copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setPcc:v6];

  v7 = [(NSString *)self->_version copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setVersion:v7];

  v8 = [(NSString *)self->_provider copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setProvider:v8];

  v9 = [(NSString *)self->_email copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setEmail:v9];

  v10 = [(NSString *)self->_color copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setColor:v10];

  v11 = [(NSString *)self->_backgroundImage copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setBackgroundImage:v11];

  v12 = [(NSURL *)self->_website copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setWebsite:v12];

  v13 = [(NSURL *)self->_tcPageUrl copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setTcPageUrl:v13];

  v14 = [(CTLazuliChatBotAddressEntryList *)self->_addresses copyWithZone:a3];
  [(CTLazuliChatBotInformation *)v5 setAddresses:v14];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_pcc forKey:@"kPccKey"];
  [v4 encodeObject:self->_version forKey:@"kVersionKey"];
  [v4 encodeObject:self->_provider forKey:@"kProviderKey"];
  [v4 encodeObject:self->_email forKey:@"kEmailKey"];
  [v4 encodeObject:self->_color forKey:@"kColorKey"];
  [v4 encodeObject:self->_backgroundImage forKey:@"kBackgroundImageKey"];
  [v4 encodeObject:self->_website forKey:@"kWebsiteKey"];
  [v4 encodeObject:self->_tcPageUrl forKey:@"kTcPageUrlKey"];
  [v4 encodeObject:self->_addresses forKey:@"kAddressesKey"];
}

- (CTLazuliChatBotInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CTLazuliChatBotInformation;
  v5 = [(CTLazuliChatBotInformation *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPccKey"];
    pcc = v5->_pcc;
    v5->_pcc = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVersionKey"];
    version = v5->_version;
    v5->_version = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kProviderKey"];
    provider = v5->_provider;
    v5->_provider = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kEmailKey"];
    email = v5->_email;
    v5->_email = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kColorKey"];
    color = v5->_color;
    v5->_color = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBackgroundImageKey"];
    backgroundImage = v5->_backgroundImage;
    v5->_backgroundImage = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kWebsiteKey"];
    website = v5->_website;
    v5->_website = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTcPageUrlKey"];
    tcPageUrl = v5->_tcPageUrl;
    v5->_tcPageUrl = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAddressesKey"];
    addresses = v5->_addresses;
    v5->_addresses = v22;
  }

  return v5;
}

- (CTLazuliChatBotInformation)initWithReflection:(const void *)a3
{
  v45.receiver = self;
  v45.super_class = CTLazuliChatBotInformation;
  v4 = [(CTLazuliChatBotInformation *)&v45 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotPCC alloc] initWithReflection:a3];
    pcc = v4->_pcc;
    v4->_pcc = v5;

    if (*(a3 + 336) == 1)
    {
      if (*(a3 + 335) >= 0)
      {
        v7 = a3 + 312;
      }

      else
      {
        v7 = *(a3 + 39);
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    }

    else
    {
      v8 = 0;
    }

    version = v4->_version;
    v4->_version = v8;

    if (*(a3 + 368) == 1)
    {
      if (*(a3 + 367) >= 0)
      {
        v10 = a3 + 344;
      }

      else
      {
        v10 = *(a3 + 43);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    }

    else
    {
      v11 = 0;
    }

    provider = v4->_provider;
    v4->_provider = v11;

    if (*(a3 + 400) == 1)
    {
      if (*(a3 + 399) >= 0)
      {
        v13 = a3 + 376;
      }

      else
      {
        v13 = *(a3 + 47);
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    }

    else
    {
      v14 = 0;
    }

    email = v4->_email;
    v4->_email = v14;

    if (*(a3 + 432) == 1)
    {
      if (*(a3 + 431) >= 0)
      {
        v16 = a3 + 408;
      }

      else
      {
        v16 = *(a3 + 51);
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    }

    else
    {
      v17 = 0;
    }

    color = v4->_color;
    v4->_color = v17;

    if (*(a3 + 464) == 1)
    {
      if (*(a3 + 463) >= 0)
      {
        v19 = a3 + 440;
      }

      else
      {
        v19 = *(a3 + 55);
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
    }

    else
    {
      v20 = 0;
    }

    backgroundImage = v4->_backgroundImage;
    v4->_backgroundImage = v20;

    if (*(a3 + 496) == 1)
    {
      v22 = MEMORY[0x1E695DFF8];
      v23 = MEMORY[0x1E696AEC0];
      v24 = *(a3 + 495);
      v25 = *(a3 + 59);
      v26 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v24 >= 0)
      {
        v27 = a3 + 472;
      }

      else
      {
        v27 = v25;
      }

      v28 = [v23 stringWithCString:v27 encoding:v26];
      v29 = [v22 URLWithString:v28];
      website = v4->_website;
      v4->_website = v29;
    }

    else
    {
      v28 = v4->_website;
      v4->_website = 0;
    }

    if (*(a3 + 528) == 1)
    {
      v31 = MEMORY[0x1E695DFF8];
      v32 = MEMORY[0x1E696AEC0];
      v33 = *(a3 + 527);
      v34 = *(a3 + 63);
      v35 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v33 >= 0)
      {
        v36 = a3 + 504;
      }

      else
      {
        v36 = v34;
      }

      v37 = [v32 stringWithCString:v36 encoding:v35];
      v38 = [v31 URLWithString:v37];
      tcPageUrl = v4->_tcPageUrl;
      v4->_tcPageUrl = v38;
    }

    else
    {
      v37 = v4->_tcPageUrl;
      v4->_tcPageUrl = 0;
    }

    if (*(a3 + 560) == 1)
    {
      v40 = [CTLazuliChatBotAddressEntryList alloc];
      if ((*(a3 + 560) & 1) == 0)
      {
        v44 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v44);
      }

      v41 = [(CTLazuliChatBotAddressEntryList *)v40 initWithReflection:a3 + 536];
    }

    else
    {
      v41 = 0;
    }

    addresses = v4->_addresses;
    v4->_addresses = v41;
  }

  return v4;
}

@end