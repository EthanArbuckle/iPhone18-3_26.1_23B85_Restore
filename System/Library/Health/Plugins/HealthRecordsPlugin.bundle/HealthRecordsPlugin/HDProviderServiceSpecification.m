@interface HDProviderServiceSpecification
+ (BOOL)addAuthorizationHeadersToRequest:(id)a3 error:(id *)a4;
+ (BOOL)setServiceEnvironment:(int64_t)a3 error:(id *)a4;
+ (NSURL)baseSearchURL;
+ (NSURL)baseURL;
+ (NSURLSessionConfiguration)defaultSessionConfiguration;
+ (id)URLForBrandLogosWithBatchID:(id)a3 scaleKey:(id)a4 error:(id *)a5;
+ (id)URLForSearchQuery:(id)a3 supportedCountryCodes:(id)a4 searchSessionID:(id)a5 error:(id *)a6;
+ (id)_URLForListOfType:(int64_t)a3 batchID:(id)a4 searchSessionID:(id)a5 error:(id *)a6;
+ (id)_baseURLForEnvironment:(int64_t)a3 useSearchHost:(BOOL)a4;
+ (id)_dictionaryFromJSONObject:(id)a3 error:(id *)a4;
+ (id)_encodedBrandLogosFromFetchedJSONObject:(id)a3 error:(id *)a4;
+ (id)_gatewaysFromProviderDictionary:(id)a3 error:(id *)a4;
+ (id)_hostForEnvironment:(int64_t)a3;
+ (id)_providerDictionaryFromJSONObject:(id)a3 matchingExternalID:(id)a4 error:(id *)a5;
+ (id)_resultsArrayFromJSONObject:(id)a3 error:(id *)a4;
+ (id)_resultsDictionaryFromJSONObject:(id)a3 error:(id *)a4;
+ (id)_searchHostForEnvironment:(int64_t)a3;
+ (id)_searchResultsFromFetchedJSONObject:(id)a3 error:(id *)a4;
+ (id)brandLogosFromFetchedJSONObject:(id)a3 error:(id *)a4;
+ (id)gatewayFromFetchedJSONObject:(id)a3 matchingExternalID:(id)a4 error:(id *)a5;
+ (id)gatewaysFromFetchedJSONObject:(id)a3 matchingExternalIDs:(id)a4 error:(id *)a5;
+ (id)languageAndRegionQueryParameter;
+ (id)searchResultsPageFromFetchedJSONObject:(id)a3 error:(id *)a4;
+ (void)initialize;
+ (void)providerAndGatewaysFromFetchedJSONObject:(id)a3 matchingProviderExternalID:(id)a4 completion:(id)a5;
@end

@implementation HDProviderServiceSpecification

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v5 = HDHealthRecordsPluginBundle();
    v4 = [v5 resourceURL];
    [HKJSONValidator registerSearchPath:v4];
  }
}

+ (BOOL)setServiceEnvironment:(int64_t)a3 error:(id *)a4
{
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [_HKDaemonPreferences setValue:v5 forKey:HKHealthRecordsEnvironmentDefaultsKey];

  if ((v6 & 1) == 0)
  {
    v7 = [NSError hk_error:100 description:@"HDProviderServiceSpecification failed to store service environment"];
    if (v7)
    {
      if (a4)
      {
        v8 = v7;
        *a4 = v7;
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

+ (BOOL)addAuthorizationHeadersToRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 URL];
  v8 = [v7 host];

  v9 = [a1 _searchHostForEnvironment:{objc_msgSend(a1, "currentServiceEnvironment")}];
  if ([v8 isEqualToString:v9])
  {
    v10 = 1;
  }

  else
  {
    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    v13 = [NSNumber numberWithDouble:floor(v12)];
    v14 = [v13 stringValue];

    if (v14)
    {
      v15 = [v6 URL];
      v16 = [v15 path];

      v17 = [v6 URL];
      v18 = [v17 query];

      v28 = v18;
      v29 = v8;
      if ([v18 length])
      {
        v19 = @"/";
        if (v16)
        {
          v19 = v16;
        }

        v20 = [NSString stringWithFormat:@"%@?%@", v19, v18];

        v16 = v20;
      }

      v30[0] = v16;
      v30[1] = v14;
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
        [v6 setValue:v26 forHTTPHeaderField:@"X-Apple-HMAC-Signature"];
        [v6 setValue:v14 forHTTPHeaderField:@"X-Apple-HMAC-Time"];
      }

      else
      {
        [NSError hk_assignError:a4 code:100 description:@"no authentication code"];
      }

      v8 = v29;
    }

    else
    {
      [NSError hk_assignError:a4 code:3 description:@"authorization has no time"];
      v10 = 0;
    }
  }

  return v10;
}

+ (id)URLForSearchQuery:(id)a3 supportedCountryCodes:(id)a4 searchSessionID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 pageOffset] & 0x8000000000000000) != 0)
  {
    [NSError hk_assignError:a6 code:100 description:@"Service given invalid search parameters"];
LABEL_15:
    v44 = 0;
    goto LABEL_16;
  }

  if (![v11 count])
  {
    [NSError hk_assignError:a6 code:3 format:@"URL can only be constructed if there's at least one supported country code"];
    goto LABEL_15;
  }

  v13 = [a1 baseSearchURL];
  v14 = [NSURLComponents componentsWithURL:v13 resolvingAgainstBaseURL:0];

  v15 = [v14 path];
  v16 = [v15 stringByAppendingPathComponent:@"search"];
  [v14 setPath:v16];

  v17 = [&__NSArray0__struct mutableCopy];
  v18 = [v10 searchString];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [v10 searchString];
    v21 = [NSURLQueryItem queryItemWithName:@"query" value:v20];
    [v17 addObject:v21];
  }

  v22 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
  v46 = v22;
  v23 = [NSArray arrayWithObjects:&v46 count:1];
  v24 = [v11 sortedArrayUsingDescriptors:v23];
  v25 = [v24 componentsJoinedByString:{@", "}];

  v26 = [NSURLQueryItem queryItemWithName:@"cc" value:v25];
  [v17 addObject:v26];

  if ([v12 length])
  {
    v27 = [NSURLQueryItem queryItemWithName:@"chrsid" value:v12];
    [v17 addObject:v27];
  }

  v28 = [v10 latitude];
  if (v28)
  {
    v29 = v28;
    v30 = [v10 longitude];

    if (v30)
    {
      v31 = [v10 latitude];
      [v31 doubleValue];
      v33 = v32;

      v34 = [v10 longitude];
      [v34 doubleValue];
      v36 = v35;

      v37 = [NSString stringWithFormat:@"%.1f, %.1f", v33, v36];
      v38 = [NSURLQueryItem queryItemWithName:@"geo" value:v37];
      [v17 addObject:v38];
    }
  }

  if ([v10 options])
  {
    v39 = [NSURLQueryItem queryItemWithName:@"feature" value:HKClinicalGatewayFeatureNameClinicalSharing];
    [v17 addObject:v39];
  }

  v40 = [a1 languageAndRegionQueryParameter];
  v41 = [NSURLQueryItem queryItemWithName:@"loc" value:v40];
  [v17 addObject:v41];

  v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v10 pageOffset]);
  v43 = [NSURLQueryItem queryItemWithName:@"from" value:v42];
  [v17 addObject:v43];

  [v14 setQueryItems:v17];
  v44 = [v14 URL];

LABEL_16:

  return v44;
}

+ (id)URLForBrandLogosWithBatchID:(id)a3 scaleKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _URLForListOfType:0 batchID:a3 searchSessionID:0 error:a5];
  v10 = [NSURLComponents componentsWithURL:v9 resolvingAgainstBaseURL:0];
  v11 = [[NSURLQueryItem alloc] initWithName:@"size" value:v8];

  v15 = v11;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
  [v10 setQueryItems:v12];

  v13 = [v10 URL];

  return v13;
}

+ (id)_URLForListOfType:(int64_t)a3 batchID:(id)a4 searchSessionID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([v10 length])
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = v12;
    if (a3 == 1 && ([v12 stringForKey:HDHealthRecordsGatewayListURL], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = [NSURL URLWithString:v14];
    }

    else
    {
      v17 = [a1 baseURL];
      v18 = [NSURLComponents componentsWithURL:v17 resolvingAgainstBaseURL:0];

      if (a3 <= 2)
      {
        v19 = off_106048[a3];
        v20 = [v18 path];
        v21 = [v20 stringByAppendingPathComponent:v19];
        [v18 setPath:v21];
      }

      v22 = [v18 path];
      v23 = [v22 stringByAppendingPathComponent:v10];
      [v18 setPath:v23];

      if ([v11 length])
      {
        v24 = [NSURLQueryItem queryItemWithName:@"chrsid" value:v11];
        v25 = [v18 queryItems];

        if (v25)
        {
          v26 = [v18 queryItems];
          v27 = [v26 arrayByAddingObject:v24];
          [v18 setQueryItems:v27];
        }

        else
        {
          v29 = v24;
          v26 = [NSArray arrayWithObjects:&v29 count:1];
          [v18 setQueryItems:v26];
        }
      }

      v16 = [v18 URL];
    }
  }

  else
  {
    [NSError hk_assignError:a6 code:100 description:@"Service: invalid provider batch_id"];
    v16 = 0;
  }

  return v16;
}

+ (id)_dictionaryFromJSONObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    [NSError hk_assignError:a4 code:607 description:@"JSONObject not a dictionary"];
    v7 = 0;
  }

  return v7;
}

+ (id)_resultsArrayFromJSONObject:(id)a3 error:(id *)a4
{
  v5 = [a1 _dictionaryFromJSONObject:a3 error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_safeArrayForKeyPath:@"results" error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_resultsDictionaryFromJSONObject:(id)a3 error:(id *)a4
{
  v5 = [a1 _dictionaryFromJSONObject:a3 error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_safeDictionaryForKeyPath:@"results" error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_providerDictionaryFromJSONObject:(id)a3 matchingExternalID:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [HDProviderServiceSpecification _resultsArrayFromJSONObject:a3 error:a5];
  if (v8)
  {
    v9 = HDHealthRecordsPluginBundle();
    v10 = [HKJSONValidator validateJSONObject:v8 withSchemaNamed:@"ProviderListSchema" bundle:v9 error:a5];

    if (v10)
    {
      v21 = a5;
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
            v18 = [v17 isEqualToString:v7];

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

      [NSError hk_assignError:v21 code:607 description:@"The expected provider is missing from the service's response."];
    }
  }

  v19 = 0;
LABEL_13:

  return v19;
}

+ (id)searchResultsPageFromFetchedJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = HDHealthRecordsPluginBundle();
  v22 = 0;
  v8 = [HKJSONValidator validateJSONObject:v6 withSchemaNamed:@"ProviderSearchResultPageSchema" bundle:v7 error:&v22];
  v9 = v22;

  if (v8)
  {
    v10 = [a1 _searchResultsFromFetchedJSONObject:v6 error:a4];
    if (v10)
    {
      v11 = [a1 _dictionaryFromJSONObject:v6 error:a4];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 objectForKeyedSubscript:@"from"];
        v14 = [v13 integerValue];

        v15 = [v12 objectForKeyedSubscript:@"_nextFrom"];
        v16 = [v15 integerValue];

        v17 = [v12 objectForKeyedSubscript:@"_size"];
        v18 = [v17 integerValue];

        v19 = [[HKClinicalProviderSearchResultsPage alloc] initWithSearchResults:v10 from:v14 nextFrom:v16 size:v18];
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
      if (a4)
      {
        v20 = v10;
        v19 = 0;
        *a4 = v10;
        goto LABEL_12;
      }

      _HKLogDroppedError();
    }
  }

  v19 = 0;
LABEL_12:

  return v19;
}

+ (id)_searchResultsFromFetchedJSONObject:(id)a3 error:(id *)a4
{
  v42 = 0;
  v5 = [a1 _resultsArrayFromJSONObject:a3 error:&v42];
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
            v18 = [v17 integerValue];
            v34 = v14;
            if (v13)
            {
              v19 = v18;
              v20 = 0;
              if (v14 && v15)
              {
                v20 = [[HKClinicalBrand alloc] initWithExternalID:v14 batchID:v15];
              }

              v21 = [v11 objectForKeyedSubscript:@"supported"];
              v22 = [v21 BOOLValue];

              v23 = [[HKClinicalProviderSearchResult alloc] initWithExternalID:v12 batchID:v37 title:v13 subtitle:v36 location:v35 supported:v22 countryCode:v16 brand:v20 minCompatibleAPIVersion:v19];
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
      if (a4)
      {
        v25 = v9;
        v29 = 0;
        *a4 = v9;
        goto LABEL_27;
      }

      _HKLogDroppedError();
    }

    v29 = 0;
  }

LABEL_27:

  return v29;
}

+ (void)providerAndGatewaysFromFetchedJSONObject:(id)a3 matchingProviderExternalID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v33 = 0;
  v9 = [a1 _providerDictionaryFromJSONObject:a3 matchingExternalID:a4 error:&v33];
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
    v16 = [a1 _gatewaysFromProviderDictionary:v9 error:&v32];
    v17 = v32;
    if (v17)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9CEE0();
      }

      (*(v8 + 2))(v8, 0, 0, v17);
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

      (*(v8 + 2))(v8, v23, v29, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9CF4C();
    }

    (*(v8 + 2))(v8, 0, 0, v31);
  }
}

+ (id)_gatewaysFromProviderDictionary:(id)a3 error:(id *)a4
{
  v4 = [a3 objectForKeyedSubscript:{@"gateways", a4}];
  v5 = [v4 hk_map:&stru_106028];

  return v5;
}

+ (id)gatewayFromFetchedJSONObject:(id)a3 matchingExternalID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15 = v8;
  v9 = a3;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [a1 gatewaysFromFetchedJSONObject:v9 matchingExternalIDs:v10 error:{a5, v15}];

  if (v11)
  {
    v12 = [v11 lastObject];
    if (!v12)
    {
      [NSError hk_assignError:a5 code:605 description:@"Failed to find the requested gateway within the given response."];
      _HKInitializeLogging();
      v13 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9CFB8(a1, v13);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)gatewaysFromFetchedJSONObject:(id)a3 matchingExternalIDs:(id)a4 error:(id *)a5
{
  v8 = a4;
  v43 = 0;
  v35 = a1;
  v9 = [a1 _resultsArrayFromJSONObject:a3 error:&v43];
  v10 = v43;
  v11 = v10;
  if (v9)
  {
    v37 = objc_alloc_init(NSMutableArray);
    v34 = v8;
    if (v8)
    {
      v12 = [[NSSet alloc] initWithArray:v8];
      v36 = [[NSMutableSet alloc] initWithArray:v8];
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
            v24 = [(HDClinicalGateway *)v23 externalID];
            if (!v12 || [v12 containsObject:v24])
            {
              [v37 addObject:v23];
              [v36 removeObject:v24];
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
            v24 = v26;
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
    v8 = v34;
  }

  else
  {
    v13 = v10;
    if (v13)
    {
      if (a5)
      {
        v14 = v13;
        *a5 = v13;
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
      sub_9D030(v31, v35, v13);
    }

    v37 = 0;
  }

  return v37;
}

+ (id)brandLogosFromFetchedJSONObject:(id)a3 error:(id *)a4
{
  v30 = 0;
  v4 = [a1 _encodedBrandLogosFromFetchedJSONObject:a3 error:&v30];
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
          v14 = [v12 hk_base64PaddedString];
          v15 = [v13 initWithBase64EncodedString:v14 options:1];

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
              v32 = a1;
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
            v32 = a1;
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

+ (id)_encodedBrandLogosFromFetchedJSONObject:(id)a3 error:(id *)a4
{
  v5 = [HDProviderServiceSpecification _resultsArrayFromJSONObject:a3 error:?];
  if (v5 && (HDHealthRecordsPluginBundle(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [HKJSONValidator validateJSONObject:v5 withSchemaNamed:@"BrandLogoListSchema" bundle:v6 error:a4], v6, v7))
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
  v3 = [a1 currentServiceEnvironment];

  return [a1 _baseURLForEnvironment:v3 useSearchHost:0];
}

+ (NSURL)baseSearchURL
{
  v3 = [a1 currentServiceEnvironment];

  return [a1 _baseURLForEnvironment:v3 useSearchHost:1];
}

+ (id)_baseURLForEnvironment:(int64_t)a3 useSearchHost:(BOOL)a4
{
  v4 = a4;
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:@"https"];
  if (v4)
  {
    [a1 _searchHostForEnvironment:a3];
  }

  else
  {
    [a1 _hostForEnvironment:a3];
  }
  v8 = ;
  [v7 setHost:v8];

  v9 = [NSString stringWithFormat:@"/v%ld", HKProviderServiceMaximumCompatibleAPIVersion()];
  v10 = [v9 stringByAppendingString:@"/providers/"];
  [v7 setPath:v10];

  v11 = [v7 URL];

  return v11;
}

+ (id)_hostForEnvironment:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_106060[a3];
  }
}

+ (id)_searchHostForEnvironment:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1060D0[a3];
  }
}

+ (id)languageAndRegionQueryParameter
{
  v2 = +[NSLocale autoupdatingCurrentLocale];
  v3 = [v2 languageCode];
  v4 = [v2 countryCode];
  v5 = v4;
  v6 = @"XX";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [NSString stringWithFormat:@"%@_%@", v3, v7];

  return v8;
}

@end