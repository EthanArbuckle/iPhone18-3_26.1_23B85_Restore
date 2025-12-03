@interface HDProviderServiceSpecification
+ (BOOL)addAuthorizationHeadersToRequest:(id)request error:(id *)error;
+ (BOOL)setServiceEnvironment:(int64_t)environment error:(id *)error;
+ (NSURL)baseSearchURL;
+ (NSURL)baseURL;
+ (NSURLSessionConfiguration)defaultSessionConfiguration;
+ (id)URLForBrandLogosWithBatchID:(id)d scaleKey:(id)key error:(id *)error;
+ (id)URLForSearchQuery:(id)query supportedCountryCodes:(id)codes searchSessionID:(id)d error:(id *)error;
+ (id)_URLForListOfType:(int64_t)type batchID:(id)d searchSessionID:(id)iD error:(id *)error;
+ (id)_baseURLForEnvironment:(int64_t)environment useSearchHost:(BOOL)host;
+ (id)_dictionaryFromJSONObject:(id)object error:(id *)error;
+ (id)_encodedBrandLogosFromFetchedJSONObject:(id)object error:(id *)error;
+ (id)_gatewaysFromProviderDictionary:(id)dictionary error:(id *)error;
+ (id)_hostForEnvironment:(int64_t)environment;
+ (id)_providerDictionaryFromJSONObject:(id)object matchingExternalID:(id)d error:(id *)error;
+ (id)_resultsArrayFromJSONObject:(id)object error:(id *)error;
+ (id)_resultsDictionaryFromJSONObject:(id)object error:(id *)error;
+ (id)_searchHostForEnvironment:(int64_t)environment;
+ (id)_searchResultsFromFetchedJSONObject:(id)object error:(id *)error;
+ (id)brandLogosFromFetchedJSONObject:(id)object error:(id *)error;
+ (id)gatewayFromFetchedJSONObject:(id)object matchingExternalID:(id)d error:(id *)error;
+ (id)gatewaysFromFetchedJSONObject:(id)object matchingExternalIDs:(id)ds error:(id *)error;
+ (id)languageAndRegionQueryParameter;
+ (id)searchResultsPageFromFetchedJSONObject:(id)object error:(id *)error;
+ (void)initialize;
+ (void)providerAndGatewaysFromFetchedJSONObject:(id)object matchingProviderExternalID:(id)d completion:(id)completion;
@end

@implementation HDProviderServiceSpecification

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v5 = HDHealthRecordsPluginBundle();
    resourceURL = [v5 resourceURL];
    [HKJSONValidator registerSearchPath:resourceURL];
  }
}

+ (BOOL)setServiceEnvironment:(int64_t)environment error:(id *)error
{
  v5 = [NSNumber numberWithInteger:environment];
  v6 = [_HKDaemonPreferences setValue:v5 forKey:HKHealthRecordsEnvironmentDefaultsKey];

  if ((v6 & 1) == 0)
  {
    v7 = [NSError hk_error:100 description:@"HDProviderServiceSpecification failed to store service environment"];
    if (v7)
    {
      if (error)
      {
        v8 = v7;
        *error = v7;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v6;
}

+ (NSURLSessionConfiguration)defaultSessionConfiguration
{
  v2 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v6 = @"User-Agent";
  v3 = HDHealthRecordsPrivateUserAgentString();
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 setHTTPAdditionalHeaders:v4];

  [v2 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleHealthProviderService];
  [v2 set_sourceApplicationBundleIdentifier:kHKHealthAppBundleIdentifier];
  [v2 setTimeoutIntervalForRequest:15.0];

  return v2;
}

+ (BOOL)addAuthorizationHeadersToRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [requestCopy URL];
  host = [v7 host];

  v9 = [self _searchHostForEnvironment:{objc_msgSend(self, "currentServiceEnvironment")}];
  if ([host isEqualToString:v9])
  {
    v10 = 1;
  }

  else
  {
    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    v13 = [NSNumber numberWithDouble:floor(v12)];
    stringValue = [v13 stringValue];

    if (stringValue)
    {
      v15 = [requestCopy URL];
      path = [v15 path];

      v17 = [requestCopy URL];
      query = [v17 query];

      v28 = query;
      v29 = host;
      if ([query length])
      {
        v19 = @"/";
        if (path)
        {
          v19 = path;
        }

        v20 = [NSString stringWithFormat:@"%@?%@", v19, query];

        path = v20;
      }

      v30[0] = path;
      v30[1] = stringValue;
      v21 = [NSArray arrayWithObjects:v30 count:2];
      v22 = [NSString pathWithComponents:v21];

      v23 = [@"51418bebe6b4f26a164cba44d744d6a24f9f0e3d21b43ef8227683dd64319a" dataUsingEncoding:4];
      v24 = [v22 dataUsingEncoding:4];
      v25 = [NSMutableData dataWithLength:32];
      CCHmac(2u, [v23 bytes], objc_msgSend(v23, "length"), objc_msgSend(v24, "bytes"), objc_msgSend(v24, "length"), objc_msgSend(v25, "mutableBytes"));
      v26 = [v25 base64EncodedStringWithOptions:0];
      v10 = v26 != 0;
      if (v26)
      {
        [requestCopy setValue:v26 forHTTPHeaderField:@"X-Apple-HMAC-Signature"];
        [requestCopy setValue:stringValue forHTTPHeaderField:@"X-Apple-HMAC-Time"];
      }

      else
      {
        [NSError hk_assignError:error code:100 description:@"no authentication code"];
      }

      host = v29;
    }

    else
    {
      [NSError hk_assignError:error code:3 description:@"authorization has no time"];
      v10 = 0;
    }
  }

  return v10;
}

+ (id)URLForSearchQuery:(id)query supportedCountryCodes:(id)codes searchSessionID:(id)d error:(id *)error
{
  queryCopy = query;
  codesCopy = codes;
  dCopy = d;
  if (([queryCopy pageOffset] & 0x8000000000000000) != 0)
  {
    [NSError hk_assignError:error code:100 description:@"Service given invalid search parameters"];
LABEL_15:
    v44 = 0;
    goto LABEL_16;
  }

  if (![codesCopy count])
  {
    [NSError hk_assignError:error code:3 format:@"URL can only be constructed if there's at least one supported country code"];
    goto LABEL_15;
  }

  baseSearchURL = [self baseSearchURL];
  v14 = [NSURLComponents componentsWithURL:baseSearchURL resolvingAgainstBaseURL:0];

  path = [v14 path];
  v16 = [path stringByAppendingPathComponent:@"search"];
  [v14 setPath:v16];

  v17 = [&__NSArray0__struct mutableCopy];
  searchString = [queryCopy searchString];
  v19 = [searchString length];

  if (v19)
  {
    searchString2 = [queryCopy searchString];
    v21 = [NSURLQueryItem queryItemWithName:@"query" value:searchString2];
    [v17 addObject:v21];
  }

  v22 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
  v46 = v22;
  v23 = [NSArray arrayWithObjects:&v46 count:1];
  v24 = [codesCopy sortedArrayUsingDescriptors:v23];
  v25 = [v24 componentsJoinedByString:{@", "}];

  v26 = [NSURLQueryItem queryItemWithName:@"cc" value:v25];
  [v17 addObject:v26];

  if ([dCopy length])
  {
    v27 = [NSURLQueryItem queryItemWithName:@"chrsid" value:dCopy];
    [v17 addObject:v27];
  }

  latitude = [queryCopy latitude];
  if (latitude)
  {
    v29 = latitude;
    longitude = [queryCopy longitude];

    if (longitude)
    {
      latitude2 = [queryCopy latitude];
      [latitude2 doubleValue];
      v33 = v32;

      longitude2 = [queryCopy longitude];
      [longitude2 doubleValue];
      v36 = v35;

      v37 = [NSString stringWithFormat:@"%.1f, %.1f", v33, v36];
      v38 = [NSURLQueryItem queryItemWithName:@"geo" value:v37];
      [v17 addObject:v38];
    }
  }

  if ([queryCopy options])
  {
    v39 = [NSURLQueryItem queryItemWithName:@"feature" value:HKClinicalGatewayFeatureNameClinicalSharing];
    [v17 addObject:v39];
  }

  languageAndRegionQueryParameter = [self languageAndRegionQueryParameter];
  v41 = [NSURLQueryItem queryItemWithName:@"loc" value:languageAndRegionQueryParameter];
  [v17 addObject:v41];

  v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [queryCopy pageOffset]);
  v43 = [NSURLQueryItem queryItemWithName:@"from" value:v42];
  [v17 addObject:v43];

  [v14 setQueryItems:v17];
  v44 = [v14 URL];

LABEL_16:

  return v44;
}

+ (id)URLForBrandLogosWithBatchID:(id)d scaleKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = [self _URLForListOfType:0 batchID:d searchSessionID:0 error:error];
  v10 = [NSURLComponents componentsWithURL:v9 resolvingAgainstBaseURL:0];
  v11 = [[NSURLQueryItem alloc] initWithName:@"size" value:keyCopy];

  v15 = v11;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  [v10 setQueryItems:v12];

  v13 = [v10 URL];

  return v13;
}

+ (id)_URLForListOfType:(int64_t)type batchID:(id)d searchSessionID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  if ([dCopy length])
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = v12;
    if (type == 1 && ([v12 stringForKey:HDHealthRecordsGatewayListURL], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = [NSURL URLWithString:v14];
    }

    else
    {
      baseURL = [self baseURL];
      v18 = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:0];

      if (type <= 2)
      {
        v19 = off_106048[type];
        path = [v18 path];
        v21 = [path stringByAppendingPathComponent:v19];
        [v18 setPath:v21];
      }

      path2 = [v18 path];
      v23 = [path2 stringByAppendingPathComponent:dCopy];
      [v18 setPath:v23];

      if ([iDCopy length])
      {
        v24 = [NSURLQueryItem queryItemWithName:@"chrsid" value:iDCopy];
        queryItems = [v18 queryItems];

        if (queryItems)
        {
          queryItems2 = [v18 queryItems];
          v27 = [queryItems2 arrayByAddingObject:v24];
          [v18 setQueryItems:v27];
        }

        else
        {
          v29 = v24;
          queryItems2 = [NSArray arrayWithObjects:&v29 count:1];
          [v18 setQueryItems:queryItems2];
        }
      }

      v16 = [v18 URL];
    }
  }

  else
  {
    [NSError hk_assignError:error code:100 description:@"Service: invalid provider batch_id"];
    v16 = 0;
  }

  return v16;
}

+ (id)_dictionaryFromJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = objectCopy;
  }

  else
  {
    [NSError hk_assignError:error code:607 description:@"JSONObject not a dictionary"];
    v7 = 0;
  }

  return v7;
}

+ (id)_resultsArrayFromJSONObject:(id)object error:(id *)error
{
  v5 = [self _dictionaryFromJSONObject:object error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_safeArrayForKeyPath:@"results" error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_resultsDictionaryFromJSONObject:(id)object error:(id *)error
{
  v5 = [self _dictionaryFromJSONObject:object error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_safeDictionaryForKeyPath:@"results" error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_providerDictionaryFromJSONObject:(id)object matchingExternalID:(id)d error:(id *)error
{
  dCopy = d;
  v8 = [HDProviderServiceSpecification _resultsArrayFromJSONObject:object error:error];
  if (v8)
  {
    v9 = HDHealthRecordsPluginBundle();
    v10 = [HKJSONValidator validateJSONObject:v8 withSchemaNamed:@"ProviderListSchema" bundle:v9 error:error];

    if (v10)
    {
      errorCopy = error;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [v16 objectForKeyedSubscript:@"providerID"];
            v18 = [v17 isEqualToString:dCopy];

            if (v18)
            {
              v19 = v16;

              goto LABEL_13;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      [NSError hk_assignError:errorCopy code:607 description:@"The expected provider is missing from the service's response."];
    }
  }

  v19 = 0;
LABEL_13:

  return v19;
}

+ (id)searchResultsPageFromFetchedJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = HDHealthRecordsPluginBundle();
  v22 = 0;
  v8 = [HKJSONValidator validateJSONObject:objectCopy withSchemaNamed:@"ProviderSearchResultPageSchema" bundle:v7 error:&v22];
  v9 = v22;

  if (v8)
  {
    v10 = [self _searchResultsFromFetchedJSONObject:objectCopy error:error];
    if (v10)
    {
      v11 = [self _dictionaryFromJSONObject:objectCopy error:error];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 objectForKeyedSubscript:@"from"];
        integerValue = [v13 integerValue];

        v15 = [v12 objectForKeyedSubscript:@"_nextFrom"];
        integerValue2 = [v15 integerValue];

        v17 = [v12 objectForKeyedSubscript:@"_size"];
        integerValue3 = [v17 integerValue];

        v19 = [[HKClinicalProviderSearchResultsPage alloc] initWithSearchResults:v10 from:integerValue nextFrom:integerValue2 size:integerValue3];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = v9;
    if (v10)
    {
      if (error)
      {
        v20 = v10;
        v19 = 0;
        *error = v10;
        goto LABEL_12;
      }

      _HKLogDroppedError();
    }
  }

  v19 = 0;
LABEL_12:

  return v19;
}

+ (id)_searchResultsFromFetchedJSONObject:(id)object error:(id *)error
{
  v42 = 0;
  v5 = [self _resultsArrayFromJSONObject:object error:&v42];
  v6 = v42;
  v7 = v6;
  if (v5)
  {
    v27 = v6;
    v29 = +[NSMutableArray array];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 stringArrayForKey:HDCPSWhitelistedProvidersDefaultsKey];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = v5;
    obj = v5;
    v33 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v33)
    {
      v31 = v9;
      v32 = *v39;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"providerID"];
          if (!v9 || [v9 containsObject:v12])
          {
            v37 = [v11 objectForKeyedSubscript:@"providerBatchID"];
            v13 = [v11 objectForKeyedSubscript:@"title"];
            v36 = [v11 objectForKeyedSubscript:@"subtitle"];
            v35 = [v11 objectForKeyedSubscript:@"location"];
            v14 = [v11 objectForKeyedSubscript:@"brandID"];
            v15 = [v11 objectForKeyedSubscript:@"brandBatchID"];
            v16 = [v11 objectForKeyedSubscript:@"country"];
            v17 = [v11 objectForKeyedSubscript:@"minCompatibleApiVersion"];
            integerValue = [v17 integerValue];
            v34 = v14;
            if (v13)
            {
              v19 = integerValue;
              v20 = 0;
              if (v14 && v15)
              {
                v20 = [[HKClinicalBrand alloc] initWithExternalID:v14 batchID:v15];
              }

              v21 = [v11 objectForKeyedSubscript:@"supported"];
              bOOLValue = [v21 BOOLValue];

              v23 = [[HKClinicalProviderSearchResult alloc] initWithExternalID:v12 batchID:v37 title:v13 subtitle:v36 location:v35 supported:bOOLValue countryCode:v16 brand:v20 minCompatibleAPIVersion:v19];
              if (v23)
              {
                [v29 addObject:v23];
              }

              v9 = v31;
            }

            else
            {
              _HKInitializeLogging();
              v24 = HKLogHealthRecords;
              v9 = v31;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
              {
                sub_9CE5C(v43, v24, v11, &v44);
              }
            }
          }
        }

        v33 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v33);
    }

    v7 = v27;
    v5 = v28;
  }

  else
  {
    v9 = v6;
    if (v9)
    {
      if (error)
      {
        v25 = v9;
        v29 = 0;
        *error = v9;
        goto LABEL_27;
      }

      _HKLogDroppedError();
    }

    v29 = 0;
  }

LABEL_27:

  return v29;
}

+ (void)providerAndGatewaysFromFetchedJSONObject:(id)object matchingProviderExternalID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v33 = 0;
  v9 = [self _providerDictionaryFromJSONObject:object matchingExternalID:d error:&v33];
  v31 = v33;
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"urls"];
    v11 = [v9 objectForKeyedSubscript:@"brand"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"brandID"];
      v14 = [v12 objectForKeyedSubscript:@"brandBatchID"];
      v15 = [[HKClinicalBrand alloc] initWithExternalID:v13 batchID:v14];
    }

    else
    {
      v15 = 0;
    }

    v32 = 0;
    v16 = [self _gatewaysFromProviderDictionary:v9 error:&v32];
    v17 = v32;
    if (v17)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9CEE0();
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, v17);
      v18 = v10;
    }

    else
    {
      v28 = [v16 hk_map:&stru_105FE8];
      v26 = [HKClinicalProvider alloc];
      v25 = [v9 objectForKeyedSubscript:@"providerID"];
      v24 = [v9 objectForKeyedSubscript:@"title"];
      [v9 objectForKeyedSubscript:@"subtitle"];
      v30 = v15;
      v19 = v27 = v12;
      [v9 objectForKeyedSubscript:@"location"];
      v20 = v29 = v16;
      v18 = v10;
      v21 = [v10 objectForKeyedSubscript:@"info"];
      v22 = [NSURL hk_safeURLWithString:v21];
      v23 = [v26 initWithExternalID:v25 title:v24 subtitle:v19 location:v20 informationURL:v22 brand:v30 gateways:v28];

      v16 = v29;
      v12 = v27;
      v15 = v30;

      (*(completionCopy + 2))(completionCopy, v23, v29, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9CF4C();
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v31);
  }
}

+ (id)_gatewaysFromProviderDictionary:(id)dictionary error:(id *)error
{
  v4 = [dictionary objectForKeyedSubscript:{@"gateways", error}];
  v5 = [v4 hk_map:&stru_106028];

  return v5;
}

+ (id)gatewayFromFetchedJSONObject:(id)object matchingExternalID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = dCopy;
  objectCopy = object;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [self gatewaysFromFetchedJSONObject:objectCopy matchingExternalIDs:v10 error:{error, v15}];

  if (v11)
  {
    lastObject = [v11 lastObject];
    if (!lastObject)
    {
      [NSError hk_assignError:error code:605 description:@"Failed to find the requested gateway within the given response."];
      _HKInitializeLogging();
      v13 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9CFB8(self, v13);
      }
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

+ (id)gatewaysFromFetchedJSONObject:(id)object matchingExternalIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v43 = 0;
  selfCopy = self;
  v9 = [self _resultsArrayFromJSONObject:object error:&v43];
  v10 = v43;
  v11 = v10;
  if (v9)
  {
    v37 = objc_alloc_init(NSMutableArray);
    v34 = dsCopy;
    if (dsCopy)
    {
      v12 = [[NSSet alloc] initWithArray:dsCopy];
      v36 = [[NSMutableSet alloc] initWithArray:dsCopy];
    }

    else
    {
      v36 = 0;
      v12 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v9;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v38 = 0;
          v21 = [HDClinicalGateway validateContent:v20 error:&v38];
          v22 = v38;
          if (v21)
          {
            v23 = [[HDClinicalGateway alloc] initWithContent:v20];
            externalID = [(HDClinicalGateway *)v23 externalID];
            if (!v12 || [v12 containsObject:externalID])
            {
              [v37 addObject:v23];
              [v36 removeObject:externalID];
            }
          }

          else
          {
            _HKInitializeLogging();
            v25 = HKLogHealthRecords;
            if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            v23 = v25;
            v26 = objc_opt_class();
            *buf = 138543618;
            v45 = v26;
            v46 = 2114;
            v47 = v22;
            externalID = v26;
            _os_log_impl(&dword_0, &v23->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ gateways from fetched JSON: encountered invalid gateway, skipping: %{public}@", buf, 0x16u);
          }

LABEL_20:
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v17);
    }

    if ([v36 count])
    {
      _HKInitializeLogging();
      v27 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
        v29 = objc_opt_class();
        *buf = 138543362;
        v45 = v29;
        v30 = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ gateways from fetched JSON: failed to find all requested gateways in gateway batch response", buf, 0xCu);
      }
    }

    v9 = v33;
    dsCopy = v34;
  }

  else
  {
    v13 = v10;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v31 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9D030(v31, selfCopy, v13);
    }

    v37 = 0;
  }

  return v37;
}

+ (id)brandLogosFromFetchedJSONObject:(id)object error:(id *)error
{
  v30 = 0;
  v4 = [self _encodedBrandLogosFromFetchedJSONObject:object error:&v30];
  v23 = v30;
  v25 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"brandID"];
        v12 = [v10 objectForKeyedSubscript:@"base64ImageData"];
        if (v12)
        {
          v13 = [NSData alloc];
          hk_base64PaddedString = [v12 hk_base64PaddedString];
          v15 = [v13 initWithBase64EncodedString:hk_base64PaddedString options:1];

          if (v15)
          {
            [v25 setObject:v15 forKeyedSubscript:v11];
          }

          else
          {
            _HKInitializeLogging();
            v19 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v20 = v19;
              v21 = HKSensitiveLogItem();
              *buf = 138543618;
              selfCopy2 = self;
              v33 = 2112;
              v34 = v21;
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to decode image data for brand: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v16 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = HKSensitiveLogItem();
            *buf = 138543618;
            selfCopy2 = self;
            v33 = 2112;
            v34 = v18;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ no image data for brand: %@", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v7);
  }

  return v25;
}

+ (id)_encodedBrandLogosFromFetchedJSONObject:(id)object error:(id *)error
{
  v5 = [HDProviderServiceSpecification _resultsArrayFromJSONObject:object error:?];
  if (v5 && (HDHealthRecordsPluginBundle(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [HKJSONValidator validateJSONObject:v5 withSchemaNamed:@"BrandLogoListSchema" bundle:v6 error:error], v6, v7))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSURL)baseURL
{
  currentServiceEnvironment = [self currentServiceEnvironment];

  return [self _baseURLForEnvironment:currentServiceEnvironment useSearchHost:0];
}

+ (NSURL)baseSearchURL
{
  currentServiceEnvironment = [self currentServiceEnvironment];

  return [self _baseURLForEnvironment:currentServiceEnvironment useSearchHost:1];
}

+ (id)_baseURLForEnvironment:(int64_t)environment useSearchHost:(BOOL)host
{
  hostCopy = host;
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:@"https"];
  if (hostCopy)
  {
    [self _searchHostForEnvironment:environment];
  }

  else
  {
    [self _hostForEnvironment:environment];
  }
  v8 = ;
  [v7 setHost:v8];

  v9 = [NSString stringWithFormat:@"/v%ld", HKProviderServiceMaximumCompatibleAPIVersion()];
  v10 = [v9 stringByAppendingString:@"/providers/"];
  [v7 setPath:v10];

  v11 = [v7 URL];

  return v11;
}

+ (id)_hostForEnvironment:(int64_t)environment
{
  if (environment > 0xD)
  {
    return 0;
  }

  else
  {
    return off_106060[environment];
  }
}

+ (id)_searchHostForEnvironment:(int64_t)environment
{
  if (environment > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1060D0[environment];
  }
}

+ (id)languageAndRegionQueryParameter
{
  v2 = +[NSLocale autoupdatingCurrentLocale];
  languageCode = [v2 languageCode];
  countryCode = [v2 countryCode];
  v5 = countryCode;
  v6 = @"XX";
  if (countryCode)
  {
    v6 = countryCode;
  }

  v7 = v6;

  v8 = [NSString stringWithFormat:@"%@_%@", languageCode, v7];

  return v8;
}

@end