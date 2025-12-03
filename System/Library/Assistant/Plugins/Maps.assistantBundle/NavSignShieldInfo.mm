@interface NavSignShieldInfo
- (BOOL)isEqual:(id)equal;
- (NavSignShieldInfo)initWithShieldID:(int)d shieldStringID:(id)iD shieldText:(id)text;
- (id)_car_shieldImageWithSize:(int64_t)size scale:(double)scale useAdaptiveStyling:(BOOL)styling nightMode:(BOOL)mode;
- (id)description;
- (id)shieldImageWithSize:(int64_t)size scale:(double)scale idiom:(int64_t)idiom;
- (unint64_t)hash;
@end

@implementation NavSignShieldInfo

- (NavSignShieldInfo)initWithShieldID:(int)d shieldStringID:(id)iD shieldText:(id)text
{
  iDCopy = iD;
  textCopy = text;
  if (d || iDCopy)
  {
    v18.receiver = self;
    v18.super_class = NavSignShieldInfo;
    v11 = [(NavSignShieldInfo *)&v18 init];
    v12 = v11;
    if (v11)
    {
      v11->_shieldID = d;
      v13 = [iDCopy copy];
      shieldStringID = v12->_shieldStringID;
      v12->_shieldStringID = v13;

      v15 = [textCopy copy];
      shieldText = v12->_shieldText;
      v12->_shieldText = v15;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      shieldID = [v5 shieldID];
      if (shieldID == [(NavSignShieldInfo *)self shieldID])
      {
        shieldStringID = [(NavSignShieldInfo *)self shieldStringID];
        v8 = [shieldStringID length];
        shieldStringID2 = [v5 shieldStringID];
        v10 = shieldStringID2;
        if (v8)
        {
          shieldStringID3 = [(NavSignShieldInfo *)self shieldStringID];
          v12 = [v10 isEqualToString:shieldStringID3];

          if (v12)
          {
LABEL_6:
            shieldText = [(NavSignShieldInfo *)self shieldText];
            v14 = [shieldText length];
            shieldText2 = [v5 shieldText];
            v16 = shieldText2;
            if (v14)
            {
              shieldText3 = [(NavSignShieldInfo *)self shieldText];
              v18 = [v16 isEqualToString:shieldText3];
            }

            else
            {
              v18 = [shieldText2 length] == 0;
            }

            goto LABEL_13;
          }
        }

        else
        {
          v19 = [shieldStringID2 length];

          if (!v19)
          {
            goto LABEL_6;
          }
        }
      }

      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (id)description
{
  shieldID = [(NavSignShieldInfo *)self shieldID];
  shieldStringID = [(NavSignShieldInfo *)self shieldStringID];
  shieldText = [(NavSignShieldInfo *)self shieldText];
  v6 = [NSString stringWithFormat:@"shieldID: [%d] strID: [%@] text: [%@]", shieldID, shieldStringID, shieldText];

  return v6;
}

- (unint64_t)hash
{
  shieldID = [(NavSignShieldInfo *)self shieldID];
  shieldID2 = [(NavSignShieldInfo *)self shieldID];
  if (shieldID >= 0)
  {
    v5 = shieldID2;
  }

  else
  {
    v5 = -shieldID2;
  }

  v6 = v5;
  shieldStringID = [(NavSignShieldInfo *)self shieldStringID];
  v8 = [shieldStringID hash];
  shieldText = [(NavSignShieldInfo *)self shieldText];
  v10 = v8 ^ [shieldText hash];

  return v10 ^ v6;
}

- (id)_car_shieldImageWithSize:(int64_t)size scale:(double)scale useAdaptiveStyling:(BOOL)styling nightMode:(BOOL)mode
{
  modeCopy = mode;
  stylingCopy = styling;
  if ([(NavSignShieldInfo *)self shieldID])
  {
    initNavigationModifiers = [[VKIconModifiers alloc] initNavigationModifiers];
    [initNavigationModifiers setNewInterfaceEnabled:1];
    shieldText = [(NavSignShieldInfo *)self shieldText];
    [initNavigationModifiers setText:shieldText];

    if (modeCopy)
    {
      v13 = +[VKIconManager sharedManager];
      [initNavigationModifiers setVariant:{objc_msgSend(v13, "darkVariant")}];
    }

    shieldID = [(NavSignShieldInfo *)self shieldID];
    if (stylingCopy)
    {
      v15 = 6;
    }

    else
    {
      v15 = 7;
    }

    v16 = v15 | 0x4BAF0;
    if (shieldID == 310000)
    {
      v17 = v16;
    }

    else
    {
      v17 = shieldID;
    }

    v18 = +[VKIconManager sharedManager];
    shieldText2 = [(NavSignShieldInfo *)self shieldText];
    *&v20 = scale;
    v21 = [v18 imageForDataID:v17 text:shieldText2 contentScale:size sizeGroup:initNavigationModifiers modifiers:v20];
  }

  else
  {
    v21 = [(NavSignShieldInfo *)self shieldImageWithSize:size scale:1 idiom:scale];
  }

  return v21;
}

- (id)shieldImageWithSize:(int64_t)size scale:(double)scale idiom:(int64_t)idiom
{
  if ([(NavSignShieldInfo *)self shieldID:size]|| ([(NavSignShieldInfo *)self shieldStringID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_alloc_init(VKIconModifiers);
    shieldText = [(NavSignShieldInfo *)self shieldText];
    [v9 setText:shieldText];

    shieldID = [(NavSignShieldInfo *)self shieldID];
    v12 = +[VKIconManager sharedManager];
    if (shieldID)
    {
      shieldID2 = [(NavSignShieldInfo *)self shieldID];
      shieldText2 = [(NavSignShieldInfo *)self shieldText];
      *&v15 = scale;
      [v12 imageForDataID:shieldID2 text:shieldText2 contentScale:size sizeGroup:v9 modifiers:v15];
    }

    else
    {
      shieldText2 = [(NavSignShieldInfo *)self shieldStringID];
      *&v16 = scale;
      [v12 imageForName:shieldText2 contentScale:size sizeGroup:v9 modifiers:v16];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end