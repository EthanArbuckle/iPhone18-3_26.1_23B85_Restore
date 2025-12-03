@interface MPServerObjectDatabaseMediaKitImportRequest
+ (id)_childKeyForParentType:(id)type type:(id)a4;
+ (id)_entityTypeForObject:(id)object;
+ (id)_unsupportedMediaKitTypes;
+ (id)_unsupportedParentChildRelationships;
- (MPServerObjectDatabaseMediaKitImportRequest)initWithPayload:(id)payload;
- (id)_sinfDataFromSinfType:(int64_t)type payload:(id)payload;
- (id)performWithDatabaseOperations:(id)operations augmentingPayload:(id *)payload;
- (int64_t)_sinfTypeFromPayload:(id)payload;
@end

@implementation MPServerObjectDatabaseMediaKitImportRequest

- (id)_sinfDataFromSinfType:(int64_t)type payload:(id)payload
{
  v20 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPServerObjectDatabaseImportRequest.m" lineNumber:417 description:@"Cannot extract sinfData from invalid synfType"];
  }

  if (![payloadCopy count])
  {
    firstObject = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, firstObject, OS_LOG_TYPE_FAULT, "No valid sinfs in payload", buf, 2u);
    }

    v8 = 0;
    goto LABEL_20;
  }

  if (type == 2)
  {
    firstObject = [payloadCopy firstObject];
    v11 = [firstObject valueForKey:@"sinf2"];
    if (v11)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v11 options:0];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects_Oversize");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = firstObject;
        _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "Missing miniSinf from sinfDictionary=%{public}@", buf, 0xCu);
      }

      v8 = 0;
    }

    goto LABEL_19;
  }

  if (type != 1)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v15 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:payloadCopy options:0 error:&v15];
  v9 = v15;
  firstObject = v9;
  if (!v8 || v9)
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects_Oversize");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = payloadCopy;
      v18 = 2114;
      v19 = firstObject;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "Could not serialize sinfs from payload=%{public}@, error=%{public}@", buf, 0x16u);
    }

LABEL_19:
  }

LABEL_20:

LABEL_21:

  return v8;
}

- (int64_t)_sinfTypeFromPayload:(id)payload
{
  payloadCopy = payload;
  if (payloadCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (_NSIsNSString() && ([payloadCopy isEqualToString:@"miniSinf"] & 1) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)performWithDatabaseOperations:(id)operations augmentingPayload:(id *)payload
{
  v49 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  v7 = objc_alloc_init(MPMediaKitEntityTranslatorContext);
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  userIdentity = [(MPServerObjectDatabaseImportRequest *)self userIdentity];
  v10 = [defaultIdentityStore DSIDForUserIdentity:userIdentity outError:0];
  stringValue = [v10 stringValue];
  [(MPMediaKitEntityTranslatorContext *)v7 setPersonID:stringValue];

  personID = [(MPMediaKitEntityTranslatorContext *)v7 personID];
  v13 = [personID length];

  if (!v13)
  {
    [(MPMediaKitEntityTranslatorContext *)v7 setPersonID:*MEMORY[0x1E69E4388]];
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__35967;
  v43 = __Block_byref_object_dispose__35968;
  v44 = 0;
  payload = [(MPServerObjectDatabaseImportRequest *)self payload];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke;
  v32[3] = &unk_1E767C438;
  v32[4] = self;
  v18 = v7;
  v33 = v18;
  v38 = &v39;
  v19 = operationsCopy;
  v34 = v19;
  v20 = array3;
  v35 = v20;
  v21 = array;
  v36 = v21;
  v22 = array2;
  v37 = v22;
  _MPServerObjectDatabaseMetadataImportEnumerateObjects(payload, payload, @"type", 0, 0, 0, 0, v32);

  v23 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v20 count];
    v25 = v40[5];
    *buf = 67109378;
    v46 = v24;
    v47 = 2114;
    v48 = v25;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "SOD performWithDatabaseOperations: importing [Media API payload] childRelationsCount=%d collectionVersionHash=%{public}@", buf, 0x12u);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_240;
  v29[3] = &unk_1E767C460;
  v26 = v19;
  v30 = v26;
  v31 = &v39;
  [v20 enumerateObjectsUsingBlock:v29];
  v27 = -[MPServerObjectDatabaseImportResult initWithAnnotatedPayload:playableAssetIdentifiers:importedIdentifiers:assetsCount:hlsAssetsCount:error:]([MPServerObjectDatabaseImportResult alloc], "initWithAnnotatedPayload:playableAssetIdentifiers:importedIdentifiers:assetsCount:hlsAssetsCount:error:", payload, v22, v21, [v26 importedAssetsCount], objc_msgSend(v26, "importedHLSAssetsCount"), 0);

  _Block_object_dispose(&v39, 8);

  return v27;
}

uint64_t __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v271[0] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v237 = a4;
  v238 = a5;
  v239 = a6;
  v17 = [MPMediaKitEntityTranslator translatorForType:v15];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 identifiersForPayload:v16 context:*(a1 + 40)];
    v20 = v19;
    *a8 = v20;
    if (v20)
    {
      if (v239)
      {
        v21 = [objc_opt_class() _childKeyForParentType:v238 type:v15];
        if (v21 && [v237 containsObject:@"relationships"])
        {
          v22 = *(*(*(a1 + 80) + 8) + 40);
          if (v22)
          {
            if (!a7)
            {
              [*(a1 + 48) removeRelationshipsForParentIdentifiers:v239 childKey:v21];
              v22 = *(*(*(a1 + 80) + 8) + 40);
            }

            [*(a1 + 48) relateIdentifiers:v19 type:v15 toParentIdentifiers:v239 parentVersionHash:v22 childKey:v21 order:a7];
          }

          else
          {
            v25 = [[MPServerObjectDatabaseMediaAPIImportChildRelation alloc] initWithItemIdentifiers:v19 type:v15 parentIdentifiers:v239 childKey:v21 relativeOrder:a7];
            [*(a1 + 56) addObject:v25];
          }
        }
      }

      v251 = 0;
      v252 = &v251;
      v253 = 0x2020000000;
      v254 = 0;
      v26 = [v16 objectForKeyedSubscript:@"attributes"];
      v27 = v26 == 0;

      if (v27)
      {
        goto LABEL_231;
      }

      if ([&unk_1F1509E50 containsObject:v15])
      {
        v28 = [v16 valueForKeyPath:@"attributes.contentRating"];
        v29 = v28;
        if (v28 == @"explicit")
        {
          v30 = 1;
        }

        else
        {
          v30 = [(__CFString *)v28 isEqual:@"explicit"];
        }
      }

      else
      {
        v30 = 0;
      }

      if (!(v30 & 1 | (([&unk_1F1509E68 containsObject:v15] & 1) == 0)))
      {
        v31 = [v16 valueForKeyPath:@"attributes.contentRatingsBySystem"];
        v32 = [v31 allValues];
        v33 = [v32 firstObject];
        v34 = [v33 objectForKeyedSubscript:@"value"];

        v30 = [v34 integerValue] > 499;
      }

      v35 = *(a1 + 48);
      v36 = [*(a1 + 32) expirationDate];
      v37 = [v35 importObject:v16 type:v15 identifiers:v19 isExplicitContent:v30 source:1 expiration:v36];
      *(v252 + 24) = v37;

      [*(a1 + 64) addObject:v19];
      v236 = [v16 valueForKeyPath:@"attributes.playParams"];

      if (([v15 isEqualToString:@"playlists"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"albums"))
      {
        v38 = [v16 valueForKeyPath:@"attributes.versionHash"];
        v39 = *(*(a1 + 80) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;

        if (![*(*(*(a1 + 80) + 8) + 40) length])
        {
          v41 = [v16 valueForKeyPath:@"attributes.playParams.versionHash"];
          v42 = *(*(a1 + 80) + 8);
          v43 = *(v42 + 40);
          *(v42 + 40) = v41;
        }

        if ([*(*(*(a1 + 80) + 8) + 40) length])
        {
          v44 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(*(*(a1 + 80) + 8) + 40);
            *buf = 138543618;
            *&buf[4] = v45;
            *&buf[12] = 2114;
            *&buf[14] = v15;
            _os_log_impl(&dword_1A238D000, v44, OS_LOG_TYPE_DEFAULT, "SOD performWithDatabaseOperations: Media API payload contains collectionPlaylistVersionHash=%{public}@ for type=%{public}@", buf, 0x16u);
          }
        }
      }

      v46 = [v16 valueForKeyPath:@"attributes.extendedAssetUrls"];
      v47 = v46;
      if (v46)
      {
        v235 = v46;
      }

      else
      {
        v235 = [v16 valueForKeyPath:@"attributes.assetUrls"];
      }

      v246[0] = MEMORY[0x1E69E9820];
      v246[1] = 3221225472;
      v246[2] = __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_212;
      v246[3] = &unk_1E767C3E8;
      v247 = *(a1 + 48);
      v48 = v19;
      v49 = *(a1 + 32);
      v248 = v48;
      v249 = v49;
      v50 = v16;
      v250 = v50;
      [v235 enumerateKeysAndObjectsUsingBlock:v246];
      v51 = [v50 valueForKeyPath:@"attributes.assets"];
      v232 = [v51 count];
      v233 = v48;
      v234 = v51;
      v52 = [v48 personalizedStore];
      v53 = [v52 personID];

      v54 = v53;
      v266 = 0u;
      v265 = 0u;
      v264 = 0u;
      v263 = 0u;
      v262 = 0u;
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      v258 = 0u;
      v257 = 0u;
      v256 = 0u;
      memset(&buf[8], 0, 32);
      *buf = 4001;
      CC_SHA1_Init(&buf[8]);
      v55 = v54;
      v56 = v55;
      v57 = [v55 UTF8String];
      v58 = [v55 length];
      v59 = v58;
      if (*buf > 3000)
      {
        if (*buf > 4000)
        {
          switch(*buf)
          {
            case 0xFA1:
              CC_SHA1_Update(&buf[8], v57, v58);
              break;
            case 0x10A0:
              CC_SHA256_Update(&buf[8], v57, v58);
              break;
            case 0x11A0:
              CC_SHA512_Update(&buf[8], v57, v58);
              break;
          }

          goto LABEL_133;
        }

        if (*buf != 3001)
        {
          if (*buf == 4000)
          {
            CC_MD5_Update(&buf[8], v57, v58);
          }

          goto LABEL_133;
        }

        if (!v57)
        {
          goto LABEL_133;
        }

        *&buf[8] += v58;
        if (v58 + DWORD2(v258) <= 0x1F)
        {
          memcpy(&v256 + DWORD2(v258) + 8, v57, v58);
          v99 = DWORD2(v258) + v59;
LABEL_107:
          DWORD2(v258) = v99;
          goto LABEL_133;
        }

        v112 = &v57[v58];
        if (DWORD2(v258))
        {
          memcpy(&v256 + DWORD2(v258) + 8, v57, (32 - DWORD2(v258)));
          *&buf[16] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[16] - 0x3D4D51C2D82B14B1 * *(&v256 + 1), 33);
          *&buf[24] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[24] - 0x3D4D51C2D82B14B1 * v257, 33);
          *&buf[32] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[32] - 0x3D4D51C2D82B14B1 * *(&v257 + 1), 33);
          *&v256 = 0x9E3779B185EBCA87 * __ROR8__(v256 - 0x3D4D51C2D82B14B1 * v258, 33);
          v57 += (32 - DWORD2(v258));
          DWORD2(v258) = 0;
        }

        if ((v57 + 32) <= v112)
        {
          v114 = *&buf[24];
          v113 = *&buf[16];
          v116 = *&buf[32];
          v115 = v256;
          do
          {
            v113 = 0x9E3779B185EBCA87 * __ROR8__(v113 - 0x3D4D51C2D82B14B1 * *v57, 33);
            v114 = 0x9E3779B185EBCA87 * __ROR8__(v114 - 0x3D4D51C2D82B14B1 * *(v57 + 1), 33);
            v116 = 0x9E3779B185EBCA87 * __ROR8__(v116 - 0x3D4D51C2D82B14B1 * *(v57 + 2), 33);
            v115 = 0x9E3779B185EBCA87 * __ROR8__(v115 - 0x3D4D51C2D82B14B1 * *(v57 + 3), 33);
            v57 += 32;
          }

          while (v57 <= v112 - 32);
          *&buf[16] = v113;
          *&buf[24] = v114;
          *&buf[32] = v116;
          *&v256 = v115;
        }

        if (v57 < v112)
        {
          v99 = v112 - v57;
          __memcpy_chk();
          goto LABEL_107;
        }

LABEL_133:

        memset(&v267[8], 0, 64);
        *v267 = *buf;
        if (*buf > 3000)
        {
          if (*buf > 4000)
          {
            switch(*buf)
            {
              case 0xFA1:
                CC_SHA1_Final(&v267[8], &buf[8]);
                break;
              case 0x10A0:
                CC_SHA256_Final(&v267[8], &buf[8]);
                break;
              case 0x11A0:
                CC_SHA512_Final(&v267[8], &buf[8]);
                break;
            }

            goto LABEL_180;
          }

          if (*buf != 3001)
          {
            if (*buf == 4000)
            {
              CC_MD5_Final(&v267[8], &buf[8]);
            }

LABEL_180:
            v268[0] = *v267;
            v268[1] = *&v267[16];
            v268[2] = *&v267[32];
            v268[3] = *&v267[48];
            v269 = *&v267[64];
            if (*v267 > 3999)
            {
              if (*v267 > 4255)
              {
                if (*v267 == 4256)
                {
                  v219 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                  v188 = v219;
                  v220 = 0;
                  v221 = v268 + 8;
                  do
                  {
                    v222 = *v221++;
                    v223 = &v219[v220];
                    *v223 = MSVFastHexStringFromBytes_hexCharacters_55966[v222 >> 4];
                    v223[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v222 & 0xF];
                    v220 += 2;
                  }

                  while (v220 != 64);
                  v193 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v194 = 64;
                }

                else
                {
                  if (*v267 != 4512)
                  {
                    goto LABEL_233;
                  }

                  v199 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                  v188 = v199;
                  v200 = 0;
                  v201 = v268 + 8;
                  do
                  {
                    v202 = *v201++;
                    v203 = &v199[v200];
                    *v203 = MSVFastHexStringFromBytes_hexCharacters_55966[v202 >> 4];
                    v203[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v202 & 0xF];
                    v200 += 2;
                  }

                  while (v200 != 128);
                  v193 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v194 = 128;
                }
              }

              else if (*v267 == 4000)
              {
                v210 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                v188 = v210;
                v211 = 0;
                v212 = v268 + 8;
                do
                {
                  v213 = *v212++;
                  v214 = &v210[v211];
                  *v214 = MSVFastHexStringFromBytes_hexCharacters_55966[v213 >> 4];
                  v214[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v213 & 0xF];
                  v211 += 2;
                }

                while (v211 != 32);
                v193 = objc_alloc(MEMORY[0x1E696AEC0]);
                v194 = 32;
              }

              else
              {
                if (*v267 != 4001)
                {
                  goto LABEL_233;
                }

                v187 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                v188 = v187;
                v189 = 0;
                v190 = v268 + 8;
                do
                {
                  v191 = *v190++;
                  v192 = &v187[v189];
                  *v192 = MSVFastHexStringFromBytes_hexCharacters_55966[v191 >> 4];
                  v192[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v191 & 0xF];
                  v189 += 2;
                }

                while (v189 != 40);
                v193 = objc_alloc(MEMORY[0x1E696AEC0]);
                v194 = 40;
              }

              v186 = [v193 initWithBytesNoCopy:v188 length:v194 encoding:4 freeWhenDone:1];
            }

            else
            {
              if (*v267 <= 2999)
              {
                if (*v267 == 1000)
                {
                  v204 = *(&v268[0] + 1);
                  if (*(&v268[0] + 1))
                  {
                    v205 = v271 + 1;
                    quot = *(&v268[0] + 1);
                    do
                    {
                      v207 = lldiv(quot, 10);
                      quot = v207.quot;
                      if (v207.rem >= 0)
                      {
                        LOBYTE(v208) = v207.rem;
                      }

                      else
                      {
                        v208 = -v207.rem;
                      }

                      *(v205 - 2) = v208 + 48;
                      v209 = (v205 - 2);
                      --v205;
                    }

                    while (v207.quot);
                    if (v204 < 0)
                    {
                      *(v205 - 2) = 45;
                      v209 = (v205 - 2);
                    }

                    v186 = CFStringCreateWithBytes(0, v209, v271 - v209, 0x8000100u, 0);
                    goto LABEL_226;
                  }

LABEL_234:
                  v224 = @"0";
LABEL_227:

                  v225 = [(__CFString *)v224 substringToIndex:7];

                  v240[0] = MEMORY[0x1E69E9820];
                  v240[1] = 3221225472;
                  v240[2] = __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_225;
                  v240[3] = &unk_1E767C410;
                  v240[4] = *(a1 + 32);
                  v245 = &v251;
                  v241 = *(a1 + 48);
                  v226 = v233;
                  v242 = v226;
                  v227 = v55;
                  v243 = v227;
                  v228 = v225;
                  v244 = v228;
                  [v234 enumerateObjectsUsingBlock:v240];
                  if (v236 && v232)
                  {
                    [*(a1 + 72) addObject:v226];
                  }

LABEL_231:
                  v24 = *(v252 + 24);
                  _Block_object_dispose(&v251, 8);
                  goto LABEL_232;
                }

                if (*v267 == 2000)
                {
                  v182 = DWORD2(v268[0]);
                  if (DWORD2(v268[0]))
                  {
                    v183 = v271;
                    do
                    {
                      v184 = ldiv(v182, 10);
                      v182 = v184.quot;
                      if (v184.rem >= 0)
                      {
                        LOBYTE(v185) = v184.rem;
                      }

                      else
                      {
                        v185 = -v184.rem;
                      }

                      *--v183 = v185 + 48;
                    }

                    while (v184.quot);
                    v186 = CFStringCreateWithBytes(0, v183, v271 - v183, 0x8000100u, 0);
                    goto LABEL_226;
                  }

                  goto LABEL_234;
                }

LABEL_233:
                v230 = [MEMORY[0x1E696AAA8] currentHandler];
                v231 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                [v230 handleFailureInFunction:v231 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                v224 = &stru_1F149ECA8;
                goto LABEL_227;
              }

              if (*v267 == 3000)
              {
                LODWORD(v270[0]) = bswap32(DWORD2(v268[0]));
                v215 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                v216 = 0;
                v217 = v215 + 1;
                do
                {
                  v218 = *(v270 + v216);
                  *(v217 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v218 >> 4];
                  *v217 = MSVFastHexStringFromBytes_hexCharacters_55966[v218 & 0xF];
                  v217 += 2;
                  ++v216;
                }

                while (v216 != 4);
                v186 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v215 length:8 encoding:4 freeWhenDone:1];
              }

              else
              {
                if (*v267 != 3001)
                {
                  goto LABEL_233;
                }

                v270[0] = bswap64(*(&v268[0] + 1));
                v195 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                v196 = 0;
                v197 = v195 + 1;
                do
                {
                  v198 = *(v270 + v196);
                  *(v197 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v198 >> 4];
                  *v197 = MSVFastHexStringFromBytes_hexCharacters_55966[v198 & 0xF];
                  v197 += 2;
                  ++v196;
                }

                while (v196 != 8);
                v186 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v195 length:16 encoding:4 freeWhenDone:1];
              }
            }

LABEL_226:
            v224 = v186;
            goto LABEL_227;
          }

          if (*&buf[8] < 0x20uLL)
          {
            v163 = *&buf[32] + 0x27D4EB2F165667C5;
          }

          else
          {
            v163 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(*&buf[24], 57) + __ROR8__(*&buf[16], 63) + __ROR8__(*&buf[32], 52) + __ROR8__(v256, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[16], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[24], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[32], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v256, 33)));
          }

          v164 = v163 + *&buf[8];
          v165 = &v256 + 1;
          v166 = buf[8] & 0x1F;
          if (v166 >= 8)
          {
            do
            {
              v167 = *v165++;
              v164 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v167, 33)) ^ v164, 37);
              v166 -= 8;
            }

            while (v166 > 7);
          }

          if (v166 >= 4)
          {
            v168 = *v165;
            v165 = (v165 + 4);
            v164 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v168) ^ v164, 41);
            v166 -= 4;
          }

          for (; v166; --v166)
          {
            v169 = *v165;
            v165 = (v165 + 1);
            v164 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v169) ^ v164, 53);
          }

          v170 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v164 ^ (v164 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v164 ^ (v164 >> 33))) >> 29));
          v158 = v170 ^ HIDWORD(v170);
LABEL_167:
          *&v267[8] = v158;
          goto LABEL_180;
        }

        if (*buf <= 1999)
        {
          if (!*buf)
          {
            v160 = [MEMORY[0x1E696AAA8] currentHandler];
            v161 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
            [v160 handleFailureInFunction:v161 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

            goto LABEL_180;
          }

          if (*buf != 1000)
          {
            goto LABEL_180;
          }

          v128 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
          v129 = *&buf[24] + (*&buf[32] ^ v256);
          v130 = __ROR8__(*&buf[32] ^ v256, 48);
          v131 = (v129 ^ v130) + __ROR8__(*&buf[8] + *&buf[16], 32);
          v132 = v131 ^ __ROR8__(v129 ^ v130, 43);
          v133 = v129 + v128;
          v134 = v133 ^ __ROR8__(v128, 47);
          v135 = (v131 ^ v256) + v134;
          v136 = v135 ^ __ROR8__(v134, 51);
          v137 = (__ROR8__(v133, 32) ^ 0xFFLL) + v132;
          v138 = __ROR8__(v132, 48);
          v139 = __ROR8__(v135, 32) + (v137 ^ v138);
          v140 = v139 ^ __ROR8__(v137 ^ v138, 43);
          v141 = v136 + v137;
          v142 = v141 ^ __ROR8__(v136, 47);
          v143 = v142 + v139;
          v144 = v143 ^ __ROR8__(v142, 51);
          v145 = __ROR8__(v141, 32) + v140;
          v146 = __ROR8__(v140, 48);
          v147 = __ROR8__(v143, 32) + (v145 ^ v146);
          v148 = v147 ^ __ROR8__(v145 ^ v146, 43);
          v149 = v144 + v145;
          v150 = v149 ^ __ROR8__(v144, 47);
          v151 = v150 + v147;
          v152 = v151 ^ __ROR8__(v150, 51);
          v153 = __ROR8__(v149, 32) + v148;
          v154 = __ROR8__(v148, 48);
          v155 = __ROR8__(v151, 32) + (v153 ^ v154);
          v156 = v155 ^ __ROR8__(v153 ^ v154, 43);
          v157 = v152 + v153;
          *&buf[8] = v155;
          *&buf[16] = v157 ^ __ROR8__(v152, 47);
          *&buf[24] = __ROR8__(v157, 32);
          *&buf[32] = v156;
          v158 = *&buf[16] ^ v155 ^ *&buf[24] ^ v156;
          goto LABEL_167;
        }

        if (*buf != 2000)
        {
          if (*buf != 3000)
          {
            goto LABEL_180;
          }

          if (*&buf[12])
          {
            v159 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_1A273DD70), vshlq_u32(*&buf[16], xmmword_1A273DD60)));
          }

          else
          {
            v159 = *&buf[24] + 374761393;
          }

          v171 = *&buf[8] + v159;
          v172 = &buf[32];
          v173 = BYTE8(v256) & 0xF;
          if (v173 >= 4)
          {
            do
            {
              v174 = *v172;
              v172 += 4;
              HIDWORD(v175) = v171 - 1028477379 * v174;
              LODWORD(v175) = HIDWORD(v175);
              v171 = 668265263 * (v175 >> 15);
              v173 -= 4;
            }

            while (v173 > 3);
          }

          for (; v173; --v173)
          {
            v176 = *v172++;
            HIDWORD(v177) = v171 + 374761393 * v176;
            LODWORD(v177) = HIDWORD(v177);
            v171 = -1640531535 * (v177 >> 21);
          }

          v178 = -1028477379 * ((-2048144777 * (v171 ^ (v171 >> 15))) ^ ((-2048144777 * (v171 ^ (v171 >> 15))) >> 13));
          v179 = v178 ^ HIWORD(v178);
          goto LABEL_179;
        }

        switch(buf[19])
        {
          case 1:
            v162 = buf[16];
            break;
          case 2:
            v162 = *&buf[16];
            break;
          case 3:
            v162 = *&buf[16] | (buf[18] << 16);
            break;
          default:
            v180 = *&buf[8];
            goto LABEL_178;
        }

        v180 = (461845907 * ((380141568 * v162) | ((-862048943 * v162) >> 17))) ^ *&buf[8];
LABEL_178:
        v181 = -2048144789 * (v180 ^ *&buf[12] ^ ((v180 ^ *&buf[12]) >> 16));
        v179 = (-1028477387 * (v181 ^ (v181 >> 13))) ^ ((-1028477387 * (v181 ^ (v181 >> 13))) >> 16);
        *&buf[8] = v179;
LABEL_179:
        *&v267[8] = v179;
        goto LABEL_180;
      }

      if (*buf <= 1999)
      {
        if (!*buf)
        {
          v95 = [MEMORY[0x1E696AAA8] currentHandler];
          v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
          [v95 handleFailureInFunction:v96 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

          goto LABEL_133;
        }

        if (*buf != 1000)
        {
          goto LABEL_133;
        }

        v60 = BYTE7(v256);
        v61 = v256 & 0xFFFFFFFFFFFFFFLL;
        v62 = BYTE7(v256) & 7;
        if (v62)
        {
          v63 = 8 - v62;
          v64 = v58 - (8 - v62);
          if (v58 < 8 - v62)
          {
LABEL_55:
            if (v59)
            {
              v87 = 0;
              v88 = 0;
              v89 = v59;
              do
              {
                v90 = *v57++;
                v88 |= v90 << v87;
                v87 += 8;
                --v89;
              }

              while (v89);
              if (v62)
              {
                v91 = (v88 << (8 * v62)) | ((v59 + v60) << 56) | v61;
              }

              else
              {
                v91 = v88 | ((v59 + v60) << 56);
              }
            }

            else
            {
              if (v62)
              {
                goto LABEL_133;
              }

              v91 = v60 << 56;
            }

            *&v256 = v91;
            goto LABEL_133;
          }

          v65 = 8 * v62;
          v66 = v57;
          v67 = v256 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v68 = *v66++;
            v67 |= v68 << v65;
            v65 += 8;
          }

          while (v65 != 64);
          v69 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
          v70 = *&buf[24] + (*&buf[32] ^ v67);
          v71 = __ROR8__(*&buf[32] ^ v67, 48);
          v72 = (v70 ^ v71) + __ROR8__(*&buf[8] + *&buf[16], 32);
          v73 = v72 ^ __ROR8__(v70 ^ v71, 43);
          v74 = v70 + v69;
          *&buf[24] = __ROR8__(v74, 32);
          *&buf[32] = v73;
          *&buf[8] = v72 ^ v67;
          *&buf[16] = v74 ^ __ROR8__(v69, 47);
          v57 += v63;
          *&v256 = (v63 + v60) << 56;
          v59 = v64;
        }

        if (v59 >= 8)
        {
          v75 = *&buf[8];
          v78 = *&buf[24];
          v77 = *&buf[16];
          v76 = *&buf[32];
          do
          {
            v79 = *v57;
            v57 += 8;
            v80 = v76 ^ v79;
            v81 = v75 + v77;
            v82 = v81 ^ __ROR8__(v77, 51);
            v83 = v78 + v80;
            v84 = __ROR8__(v80, 48);
            v85 = (v83 ^ v84) + __ROR8__(v81, 32);
            v76 = v85 ^ __ROR8__(v83 ^ v84, 43);
            v86 = v83 + v82;
            v77 = v86 ^ __ROR8__(v82, 47);
            v78 = __ROR8__(v86, 32);
            *&buf[24] = v78;
            *&buf[32] = v76;
            v75 = v85 ^ v79;
            *&buf[8] = v75;
            *&buf[16] = v77;
            v59 -= 8;
            v60 += 8;
          }

          while (v59 > 7);
        }

        v62 = 0;
        goto LABEL_55;
      }

      if (*buf != 2000)
      {
        if (*buf != 3000 || !v57)
        {
          goto LABEL_133;
        }

        v93 = v58 > 0xF || (*&buf[8] + v58) > 0xF;
        *&buf[8] += v58;
        *&buf[12] |= v93;
        if (v58 + DWORD2(v256) > 0xF)
        {
          v104 = &v57[v58];
          if (DWORD2(v256))
          {
            memcpy(&buf[DWORD2(v256) + 32], v57, (16 - DWORD2(v256)));
            HIDWORD(v105) = *&buf[16] - 2048144777 * *&buf[32];
            LODWORD(v105) = HIDWORD(v105);
            v106 = -1640531535 * (v105 >> 19);
            HIDWORD(v105) = *&buf[20] - 2048144777 * *&buf[36];
            LODWORD(v105) = HIDWORD(v105);
            *&buf[16] = v106;
            *&buf[20] = -1640531535 * (v105 >> 19);
            HIDWORD(v105) = *&buf[24] - 2048144777 * v256;
            LODWORD(v105) = HIDWORD(v105);
            *&buf[24] = -1640531535 * (v105 >> 19);
            HIDWORD(v105) = *&buf[28] - 2048144777 * DWORD1(v256);
            LODWORD(v105) = HIDWORD(v105);
            v57 += (16 - DWORD2(v256));
            *&buf[28] = -1640531535 * (v105 >> 19);
            DWORD2(v256) = 0;
          }

          if (v57 <= v104 - 16)
          {
            v107 = *&buf[16];
            v108 = *&buf[20];
            v109 = *&buf[24];
            v110 = *&buf[28];
            do
            {
              HIDWORD(v111) = v107 - 2048144777 * *v57;
              LODWORD(v111) = HIDWORD(v111);
              v107 = -1640531535 * (v111 >> 19);
              HIDWORD(v111) = v108 - 2048144777 * *(v57 + 1);
              LODWORD(v111) = HIDWORD(v111);
              v108 = -1640531535 * (v111 >> 19);
              HIDWORD(v111) = v109 - 2048144777 * *(v57 + 2);
              LODWORD(v111) = HIDWORD(v111);
              v109 = -1640531535 * (v111 >> 19);
              HIDWORD(v111) = v110 - 2048144777 * *(v57 + 3);
              LODWORD(v111) = HIDWORD(v111);
              v110 = -1640531535 * (v111 >> 19);
              v57 += 16;
            }

            while (v57 <= v104 - 16);
            *&buf[16] = v107;
            *&buf[20] = v108;
            *&buf[24] = v109;
            *&buf[28] = v110;
          }

          if (v57 >= v104)
          {
            goto LABEL_133;
          }

          v94 = v104 - v57;
          __memcpy_chk();
        }

        else
        {
          memcpy(&buf[DWORD2(v256) + 32], v57, v58);
          v94 = DWORD2(v256) + v59;
        }

        DWORD2(v256) = v94;
        goto LABEL_133;
      }

      v97 = v58 + buf[19];
      if (v97 < 4)
      {
        v98 = &buf[buf[19]];
        if (v58 <= 1u)
        {
          if (!v58)
          {
LABEL_132:
            *&buf[12] += v59;
            goto LABEL_133;
          }

          if (v58 == 1)
          {
            v98[16] = *v57;
            goto LABEL_132;
          }

LABEL_116:
          memcpy(v98 + 16, v57, v58);
          goto LABEL_132;
        }

        if (v58 == 2)
        {
          v117 = *v57;
        }

        else
        {
          if (v58 != 3)
          {
            goto LABEL_116;
          }

          v117 = *v57;
          v98[18] = v57[2];
        }

        *(v98 + 8) = v117;
        goto LABEL_132;
      }

      LOBYTE(v100) = 0;
      v101 = v97 & 0xFFFFFFFFFFFFFFFCLL;
      if (buf[19] > 1u)
      {
        if (buf[19] != 2)
        {
          LOBYTE(v102) = 0;
          LOBYTE(v103) = 0;
          v118 = 0;
          if (buf[19] == 3)
          {
            LOBYTE(v102) = buf[16];
            v100 = HIBYTE(*&buf[16]);
            LOBYTE(v103) = buf[18];
            v118 = *v57;
          }

          goto LABEL_122;
        }

        LOBYTE(v102) = buf[16];
        v100 = HIBYTE(*&buf[16]);
        v103 = *v57;
      }

      else
      {
        if (!buf[19])
        {
          v102 = *v57;
          v100 = *v57 >> 8;
          v103 = HIWORD(*v57);
          v118 = HIBYTE(*v57);
          goto LABEL_122;
        }

        LOBYTE(v102) = buf[16];
        LOBYTE(v100) = *v57;
        v103 = *(v57 + 1);
      }

      v118 = v103 >> 8;
LABEL_122:
      v119 = v97 & 3;
      v120 = (v103 << 16) | (v118 << 24) | v102 | (v100 << 8);
      HIDWORD(v121) = (461845907 * ((380141568 * v120) | ((-862048943 * v120) >> 17))) ^ *&buf[8];
      LODWORD(v121) = HIDWORD(v121);
      v122 = 5 * (v121 >> 19) - 430675100;
      *&buf[8] = v122;
      v123 = &v57[-buf[19] + 4];
      v124 = &v57[v101 - buf[19]];
      while (v123 < v124)
      {
        v125 = *v123;
        v123 += 4;
        HIDWORD(v126) = (461845907 * ((380141568 * v125) | ((-862048943 * v125) >> 17))) ^ v122;
        LODWORD(v126) = HIDWORD(v126);
        v122 = 5 * (v126 >> 19) - 430675100;
        *&buf[8] = v122;
      }

      if (v119 > 1)
      {
        if (v119 == 2)
        {
          *&buf[16] = *v124;
        }

        else
        {
          v127 = *v124;
          buf[18] = v124[2];
          *&buf[16] = v127;
        }
      }

      else if (v119)
      {
        buf[16] = *v124;
      }

      buf[19] = v119;
      goto LABEL_132;
    }
  }

  else
  {
    v19 = [objc_opt_class() _unsupportedMediaKitTypes];
    if (([v19 containsObject:v15] & 1) == 0)
    {
      [v19 addObject:v15];
      v23 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_FAULT, "Encountered unsupported MediaKit type: %@", buf, 0xCu);
      }
    }
  }

  v24 = 0;
LABEL_232:

  return v24 & 1;
}

void __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_240(uint64_t a1, void *a2)
{
  v12 = a2;
  if (![v12 relativeOrder])
  {
    v3 = *(a1 + 32);
    v4 = [v12 parentIdentifiers];
    v5 = [v12 childKey];
    [v3 removeRelationshipsForParentIdentifiers:v4 childKey:v5];
  }

  v6 = *(a1 + 32);
  v7 = [v12 identifiers];
  v8 = [v12 type];
  v9 = [v12 parentIdentifiers];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v10 = &stru_1F149ECA8;
  }

  v11 = [v12 childKey];
  [v6 relateIdentifiers:v7 type:v8 toParentIdentifiers:v9 parentVersionHash:v10 childKey:v11 order:{objc_msgSend(v12, "relativeOrder")}];
}

void __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_212(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!_NSIsNSString() || !_NSIsNSString())
  {
    if (v5 || !_NSIsNSString())
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        *buf = 138544130;
        v22 = v10;
        v23 = 2114;
        v24 = objc_opt_class();
        v25 = 2114;
        v26 = v5;
        v27 = 2114;
        v28 = v6;
        v12 = v24;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_FAULT, "Encountered unsupported data type in assetURLs [MediaKit]: flavorStringType=%{public}@ urlStringType=%{public}@ flavorString=%{public}@ urlString=%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v6;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "May have found Stereo HLS in assets but ignored [MediaKit]: urlString=%{public}@", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v7 = v5;
  if ([&unk_1F1509F70 containsObject:v7])
  {
    v8 = 1;
  }

  else if ([&unk_1F1509F88 containsObject:v7])
  {
    v8 = 2;
  }

  else if ([&unk_1F1509FA0 containsObject:v7])
  {
    v8 = 3;
  }

  else
  {
    if (([&unk_1F1509FB8 containsObject:v7] & 1) == 0)
    {

      goto LABEL_22;
    }

    v8 = 4;
  }

  if ([v6 length])
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v9 = [*(a1 + 48) assetURLExpirationDate];
    [v13 importAssetURLString:v6 forIdentifiers:v14 flavor:v8 expirationDate:v9];
LABEL_19:

    goto LABEL_20;
  }

LABEL_22:
  if ([v7 isEqualToString:@"enhancedHls"] && objc_msgSend(v6, "length"))
  {
    v15 = [*(a1 + 56) valueForKeyPath:@"meta.redeliveryId"];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 longLongValue];
    }

    else
    {
      v16 = 0;
    }

    v17 = *MEMORY[0x1E69E4280];
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [*(a1 + 48) assetURLExpirationDate];
    [v18 importHLSAssetURLString:v6 keyCertificateURL:0 keyServerURL:0 redeliveryId:v16 protocolType:v17 isiTunesStoreStream:1 forIdentifiers:v19 expirationDate:v20];
  }

LABEL_20:
}

void __95__MPServerObjectDatabaseMediaKitImportRequest_performWithDatabaseOperations_augmentingPayload___block_invoke_225(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueForKey:@"flavor"];
  v5 = [v3 valueForKey:@"sinfs"];
  v6 = [v3 valueForKey:@"url"];
  if (_NSIsNSString() && _NSIsNSString() && _NSIsNSArray())
  {
    v7 = [v3 valueForKey:@"kind"];
    v8 = v4;
    if ([&unk_1F1509F70 containsObject:v8])
    {
      v9 = 1;
    }

    else if ([&unk_1F1509F88 containsObject:v8])
    {
      v9 = 2;
    }

    else if ([&unk_1F1509FA0 containsObject:v8])
    {
      v9 = 3;
    }

    else if ([&unk_1F1509FB8 containsObject:v8])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v15 = [*(a1 + 32) _sinfTypeFromPayload:v7];
    if (v15)
    {
      v16 = v15;
      v22 = v9;
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = [*(a1 + 32) assetURLExpirationDate];
      *(*(*(a1 + 72) + 8) + 24) = [v18 importAssetURLString:v6 forIdentifiers:v17 flavor:v22 expirationDate:v19];

      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        v20 = [*(a1 + 32) _sinfDataFromSinfType:v16 payload:v5];
        v21 = [*(a1 + 48) preferredStoreStringIdentifierForPersonID:*(a1 + 56)];
        if (v20)
        {
          *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) importAssetSinf:v20 type:v16 forIdentifier:v21 hashedPersonID:*(a1 + 64) flavor:v22 sinfPayload:v5];
        }
      }

      goto LABEL_13;
    }

    v11 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_FAULT, "Encountered unsupported sinfKind in assets [MediaKit]: sinfKind=%{public}@", buf, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v4 || !_NSIsNSString())
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = v10;
    v12 = objc_opt_class();
    v13 = v12;
    *buf = 138544386;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = objc_opt_class();
    v29 = 2114;
    v30 = v4;
    v31 = 2114;
    v32 = v6;
    v14 = v28;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_FAULT, "Encountered unsupported data type in assets [MediaKit]: flavorStringType=%{public}@ urlStringType=%{public}@ sinfsType=%{public}@ flavorString=%{public}@ urlString=%{public}@", buf, 0x34u);

    goto LABEL_12;
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "May have found Stereo HLS in assets but ignored [MediaKit]: urlString=%{public}@", buf, 0xCu);
  }

LABEL_13:
}

- (MPServerObjectDatabaseMediaKitImportRequest)initWithPayload:(id)payload
{
  v4.receiver = self;
  v4.super_class = MPServerObjectDatabaseMediaKitImportRequest;
  return [(MPServerObjectDatabaseImportRequest *)&v4 _initWithPayload:payload];
}

+ (id)_entityTypeForObject:(id)object
{
  v3 = [object objectForKeyedSubscript:@"type"];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"songs"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"music-videos") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"uploaded-audios") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"uploaded-videos"))
    {
      v5 = MPModelRelationshipGenericSong;
    }

    else if ([&unk_1F1509EE0 containsObject:v4])
    {
      v5 = MPModelRelationshipGenericPlaylist;
    }

    else if ([v4 isEqualToString:@"artists"])
    {
      v5 = MPModelRelationshipGenericArtist;
    }

    else if ([&unk_1F1509EF8 containsObject:v4])
    {
      v5 = MPModelRelationshipGenericAlbum;
    }

    else if ([v4 isEqualToString:@"stations"])
    {
      v5 = MPModelRelationshipGenericRadioStation;
    }

    else if ([v4 isEqualToString:@"station-events"])
    {
      v5 = MPModelRelationshipGenericRadioStationEvent;
    }

    else if ([&unk_1F1509F10 containsObject:v4])
    {
      v5 = MPModelRelationshipGenericCurator;
    }

    else if ([v4 isEqualToString:@"tv-episodes"])
    {
      v5 = MPModelRelationshipGenericTVEpisode;
    }

    else if ([v4 isEqualToString:@"tv-shows"])
    {
      v5 = MPModelRelationshipGenericTVShow;
    }

    else if ([v4 isEqualToString:@"music-movies"])
    {
      v5 = MPModelRelationshipGenericMovie;
    }

    else if ([&unk_1F1509F28 containsObject:v4])
    {
      v5 = MPModelRelationshipGenericSocialPerson;
    }

    else if ([v4 isEqualToString:@"record-labels"])
    {
      v5 = MPModelRelationshipGenericRecordLabel;
    }

    else
    {
      if (![v4 isEqualToString:@"credit-artists"])
      {
        v6 = 0;
        goto LABEL_8;
      }

      v5 = MPModelRelationshipGenericCreditsArtist;
    }

    v6 = *v5;
LABEL_8:
    v7 = [MPServerObjectDatabaseEntityType entityTypeWithServerEntityType:v4 genericObjectRelationshipKey:v6];

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)_childKeyForParentType:(id)type type:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = a4;
  if (([typeCopy isEqualToString:@"songs"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"music-videos"))
  {
    if ([&unk_1F1509E80 containsObject:v7])
    {
      v8 = @"MPModelChildSongAlbum";
LABEL_28:
      v9 = v8;
      goto LABEL_29;
    }

    if ([v7 isEqualToString:@"artists"])
    {
      v8 = @"MPModelChildSongArtists";
      goto LABEL_28;
    }
  }

  if ([&unk_1F1509E98 containsObject:typeCopy])
  {
    if (([v7 isEqualToString:@"songs"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"music-videos"))
    {
      v8 = @"MPModelChildAlbumSongs";
      goto LABEL_28;
    }

    if ([v7 isEqualToString:@"artists"])
    {
      v8 = @"MPModelChildAlbumArtists";
      goto LABEL_28;
    }

    if ([v7 isEqualToString:@"record-labels"])
    {
      v8 = @"MPModelChildAlbumRecordLabels";
      goto LABEL_28;
    }
  }

  if ([typeCopy isEqualToString:@"credit-artists"] && objc_msgSend(v7, "isEqualToString:", @"artists"))
  {
    v8 = @"MPModelChildCreditsArtistRelatedArtist";
    goto LABEL_28;
  }

  if ([typeCopy isEqualToString:@"artists"] && objc_msgSend(&unk_1F1509EB0, "containsObject:", v7))
  {
    v8 = @"MPModelChildArtistAlbums";
    goto LABEL_28;
  }

  if ([&unk_1F1509EC8 containsObject:typeCopy] && ((objc_msgSend(v7, "isEqualToString:", @"songs") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"music-videos")))
  {
    v8 = @"MPModelChildPlaylistEntries";
    goto LABEL_28;
  }

  if ([typeCopy isEqualToString:@"stations"] && objc_msgSend(v7, "isEqualToString:", @"station-events"))
  {
    v8 = @"MPModelChildRadioStationEvents";
    goto LABEL_28;
  }

  _unsupportedParentChildRelationships = [self _unsupportedParentChildRelationships];
  v19[0] = typeCopy;
  v19[1] = v7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [v12 componentsJoinedByString:@"|"];

  if (([_unsupportedParentChildRelationships containsObject:v13] & 1) == 0)
  {
    [_unsupportedParentChildRelationships addObject:v13];
    v14 = os_log_create("com.apple.amp.mediaplayer", "ServerObjects");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = typeCopy;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "Encountered unexpected media kit relationship parent=%@ type=%@", &v15, 0x16u);
    }
  }

  v8 = 0;
LABEL_29:

  return v8;
}

+ (id)_unsupportedParentChildRelationships
{
  if (_unsupportedParentChildRelationships_onceToken != -1)
  {
    dispatch_once(&_unsupportedParentChildRelationships_onceToken, &__block_literal_global_296);
  }

  v3 = _unsupportedParentChildRelationships_unsupportedParentChildRelationships;

  return v3;
}

uint64_t __83__MPServerObjectDatabaseMediaKitImportRequest__unsupportedParentChildRelationships__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _unsupportedParentChildRelationships_unsupportedParentChildRelationships;
  _unsupportedParentChildRelationships_unsupportedParentChildRelationships = v0;

  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"playlists|apple-curators"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"apple-curators|playlists"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"artists|stations"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"artists|songs"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"artists|playlists"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"station-events|apple-curators"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"albums|albums"];
  [_unsupportedParentChildRelationships_unsupportedParentChildRelationships addObject:@"albums|playlists"];
  v2 = _unsupportedParentChildRelationships_unsupportedParentChildRelationships;

  return [v2 addObject:@"personal-social-profiles|social-profiles"];
}

+ (id)_unsupportedMediaKitTypes
{
  if (_unsupportedMediaKitTypes_onceToken != -1)
  {
    dispatch_once(&_unsupportedMediaKitTypes_onceToken, &__block_literal_global_36188);
  }

  v3 = _unsupportedMediaKitTypes_unsupportedKinds;

  return v3;
}

uint64_t __72__MPServerObjectDatabaseMediaKitImportRequest__unsupportedMediaKitTypes__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _unsupportedMediaKitTypes_unsupportedKinds;
  _unsupportedMediaKitTypes_unsupportedKinds = v0;

  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"personal-recommendation"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"marketing-items"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"buy"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"subscription"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"preorder"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"groupings"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"editorial-elements"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"rooms"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"targetedRadio"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"multirooms"];
  [_unsupportedMediaKitTypes_unsupportedKinds addObject:@"normal"];
  v2 = _unsupportedMediaKitTypes_unsupportedKinds;

  return [v2 addObject:@"social-upsells"];
}

@end