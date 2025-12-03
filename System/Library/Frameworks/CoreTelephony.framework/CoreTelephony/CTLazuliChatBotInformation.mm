@interface CTLazuliChatBotInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotInformation:(id)information;
- (CTLazuliChatBotInformation)initWithCoder:(id)coder;
- (CTLazuliChatBotInformation)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotInformation *)self pcc];
  [v3 appendFormat:@", pcc = %@", v4];

  version = [(CTLazuliChatBotInformation *)self version];
  [v3 appendFormat:@", version = %@", version];

  provider = [(CTLazuliChatBotInformation *)self provider];
  [v3 appendFormat:@", provider = %@", provider];

  email = [(CTLazuliChatBotInformation *)self email];
  [v3 appendFormat:@", email = %@", email];

  color = [(CTLazuliChatBotInformation *)self color];
  [v3 appendFormat:@", color = %@", color];

  backgroundImage = [(CTLazuliChatBotInformation *)self backgroundImage];
  [v3 appendFormat:@", backgroundImage = %@", backgroundImage];

  website = [(CTLazuliChatBotInformation *)self website];
  [v3 appendFormat:@", website = %@", website];

  tcPageUrl = [(CTLazuliChatBotInformation *)self tcPageUrl];
  [v3 appendFormat:@", tcPageUrl = %@", tcPageUrl];

  addresses = [(CTLazuliChatBotInformation *)self addresses];
  [v3 appendFormat:@", addresses = %@", addresses];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotInformation:(id)information
{
  informationCopy = information;
  v5 = [(CTLazuliChatBotInformation *)self pcc];
  v6 = [informationCopy pcc];
  if (v5 != v6)
  {
    v54 = [(CTLazuliChatBotInformation *)self pcc];
    v52 = [informationCopy pcc];
    if (![v54 isEqualToCTLazuliChatBotPCC:?])
    {
      v7 = 0;
LABEL_43:

      goto LABEL_44;
    }
  }

  version = [(CTLazuliChatBotInformation *)self version];
  version2 = [informationCopy version];
  if (version == version2 || (-[CTLazuliChatBotInformation version](self, "version"), v53 = objc_claimAutoreleasedReturnValue(), [informationCopy version], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v53, "isEqualToString:")))
  {
    provider = [(CTLazuliChatBotInformation *)self provider];
    provider2 = [informationCopy provider];
    if (provider != provider2)
    {
      provider3 = [(CTLazuliChatBotInformation *)self provider];
      provider4 = [informationCopy provider];
      if (![provider3 isEqualToString:?])
      {
        v7 = 0;
LABEL_39:

LABEL_40:
        if (version == version2)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    v47 = provider;
    email = [(CTLazuliChatBotInformation *)self email];
    email2 = [informationCopy email];
    if (email != email2)
    {
      email3 = [(CTLazuliChatBotInformation *)self email];
      email4 = [informationCopy email];
      if (![email3 isEqualToString:?])
      {
        v7 = 0;
        v12 = email;
        v13 = email2;
LABEL_37:

LABEL_38:
        provider = v47;
        if (v47 == provider2)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    color = [(CTLazuliChatBotInformation *)self color];
    color2 = [informationCopy color];
    if (color != color2)
    {
      color3 = [(CTLazuliChatBotInformation *)self color];
      color4 = [informationCopy color];
      if (![color3 isEqualToString:?])
      {
        v7 = 0;
        v14 = color;
        v15 = color2;
LABEL_35:

LABEL_36:
        v12 = email;
        v13 = email2;
        if (email == email2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    backgroundImage = [(CTLazuliChatBotInformation *)self backgroundImage];
    backgroundImage2 = [informationCopy backgroundImage];
    if (backgroundImage != backgroundImage2)
    {
      backgroundImage3 = [(CTLazuliChatBotInformation *)self backgroundImage];
      backgroundImage4 = [informationCopy backgroundImage];
      if (![backgroundImage3 isEqualToString:?])
      {
        v7 = 0;
        v16 = backgroundImage;
        v17 = backgroundImage2;
LABEL_33:

LABEL_34:
        v14 = color;
        v15 = color2;
        if (color == color2)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    website = [(CTLazuliChatBotInformation *)self website];
    website2 = [informationCopy website];
    if (website != website2)
    {
      website3 = [(CTLazuliChatBotInformation *)self website];
      website4 = [informationCopy website];
      if (![website3 isEqual:?])
      {
        v7 = 0;
        v18 = website;
        v19 = website2;
LABEL_31:

LABEL_32:
        v16 = backgroundImage;
        v17 = backgroundImage2;
        if (backgroundImage == backgroundImage2)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    tcPageUrl = [(CTLazuliChatBotInformation *)self tcPageUrl];
    tcPageUrl2 = [informationCopy tcPageUrl];
    if (tcPageUrl == tcPageUrl2 || (-[CTLazuliChatBotInformation tcPageUrl](self, "tcPageUrl"), v30 = objc_claimAutoreleasedReturnValue(), [informationCopy tcPageUrl], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "isEqual:")))
    {
      addresses = [(CTLazuliChatBotInformation *)self addresses];
      addresses2 = [informationCopy addresses];
      v23 = addresses2;
      if (addresses == addresses2)
      {

        v7 = 1;
      }

      else
      {
        addresses3 = [(CTLazuliChatBotInformation *)self addresses];
        addresses4 = [informationCopy addresses];
        v7 = [addresses3 isEqualToCTLazuliChatBotAddressEntryList:addresses4];
      }

      v20 = tcPageUrl;
      v21 = tcPageUrl2;
      if (tcPageUrl == tcPageUrl2)
      {
LABEL_30:

        v18 = website;
        v19 = website2;
        if (website == website2)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v7 = 0;
      v20 = tcPageUrl;
      v21 = tcPageUrl2;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotInformation *)self isEqualToCTLazuliChatBotInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotInformation allocWithZone:?];
  v6 = [(CTLazuliChatBotPCC *)self->_pcc copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setPcc:v6];

  v7 = [(NSString *)self->_version copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setVersion:v7];

  v8 = [(NSString *)self->_provider copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setProvider:v8];

  v9 = [(NSString *)self->_email copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setEmail:v9];

  v10 = [(NSString *)self->_color copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setColor:v10];

  v11 = [(NSString *)self->_backgroundImage copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setBackgroundImage:v11];

  v12 = [(NSURL *)self->_website copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setWebsite:v12];

  v13 = [(NSURL *)self->_tcPageUrl copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setTcPageUrl:v13];

  v14 = [(CTLazuliChatBotAddressEntryList *)self->_addresses copyWithZone:zone];
  [(CTLazuliChatBotInformation *)v5 setAddresses:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_pcc forKey:@"kPccKey"];
  [coderCopy encodeObject:self->_version forKey:@"kVersionKey"];
  [coderCopy encodeObject:self->_provider forKey:@"kProviderKey"];
  [coderCopy encodeObject:self->_email forKey:@"kEmailKey"];
  [coderCopy encodeObject:self->_color forKey:@"kColorKey"];
  [coderCopy encodeObject:self->_backgroundImage forKey:@"kBackgroundImageKey"];
  [coderCopy encodeObject:self->_website forKey:@"kWebsiteKey"];
  [coderCopy encodeObject:self->_tcPageUrl forKey:@"kTcPageUrlKey"];
  [coderCopy encodeObject:self->_addresses forKey:@"kAddressesKey"];
}

- (CTLazuliChatBotInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CTLazuliChatBotInformation;
  v5 = [(CTLazuliChatBotInformation *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPccKey"];
    pcc = v5->_pcc;
    v5->_pcc = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVersionKey"];
    version = v5->_version;
    v5->_version = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kProviderKey"];
    provider = v5->_provider;
    v5->_provider = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kEmailKey"];
    email = v5->_email;
    v5->_email = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kColorKey"];
    color = v5->_color;
    v5->_color = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBackgroundImageKey"];
    backgroundImage = v5->_backgroundImage;
    v5->_backgroundImage = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kWebsiteKey"];
    website = v5->_website;
    v5->_website = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTcPageUrlKey"];
    tcPageUrl = v5->_tcPageUrl;
    v5->_tcPageUrl = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAddressesKey"];
    addresses = v5->_addresses;
    v5->_addresses = v22;
  }

  return v5;
}

- (CTLazuliChatBotInformation)initWithReflection:(const void *)reflection
{
  v45.receiver = self;
  v45.super_class = CTLazuliChatBotInformation;
  v4 = [(CTLazuliChatBotInformation *)&v45 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotPCC alloc] initWithReflection:reflection];
    pcc = v4->_pcc;
    v4->_pcc = v5;

    if (*(reflection + 336) == 1)
    {
      if (*(reflection + 335) >= 0)
      {
        v7 = reflection + 312;
      }

      else
      {
        v7 = *(reflection + 39);
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    }

    else
    {
      v8 = 0;
    }

    version = v4->_version;
    v4->_version = v8;

    if (*(reflection + 368) == 1)
    {
      if (*(reflection + 367) >= 0)
      {
        v10 = reflection + 344;
      }

      else
      {
        v10 = *(reflection + 43);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    }

    else
    {
      v11 = 0;
    }

    provider = v4->_provider;
    v4->_provider = v11;

    if (*(reflection + 400) == 1)
    {
      if (*(reflection + 399) >= 0)
      {
        v13 = reflection + 376;
      }

      else
      {
        v13 = *(reflection + 47);
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    }

    else
    {
      v14 = 0;
    }

    email = v4->_email;
    v4->_email = v14;

    if (*(reflection + 432) == 1)
    {
      if (*(reflection + 431) >= 0)
      {
        v16 = reflection + 408;
      }

      else
      {
        v16 = *(reflection + 51);
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    }

    else
    {
      v17 = 0;
    }

    color = v4->_color;
    v4->_color = v17;

    if (*(reflection + 464) == 1)
    {
      if (*(reflection + 463) >= 0)
      {
        v19 = reflection + 440;
      }

      else
      {
        v19 = *(reflection + 55);
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
    }

    else
    {
      v20 = 0;
    }

    backgroundImage = v4->_backgroundImage;
    v4->_backgroundImage = v20;

    if (*(reflection + 496) == 1)
    {
      v22 = MEMORY[0x1E695DFF8];
      v23 = MEMORY[0x1E696AEC0];
      v24 = *(reflection + 495);
      v25 = *(reflection + 59);
      defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v24 >= 0)
      {
        v27 = reflection + 472;
      }

      else
      {
        v27 = v25;
      }

      v28 = [v23 stringWithCString:v27 encoding:defaultCStringEncoding];
      v29 = [v22 URLWithString:v28];
      website = v4->_website;
      v4->_website = v29;
    }

    else
    {
      v28 = v4->_website;
      v4->_website = 0;
    }

    if (*(reflection + 528) == 1)
    {
      v31 = MEMORY[0x1E695DFF8];
      v32 = MEMORY[0x1E696AEC0];
      v33 = *(reflection + 527);
      v34 = *(reflection + 63);
      defaultCStringEncoding2 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v33 >= 0)
      {
        v36 = reflection + 504;
      }

      else
      {
        v36 = v34;
      }

      v37 = [v32 stringWithCString:v36 encoding:defaultCStringEncoding2];
      v38 = [v31 URLWithString:v37];
      tcPageUrl = v4->_tcPageUrl;
      v4->_tcPageUrl = v38;
    }

    else
    {
      v37 = v4->_tcPageUrl;
      v4->_tcPageUrl = 0;
    }

    if (*(reflection + 560) == 1)
    {
      v40 = [CTLazuliChatBotAddressEntryList alloc];
      if ((*(reflection + 560) & 1) == 0)
      {
        v44 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v44);
      }

      v41 = [(CTLazuliChatBotAddressEntryList *)v40 initWithReflection:reflection + 536];
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