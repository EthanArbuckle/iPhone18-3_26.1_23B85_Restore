@interface PMLDESPluginObject
+ (id)encryptUpdates:(id)a3 totalParameters:(unint64_t)a4 haruspexKeyBase64:(id)a5 encryptor:(id)a6 error:(id *)a7;
- (PMLDESPluginObject)init;
- (PMLDESPluginObject)initWithSuggestionsClient:(id)a3 encryptor:(id)a4;
- (id)_getPFLIdentifierForLogging:(id)a3;
- (id)evaluateRecipe:(id)a3 matchingRecordSet:(id)a4 binaryResult:(id *)a5 error:(id *)a6;
@end

@implementation PMLDESPluginObject

- (id)evaluateRecipe:(id)a3 matchingRecordSet:(id)a4 binaryResult:(id *)a5 error:(id *)a6
{
  v82 = a2;
  v87 = a3;
  v8 = a4;
  v132 = 0;
  v133 = &v132;
  v134 = 0x3032000000;
  v135 = sub_1C38;
  v136 = sub_1C48;
  v137 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = sub_1C38;
  v130 = sub_1C48;
  v131 = objc_opt_new();
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = sub_1C38;
  v124 = sub_1C48;
  v83 = a5;
  v84 = v8;
  v125 = objc_opt_new();
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v9 = [v87 attachments];
  LODWORD(a5) = [v9 count] == 0;

  if (!a5)
  {
    v10 = [v87 recipeUserInfo];
    v85 = [v10 objectForKeyedSubscript:@"isEspressoTraining"];

    if (v85 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v85 BOOLValue])
    {
      v11 = sub_1C50();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "PMLDESPlugin running training with Espresso", buf, 2u);
      }

      v12 = dispatch_semaphore_create(0);
      v13 = [NSMutableDictionary alloc];
      v14 = [v87 recipeUserInfo];
      v15 = [v13 initWithDictionary:v14];

      v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v87 pluginShouldAddNoiseAndEncryptResult]);
      [v15 setObject:v16 forKeyedSubscript:@"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT"];

      suggestionsClient = self->_suggestionsClient;
      v18 = [v87 attachments];
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_1CA4;
      v105[3] = &unk_8218;
      v107 = &v112;
      v108 = &v116;
      v109 = &v120;
      v110 = &v126;
      v111 = &v132;
      v19 = v12;
      v106 = v19;
      [(SGSuggestionsServiceFidesProtocol *)suggestionsClient evaluateRecipe:v15 attachments:v18 completion:v105];

      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v20 = v133[5];
      if (v20)
      {
        v21 = sub_1C50();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v81 = v133[5];
          *buf = 138412290;
          v141 = v81;
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "PMLDESPlugin got error when calling evaluateRecipe: %@", buf, 0xCu);
        }

        if (a6)
        {
          *a6 = v133[5];
        }
      }

      else
      {
        v51 = v117[3];
        v52 = sub_1C50();
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
        if (v51)
        {
          if (v53)
          {
            *buf = 0;
            _os_log_debug_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, "PMLDESPlugin successfully sent payload to suggestd/PML.", buf, 2u);
          }
        }

        else if (v53)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, "PMLDESPlugin sent payload to suggestd/PML with no result or error.", buf, 2u);
        }
      }

      if (v20)
      {
        goto LABEL_46;
      }

      v86 = v117[3];
      if (v86)
      {
LABEL_74:
        v56 = [[NSMutableData alloc] initWithCapacity:4 * v86];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v57 = [v121[5] allKeys];
        v58 = [v57 sortedArrayUsingSelector:"compare:"];

        v59 = [v58 countByEnumeratingWithState:&v90 objects:v138 count:16];
        if (v59)
        {
          v60 = *v91;
          do
          {
            for (i = 0; i != v59; i = i + 1)
            {
              if (*v91 != v60)
              {
                objc_enumerationMutation(v58);
              }

              v62 = *(*(&v90 + 1) + 8 * i);
              v63 = [v121[5] objectForKeyedSubscript:{v62, v82}];
              v64 = +[NSNull null];
              v65 = [v63 isEqual:v64];

              if (v65)
              {
                v66 = [NSMutableData dataWithLength:4 * v117[3]];
                if (!v66)
                {
                  v67 = +[NSAssertionHandler currentHandler];
                  [v67 handleFailureInMethod:v82 object:self file:@"PMLDESPlugin.m" lineNumber:297 description:@"Failed to allocate data."];
                }

                [v56 appendData:v66];
              }

              else
              {
                v66 = [v121[5] objectForKeyedSubscript:v62];
                [v56 appendData:v66];
              }
            }

            v59 = [v58 countByEnumeratingWithState:&v90 objects:v138 count:16];
          }

          while (v59);
        }

        v68 = v56;
        v69 = [v56 bytes];
        if ([v87 pluginShouldAddNoiseAndEncryptResult])
        {
          v70 = [v87 recipeUserInfo];
          v71 = [v70 objectForKeyedSubscript:@"iCloudAggServiceKey"];
          v72 = [PMLDESPluginObject encryptUpdates:v56 totalParameters:v86 haruspexKeyBase64:v71 encryptor:self->_encryptor error:a6];

          if (!v72)
          {
            v46 = 0;
LABEL_93:

            goto LABEL_47;
          }

          v73 = v72;
          *v83 = v72;
        }

        else
        {
          v74 = v56;
          *v83 = v56;
        }

        for (j = objc_alloc_init(NSMutableArray); v86; --v86)
        {
          LODWORD(v76) = *v69;
          v77 = [NSNumber numberWithFloat:v76, v82];
          [j addObject:v77];

          ++v69;
        }

        [v127[5] setObject:j forKey:{@"$local_only.FoundInAppsModelUpdate", v82}];
        v78 = [v121[5] allKeys];
        v79 = [v78 firstObject];
        v80 = [(PMLDESPluginObject *)self _getPFLIdentifierForLogging:v79];

        [v127[5] setObject:&stru_84B0 forKey:@"localPrivacyParameters"];
        v46 = v127[5];

        goto LABEL_93;
      }

      v48 = 1;
    }

    else
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v22 = [v87 attachments];
      v23 = [v22 countByEnumeratingWithState:&v101 objects:v139 count:16];
      if (v23)
      {
        v24 = *v102;
        while (2)
        {
          for (k = 0; k != v23; k = k + 1)
          {
            if (*v102 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v101 + 1) + 8 * k);
            v27 = sub_1C50();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v37 = [v26 absoluteString];
              *buf = 138412290;
              v141 = v37;
              _os_log_debug_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "PMLDESPlugin running attachment at %@.", buf, 0xCu);
            }

            v28 = [NSData dataWithContentsOfURL:v26];
            if (![v28 length])
            {
              if (a6)
              {
                *a6 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:2 userInfo:0];
              }

LABEL_45:
              goto LABEL_46;
            }

            v29 = dispatch_semaphore_create(0);
            v30 = self->_suggestionsClient;
            v94[0] = _NSConcreteStackBlock;
            v94[1] = 3221225472;
            v94[2] = sub_1E6C;
            v94[3] = &unk_8218;
            v96 = &v112;
            v97 = &v116;
            v98 = &v120;
            v99 = &v126;
            v100 = &v132;
            v31 = v29;
            v95 = v31;
            [(SGSuggestionsServiceFidesProtocol *)v30 planReceivedFromServerWithPayload:v28 completion:v94];
            dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
            v32 = v133[5];
            if (v32)
            {
              v33 = sub_1C50();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v38 = v133[5];
                *buf = 138412290;
                v141 = v38;
                _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "PMLDESPlugin got error when calling planReceivedFromServerWithPayload: %@", buf, 0xCu);
              }

              if (a6)
              {
                *a6 = v133[5];
              }
            }

            else
            {
              v34 = v117[3];
              v35 = sub_1C50();
              v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
              if (v34)
              {
                if (v36)
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "PMLDESPlugin successfully sent payload to suggestd/PML.", buf, 2u);
                }
              }

              else if (v36)
              {
                *buf = 0;
                _os_log_debug_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "PMLDESPlugin sent payload to suggestd/PML with no result or error.", buf, 2u);
              }
            }

            if (v32)
            {
              goto LABEL_45;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v101 objects:v139 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v39 = v117[3];
      if (v39)
      {
        v40 = [v87 attachments];
        v41 = [v40 count];

        v42 = [v87 attachments];
        v43 = [v42 count];
        v44 = [v121[5] allKeys];
        LOBYTE(v40) = v43 == [v44 count];

        if (v40)
        {
          v86 = v41 * v39;
          goto LABEL_74;
        }

        if (a6)
        {
          v50 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:4 userInfo:0];
          goto LABEL_58;
        }

LABEL_46:
        v46 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v48 = 0;
    }

    v49 = v133[5];
    if (v49)
    {
      if (a6)
      {
        v50 = v49;
LABEL_58:
        v46 = 0;
        *a6 = v50;
        goto LABEL_47;
      }
    }

    else if (*(v113 + 24) == 1)
    {
      if ([v127[5] count])
      {
        v46 = v127[5];
        goto LABEL_47;
      }

      if (a6)
      {
        v50 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:5 userInfo:0];
        goto LABEL_58;
      }
    }

    else
    {
      if (!v48)
      {
        v46 = &__NSDictionary0__struct;
        goto LABEL_47;
      }

      if (a6)
      {
        v50 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:5 userInfo:&off_8568];
        goto LABEL_58;
      }
    }

    goto LABEL_46;
  }

  v45 = sub_1C50();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v54 = [v87 attachments];
    v55 = [v54 count];
    *buf = 134217984;
    v141 = v55;
    _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "Expected > 0 attachment but got %lu", buf, 0xCu);
  }

  if (a6)
  {
    [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:1 userInfo:0];
    *a6 = v46 = 0;
  }

  else
  {
    v46 = 0;
  }

LABEL_48:
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(&v120, 8);

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v132, 8);

  return v46;
}

- (id)_getPFLIdentifierForLogging:(id)a3
{
  if ([a3 hasPrefix:@"QuickResponsesClassification_label"])
  {
    return @"com.apple.proactive.responses";
  }

  else
  {
    return @"com.apple.proactive.fia.phone.en";
  }
}

- (PMLDESPluginObject)initWithSuggestionsClient:(id)a3 encryptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PMLDESPluginObject;
  v9 = [(PMLDESPluginObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestionsClient, a3);
    objc_storeStrong(&v10->_encryptor, a4);
  }

  return v10;
}

- (PMLDESPluginObject)init
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v3 = qword_C5B8;
  v19 = qword_C5B8;
  if (!qword_C5B8)
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_2314;
    v14 = &unk_8240;
    v15 = &v16;
    sub_2314(&v11);
    v3 = v17[3];
  }

  v4 = v3;
  _Block_object_dispose(&v16, 8);
  v5 = [v3 serviceForFides];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = qword_C5C8;
  v19 = qword_C5C8;
  if (!qword_C5C8)
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_2500;
    v14 = &unk_8240;
    v15 = &v16;
    sub_2500(&v11);
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  v8 = objc_opt_new();
  v9 = [(PMLDESPluginObject *)self initWithSuggestionsClient:v5 encryptor:v8];

  return v9;
}

+ (id)encryptUpdates:(id)a3 totalParameters:(unint64_t)a4 haruspexKeyBase64:(id)a5 encryptor:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [[NSData alloc] initWithBase64EncodedString:v12 options:0];
    if (!v14)
    {
      if (a7)
      {
        *a7 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:7 userInfo:0];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to init NSData for provided Haruspex key", buf, 2u);
      }

      v19 = 0;
      goto LABEL_24;
    }

    v21 = 0;
    v15 = [v13 encryptedDataWithPublicKey:v14 dataFloatNumbers:objc_msgSend(v11 count:"bytes") error:{a4, &v21}];
    v16 = v21;
    v17 = v16;
    if (v15)
    {
      if (!v16)
      {
        v19 = v15;
        goto LABEL_23;
      }

      if (a7)
      {
        goto LABEL_6;
      }

LABEL_21:
      v19 = 0;
      goto LABEL_23;
    }

    if (!v16)
    {
      v17 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:8 userInfo:0];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not privatize/encrypt data: %@", buf, 0xCu);
      if (!a7)
      {
        goto LABEL_21;
      }
    }

    else if (!a7)
    {
      goto LABEL_21;
    }

LABEL_6:
    v18 = v17;
    v19 = 0;
    *a7 = v17;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if (a7)
  {
    *a7 = [NSError errorWithDomain:@"PMLDESPluginErrorDomain" code:6 userInfo:0];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Haruspex key not found in recipe", buf, 2u);
  }

  v19 = 0;
LABEL_25:

  return v19;
}

@end