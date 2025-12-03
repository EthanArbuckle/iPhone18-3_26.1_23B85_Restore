@interface CNContact(MKExtras)
+ (id)_mapkit_meAvatarImageWithSize:()MKExtras scale:rightToLeft:;
+ (id)mapsContactKeys;
- (id)_mapkit_avatarImageWithSize:()MKExtras scale:rightToLeft:;
- (uint64_t)_mapkit_isSharedLocationContact;
- (uint64_t)_maps_isEqualToContact:()MKExtras;
@end

@implementation CNContact(MKExtras)

- (id)_mapkit_avatarImageWithSize:()MKExtras scale:rightToLeft:
{
  v25[1] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E695CE18] _mapkit_isAuthorized])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v11 = getCNAvatarImageRenderingScopeClass_softClass;
    v24 = getCNAvatarImageRenderingScopeClass_softClass;
    if (!getCNAvatarImageRenderingScopeClass_softClass)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getCNAvatarImageRenderingScopeClass_block_invoke;
      v20[3] = &unk_1E76CD7B0;
      v20[4] = &v21;
      __getCNAvatarImageRenderingScopeClass_block_invoke(v20);
      v11 = v22[3];
    }

    v12 = v11;
    _Block_object_dispose(&v21, 8);
    v13 = [v12 scopeWithPointSize:a6 scale:0 rightToLeft:a2 style:{a3, a4}];
    v14 = objc_alloc_init(getCNAvatarImageRendererClass());
    v25[0] = self;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v16 = [v14 avatarImageForContacts:v15 scope:v13];
  }

  else
  {
    v17 = objc_alloc_init(getCNAvatarImageRendererClass());
    placeholderImageProvider = [v17 placeholderImageProvider];
    v16 = [placeholderImageProvider imageForSize:a2 scale:{a3, a4}];
  }

  return v16;
}

- (uint64_t)_mapkit_isSharedLocationContact
{
  postalAddresses = [self postalAddresses];
  firstObject = [postalAddresses firstObject];

  identifier = [firstObject identifier];
  _mapkit_sharedLocationContactIdentifer = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v5 = [identifier isEqualToString:_mapkit_sharedLocationContactIdentifer];

  return v5;
}

- (uint64_t)_maps_isEqualToContact:()MKExtras
{
  v4 = a3;
  if (self != v4)
  {
    mapsContactKeys = [MEMORY[0x1E695CD58] mapsContactKeys];
    if (![self areKeysAvailable:mapsContactKeys] || !objc_msgSend(v4, "areKeysAvailable:", mapsContactKeys))
    {
      v49 = 0;
LABEL_72:

      goto LABEL_73;
    }

    namePrefix = [self namePrefix];
    namePrefix2 = [v4 namePrefix];
    if (![namePrefix isEqualToString:namePrefix2])
    {
      v49 = 0;
LABEL_71:

      goto LABEL_72;
    }

    givenName = [self givenName];
    givenName2 = [v4 givenName];
    if (![givenName isEqualToString:givenName2])
    {
      v49 = 0;
LABEL_70:

      goto LABEL_71;
    }

    middleName = [self middleName];
    middleName2 = [v4 middleName];
    if (![middleName isEqualToString:middleName2])
    {
      v49 = 0;
LABEL_69:

      goto LABEL_70;
    }

    familyName = [self familyName];
    familyName2 = [v4 familyName];
    v92 = familyName;
    v14 = familyName;
    v15 = familyName2;
    if (![v14 isEqualToString:familyName2])
    {
      v49 = 0;
LABEL_68:

      goto LABEL_69;
    }

    v90 = middleName;
    nameSuffix = [self nameSuffix];
    [v4 nameSuffix];
    v89 = v91 = nameSuffix;
    if (![nameSuffix isEqualToString:?])
    {
      v49 = 0;
      middleName = v90;
LABEL_67:

      goto LABEL_68;
    }

    nickname = [self nickname];
    nickname2 = [v4 nickname];
    v88 = nickname;
    if (![nickname isEqualToString:?])
    {
      v49 = 0;
      middleName = v90;
LABEL_66:

      goto LABEL_67;
    }

    phoneticGivenName = [self phoneticGivenName];
    [v4 phoneticGivenName];
    v85 = v86 = phoneticGivenName;
    if (![phoneticGivenName isEqualToString:?])
    {
      v49 = 0;
      middleName = v90;
LABEL_65:

      goto LABEL_66;
    }

    phoneticMiddleName = [self phoneticMiddleName];
    phoneticMiddleName2 = [v4 phoneticMiddleName];
    v84 = phoneticMiddleName;
    if (![phoneticMiddleName isEqualToString:?])
    {
      v49 = 0;
      middleName = v90;
LABEL_64:

      goto LABEL_65;
    }

    phoneticFamilyName = [self phoneticFamilyName];
    phoneticFamilyName2 = [v4 phoneticFamilyName];
    v82 = phoneticFamilyName;
    if (![phoneticFamilyName isEqualToString:?])
    {
      v49 = 0;
      middleName = v90;
LABEL_63:

      goto LABEL_64;
    }

    organizationName = [self organizationName];
    organizationName2 = [v4 organizationName];
    v70 = organizationName;
    if (![organizationName isEqualToString:?])
    {
      v49 = 0;
      middleName = v90;
LABEL_62:

      goto LABEL_63;
    }

    jobTitle = [self jobTitle];
    jobTitle2 = [v4 jobTitle];
    v63 = jobTitle;
    if (![jobTitle isEqualToString:?])
    {
      v49 = 0;
LABEL_61:
      middleName = v90;

      goto LABEL_62;
    }

    v60 = v15;
    phoneNumbers = [self phoneNumbers];
    phoneNumbers2 = [v4 phoneNumbers];
    v25 = phoneNumbers;
    v26 = phoneNumbers2;
    v78 = [v25 count];
    v71 = v26;
    if (v78 != [v26 count])
    {
      v49 = 0;
      v80 = v26;
LABEL_53:
      v51 = v25;
LABEL_60:

      v15 = v60;
      goto LABEL_61;
    }

    v64 = [v25 count];
    v68 = v25;
    if (v64)
    {
      v27 = 0;
      while (1)
      {
        v75 = [v25 objectAtIndexedSubscript:v27];
        v72 = [v71 objectAtIndexedSubscript:v27];
        v79 = [v75 isEqualIgnoringIdentifiers:v72];

        if ((v79 & 1) == 0)
        {
          break;
        }

        ++v27;
        v25 = v68;
        if (v64 == v27)
        {
          goto LABEL_20;
        }
      }

      v49 = 0;
      v80 = v71;
      v25 = v68;
      goto LABEL_53;
    }

LABEL_20:

    emailAddresses = [self emailAddresses];
    emailAddresses2 = [v4 emailAddresses];
    v30 = emailAddresses;
    v31 = emailAddresses2;
    v61 = v30;
    v32 = [v30 count];
    v80 = v31;
    if (v32 != [v31 count])
    {
      goto LABEL_51;
    }

    v57 = [v61 count];
    if (v57)
    {
      v33 = 0;
      while (1)
      {
        v73 = [v61 objectAtIndexedSubscript:v33];
        v34 = v33;
        v65 = [v80 objectAtIndexedSubscript:v33];
        v76 = [v73 isEqualIgnoringIdentifiers:v65];

        if ((v76 & 1) == 0)
        {
          break;
        }

        ++v33;
        if (v57 == v34 + 1)
        {
          goto LABEL_25;
        }
      }

LABEL_51:
      v49 = 0;
      v77 = v61;

LABEL_59:
      v51 = v61;
      v25 = v68;
      goto LABEL_60;
    }

LABEL_25:

    postalAddresses = [self postalAddresses];
    postalAddresses2 = [v4 postalAddresses];
    v37 = postalAddresses;
    v38 = postalAddresses2;
    v77 = v37;
    v39 = [v37 count];
    v74 = v38;
    if (v39 == [v38 count])
    {
      v53 = [v77 count];
      if (!v53)
      {
LABEL_30:

        urlAddresses = [self urlAddresses];
        urlAddresses2 = [v4 urlAddresses];
        v43 = urlAddresses;
        v44 = urlAddresses2;
        v59 = v43;
        v45 = [v43 count];
        v56 = v44;
        if (v45 == [v44 count])
        {
          v46 = [v43 count];
          if (v46)
          {
            v47 = 0;
            v54 = v46 - 1;
            do
            {
              v48 = [v59 objectAtIndexedSubscript:{v47, v54}];
              v67 = [v56 objectAtIndexedSubscript:v47];
              v49 = [v48 isEqualIgnoringIdentifiers:v67];

              if (!v49)
              {
                break;
              }
            }

            while (v54 != v47++);
          }

          else
          {
            v49 = 1;
          }
        }

        else
        {
          v49 = 0;
        }

        goto LABEL_58;
      }

      v40 = 0;
      while (1)
      {
        v58 = [v77 objectAtIndexedSubscript:{v40, v53}];
        v55 = [v74 objectAtIndexedSubscript:v40];
        v66 = [v58 isEqualIgnoringIdentifiers:v55];

        if ((v66 & 1) == 0)
        {
          break;
        }

        if (v53 == ++v40)
        {
          goto LABEL_30;
        }
      }
    }

    v49 = 0;
    v59 = v77;

LABEL_58:
    goto LABEL_59;
  }

  v49 = 1;
LABEL_73:

  return v49;
}

+ (id)_mapkit_meAvatarImageWithSize:()MKExtras scale:rightToLeft:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v15[0] = *MEMORY[0x1E695C278];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch:v11 error:0];

  v13 = [v12 _mapkit_avatarImageWithSize:a6 scale:self rightToLeft:{a2, a3}];

  return v13;
}

+ (id)mapsContactKeys
{
  v11[17] = *MEMORY[0x1E69E9840];
  descriptorForRequiredKeys = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
  v1 = *MEMORY[0x1E695C410];
  v11[0] = descriptorForRequiredKeys;
  v11[1] = v1;
  v2 = *MEMORY[0x1E695C240];
  v11[2] = *MEMORY[0x1E695C300];
  v11[3] = v2;
  v3 = *MEMORY[0x1E695C230];
  v11[4] = *MEMORY[0x1E695C2F0];
  v11[5] = v3;
  v4 = *MEMORY[0x1E695C310];
  v11[6] = *MEMORY[0x1E695C308];
  v11[7] = v4;
  v5 = *MEMORY[0x1E695C350];
  v11[8] = *MEMORY[0x1E695C348];
  v11[9] = v5;
  v6 = *MEMORY[0x1E695C328];
  v11[10] = *MEMORY[0x1E695C340];
  v11[11] = v6;
  v7 = *MEMORY[0x1E695C330];
  v11[12] = *MEMORY[0x1E695C2C8];
  v11[13] = v7;
  v8 = *MEMORY[0x1E695C360];
  v11[14] = *MEMORY[0x1E695C208];
  v11[15] = v8;
  v11[16] = *MEMORY[0x1E695C418];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:17];

  return v9;
}

@end