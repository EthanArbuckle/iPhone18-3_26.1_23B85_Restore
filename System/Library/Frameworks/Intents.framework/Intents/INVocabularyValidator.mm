@interface INVocabularyValidator
@end

@implementation INVocabularyValidator

void __93___INVocabularyValidator__determineIfBundleID_appPath_canProvideVocabularyOfType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = &stru_1F01E0850;
    if (v6)
    {
      v8 = v6;
    }

    *buf = 136315394;
    v20 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]_block_invoke";
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Finished matching on-device extensions %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___INVocabularyValidator__determineIfBundleID_appPath_canProvideVocabularyOfType_completion___block_invoke_111;
  block[3] = &unk_1E7285658;
  v16 = v5;
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 40);
  v14 = v10;
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = v9;
  v17 = v14;
  v18 = v11;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v13 = *MEMORY[0x1E69E9840];
}

void __93___INVocabularyValidator__determineIfBundleID_appPath_canProvideVocabularyOfType_completion___block_invoke_111(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) count])
  {
    v3 = objc_alloc(MEMORY[0x1E69635F8]);
    v4 = *(a1 + 40);
    v33 = 0;
    v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v33];
    v6 = v33;
    if (v6)
    {
      v7 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]_block_invoke";
        v38 = 2112;
        v39 = v6;
        _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Unable to get app record %@", buf, 0x16u);
        v7 = INSiriLogContextIntents;
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 136315138;
      v37 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]_block_invoke";
    }

    else
    {
      v8 = [v5 supportedIntents];
      v9 = [v8 count];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = *(a1 + 56);
      v10 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        v23 = v9;
        while (1)
        {
          v13 = 0;
LABEL_13:
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v5;
          v16 = [v5 supportedIntents];
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (!v17)
          {
            break;
          }

          v18 = v17;
          v19 = *v26;
LABEL_17:
          v20 = 0;
          while (1)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v25 + 1) + 8 * v20) isEqualToString:v14])
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
              if (v18)
              {
                goto LABEL_17;
              }

              goto LABEL_30;
            }
          }

          ++v13;
          v5 = v15;
          if (v13 != v11)
          {
            goto LABEL_13;
          }

          v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
          v9 = v23;
          v6 = 0;
          if (!v11)
          {
            goto LABEL_26;
          }
        }

LABEL_30:

        v5 = v15;
        v6 = 0;
      }

      else
      {
LABEL_26:

        if (v9)
        {
          v21 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v37 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]_block_invoke";
            _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s Can provide vocabulary per on-device-app support because app supports this", buf, 0xCu);
          }

          (*(*(a1 + 64) + 16))();
          goto LABEL_35;
        }
      }

      v7 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
LABEL_34:
        [*(a1 + 48) _confirmExistenceOfWatchAppForCompanionBundleID:*(a1 + 40) handlingIntents:*(a1 + 56) completion:*(a1 + 64)];
LABEL_35:

        goto LABEL_36;
      }

      *buf = 136315138;
      v37 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]_block_invoke";
    }

    _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s No on-device-app support found, searching for eligible watch apps", buf, 0xCu);
    goto LABEL_34;
  }

  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v37 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]_block_invoke";
    _os_log_impl(&dword_18E991000, v2, OS_LOG_TYPE_INFO, "%s Can provide vocabulary per on-device-app support", buf, 0xCu);
  }

  (*(*(a1 + 64) + 16))();
LABEL_36:
  v22 = *MEMORY[0x1E69E9840];
}

void __101___INVocabularyValidator__confirmExistenceOfWatchAppForCompanionBundleID_handlingIntents_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[_INVocabularyValidator _confirmExistenceOfWatchAppForCompanionBundleID:handlingIntents:completion:]_block_invoke";
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving installed watch applications: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101___INVocabularyValidator__confirmExistenceOfWatchAppForCompanionBundleID_handlingIntents_completion___block_invoke_101;
    v10[3] = &unk_1E7282328;
    v12 = *(a1 + 48);
    v11 = *(a1 + 40);
    [v8 fetchApplicationOnPairedDevice:0 withBundleID:v5 completion:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __101___INVocabularyValidator__confirmExistenceOfWatchAppForCompanionBundleID_handlingIntents_completion___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 intentsSupported];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:*(a1 + 32)];
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v8];
      if ([v9 intersectsSet:v10])
      {
        v11 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          v14 = 136315138;
          v15 = "[_INVocabularyValidator _confirmExistenceOfWatchAppForCompanionBundleID:handlingIntents:completion:]_block_invoke";
          _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Watch app that handles the required intents found.", &v14, 0xCu);
        }

        (*(*(a1 + 40) + 16))();

LABEL_14:
        goto LABEL_15;
      }
    }

    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[_INVocabularyValidator _confirmExistenceOfWatchAppForCompanionBundleID:handlingIntents:completion:]_block_invoke";
      _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s No Watch app that handles the required intents was found.", &v14, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[_INVocabularyValidator _confirmExistenceOfWatchAppForCompanionBundleID:handlingIntents:completion:]_block_invoke";
    v16 = 2114;
    v17 = v6;
    _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving installed watch applications: %{public}@", &v14, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
}

id __88___INVocabularyValidator_validatedItemsFromVocabularySpeakables_ofType_loggingWarnings___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [v2 spokenPhrases];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [_INVocabularyItem alloc];
          v11 = [v2 vocabularyIdentifier];
          v12 = [(_INVocabularyItem *)v10 _initWithUncheckedString:v9 vocabularyIdentifier:v11 requiresUserIdentification:0];
          [v3 addObject:v12];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = [[_INVocabularyItem alloc] _initWithUncheckedSpeakable:v2];
    v19 = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

id __85___INVocabularyValidator_validatedItemsFromVocabularyStrings_ofType_loggingWarnings___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [[_INVocabularyItem alloc] _initWithUncheckedString:v2 vocabularyIdentifier:0 requiresUserIdentification:0];

  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __54___INVocabularyValidator__intentsUsingVocabularyType___block_invoke()
{
  v118[2] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v118[0] = v1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v118[1] = v3;
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];

  v4 = objc_opt_class();
  v103 = NSStringFromClass(v4);
  v117[0] = v103;
  v5 = objc_opt_class();
  v101 = NSStringFromClass(v5);
  v117[1] = v101;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v117[2] = v7;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v117[3] = v9;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v117[4] = v11;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v117[5] = v13;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v117[6] = v15;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v117[7] = v17;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v117[8] = v19;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v117[9] = v21;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v117[10] = v23;
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v117[11] = v25;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:12];

  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v116[0] = v27;
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v116[1] = v29;
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v116[2] = v31;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v116[3] = v33;
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:4];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v115[0] = v35;
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v115[1] = v37;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];

  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v114[0] = v39;
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v114[1] = v41;
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v114[2] = v43;
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v114[3] = v45;
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v114[4] = v47;
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  v114[5] = v49;
  v50 = objc_opt_class();
  v51 = NSStringFromClass(v50);
  v114[6] = v51;
  v52 = objc_opt_class();
  v53 = NSStringFromClass(v52);
  v114[7] = v53;
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  v114[8] = v55;
  v56 = objc_opt_class();
  v57 = NSStringFromClass(v56);
  v114[9] = v57;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:10];

  v58 = objc_opt_class();
  v59 = NSStringFromClass(v58);
  v113[0] = v59;
  v60 = objc_opt_class();
  v61 = NSStringFromClass(v60);
  v113[1] = v61;
  v62 = objc_opt_class();
  v63 = NSStringFromClass(v62);
  v113[2] = v63;
  v64 = objc_opt_class();
  v65 = NSStringFromClass(v64);
  v113[3] = v65;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:4];

  v67 = objc_opt_class();
  v68 = NSStringFromClass(v67);
  v112[0] = v68;
  v69 = objc_opt_class();
  v70 = NSStringFromClass(v69);
  v112[1] = v70;
  v71 = objc_opt_class();
  v72 = NSStringFromClass(v71);
  v112[2] = v72;
  v73 = objc_opt_class();
  v74 = NSStringFromClass(v73);
  v112[3] = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:4];

  v76 = objc_opt_class();
  v77 = NSStringFromClass(v76);
  v111[0] = v77;
  v78 = objc_opt_class();
  v79 = NSStringFromClass(v78);
  v111[1] = v79;
  v80 = objc_opt_class();
  v81 = NSStringFromClass(v80);
  v111[2] = v81;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];

  v83 = objc_opt_class();
  v84 = NSStringFromClass(v83);
  v110[0] = v84;
  v85 = objc_opt_class();
  v86 = NSStringFromClass(v85);
  v110[1] = v86;
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:2];

  v88 = objc_opt_class();
  v89 = NSStringFromClass(v88);
  v109[0] = v89;
  v90 = objc_opt_class();
  v91 = NSStringFromClass(v90);
  v109[1] = v91;
  v92 = objc_opt_class();
  v93 = NSStringFromClass(v92);
  v109[2] = v93;
  v94 = objc_opt_class();
  v95 = NSStringFromClass(v94);
  v109[3] = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:4];

  v107[0] = &unk_1F02D8020;
  v107[1] = &unk_1F02D8038;
  v108[0] = v106;
  v108[1] = v106;
  v107[2] = &unk_1F02D8050;
  v107[3] = &unk_1F02D8068;
  v108[2] = v106;
  v108[3] = v105;
  v107[4] = &unk_1F02D8080;
  v107[5] = &unk_1F02D8098;
  v108[4] = v105;
  v108[5] = v104;
  v107[6] = &unk_1F02D80B0;
  v107[7] = &unk_1F02D80C8;
  v108[6] = v102;
  v108[7] = v100;
  v107[8] = &unk_1F02D80E0;
  v107[9] = &unk_1F02D80F8;
  v108[8] = v66;
  v108[9] = v75;
  v107[10] = &unk_1F02D8110;
  v107[11] = &unk_1F02D8128;
  v108[10] = v82;
  v108[11] = v87;
  v107[12] = &unk_1F02D8140;
  v107[13] = &unk_1F02D8158;
  v108[12] = v96;
  v108[13] = v96;
  v107[14] = &unk_1F02D8170;
  v107[15] = &unk_1F02D8188;
  v108[14] = v96;
  v108[15] = v96;
  v107[16] = &unk_1F02D81A0;
  v107[17] = &unk_1F02D81B8;
  v108[16] = v96;
  v108[17] = v96;
  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:18];
  v98 = _intentsUsingVocabularyType__sIntentsUsingSyncSlot;
  _intentsUsingVocabularyType__sIntentsUsingSyncSlot = v97;

  v99 = *MEMORY[0x1E69E9840];
}

@end