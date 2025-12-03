@interface MPStoreLibraryMappingRequestOperation
+ (BOOL)supportsModelClass:(Class)class;
- (void)execute;
@end

@implementation MPStoreLibraryMappingRequestOperation

+ (BOOL)supportsModelClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [(objc_class *)class isSubclassOfClass:v5];
}

- (void)execute
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v398 = *MEMORY[0x1E69E9840];
  if (!v3[34])
  {
    v180 = v2;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v180 object:v3 file:@"MPStoreLibraryMappingRequestOperation.mm" lineNumber:36 description:@"Library view must not be nil."];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke;
  aBlock[3] = &unk_1E767AAD8;
  v217 = v3;
  aBlock[4] = v3;
  v201 = _Block_copy(aBlock);
  if ([v3 isCancelled])
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    v201[2](v201, 0, v4);
    goto LABEL_96;
  }

  if ([v3[37] count] && (objc_msgSend(v3[35], "isSubclassOfClass:", objc_opt_class()) & 1) == 0)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:5 userInfo:0];
    v201[2](v201, 0, v4);
    goto LABEL_96;
  }

  v5 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:v3[35]];
  v6 = +[MPPropertySet emptyPropertySet];
  v199 = v5;
  if (v5)
  {
    [v5 MLCorePropertiesForPropertySet:v6];
  }

  else
  {
    v382 = 0;
    v381 = 0;
    v383 = 0;
  }

  v200 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
  [(MPMediaLibraryEntityTranslationContext *)v200 setIdentifierSourcePrefix:@"PersonalizedMap-"];
  library = [v3[34] library];
  [(MPMediaLibraryEntityTranslationContext *)v200 setMediaLibrary:library];

  v8 = [MPModelKind kindWithModelClass:v3[35]];
  [(MPMediaLibraryEntityTranslationContext *)v200 setModelKind:v8];

  v9 = v3;
  if ([MEMORY[0x1E69E4688] canAccessAccountStore])
  {
    userIdentity = [v3 userIdentity];
    accountDSID = [userIdentity accountDSID];
    [(MPMediaLibraryEntityTranslationContext *)v200 setPersonID:accountDSID];

    v9 = v3;
  }

  if (([v9[35] isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v9[35], "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v9[35], "isSubclassOfClass:", objc_opt_class()))
  {
    v202 = objc_alloc_init(MPStoreLibraryMappingResponse);
    v203 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v211 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *v218 = 0u;
    v219 = 0u;
    LODWORD(v220) = 1065353216;
    v379 = 0u;
    v378 = 0u;
    v380 = 1065353216;
    v376 = 0u;
    v375 = 0u;
    v377 = 1065353216;
    v373 = 0u;
    *v372 = 0u;
    v374 = 1065353216;
    v370 = 0u;
    *v369 = 0u;
    v371 = 1065353216;
    v368 = 0u;
    v367 = 0u;
    v366 = 0u;
    v365 = 0u;
    obj = v9[36];
    v12 = [obj countByEnumeratingWithState:&v365 objects:v397 count:16];
    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = *v366;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v366 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v365 + 1) + 8 * i);
        library2 = [v15 library];
        databaseID = [library2 databaseID];
        library3 = [v217[34] library];
        uniqueIdentifier = [library3 uniqueIdentifier];
        if ([databaseID isEqualToString:uniqueIdentifier])
        {
          v20 = [library2 persistentID] == 0;

          if (!v20)
          {
            goto LABEL_49;
          }
        }

        else
        {
        }

        universalStore = [v15 universalStore];
        subscriptionAdamID = [universalStore subscriptionAdamID];

        *&v395 = subscriptionAdamID;
        v23 = subscriptionAdamID != 0;
        if (subscriptionAdamID)
        {
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v218, subscriptionAdamID);
        }

        universalStore2 = [v15 universalStore];
        purchasedAdamID = [universalStore2 purchasedAdamID];

        v313 = purchasedAdamID;
        if (purchasedAdamID)
        {
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, purchasedAdamID);
          v23 = 1;
        }

        universalStore3 = [v15 universalStore];
        adamID = [universalStore3 adamID];

        v394 = adamID;
        if (adamID)
        {
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v218, adamID);
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, adamID);
          v23 = 1;
        }

        universalStore4 = [v15 universalStore];
        formerAdamIDs = [universalStore4 formerAdamIDs];

        v364 = 0u;
        v363 = 0u;
        v362 = 0u;
        v361 = 0u;
        v30 = formerAdamIDs;
        v31 = [v30 countByEnumeratingWithState:&v361 objects:v396 count:16];
        if (v31)
        {
          v32 = *v362;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v362 != v32)
              {
                objc_enumerationMutation(v30);
              }

              longLongValue = [*(*(&v361 + 1) + 8 * j) longLongValue];
              __p[0] = longLongValue;
              if (longLongValue)
              {
                std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v375, longLongValue);
              }
            }

            v31 = [v30 countByEnumeratingWithState:&v361 objects:v396 count:16];
          }

          while (v31);
        }

        personalizedStore = [v15 personalizedStore];
        cloudID = [personalizedStore cloudID];

        v315 = cloudID;
        if (cloudID)
        {
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v372, cloudID);
          v23 = 1;
        }

        universalStore5 = [v15 universalStore];
        universalCloudLibraryID = [universalStore5 universalCloudLibraryID];

        if ([universalCloudLibraryID length])
        {
          v39 = universalCloudLibraryID;
          std::string::basic_string[abi:ne200100]<0>(__p, [universalCloudLibraryID UTF8String]);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v369, __p);
          if (SHIBYTE(v360) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_46:
          v40 = [v211 objectForKey:v15];
          v41 = v40 == 0;

          if (v41)
          {
            [v203 addObject:v15];
            null = [MEMORY[0x1E695DFB0] null];
            [v211 setObject:null forKey:v15];
          }

          goto LABEL_48;
        }

        if (v23)
        {
          goto LABEL_46;
        }

LABEL_48:

LABEL_49:
      }

      v12 = [obj countByEnumeratingWithState:&v365 objects:v397 count:16];
      if (!v12)
      {
LABEL_51:

        if ([v217 isCancelled])
        {
          v43 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
          v201[2](v201, 0, v43);
        }

        else
        {
          v349[0] = MEMORY[0x1E69E9820];
          v349[1] = 3321888768;
          v349[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2;
          v349[3] = &unk_1F1496A20;
          v349[4] = v217;
          v44 = v201;
          v354 = v44;
          v45 = v203;
          v350 = v45;
          std::unordered_set<long long>::unordered_set(v355, &v375);
          v357 = 0;
          v356 = 0;
          v358 = 0;
          std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v356, v381, v382, (v382 - v381) >> 3);
          v46 = v199;
          v351 = v46;
          v47 = v200;
          v352 = v47;
          v48 = v202;
          v353 = v48;
          objc = _Block_copy(v349);
          v338[0] = MEMORY[0x1E69E9820];
          v338[1] = 3321888768;
          v338[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_32;
          v338[3] = &unk_1F1496A58;
          v338[4] = v217;
          v49 = v44;
          v343 = v49;
          v50 = v45;
          v339 = v50;
          std::unordered_set<long long>::unordered_set(v345, v218);
          v347 = 0;
          v346 = 0;
          v348 = 0;
          std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v346, v381, v382, (v382 - v381) >> 3);
          v51 = v46;
          v340 = v51;
          v52 = v47;
          v341 = v52;
          v53 = v48;
          v342 = v53;
          v189 = objc;
          v344 = v189;
          v197 = _Block_copy(v338);
          v327[0] = MEMORY[0x1E69E9820];
          v327[1] = 3321888768;
          v327[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_34;
          v327[3] = &unk_1F1496A58;
          v327[4] = v217;
          v54 = v49;
          v332 = v54;
          v55 = v50;
          v328 = v55;
          std::unordered_set<long long>::unordered_set(v334, &v378);
          v336 = 0;
          v335 = 0;
          v337 = 0;
          std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v335, v381, v382, (v382 - v381) >> 3);
          v56 = v51;
          v329 = v56;
          v57 = v52;
          v330 = v57;
          v58 = v53;
          v331 = v58;
          v191 = v197;
          v333 = v191;
          v193 = _Block_copy(v327);
          v316[0] = MEMORY[0x1E69E9820];
          v316[1] = 3321888768;
          v316[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_3_36;
          v316[3] = &unk_1F1496A58;
          v316[4] = v217;
          v321 = v54;
          v59 = v55;
          v317 = v59;
          std::unordered_set<long long>::unordered_set(v323, v372);
          v325 = 0;
          v324 = 0;
          v326 = 0;
          std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v324, v381, v382, (v382 - v381) >> 3);
          v318 = v56;
          v319 = v57;
          v320 = v58;
          v60 = v193;
          v322 = v60;
          v61 = _Block_copy(v316);
          if ([v59 count] && *(&v370 + 1))
          {
            v360 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v62 = 0;
            if (v370)
            {
              v63 = v370;
              do
              {
                ++v62;
                v63 = *v63;
              }

              while (v63);
            }

            v64 = std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(__p, v370, v62);
            v65 = MEMORY[0x1A58E1100](v64);
            v394 = v65;
            if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) < 2)
            {
              v313 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v65);
              v385 = 0;
              std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
            }

            v313 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v65);
            std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
          }

          v61[2](v61);

          if (v324)
          {
            v325 = v324;
            operator delete(v324);
          }

          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v323);

          if (v335)
          {
            v336 = v335;
            operator delete(v335);
          }

          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v334);

          if (v346)
          {
            v347 = v346;
            operator delete(v346);
          }

          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v345);

          if (v356)
          {
            v357 = v356;
            operator delete(v356);
          }

          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v355);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v369);
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v372);
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&v375);
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&v378);
        std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v218);

        goto LABEL_92;
      }
    }
  }

  if (![v9[35] isSubclassOfClass:objc_opt_class()])
  {
    if (([v9[35] isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v9[35], "isSubclassOfClass:", objc_opt_class()))
    {
      v202 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *v218 = 0u;
      v219 = 0u;
      LODWORD(v220) = 1065353216;
      v379 = 0u;
      v378 = 0u;
      v380 = 1065353216;
      v376 = 0u;
      v375 = 0u;
      v377 = 1065353216;
      v373 = 0u;
      *v372 = 0u;
      v374 = 1065353216;
      v287 = 0u;
      v286 = 0u;
      v285 = 0u;
      v284 = 0u;
      v212 = v9[36];
      v82 = [v212 countByEnumeratingWithState:&v284 objects:v392 count:16];
      if (!v82)
      {
        goto LABEL_129;
      }

      v83 = *v285;
      while (1)
      {
        for (k = 0; k != v82; ++k)
        {
          if (*v285 != v83)
          {
            objc_enumerationMutation(v212);
          }

          v85 = *(*(&v284 + 1) + 8 * k);
          personalizedStore2 = [v85 personalizedStore];
          cloudAlbumID = [personalizedStore2 cloudAlbumID];

          v88 = [cloudAlbumID length];
          v89 = v88 != 0;
          if (v88)
          {
            v90 = cloudAlbumID;
            std::string::basic_string[abi:ne200100]<0>(v369, [cloudAlbumID UTF8String]);
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v375, v369);
            if (SBYTE7(v370) < 0)
            {
              operator delete(v369[0]);
            }
          }

          universalStore6 = [v85 universalStore];
          adamID2 = [universalStore6 adamID];

          __p[0] = adamID2;
          if (adamID2)
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v218, adamID2);
            v89 = 1;
          }

          universalStore7 = [v85 universalStore];
          formerAdamIDs2 = [universalStore7 formerAdamIDs];

          v283 = 0u;
          v282 = 0u;
          v281 = 0u;
          v280 = 0u;
          v95 = formerAdamIDs2;
          v96 = [v95 countByEnumeratingWithState:&v280 objects:v391 count:16];
          if (v96)
          {
            v97 = *v281;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v281 != v97)
                {
                  objc_enumerationMutation(v95);
                }

                longLongValue2 = [*(*(&v280 + 1) + 8 * m) longLongValue];
                v369[0] = longLongValue2;
                if (longLongValue2)
                {
                  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, longLongValue2);
                }
              }

              v96 = [v95 countByEnumeratingWithState:&v280 objects:v391 count:16];
            }

            while (v96);
          }

          universalStore8 = [v85 universalStore];
          subscriptionAdamID2 = [universalStore8 subscriptionAdamID];

          *&v395 = subscriptionAdamID2;
          if (subscriptionAdamID2)
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v218, subscriptionAdamID2);
            v89 = 1;
          }

          universalStore9 = [v85 universalStore];
          purchasedAdamID2 = [universalStore9 purchasedAdamID];

          v313 = purchasedAdamID2;
          if (purchasedAdamID2)
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v218, purchasedAdamID2);
            v89 = 1;
          }

          universalStore10 = [v85 universalStore];
          universalCloudLibraryID2 = [universalStore10 universalCloudLibraryID];

          if ([universalCloudLibraryID2 length])
          {
            v106 = universalCloudLibraryID2;
            std::string::basic_string[abi:ne200100]<0>(v369, [universalCloudLibraryID2 UTF8String]);
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v372, v369);
            if (SBYTE7(v370) < 0)
            {
              operator delete(v369[0]);
            }
          }

          else if (!v89)
          {
            goto LABEL_127;
          }

          [(MPStoreLibraryMappingResponse *)v202 addObject:v85];
LABEL_127:
        }

        v82 = [v212 countByEnumeratingWithState:&v284 objects:v392 count:16];
        if (!v82)
        {
LABEL_129:

          if ([v217 isCancelled])
          {
            v107 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
            v201[2](v201, 0, v107);
          }

          else
          {
            v158 = objc_alloc_init(MPStoreLibraryMappingResponse);
            v270[0] = MEMORY[0x1E69E9820];
            v270[1] = 3321888768;
            v270[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_40;
            v270[3] = &unk_1F1496A20;
            v270[4] = v217;
            v159 = v201;
            v275 = v159;
            v160 = v202;
            v271 = v160;
            std::unordered_set<long long>::unordered_set(v276, &v378);
            v278 = 0;
            v277 = 0;
            v279 = 0;
            std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v277, v381, v382, (v382 - v381) >> 3);
            v161 = v199;
            v272 = v161;
            v162 = v200;
            v273 = v162;
            v163 = v158;
            v274 = v163;
            objd = _Block_copy(v270);
            v259[0] = MEMORY[0x1E69E9820];
            v259[1] = 3321888768;
            v259[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_42;
            v259[3] = &unk_1F1496A58;
            v259[4] = v217;
            v164 = v159;
            v264 = v164;
            v165 = v160;
            v260 = v165;
            std::unordered_set<long long>::unordered_set(v266, v218);
            v268 = 0;
            v267 = 0;
            v269 = 0;
            std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v267, v381, v382, (v382 - v381) >> 3);
            v166 = v161;
            v261 = v166;
            v167 = v162;
            v262 = v167;
            v107 = v163;
            v263 = v107;
            v205 = objd;
            v265 = v205;
            v216 = _Block_copy(v259);
            if ([(MPStoreLibraryMappingResponse *)v165 count]&& *(&v376 + 1))
            {
              *&v370 = 0;
              v369[0] = 0;
              v369[1] = 0;
              v168 = 0;
              if (v376)
              {
                v169 = v376;
                do
                {
                  ++v168;
                  v169 = *v169;
                }

                while (v169);
              }

              std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(v369, v376, v168);
              v256[0] = MEMORY[0x1E69E9820];
              v256[1] = 3321888768;
              v256[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_44;
              v256[3] = &unk_1F1496B70;
              memset(v257, 0, sizeof(v257));
              std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v257, v369[0], v369[1], 0xAAAAAAAAAAAAAAABLL * ((v369[1] - v369[0]) >> 3));
              v256[4] = v217;
              memset(v258, 0, sizeof(v258));
              std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(v258, v381, v382, (v382 - v381) >> 3);
              v256[5] = v165;
              v256[6] = v166;
              v256[7] = v167;
              v256[8] = v107;
              v256[9] = v164;
              v256[10] = v216;
              v195 = _Block_copy(v256);
              v170 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v195);
              v171 = mlcore::ItemPropertyStoreCloudAlbumID(v170);
              Property = MPMediaLibraryGetProperty(v170, v171);
              v315 = MEMORY[0x1A58E1180]();
              if (0xAAAAAAAAAAAAAAABLL * ((v369[1] - v369[0]) >> 3) < 2)
              {
                v394 = Property;
                v314 = 0;
                std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
              }

              v394 = Property;
              std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
            }

            if ([(MPStoreLibraryMappingResponse *)v165 count]&& *(&v373 + 1))
            {
              *&v370 = 0;
              v369[0] = 0;
              v369[1] = 0;
              v174 = 0;
              if (v373)
              {
                v175 = v373;
                do
                {
                  ++v174;
                  v175 = *v175;
                }

                while (v175);
              }

              std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(v369, v373, v174);
              v253[0] = MEMORY[0x1E69E9820];
              v253[1] = 3321888768;
              v253[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_47;
              v253[3] = &unk_1F1496B70;
              memset(v254, 0, sizeof(v254));
              std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v254, v369[0], v369[1], 0xAAAAAAAAAAAAAAABLL * ((v369[1] - v369[0]) >> 3));
              v253[4] = v217;
              memset(v255, 0, sizeof(v255));
              std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(v255, v381, v382, (v382 - v381) >> 3);
              v253[5] = v165;
              v253[6] = v166;
              v253[7] = v167;
              v253[8] = v107;
              v253[9] = v164;
              v253[10] = v216;
              v196 = _Block_copy(v253);
              v176 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v196);
              v177 = mlcore::ItemPropertyStoreCloudAlbumID(v176);
              v178 = MPMediaLibraryGetProperty(v176, v177);
              v315 = MEMORY[0x1A58E1180]();
              if (0xAAAAAAAAAAAAAAABLL * ((v369[1] - v369[0]) >> 3) < 2)
              {
                v394 = v178;
                v314 = 0;
                std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
              }

              v394 = v178;
              std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
            }

            v216[2]();

            if (v267)
            {
              v268 = v267;
              operator delete(v267);
            }

            std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v266);

            if (v277)
            {
              v278 = v277;
              operator delete(v277);
            }

            std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v276);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v372);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v375);
          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&v378);
          v179 = v218;
LABEL_230:
          std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v179);
          goto LABEL_92;
        }
      }
    }

    if (![v9[35] isSubclassOfClass:objc_opt_class()])
    {
      v173 = v9[38];
      if (v173)
      {
        (*(v173 + 2))(v173, 0, 0);
      }

      [v9 finish];
      goto LABEL_93;
    }

    v202 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v379 = 0u;
    v378 = 0u;
    v380 = 1065353216;
    v376 = 0u;
    v375 = 0u;
    v377 = 1065353216;
    array = [MEMORY[0x1E695DF70] array];
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v214 = v9[36];
    v120 = [v214 countByEnumeratingWithState:&v249 objects:v390 count:16];
    if (!v120)
    {
      goto LABEL_163;
    }

    v121 = *v250;
LABEL_142:
    v122 = 0;
    while (1)
    {
      if (*v250 != v121)
      {
        objc_enumerationMutation(v214);
      }

      v123 = *(*(&v249 + 1) + 8 * v122);
      universalStore11 = [v123 universalStore];
      adamID3 = [universalStore11 adamID];

      v372[0] = adamID3;
      if (adamID3)
      {
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, adamID3);
      }

      universalStore12 = [v123 universalStore];
      formerAdamIDs3 = [universalStore12 formerAdamIDs];

      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v128 = formerAdamIDs3;
      v129 = [v128 countByEnumeratingWithState:&v245 objects:v389 count:16];
      if (v129)
      {
        v130 = *v246;
        do
        {
          for (n = 0; n != v129; ++n)
          {
            if (*v246 != v130)
            {
              objc_enumerationMutation(v128);
            }

            longLongValue3 = [*(*(&v245 + 1) + 8 * n) longLongValue];
            v218[0] = longLongValue3;
            if (longLongValue3)
            {
              std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, longLongValue3);
            }
          }

          v129 = [v128 countByEnumeratingWithState:&v245 objects:v389 count:16];
        }

        while (v129);
      }

      personalizedStore3 = [v123 personalizedStore];
      cloudArtistID = [personalizedStore3 cloudArtistID];

      if ([cloudArtistID length])
      {
        break;
      }

      if (adamID3)
      {
        goto LABEL_160;
      }

LABEL_161:

      if (++v122 == v120)
      {
        v120 = [v214 countByEnumeratingWithState:&v249 objects:v390 count:16];
        if (!v120)
        {
LABEL_163:

          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          v192 = v217[37];
          v136 = [v192 countByEnumeratingWithState:&v241 objects:v388 count:16];
          if (!v136)
          {
LABEL_195:

            if ([v217 isCancelled])
            {
              v157 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
              v201[2](v201, 0, v157);
            }

            else
            {
              v182 = objc_alloc_init(MPStoreLibraryMappingResponse);
              v218[0] = 0;
              v218[1] = v218;
              *&v219 = 0x3032000000;
              *(&v219 + 1) = __Block_byref_object_copy__29750;
              v220 = __Block_byref_object_dispose__29751;
              v222[0] = MEMORY[0x1E69E9820];
              v222[1] = 3321888768;
              v222[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_50;
              v222[3] = &unk_1F1496BA8;
              v222[4] = v217;
              v228 = v201;
              v183 = v202;
              v223 = v183;
              v184 = array;
              v224 = v184;
              std::unordered_set<long long>::unordered_set(v229, &v378);
              v230 = 0;
              v231 = 0;
              v232 = 0;
              std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v230, v381, v382, (v382 - v381) >> 3);
              v225 = v199;
              v226 = v200;
              v157 = v182;
              v227 = v157;
              v221 = _Block_copy(v222);
              if ((-[MPStoreLibraryMappingResponse count](v183, "count") || [v184 count]) && *(&v376 + 1))
              {
                *&v373 = 0;
                v372[0] = 0;
                v372[1] = 0;
                v185 = 0;
                if (v376)
                {
                  v186 = v376;
                  do
                  {
                    ++v185;
                    v186 = *v186;
                  }

                  while (v186);
                }

                v187 = std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(v372, v376, v185);
                v188 = MEMORY[0x1A58E11E0](v187);
                v394 = v188;
                if (*(&v376 + 1) >= 2uLL)
                {
                  v313 = mlcore::ArtistPropertyCloudUniversalLibraryID(v188);
                  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
                }

                v313 = mlcore::ArtistPropertyCloudUniversalLibraryID(v188);
                LODWORD(v315) = 0;
                std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
              }

              (*(*(v218[1] + 5) + 16))();
              _Block_object_dispose(v218, 8);

              if (v230)
              {
                v231 = v230;
                operator delete(v230);
              }

              std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v229);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v375);
            v179 = &v378;
            goto LABEL_230;
          }

          v194 = *v242;
LABEL_165:
          v137 = 0;
          v190 = v136;
          while (1)
          {
            if (*v242 != v194)
            {
              objc_enumerationMutation(v192);
            }

            v138 = *(*(&v241 + 1) + 8 * v137);
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v239 = 0u;
            v240 = 0u;
            v237 = 0u;
            v238 = 0u;
            allKeys = [v138 allKeys];
            v140 = [allKeys countByEnumeratingWithState:&v237 objects:v387 count:16];
            v198 = v137;
            if (v140)
            {
              break;
            }

LABEL_191:

            if ([dictionary count])
            {
              [array addObject:dictionary];
            }

            v137 = v198 + 1;
            if (v198 + 1 == v190)
            {
              v136 = [v192 countByEnumeratingWithState:&v241 objects:v388 count:16];
              if (!v136)
              {
                goto LABEL_195;
              }

              goto LABEL_165;
            }
          }

          v141 = *v238;
          objb = allKeys;
          while (2)
          {
            v142 = 0;
LABEL_171:
            if (*v238 != v141)
            {
              objc_enumerationMutation(objb);
            }

            v143 = *(*(&v237 + 1) + 8 * v142);
            universalStore13 = [v143 universalStore];
            adamID4 = [universalStore13 adamID];

            v372[0] = adamID4;
            if (adamID4)
            {
              std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, adamID4);
            }

            universalStore14 = [v143 universalStore];
            formerAdamIDs4 = [universalStore14 formerAdamIDs];

            v235 = 0u;
            v236 = 0u;
            v233 = 0u;
            v234 = 0u;
            v148 = formerAdamIDs4;
            v149 = [v148 countByEnumeratingWithState:&v233 objects:v386 count:16];
            if (v149)
            {
              v150 = *v234;
              do
              {
                for (ii = 0; ii != v149; ++ii)
                {
                  if (*v234 != v150)
                  {
                    objc_enumerationMutation(v148);
                  }

                  longLongValue4 = [*(*(&v233 + 1) + 8 * ii) longLongValue];
                  v218[0] = longLongValue4;
                  if (longLongValue4)
                  {
                    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v378, longLongValue4);
                  }
                }

                v149 = [v148 countByEnumeratingWithState:&v233 objects:v386 count:16];
              }

              while (v149);
            }

            personalizedStore4 = [v143 personalizedStore];
            cloudArtistID2 = [personalizedStore4 cloudArtistID];

            if ([cloudArtistID2 length])
            {
              v155 = cloudArtistID2;
              std::string::basic_string[abi:ne200100]<0>(v218, [cloudArtistID2 UTF8String]);
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v375, v218);
              if (SBYTE7(v219) < 0)
              {
                operator delete(v218[0]);
              }

LABEL_188:
              v156 = [v138 objectForKey:v143];
              [dictionary setObject:v156 forKey:v143];
            }

            else if (adamID4)
            {
              goto LABEL_188;
            }

            if (++v142 == v140)
            {
              allKeys = objb;
              v140 = [objb countByEnumeratingWithState:&v237 objects:v387 count:16];
              if (!v140)
              {
                goto LABEL_191;
              }

              continue;
            }

            goto LABEL_171;
          }
        }

        goto LABEL_142;
      }
    }

    v135 = cloudArtistID;
    std::string::basic_string[abi:ne200100]<0>(v218, [cloudArtistID UTF8String]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v375, v218);
    if (SBYTE7(v219) < 0)
    {
      operator delete(v218[0]);
    }

LABEL_160:
    [(MPStoreLibraryMappingResponse *)v202 addObject:v123];
    goto LABEL_161;
  }

  v202 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *v218 = 0u;
  v219 = 0u;
  LODWORD(v220) = 1065353216;
  v379 = 0u;
  v378 = 0u;
  v380 = 1065353216;
  v376 = 0u;
  v375 = 0u;
  v377 = 1065353216;
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v66 = v9[36];
  v67 = [v66 countByEnumeratingWithState:&v309 objects:v393 count:16];
  if (v67)
  {
    v68 = *v310;
    do
    {
      for (jj = 0; jj != v67; ++jj)
      {
        if (*v310 != v68)
        {
          objc_enumerationMutation(v66);
        }

        v70 = *(*(&v309 + 1) + 8 * jj);
        universalStore15 = [v70 universalStore];
        globalPlaylistID = [universalStore15 globalPlaylistID];

        v73 = [globalPlaylistID length];
        v74 = v73 != 0;
        if (v73)
        {
          v75 = globalPlaylistID;
          std::string::basic_string[abi:ne200100]<0>(v372, [globalPlaylistID UTF8String]);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v218, v372);
          if (SBYTE7(v373) < 0)
          {
            operator delete(v372[0]);
          }
        }

        personalizedStore5 = [v70 personalizedStore];
        cloudID2 = [personalizedStore5 cloudID];

        v369[0] = cloudID2;
        if (cloudID2)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v378, cloudID2);
          v74 = 1;
        }

        universalStore16 = [v70 universalStore];
        universalCloudLibraryID3 = [universalStore16 universalCloudLibraryID];

        if ([universalCloudLibraryID3 length])
        {
          v80 = universalCloudLibraryID3;
          std::string::basic_string[abi:ne200100]<0>(v372, [universalCloudLibraryID3 UTF8String]);
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v375, v372);
          if (SBYTE7(v373) < 0)
          {
            operator delete(v372[0]);
          }
        }

        else if (!v74)
        {
          goto LABEL_77;
        }

        [(MPStoreLibraryMappingResponse *)v202 addObject:v70];
LABEL_77:
      }

      v67 = [v66 countByEnumeratingWithState:&v309 objects:v393 count:16];
    }

    while (v67);
  }

  if ([v217 isCancelled])
  {
    v81 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    v201[2](v201, 0, v81);
  }

  else
  {
    v108 = objc_alloc_init(MPStoreLibraryMappingResponse);
    v299[0] = MEMORY[0x1E69E9820];
    v299[1] = 3321888768;
    v299[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_6;
    v299[3] = &unk_1F1496A90;
    v299[4] = v217;
    v109 = v201;
    v304 = v109;
    v110 = v202;
    v300 = v110;
    std::unordered_set<std::string>::unordered_set(v305, v218);
    v307 = 0;
    v306 = 0;
    v308 = 0;
    std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v306, v381, v382, (v382 - v381) >> 3);
    v111 = v199;
    v301 = v111;
    v112 = v200;
    v302 = v112;
    v113 = v108;
    v303 = v113;
    v213 = _Block_copy(v299);
    v288[0] = MEMORY[0x1E69E9820];
    v288[1] = 3321888768;
    v288[2] = __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_37;
    v288[3] = &unk_1F1496AC8;
    v288[4] = v217;
    v293 = v109;
    v114 = v110;
    v289 = v114;
    std::unordered_set<unsigned long long>::unordered_set(v295, &v378);
    v297 = 0;
    v296 = 0;
    v298 = 0;
    std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v296, v381, v382, (v382 - v381) >> 3);
    v290 = v111;
    v291 = v112;
    v81 = v113;
    v292 = v81;
    obja = v213;
    v294 = obja;
    v115 = _Block_copy(v288);
    if ([(MPStoreLibraryMappingResponse *)v114 count]&& *(&v376 + 1))
    {
      *&v373 = 0;
      v372[0] = 0;
      v372[1] = 0;
      v116 = 0;
      if (v376)
      {
        v117 = v376;
        do
        {
          ++v116;
          v117 = *v117;
        }

        while (v117);
      }

      v118 = std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(v372, v376, v116);
      v119 = MEMORY[0x1A58E1290](v118);
      *&v395 = v119;
      if (*(&v376 + 1) < 2uLL)
      {
        __p[0] = mlcore::PlaylistPropertyCloudUniversalLibraryID(v119);
        LODWORD(v315) = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
      }

      __p[0] = mlcore::PlaylistPropertyCloudUniversalLibraryID(v119);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
    }

    v115[2](v115);

    if (v296)
    {
      v297 = v296;
      operator delete(v296);
    }

    std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(v295);

    if (v306)
    {
      v307 = v306;
      operator delete(v306);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v305);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v375);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::~__hash_table(&v378);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v218);
LABEL_92:

LABEL_93:
  if (v381)
  {
    v382 = v381;
    operator delete(v381);
  }

  v4 = v199;
LABEL_96:
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[38];
  if (v7)
  {
    (*(v7 + 16))(v6[38], v8, v5);
    v6 = *(a1 + 32);
  }

  [v6 finishWithError:v5];
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 104))
    {
      v3 = *(a1 + 96);
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(&v8, v3, v4);
      if ((v9 - v8) >= 9)
      {
        mlcore::ItemPropertySubscriptionStoreItemID(v6);
        std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
      }

      mlcore::ItemPropertySubscriptionStoreItemID(v6);
      LODWORD(v11) = 0;
      std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_32(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 112))
    {
      v3 = *(a1 + 104);
      v10 = 0;
      v11 = 0;
      __p = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(&__p, v3, v4);
      v7 = MEMORY[0x1A58E1100](v6);
      v14 = v7;
      if ((v10 - __p) < 9)
      {
        v12 = mlcore::ItemPropertySubscriptionStoreItemID(v7);
        v13 = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
      }

      v12 = mlcore::ItemPropertySubscriptionStoreItemID(v7);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_34(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 112))
    {
      v3 = *(a1 + 104);
      v10 = 0;
      v11 = 0;
      __p = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(&__p, v3, v4);
      v7 = MEMORY[0x1A58E1100](v6);
      v14 = v7;
      if ((v10 - __p) < 9)
      {
        v12 = mlcore::ItemPropertyStoreID(v7);
        v13 = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
      }

      v12 = mlcore::ItemPropertyStoreID(v7);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_3_36(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 112))
    {
      v3 = *(a1 + 104);
      v10 = 0;
      v11 = 0;
      __p = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(&__p, v3, v4);
      v7 = MEMORY[0x1A58E1100](v6);
      v14 = v7;
      if ((v10 - __p) < 9)
      {
        v12 = mlcore::ItemPropertyStoreCloudID(v7);
        v13 = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
      }

      v12 = mlcore::ItemPropertyStoreCloudID(v7);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_6(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 104))
    {
      v3 = *(a1 + 96);
      v10 = 0;
      v11 = 0;
      v9 = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&v9, v3, v4);
      v7 = MEMORY[0x1A58E1290](v6);
      v14 = v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) < 2)
      {
        v12 = mlcore::PlaylistPropertyCloudGlobalID(v7);
        v13 = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
      }

      v12 = mlcore::PlaylistPropertyCloudGlobalID(v7);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_37(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 112))
    {
      if (*(a1 + 104))
      {
        v3 = -1;
        v4 = *(a1 + 104);
        do
        {
          v5 = v3;
          v4 = *v4;
          ++v3;
        }

        while (v4);
        if (v3 < 0x1FFFFFFFFFFFFFFFLL)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v5 + 2);
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v6 = MEMORY[0x1A58E1290]();
      mlcore::PlaylistPropertyStoreCloudID(v6);
      std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_40(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 104))
    {
      v3 = *(a1 + 96);
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(&v8, v3, v4);
      if (v9 - v8 == 8)
      {
        mlcore::ItemPropertyStorePlaylistID(v6);
        LODWORD(v11) = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator &,long long const&,mlcore::ComparisonOptions &,0>();
      }

      mlcore::ItemPropertyStorePlaylistID(v6);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_42(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 72);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if ([*(a1 + 40) count] && *(a1 + 112))
    {
      v3 = *(a1 + 104);
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(&v8, v3, v4);
      if (v9 - v8 == 8)
      {
        mlcore::ItemPropertyStorePlaylistID(v6);
        LODWORD(v11) = 0;
        std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator &,long long const&,mlcore::ComparisonOptions &,0>();
      }

      mlcore::ItemPropertyStorePlaylistID(v6);
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_44(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1A58E1100]();
  v3 = v2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3) < 2)
  {
    v5 = mlcore::ItemPropertyStoreCloudAlbumID(v2);
    v4 = 0;
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
  }

  v5 = mlcore::ItemPropertyStoreCloudAlbumID(v2);
  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_47(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1A58E1100]();
  v3 = v2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3) < 2)
  {
    v5 = mlcore::ItemPropertyStoreCloudAlbumID(v2);
    v4 = 0;
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<std::string>,std::allocator<mlcore::ComparisonPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,mlcore::ComparisonOperator,std::string const&,0>();
  }

  v5 = mlcore::ItemPropertyStoreCloudAlbumID(v2);
  std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>();
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_4_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_50(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 80);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    if (([*(a1 + 40) count] || objc_msgSend(*(a1 + 48), "count")) && *(a1 + 112))
    {
      v3 = *(a1 + 104);
      memset(__p, 0, 24);
      v4 = 0;
      if (v3)
      {
        v5 = v3;
        do
        {
          ++v4;
          v5 = *v5;
        }

        while (v5);
      }

      v6 = std::vector<long long>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<long long,void *> *>,std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(__p, v3, v4);
      v7 = MEMORY[0x1A58E11E0](v6);
      __p[28] = v7;
      if (*(a1 + 112) >= 2uLL)
      {
        v11 = mlcore::ArtistPropertyStoreID(v7);
        std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>();
      }

      v11 = mlcore::ArtistPropertyStoreID(v7);
      v10 = 0;
      std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 72) isCancelled])
  {
    v7 = *(a1 + 80);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(*(*(a1 + 88) + 8) + 40) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v7 = [*(a1 + 72) isCancelled];
  v8 = *(a1 + 80);
  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(a1 + 80), *(a1 + 56), 0);
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_3_48(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(*(a1 + 32) + 272);
    if (v7)
    {
      [v7 mlCoreView];
      v8 = v18;
    }

    else
    {
      v8 = 0uLL;
    }

    v16 = v8;
    v18 = 0uLL;
    mlcore::EntityCache::EntityCache();
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    mlcore::EntityCache::setCacheDisabled(v17);
    __p = 0;
    v14 = 0;
    v15 = 0;
    v9 = std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 3);
    MEMORY[0x1A58E1180](v9);
    mlcore::EntityCache::setPropertiesToFetchForEntityClass();
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    operator new();
  }

  if ([*(a1 + 32) isCancelled])
  {
    v11 = *(a1 + 72);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_45(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(*(a1 + 32) + 272);
    if (v7)
    {
      [v7 mlCoreView];
      v8 = v18;
    }

    else
    {
      v8 = 0uLL;
    }

    v16 = v8;
    v18 = 0uLL;
    mlcore::EntityCache::EntityCache();
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    mlcore::EntityCache::setCacheDisabled(v17);
    __p = 0;
    v14 = 0;
    v15 = 0;
    v9 = std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 3);
    MEMORY[0x1A58E1180](v9);
    mlcore::EntityCache::setPropertiesToFetchForEntityClass();
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    operator new();
  }

  if ([*(a1 + 32) isCancelled])
  {
    v11 = *(a1 + 72);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_43(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(*(a1 + 32) + 272);
    if (v7)
    {
      [v7 mlCoreView];
      v8 = v18;
    }

    else
    {
      v8 = 0uLL;
    }

    v16 = v8;
    v18 = 0uLL;
    mlcore::EntityCache::EntityCache();
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    mlcore::EntityCache::setCacheDisabled(v17);
    __p = 0;
    v14 = 0;
    v15 = 0;
    v9 = std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 3);
    MEMORY[0x1A58E1180](v9);
    mlcore::EntityCache::setPropertiesToFetchForEntityClass();
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    operator new();
  }

  if ([*(a1 + 32) isCancelled])
  {
    v11 = *(a1 + 72);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_3_41(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(*(a1 + 32) + 272);
    if (v7)
    {
      [v7 mlCoreView];
      v8 = v18;
    }

    else
    {
      v8 = 0uLL;
    }

    v16 = v8;
    v18 = 0uLL;
    mlcore::EntityCache::EntityCache();
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    mlcore::EntityCache::setCacheDisabled(v17);
    __p = 0;
    v14 = 0;
    v15 = 0;
    v9 = std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 3);
    MEMORY[0x1A58E1180](v9);
    mlcore::EntityCache::setPropertiesToFetchForEntityClass();
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    operator new();
  }

  v10 = [*(a1 + 32) isCancelled];
  v11 = *(a1 + 72);
  if (v10)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(a1 + 72), *(a1 + 64), 0);
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v7 = [*(a1 + 64) isCancelled];
  v8 = *(a1 + 72);
  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(a1 + 72), *(a1 + 56), 0);
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_35(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_2_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ([*(a1 + 64) isCancelled])
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void __48__MPStoreLibraryMappingRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v7 = [*(a1 + 64) isCancelled];
  v8 = *(a1 + 72);
  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPErrorDomain" code:6 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(a1 + 72), *(a1 + 56), 0);
  }
}

@end