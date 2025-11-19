@interface CTLazuliChatBotOrgDetails
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotOrgDetails:(id)a3;
- (CTLazuliChatBotOrgDetails)initWithCoder:(id)a3;
- (CTLazuliChatBotOrgDetails)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotOrgDetails

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotOrgDetails *)self communicationAddress];
  [v3 appendFormat:@", communicationAddress = %@", v4];

  v5 = [(CTLazuliChatBotOrgDetails *)self mediaList];
  [v3 appendFormat:@", mediaList = %@", v5];

  v6 = [(CTLazuliChatBotOrgDetails *)self orgName];
  [v3 appendFormat:@", orgName = %@", v6];

  v7 = [(CTLazuliChatBotOrgDetails *)self orgDescription];
  [v3 appendFormat:@", orgDescription = %@", v7];

  v8 = [(CTLazuliChatBotOrgDetails *)self categoryList];
  [v3 appendFormat:@", categoryList = %@", v8];

  v9 = [(CTLazuliChatBotOrgDetails *)self webResources];
  [v3 appendFormat:@", webResources = %@", v9];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotOrgDetails:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotOrgDetails *)self communicationAddress];
  v6 = [v4 communicationAddress];
  if (v5 != v6)
  {
    v37 = [(CTLazuliChatBotOrgDetails *)self communicationAddress];
    v34 = [v4 communicationAddress];
    if (![v37 isEqualToCTLazuliChatBotCommunicationAddress:?])
    {
      v7 = 0;
LABEL_28:

      goto LABEL_29;
    }
  }

  v8 = [(CTLazuliChatBotOrgDetails *)self mediaList];
  v9 = [v4 mediaList];
  if (v8 == v9 || (-[CTLazuliChatBotOrgDetails mediaList](self, "mediaList"), v35 = objc_claimAutoreleasedReturnValue(), [v4 mediaList], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "isEqualToCTLazuliChatBotMediaList:")))
  {
    v36 = [(CTLazuliChatBotOrgDetails *)self orgName];
    v32 = [v4 orgName];
    if (v36 != v32)
    {
      v31 = [(CTLazuliChatBotOrgDetails *)self orgName];
      v26 = [v4 orgName];
      if (![v31 isEqualToCTLazuliChatBotOrgName:?])
      {
        v7 = 0;
        v10 = v36;
        v11 = v32;
LABEL_24:

LABEL_25:
        if (v8 == v9)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v33 = [(CTLazuliChatBotOrgDetails *)self orgDescription];
    v28 = [v4 orgDescription];
    if (v33 != v28)
    {
      v27 = [(CTLazuliChatBotOrgDetails *)self orgDescription];
      v23 = [v4 orgDescription];
      if (![v27 isEqualToCTLazuliChatBotOrgDescription:?])
      {
        v7 = 0;
        v12 = v33;
        v13 = v28;
LABEL_22:

LABEL_23:
        v10 = v36;
        v11 = v32;
        if (v36 == v32)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    v29 = [(CTLazuliChatBotOrgDetails *)self categoryList];
    v25 = [v4 categoryList];
    if (v29 == v25 || (-[CTLazuliChatBotOrgDetails categoryList](self, "categoryList"), v24 = objc_claimAutoreleasedReturnValue(), [v4 categoryList], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "isEqualToCTLazuliChatBotCategoryList:")))
    {
      v16 = [(CTLazuliChatBotOrgDetails *)self webResources];
      v17 = [v4 webResources];
      v18 = v17;
      if (v16 == v17)
      {

        v7 = 1;
      }

      else
      {
        v19 = [(CTLazuliChatBotOrgDetails *)self webResources];
        v20 = [v4 webResources];
        v7 = [v19 isEqualToCTLazuliChatBotWebResources:v20];
      }

      v14 = v29;
      v15 = v25;
      if (v29 == v25)
      {
LABEL_21:

        v12 = v33;
        v13 = v28;
        if (v33 == v28)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v7 = 0;
      v14 = v29;
      v15 = v25;
    }

    goto LABEL_21;
  }

  v7 = 0;
LABEL_26:

LABEL_27:
  if (v5 != v6)
  {
    goto LABEL_28;
  }

LABEL_29:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotOrgDetails *)self isEqualToCTLazuliChatBotOrgDetails:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotOrgDetails allocWithZone:?];
  v6 = [(CTLazuliChatBotCommunicationAddress *)self->_communicationAddress copyWithZone:a3];
  [(CTLazuliChatBotOrgDetails *)v5 setCommunicationAddress:v6];

  v7 = [(CTLazuliChatBotMediaList *)self->_mediaList copyWithZone:a3];
  [(CTLazuliChatBotOrgDetails *)v5 setMediaList:v7];

  v8 = [(CTLazuliChatBotOrgName *)self->_orgName copyWithZone:a3];
  [(CTLazuliChatBotOrgDetails *)v5 setOrgName:v8];

  v9 = [(CTLazuliChatBotOrgDescription *)self->_orgDescription copyWithZone:a3];
  [(CTLazuliChatBotOrgDetails *)v5 setOrgDescription:v9];

  v10 = [(CTLazuliChatBotCategoryList *)self->_categoryList copyWithZone:a3];
  [(CTLazuliChatBotOrgDetails *)v5 setCategoryList:v10];

  v11 = [(CTLazuliChatBotWebResources *)self->_webResources copyWithZone:a3];
  [(CTLazuliChatBotOrgDetails *)v5 setWebResources:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_communicationAddress forKey:@"kCommunicationAddressKey"];
  [v4 encodeObject:self->_mediaList forKey:@"kMediaListKey"];
  [v4 encodeObject:self->_orgName forKey:@"kOrgNameKey"];
  [v4 encodeObject:self->_orgDescription forKey:@"kOrgDescriptionKey"];
  [v4 encodeObject:self->_categoryList forKey:@"kCategoryListKey"];
  [v4 encodeObject:self->_webResources forKey:@"kWebResourcesKey"];
}

- (CTLazuliChatBotOrgDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTLazuliChatBotOrgDetails;
  v5 = [(CTLazuliChatBotOrgDetails *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCommunicationAddressKey"];
    communicationAddress = v5->_communicationAddress;
    v5->_communicationAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaListKey"];
    mediaList = v5->_mediaList;
    v5->_mediaList = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOrgNameKey"];
    orgName = v5->_orgName;
    v5->_orgName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOrgDescriptionKey"];
    orgDescription = v5->_orgDescription;
    v5->_orgDescription = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCategoryListKey"];
    categoryList = v5->_categoryList;
    v5->_categoryList = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kWebResourcesKey"];
    webResources = v5->_webResources;
    v5->_webResources = v16;
  }

  return v5;
}

- (CTLazuliChatBotOrgDetails)initWithReflection:(const void *)a3
{
  v27.receiver = self;
  v27.super_class = CTLazuliChatBotOrgDetails;
  v4 = [(CTLazuliChatBotOrgDetails *)&v27 init];
  v5 = v4;
  if (v4)
  {
    if (*(a3 + 96) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotCommunicationAddress alloc];
      if ((*(a3 + 96) & 1) == 0)
      {
        goto LABEL_28;
      }

      v8 = [(CTLazuliChatBotCommunicationAddress *)v7 initWithReflection:a3];
    }

    else
    {
      v8 = 0;
    }

    communicationAddress = v5->_communicationAddress;
    v5->_communicationAddress = v8;

    if (*(a3 + 128) == 1)
    {
      v6 = v5;
      v10 = [CTLazuliChatBotMediaList alloc];
      if ((*(a3 + 128) & 1) == 0)
      {
        goto LABEL_28;
      }

      v11 = [(CTLazuliChatBotMediaList *)v10 initWithReflection:a3 + 104];
    }

    else
    {
      v11 = 0;
    }

    mediaList = v5->_mediaList;
    v5->_mediaList = v11;

    if (*(a3 + 160) == 1)
    {
      v6 = v5;
      v13 = [CTLazuliChatBotOrgName alloc];
      if ((*(a3 + 160) & 1) == 0)
      {
        goto LABEL_28;
      }

      v14 = [(CTLazuliChatBotOrgName *)v13 initWithReflection:a3 + 136];
    }

    else
    {
      v14 = 0;
    }

    orgName = v5->_orgName;
    v5->_orgName = v14;

    if (*(a3 + 200) == 1)
    {
      v6 = v5;
      v16 = [CTLazuliChatBotOrgDescription alloc];
      if ((*(a3 + 200) & 1) == 0)
      {
        goto LABEL_28;
      }

      v17 = [(CTLazuliChatBotOrgDescription *)v16 initWithReflection:a3 + 168];
    }

    else
    {
      v17 = 0;
    }

    orgDescription = v5->_orgDescription;
    v5->_orgDescription = v17;

    if (*(a3 + 232) == 1)
    {
      v6 = v5;
      v19 = [CTLazuliChatBotCategoryList alloc];
      if ((*(a3 + 232) & 1) == 0)
      {
        goto LABEL_28;
      }

      v20 = [(CTLazuliChatBotCategoryList *)v19 initWithReflection:a3 + 208];
    }

    else
    {
      v20 = 0;
    }

    categoryList = v5->_categoryList;
    v5->_categoryList = v20;

    if (*(a3 + 264) != 1)
    {
      v23 = 0;
      goto LABEL_26;
    }

    v6 = v5;
    v22 = [CTLazuliChatBotWebResources alloc];
    if (*(a3 + 264))
    {
      v23 = [(CTLazuliChatBotWebResources *)v22 initWithReflection:a3 + 240];
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