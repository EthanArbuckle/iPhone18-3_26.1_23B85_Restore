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
    v25[0] = a1;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v16 = [v14 avatarImageForContacts:v15 scope:v13];
  }

  else
  {
    v17 = objc_alloc_init(getCNAvatarImageRendererClass());
    v18 = [v17 placeholderImageProvider];
    v16 = [v18 imageForSize:a2 scale:{a3, a4}];
  }

  return v16;
}

- (uint64_t)_mapkit_isSharedLocationContact
{
  v1 = [a1 postalAddresses];
  v2 = [v1 firstObject];

  v3 = [v2 identifier];
  v4 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (uint64_t)_maps_isEqualToContact:()MKExtras
{
  v4 = a3;
  if (a1 != v4)
  {
    v5 = [MEMORY[0x1E695CD58] mapsContactKeys];
    if (![a1 areKeysAvailable:v5] || !objc_msgSend(v4, "areKeysAvailable:", v5))
    {
      v49 = 0;
LABEL_72:

      goto LABEL_73;
    }

    v6 = [a1 namePrefix];
    v7 = [v4 namePrefix];
    if (![v6 isEqualToString:v7])
    {
      v49 = 0;
LABEL_71:

      goto LABEL_72;
    }

    v8 = [a1 givenName];
    v9 = [v4 givenName];
    if (![v8 isEqualToString:v9])
    {
      v49 = 0;
LABEL_70:

      goto LABEL_71;
    }

    v10 = [a1 middleName];
    v11 = [v4 middleName];
    if (![v10 isEqualToString:v11])
    {
      v49 = 0;
LABEL_69:

      goto LABEL_70;
    }

    v12 = [a1 familyName];
    v13 = [v4 familyName];
    v92 = v12;
    v14 = v12;
    v15 = v13;
    if (![v14 isEqualToString:v13])
    {
      v49 = 0;
LABEL_68:

      goto LABEL_69;
    }

    v90 = v10;
    v16 = [a1 nameSuffix];
    [v4 nameSuffix];
    v89 = v91 = v16;
    if (![v16 isEqualToString:?])
    {
      v49 = 0;
      v10 = v90;
LABEL_67:

      goto LABEL_68;
    }

    v17 = [a1 nickname];
    v87 = [v4 nickname];
    v88 = v17;
    if (![v17 isEqualToString:?])
    {
      v49 = 0;
      v10 = v90;
LABEL_66:

      goto LABEL_67;
    }

    v18 = [a1 phoneticGivenName];
    [v4 phoneticGivenName];
    v85 = v86 = v18;
    if (![v18 isEqualToString:?])
    {
      v49 = 0;
      v10 = v90;
LABEL_65:

      goto LABEL_66;
    }

    v19 = [a1 phoneticMiddleName];
    v83 = [v4 phoneticMiddleName];
    v84 = v19;
    if (![v19 isEqualToString:?])
    {
      v49 = 0;
      v10 = v90;
LABEL_64:

      goto LABEL_65;
    }

    v20 = [a1 phoneticFamilyName];
    v81 = [v4 phoneticFamilyName];
    v82 = v20;
    if (![v20 isEqualToString:?])
    {
      v49 = 0;
      v10 = v90;
LABEL_63:

      goto LABEL_64;
    }

    v21 = [a1 organizationName];
    v69 = [v4 organizationName];
    v70 = v21;
    if (![v21 isEqualToString:?])
    {
      v49 = 0;
      v10 = v90;
LABEL_62:

      goto LABEL_63;
    }

    v22 = [a1 jobTitle];
    v62 = [v4 jobTitle];
    v63 = v22;
    if (![v22 isEqualToString:?])
    {
      v49 = 0;
LABEL_61:
      v10 = v90;

      goto LABEL_62;
    }

    v60 = v15;
    v23 = [a1 phoneNumbers];
    v24 = [v4 phoneNumbers];
    v25 = v23;
    v26 = v24;
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

    v28 = [a1 emailAddresses];
    v29 = [v4 emailAddresses];
    v30 = v28;
    v31 = v29;
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

    v35 = [a1 postalAddresses];
    v36 = [v4 postalAddresses];
    v37 = v35;
    v38 = v36;
    v77 = v37;
    v39 = [v37 count];
    v74 = v38;
    if (v39 == [v38 count])
    {
      v53 = [v77 count];
      if (!v53)
      {
LABEL_30:

        v41 = [a1 urlAddresses];
        v42 = [v4 urlAddresses];
        v43 = v41;
        v44 = v42;
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

  v13 = [v12 _mapkit_avatarImageWithSize:a6 scale:a1 rightToLeft:{a2, a3}];

  return v13;
}

+ (id)mapsContactKeys
{
  v11[17] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
  v1 = *MEMORY[0x1E695C410];
  v11[0] = v0;
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