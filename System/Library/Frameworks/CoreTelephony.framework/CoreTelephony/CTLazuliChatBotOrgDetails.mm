@interface CTLazuliChatBotOrgDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotOrgDetails:(id)details;
- (CTLazuliChatBotOrgDetails)initWithCoder:(id)coder;
- (CTLazuliChatBotOrgDetails)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotOrgDetails

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  communicationAddress = [(CTLazuliChatBotOrgDetails *)self communicationAddress];
  [v3 appendFormat:@", communicationAddress = %@", communicationAddress];

  mediaList = [(CTLazuliChatBotOrgDetails *)self mediaList];
  [v3 appendFormat:@", mediaList = %@", mediaList];

  orgName = [(CTLazuliChatBotOrgDetails *)self orgName];
  [v3 appendFormat:@", orgName = %@", orgName];

  orgDescription = [(CTLazuliChatBotOrgDetails *)self orgDescription];
  [v3 appendFormat:@", orgDescription = %@", orgDescription];

  categoryList = [(CTLazuliChatBotOrgDetails *)self categoryList];
  [v3 appendFormat:@", categoryList = %@", categoryList];

  webResources = [(CTLazuliChatBotOrgDetails *)self webResources];
  [v3 appendFormat:@", webResources = %@", webResources];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotOrgDetails:(id)details
{
  detailsCopy = details;
  communicationAddress = [(CTLazuliChatBotOrgDetails *)self communicationAddress];
  communicationAddress2 = [detailsCopy communicationAddress];
  if (communicationAddress != communicationAddress2)
  {
    communicationAddress3 = [(CTLazuliChatBotOrgDetails *)self communicationAddress];
    communicationAddress4 = [detailsCopy communicationAddress];
    if (![communicationAddress3 isEqualToCTLazuliChatBotCommunicationAddress:?])
    {
      v7 = 0;
LABEL_28:

      goto LABEL_29;
    }
  }

  mediaList = [(CTLazuliChatBotOrgDetails *)self mediaList];
  mediaList2 = [detailsCopy mediaList];
  if (mediaList == mediaList2 || (-[CTLazuliChatBotOrgDetails mediaList](self, "mediaList"), v35 = objc_claimAutoreleasedReturnValue(), [detailsCopy mediaList], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "isEqualToCTLazuliChatBotMediaList:")))
  {
    orgName = [(CTLazuliChatBotOrgDetails *)self orgName];
    orgName2 = [detailsCopy orgName];
    if (orgName != orgName2)
    {
      orgName3 = [(CTLazuliChatBotOrgDetails *)self orgName];
      orgName4 = [detailsCopy orgName];
      if (![orgName3 isEqualToCTLazuliChatBotOrgName:?])
      {
        v7 = 0;
        v10 = orgName;
        v11 = orgName2;
LABEL_24:

LABEL_25:
        if (mediaList == mediaList2)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    orgDescription = [(CTLazuliChatBotOrgDetails *)self orgDescription];
    orgDescription2 = [detailsCopy orgDescription];
    if (orgDescription != orgDescription2)
    {
      orgDescription3 = [(CTLazuliChatBotOrgDetails *)self orgDescription];
      orgDescription4 = [detailsCopy orgDescription];
      if (![orgDescription3 isEqualToCTLazuliChatBotOrgDescription:?])
      {
        v7 = 0;
        v12 = orgDescription;
        v13 = orgDescription2;
LABEL_22:

LABEL_23:
        v10 = orgName;
        v11 = orgName2;
        if (orgName == orgName2)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    categoryList = [(CTLazuliChatBotOrgDetails *)self categoryList];
    categoryList2 = [detailsCopy categoryList];
    if (categoryList == categoryList2 || (-[CTLazuliChatBotOrgDetails categoryList](self, "categoryList"), v24 = objc_claimAutoreleasedReturnValue(), [detailsCopy categoryList], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "isEqualToCTLazuliChatBotCategoryList:")))
    {
      webResources = [(CTLazuliChatBotOrgDetails *)self webResources];
      webResources2 = [detailsCopy webResources];
      v18 = webResources2;
      if (webResources == webResources2)
      {

        v7 = 1;
      }

      else
      {
        webResources3 = [(CTLazuliChatBotOrgDetails *)self webResources];
        webResources4 = [detailsCopy webResources];
        v7 = [webResources3 isEqualToCTLazuliChatBotWebResources:webResources4];
      }

      v14 = categoryList;
      v15 = categoryList2;
      if (categoryList == categoryList2)
      {
LABEL_21:

        v12 = orgDescription;
        v13 = orgDescription2;
        if (orgDescription == orgDescription2)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v7 = 0;
      v14 = categoryList;
      v15 = categoryList2;
    }

    goto LABEL_21;
  }

  v7 = 0;
LABEL_26:

LABEL_27:
  if (communicationAddress != communicationAddress2)
  {
    goto LABEL_28;
  }

LABEL_29:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotOrgDetails *)self isEqualToCTLazuliChatBotOrgDetails:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotOrgDetails allocWithZone:?];
  v6 = [(CTLazuliChatBotCommunicationAddress *)self->_communicationAddress copyWithZone:zone];
  [(CTLazuliChatBotOrgDetails *)v5 setCommunicationAddress:v6];

  v7 = [(CTLazuliChatBotMediaList *)self->_mediaList copyWithZone:zone];
  [(CTLazuliChatBotOrgDetails *)v5 setMediaList:v7];

  v8 = [(CTLazuliChatBotOrgName *)self->_orgName copyWithZone:zone];
  [(CTLazuliChatBotOrgDetails *)v5 setOrgName:v8];

  v9 = [(CTLazuliChatBotOrgDescription *)self->_orgDescription copyWithZone:zone];
  [(CTLazuliChatBotOrgDetails *)v5 setOrgDescription:v9];

  v10 = [(CTLazuliChatBotCategoryList *)self->_categoryList copyWithZone:zone];
  [(CTLazuliChatBotOrgDetails *)v5 setCategoryList:v10];

  v11 = [(CTLazuliChatBotWebResources *)self->_webResources copyWithZone:zone];
  [(CTLazuliChatBotOrgDetails *)v5 setWebResources:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_communicationAddress forKey:@"kCommunicationAddressKey"];
  [coderCopy encodeObject:self->_mediaList forKey:@"kMediaListKey"];
  [coderCopy encodeObject:self->_orgName forKey:@"kOrgNameKey"];
  [coderCopy encodeObject:self->_orgDescription forKey:@"kOrgDescriptionKey"];
  [coderCopy encodeObject:self->_categoryList forKey:@"kCategoryListKey"];
  [coderCopy encodeObject:self->_webResources forKey:@"kWebResourcesKey"];
}

- (CTLazuliChatBotOrgDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTLazuliChatBotOrgDetails;
  v5 = [(CTLazuliChatBotOrgDetails *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCommunicationAddressKey"];
    communicationAddress = v5->_communicationAddress;
    v5->_communicationAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaListKey"];
    mediaList = v5->_mediaList;
    v5->_mediaList = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOrgNameKey"];
    orgName = v5->_orgName;
    v5->_orgName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOrgDescriptionKey"];
    orgDescription = v5->_orgDescription;
    v5->_orgDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCategoryListKey"];
    categoryList = v5->_categoryList;
    v5->_categoryList = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kWebResourcesKey"];
    webResources = v5->_webResources;
    v5->_webResources = v16;
  }

  return v5;
}

- (CTLazuliChatBotOrgDetails)initWithReflection:(const void *)reflection
{
  v27.receiver = self;
  v27.super_class = CTLazuliChatBotOrgDetails;
  v4 = [(CTLazuliChatBotOrgDetails *)&v27 init];
  v5 = v4;
  if (v4)
  {
    if (*(reflection + 96) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotCommunicationAddress alloc];
      if ((*(reflection + 96) & 1) == 0)
      {
        goto LABEL_28;
      }

      v8 = [(CTLazuliChatBotCommunicationAddress *)v7 initWithReflection:reflection];
    }

    else
    {
      v8 = 0;
    }

    communicationAddress = v5->_communicationAddress;
    v5->_communicationAddress = v8;

    if (*(reflection + 128) == 1)
    {
      v6 = v5;
      v10 = [CTLazuliChatBotMediaList alloc];
      if ((*(reflection + 128) & 1) == 0)
      {
        goto LABEL_28;
      }

      v11 = [(CTLazuliChatBotMediaList *)v10 initWithReflection:reflection + 104];
    }

    else
    {
      v11 = 0;
    }

    mediaList = v5->_mediaList;
    v5->_mediaList = v11;

    if (*(reflection + 160) == 1)
    {
      v6 = v5;
      v13 = [CTLazuliChatBotOrgName alloc];
      if ((*(reflection + 160) & 1) == 0)
      {
        goto LABEL_28;
      }

      v14 = [(CTLazuliChatBotOrgName *)v13 initWithReflection:reflection + 136];
    }

    else
    {
      v14 = 0;
    }

    orgName = v5->_orgName;
    v5->_orgName = v14;

    if (*(reflection + 200) == 1)
    {
      v6 = v5;
      v16 = [CTLazuliChatBotOrgDescription alloc];
      if ((*(reflection + 200) & 1) == 0)
      {
        goto LABEL_28;
      }

      v17 = [(CTLazuliChatBotOrgDescription *)v16 initWithReflection:reflection + 168];
    }

    else
    {
      v17 = 0;
    }

    orgDescription = v5->_orgDescription;
    v5->_orgDescription = v17;

    if (*(reflection + 232) == 1)
    {
      v6 = v5;
      v19 = [CTLazuliChatBotCategoryList alloc];
      if ((*(reflection + 232) & 1) == 0)
      {
        goto LABEL_28;
      }

      v20 = [(CTLazuliChatBotCategoryList *)v19 initWithReflection:reflection + 208];
    }

    else
    {
      v20 = 0;
    }

    categoryList = v5->_categoryList;
    v5->_categoryList = v20;

    if (*(reflection + 264) != 1)
    {
      v23 = 0;
      goto LABEL_26;
    }

    v6 = v5;
    v22 = [CTLazuliChatBotWebResources alloc];
    if (*(reflection + 264))
    {
      v23 = [(CTLazuliChatBotWebResources *)v22 initWithReflection:reflection + 240];
LABEL_26:
      webResources = v5->_webResources;
      v5->_webResources = v23;

      return v5;
    }

LABEL_28:
    v26 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v26);
  }

  return v5;
}

@end