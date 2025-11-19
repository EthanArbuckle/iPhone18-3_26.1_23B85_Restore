@interface QueryMostRecentAsset
@end

@implementation QueryMostRecentAsset

void __figMobileAsset_QueryMostRecentAsset_block_invoke(uint64_t a1, uint64_t a2)
{
  v44[16] = *MEMORY[0x1E69E9840];
  if (!a2 || a2 == 2 && *(a1 + 80))
  {
    v3 = [*(a1 + 32) results];
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 0x1E696A000;
      if (v5 >= 1)
      {
        if (dword_1EAF1CCC8)
        {
          v12 = *(a1 + 40);
          v34 = *(a1 + 48);
          v37 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 1, &v37, type);
          v14 = v37;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v16 = v14;
          }

          else
          {
            v16 = v14 & 0xFFFFFFFE;
          }

          if (v16)
          {
            *v41 = 136315650;
            *&v41[4] = "figMobileAsset_HandleSuccessfulQueryResult";
            *&v41[12] = 2114;
            *&v41[14] = v12;
            *&v41[22] = 1024;
            LODWORD(v42) = v5;
            LODWORD(v33) = 28;
            v32 = v41;
            v17 = _os_log_send_and_compose_impl();
            LOBYTE(v14) = v37;
          }

          else
          {
            v17 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 1u, 1, v17, v17 != v44, v14, 0, v15);
          v7 = v34;
          v8 = v12;
          v11 = 0x1E696A000uLL;
        }

        v18 = *(v11 + 3608);
        *v41 = MEMORY[0x1E69E9820];
        *&v41[8] = 3221225472;
        *&v41[16] = __figMobileAsset_HandleSuccessfulQueryResult_block_invoke;
        v42 = &__block_descriptor_36_e34_B24__0__MAAsset_8__NSDictionary_16l;
        v43 = v5;
        v4 = [v4 filteredArrayUsingPredicate:{objc_msgSend(v18, "predicateWithBlock:", v41, v32, v33)}];
      }

      if (v6)
      {
        v4 = [v4 filteredArrayUsingPredicate:{objc_msgSend(*(v11 + 3608), "predicateWithBlock:", &__block_literal_global_30)}];
      }

      if (v4)
      {
        v19 = [v4 sortedArrayUsingComparator:&__block_literal_global_34];
        if (v19)
        {
          v20 = [v19 lastObject];
          if (v20)
          {
            v21 = v20;
            if ([v20 state] == 2 || objc_msgSend(v21, "state") == 5)
            {
              figMobileAsset_UpdateLastUpdatedTime(v8);
              figMobileAsset_ExtractPlistFromAssetForCallback(v21, v10, v9);
            }

            else if (!v6)
            {
              if (v8)
              {
                CFRetain(v8);
              }

              if (v7)
              {
                CFRetain(v7);
              }

              if (v10)
              {
                CFRetain(v10);
              }

              if (v9)
              {
                CFRetain(v9);
              }

              if (dword_1EAF1CCC8)
              {
                *type = 0;
                v35 = OS_LOG_TYPE_DEFAULT;
                v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 1, type, &v35);
                v27 = *type;
                if (os_log_type_enabled(v26, v35))
                {
                  v29 = v27;
                }

                else
                {
                  v29 = v27 & 0xFFFFFFFE;
                }

                if (v29)
                {
                  v30 = [v21 assetId];
                  v37 = 136315395;
                  v38 = "figMobileAsset_HandleSuccessfulQueryResult";
                  v39 = 2113;
                  v40 = v30;
                  LODWORD(v33) = 22;
                  v32 = &v37;
                  v31 = _os_log_send_and_compose_impl();
                  LOBYTE(v27) = type[0];
                }

                else
                {
                  v31 = 0;
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 1u, 1, v31, v31 != v44, v27, 0, v28);
              }

              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __figMobileAsset_HandleSuccessfulQueryResult_block_invoke_31;
              v44[3] = &unk_1E749DB48;
              v44[4] = v21;
              v44[5] = v8;
              v44[6] = v10;
              v44[7] = v9;
              v44[8] = v7;
              [v21 startDownload:{v44, v32, v33}];
            }
          }
        }
      }
    }
  }

  else if (a2 == 2 && !*(a1 + 80))
  {
    figMobileAsset_DownloadCatalogAndRequery(*(a1 + 40));
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }
}

@end