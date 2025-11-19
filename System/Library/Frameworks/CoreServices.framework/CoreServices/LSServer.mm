@interface LSServer
@end

@implementation LSServer

void ___LSServer_PerformOpenOperation_block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "LaunchServices: [Perform] not launching application - result = %{public}@", &v9, 0xCu);
    }
  }

  v7 = (*(*(a1 + 32) + 16))();
  MEMORY[0x1865D7C50](v7);

  v8 = *MEMORY[0x1E69E9840];
}

void ___LSServer_PerformOpenOperation_block_invoke_81(uint64_t a1)
{
  v147[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v112 = v2 != 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = [v5 objectForKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadURL()];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqual:v4])
    {
      v115 = [v5 mutableCopy];
      [v115 removeObjectForKey:getFBSOpenApplicationOptionKeyPayloadURL()];

      v8 = 0;
      v117 = 1;
      goto LABEL_9;
    }

    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_1();
    }

    *&v139 = *MEMORY[0x1E696A278];
    *buf = @"FBSOpenApplicationOptionKeyPayloadURL did not match input URL, making the open request ambiguous";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v139 count:1];
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSOpenOperationMassageOpenOptionsOrFail", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 231);
    v11 = v8;

    v117 = 0;
  }

  else
  {
    v8 = 0;
    v117 = 1;
  }

  v115 = v5;
LABEL_9:

  v12 = v8;
  v13 = v12;
  if (!v117)
  {
    v20 = v12;
    goto LABEL_86;
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v108 = *(a1 + 136);
  v16 = *(a1 + 56);
  v17 = v15;
  v111 = v14;
  v18 = v16;
  v116 = v17;
  v19 = v2;
  v113 = v13;
  v114 = v18;
  if (v18)
  {
    [v18 auditToken];
  }

  else
  {
    v145 = 0u;
    v146 = 0u;
  }

  v21 = [LSBundleRecord bundleRecordForAuditToken:&v145 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  v22 = v21;
  v23 = [v22 extensionPointRecord];
  v24 = [v23 identifier];
  if (![v24 isEqualToString:@"com.apple.keyboard-service"])
  {

LABEL_41:
LABEL_42:

    goto LABEL_43;
  }

  v25 = v18;
  if (v18)
  {
    v26 = v25;
    [v25 auditToken];
  }

  else
  {
    v26 = v25;
    v145 = 0u;
    v146 = 0u;
  }

  v27 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:2];
  v28 = v27;
  v29 = [v27 UTF8String];
  v30 = *MEMORY[0x1E69E9BD0];
  v100 = v29;
  v31 = sandbox_check_by_audit_token();

  if (v31 != 1)
  {
    goto LABEL_41;
  }

  v104 = v19 == 0;
  if (v19)
  {
    v32 = _LSOpenLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_2(v144, [v26 processIdentifier]);
    }
  }

  v33 = [v116 scheme];
  v34 = [v33 caseInsensitiveCompare:@"file"] == 0;

  if (v34)
  {
    v35 = _LSOpenLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_3(v143, [v26 processIdentifier]);
    }

    v104 = 0;
  }

  v36 = [LSClaimBinding claimBindingsWithURL:v116 error:0];
  v106 = v26;
  if (![v36 count])
  {
    v102 = v36;
    v93 = _LSOpenLog();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = [v26 processIdentifier];
      v95 = [v116 scheme];
      ___LSServer_PerformOpenOperation_block_invoke_81_cold_5(v95, &v145, v94);
    }

LABEL_115:

LABEL_116:
    v49 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "_LSIsRequestAllowed", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 835);
    v99 = v49;

    v47 = 0;
    v48 = v19;
    goto LABEL_82;
  }

  if ([v36 count])
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v102 = v36;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v139 objects:buf count:16];
    if (v38)
    {
      v39 = *v140;
      obj = v37;
      while (2)
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v140 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v139 + 1) + 8 * i);
          v42 = [v41 bundleRecord];
          if ([v42 developerType] != 1)
          {

LABEL_112:
            v96 = _LSOpenLog();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              v97 = [v106 processIdentifier];
              v98 = [v116 scheme];
              ___LSServer_PerformOpenOperation_block_invoke_81_cold_4(v98, &v145, v97);
            }

            v93 = obj;
            goto LABEL_115;
          }

          v43 = [v41 bundleRecord];
          v44 = _LSBundleIdentifierIsPlatformWebBrowser([v43 bundleIdentifier]) == 0;

          if (!v44)
          {
            goto LABEL_112;
          }
        }

        v37 = obj;
        v38 = [obj countByEnumeratingWithState:&v139 objects:buf count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
  }

  if (!v104)
  {
    goto LABEL_116;
  }

LABEL_43:
  if ([v116 isFileURL])
  {
    v45 = [v111 objectForKey:@"LSOneTapOpenBehaviorKey"];
    if (v45 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v46 = [v45 BOOLValue];
    }

    else
    {
      v46 = 0;
    }

    v103 = v114;
    v50 = v116;
    v51 = *(a1 + 120);
    *buf = *(a1 + 104);
    v134 = v51;
    v105 = v50;
    v52 = [v50 path];
    obja = [v52 lastPathComponent];

    v107 = [LSDocumentProxy documentProxyForURL:v105 isContentManaged:v108 sourceAuditToken:buf];
    if ((v46 & ([v19 length] == 0)) != 0)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    *&v139 = 0;
    v101 = v53;
    v54 = [v107 applicationsAvailableForOpeningWithStyle:? limit:? XPCConnection:? error:?];
    v55 = v139;
    if ([v19 length] && (objc_msgSend(v103, "_xpcConnection"), v56 = objc_claimAutoreleasedReturnValue(), v57 = _LSXPCConnectionMayMapDatabase(v56) == 0, v56, v57))
    {

      v147[0] = *MEMORY[0x1E696A278];
      v61 = @"com.apple.private.coreservices.canmaplsdatabase";
      if (!@"com.apple.private.coreservices.canmaplsdatabase")
      {
        v61 = @"unknown entitlement";
      }

      *&v145 = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:v147 count:1];
      v63 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v62, "_LSIsDocumentOpenRequestValid", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 882);

      v58 = 0;
      v54 = 0;
      v48 = v19;
      v55 = v63;
    }

    else
    {
      if (v19 && [v19 length])
      {
        [LSApplicationProxy applicationProxyForIdentifier:v19];
        v58 = v48 = v19;
        if (!v54)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (!v54 || ![v54 count])
        {
          v58 = 0;
          v48 = v19;
          goto LABEL_68;
        }

        v59 = [v54 objectAtIndex:0];
        v48 = [v59 bundleIdentifier];
        v60 = v48;
        v58 = v59;
      }

      if (v58 && ([v54 containsObject:v58] & 1) != 0)
      {
        goto LABEL_120;
      }
    }

LABEL_68:
    v64 = [obja pathExtension];
    v65 = v64;
    if (v64 && ([v64 isEqualToString:@"zip"] & 1) != 0)
    {
      v66 = [obja stringByDeletingPathExtension];
      v67 = [v66 pathExtension];
      v68 = [v67 length] == 0;

      if (!v68)
      {
        v69 = v66;

        obja = v69;
        v70 = [LSDocumentProxy documentProxyForName:v69 type:0 MIMEType:0 isContentManaged:v108 sourceAuditToken:buf];

        v132 = v55;
        v107 = v70;
        v71 = [v70 applicationsAvailableForOpeningWithStyle:v101 limit:-1 XPCConnection:0 error:&v132];
        v72 = v132;

        v54 = v71;
        v55 = v72;
        if (v58 || !v71)
        {
          if (!v71)
          {
LABEL_121:
            v66 = obja;
            goto LABEL_76;
          }
        }

        else if ([v71 count])
        {
          v73 = [v71 objectAtIndex:0];
          v48 = [v73 bundleIdentifier];
          v74 = v48;
          v58 = v73;
        }

        else
        {
          v58 = 0;
        }

        if ([v54 containsObject:v58])
        {

LABEL_120:
          v47 = 1;
          v49 = v113;
LABEL_81:

          goto LABEL_82;
        }

        goto LABEL_121;
      }
    }

    else
    {
      v66 = 0;
    }

LABEL_76:

    if (v55)
    {
      v75 = v55;
      v49 = v55;
    }

    else
    {
      v76 = *MEMORY[0x1E696A768];
      v49 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSIsDocumentOpenRequestValid", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 939);
      v77 = v49;
      if (!v49)
      {
        v49 = _LSMakeNSErrorImpl(v76, -10814, 0, "_LSIsDocumentOpenRequestValid", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 947);
      }
    }

    v78 = v49;
    v47 = 0;
    v55 = v49;
    goto LABEL_81;
  }

  v47 = 1;
  v48 = v19;
  v49 = v113;
LABEL_82:

  v79 = v48;
  v20 = v49;

  if (v47)
  {
    v80 = *(a1 + 40);
    v81 = *(a1 + 56);
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3321888768;
    v119 = ___LSServer_PerformOpenOperation_block_invoke_2;
    v120 = &unk_1EEF63A88;
    v128 = *(a1 + 96);
    v121 = *(a1 + 40);
    v122 = *(a1 + 64);
    v2 = v79;
    v123 = v2;
    v131 = v112;
    v124 = *(a1 + 72);
    v125 = *(a1 + 80);
    v129 = v115;
    v130 = 1;
    v126 = *(a1 + 88);
    v127 = *(a1 + 56);
    v82 = v80;
    v83 = v129;
    v84 = v81;
    v85 = v118;
    v86 = v85;
    if (v2)
    {
      v119(v85, 0);
LABEL_99:

      if (v130 == 1)
      {
      }

LABEL_102:
      goto LABEL_103;
    }

    v88 = objc_opt_class();
    v89 = [v83 objectForKey:@"NoOverrides"];
    v90 = v89;
    if (v88 && v89)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v90 = 0;
        goto LABEL_97;
      }
    }

    else if (!v89)
    {
      goto LABEL_97;
    }

    if ([v90 BOOLValue])
    {
      v119(v86, 0);
LABEL_98:

      goto LABEL_99;
    }

LABEL_97:
    v91 = +[LSAppLink _dispatchQueue];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&v134 = ___ZL19_LSTryUniversalLinkP5NSURLP8NSStringP12NSDictionaryIS2_P11objc_objectEP15NSXPCConnectionU13block_pointerFvbE_block_invoke;
    *(&v134 + 1) = &unk_1E6A1D538;
    v135 = v82;
    v136 = v84;
    v137 = v83;
    v138 = v86;
    dispatch_async(v91, buf);

    goto LABEL_98;
  }

  v2 = v79;
LABEL_86:
  v87 = _LSDefaultLog();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v20;
    _os_log_impl(&dword_18162D000, v87, OS_LOG_TYPE_DEFAULT, "Invalid LSOpenOperation request: %{public}@", buf, 0xCu);
  }

  (*(*(a1 + 96) + 16))();
  if (v117)
  {
    goto LABEL_102;
  }

LABEL_103:

  v92 = *MEMORY[0x1E69E9840];
}

void ___LSServer_PerformOpenOperation_block_invoke_2(uint64_t a1, int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      exception_objecta = v67;

      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      _Unwind_Resume(exception_objecta);
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 112);
    v18 = *(a1 + 88);
    v17 = *(a1 + 96);
    v19 = *(a1 + 64);
    v20 = *(a1 + 72);
    v21 = *(a1 + 80);
    v22 = *(a1 + 32);
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v19;
    v27 = v17;
    v28 = v20;
    v29 = v21;
    v30 = v18;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke;
    v82[3] = &unk_1E6A1D470;
    v31 = v22;
    v83 = v31;
    v32 = v23;
    v84 = v32;
    v80 = v24;
    v85 = v80;
    exception_object = v16;
    v92 = v16;
    v78 = v25;
    v86 = v78;
    v33 = v26;
    v87 = v33;
    v34 = v27;
    v88 = v34;
    v35 = v28;
    v89 = v35;
    v36 = v29;
    v90 = v36;
    v37 = v30;
    v91 = v37;
    v38 = MEMORY[0x1865D71B0](v82);
    v39 = [v31 isFileURL] ^ 1;
    if (!v32)
    {
      LOBYTE(v39) = 1;
    }

    if ((v39 & 1) == 0)
    {
      v40 = [v34 objectForKey:@"LSOneTapOpenBehaviorKey"];
      if (v40 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v41 = [v40 BOOLValue];

        if (v41)
        {
          v42 = objc_opt_class();
          v43 = [v34 objectForKey:@"FileProviderString"];
          v44 = v43;
          if (v42 && v43)
          {
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v47 = v43 == 0;

            if (v47)
            {
LABEL_20:
              v74 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v80 allowPlaceholder:0 error:0];
              if (!-[LSApplicationRecord supportsOpenInPlace](v74, "supportsOpenInPlace") || (+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace, "defaultWorkspace"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v48 isApplicationEligibleForReadOnlyDocumentOpenBehavior:v74], v48, !v49))
              {
                v56 = _LSOpenLog();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0]) = 138477827;
                  *(buf + 4) = v80;
                  _os_log_impl(&dword_18162D000, v56, OS_LOG_TYPE_DEFAULT, "target of one-tap open %{private}@ does not support one-tap-open of readonly document", buf, 0xCu);
                }

                v38[2](v38);
                v57 = v74;
                goto LABEL_32;
              }

              v50 = objc_opt_class();
              v51 = [v34 objectForKey:@"LSFPSandboxExtensionKey"];
              v52 = v51;
              if (v50 && v51 && (objc_opt_isKindOfClass() & 1) == 0)
              {

                v52 = 0;
              }

              v72 = v52;
              v53 = v52;
              v54 = [v52 UTF8String];
              if (v54)
              {
                v81 = 0;
                LaunchServices::LSSandboxExtension::consume_shared(v54, &v81, buf);
                v55 = v81;
                v70 = *(&buf[0] + 1);
                if (*&buf[0])
                {
                  v68 = *&buf[0];
                }

                else
                {
                  v58 = _LSOpenLog();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    ___LSServer_PerformOpenOperation_block_invoke_2_cold_1();
                  }

                  v68 = 0;
                }
              }

              else
              {
                v55 = _LSOpenLog();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  ___LSServer_PerformOpenOperation_block_invoke_2_cold_2(v55);
                }

                v68 = 0;
                v70 = 0;
              }

              if (fcntl([v32 fileDescriptor], 50, buf) == -1)
              {
                v61 = __error();
                v62 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v61, 0, "_LSOpenOperationPerform", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 732);
              }

              else
              {
                if (fstat([v32 fileDescriptor], &v93) != -1)
                {
                  v59 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:buf isDirectory:(v93.st_mode & 0xF000) == 0x4000 relativeToURL:0];

                  v31 = v59;
                  v60 = 0;
LABEL_45:
                  if (v60)
                  {
                    tv_sec = _LSOpenLog();
                    if (os_log_type_enabled(tv_sec, OS_LOG_TYPE_ERROR))
                    {
                      ___LSServer_PerformOpenOperation_block_invoke_2_cold_3();
                    }
                  }

                  else
                  {
                    v65 = _LSOpenLog();
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                    {
                      v93.st_dev = 138478083;
                      *&v93.st_mode = v31;
                      WORD2(v93.st_ino) = 2112;
                      *(&v93.st_ino + 6) = v80;
                      _os_log_impl(&dword_18162D000, v65, OS_LOG_TYPE_DEFAULT, "will extend bookmark and get FP string for %{private}@ to %@", &v93, 0x16u);
                    }

                    *&v93.st_dev = MEMORY[0x1E69E9820];
                    v93.st_ino = 3321888768;
                    *&v93.st_uid = ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_116;
                    *&v93.st_rdev = &unk_1EEF63AE0;
                    v93.st_atimespec.tv_sec = v34;
                    v93.st_atimespec.tv_nsec = v31;
                    v93.st_mtimespec.tv_sec = v32;
                    v93.st_mtimespec.tv_nsec = v80;
                    LOBYTE(v93.st_qspare[0]) = exception_object;
                    v93.st_ctimespec.tv_sec = v78;
                    v93.st_ctimespec.tv_nsec = v33;
                    v93.st_birthtimespec.tv_sec = v35;
                    v93.st_birthtimespec.tv_nsec = v36;
                    v93.st_size = v37;
                    v93.st_blocks = v38;
                    *&v93.st_blksize = v68;
                    *&v93.st_gen = v70;
                    if (v70)
                    {
                      atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    FPExtendBookmarkForDocumentURL_delayInitStub(v66);
                    if (*&v93.st_gen)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](*&v93.st_gen);
                    }

                    tv_sec = v93.st_atimespec.tv_sec;
                  }

                  v57 = v74;
                  if (v70)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
                  }

LABEL_32:

                  goto LABEL_18;
                }

                v63 = __error();
                v62 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v63, 0, "_LSOpenOperationPerform", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 729);
              }

              v60 = v62;
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
      }
    }

    v38[2](v38);
LABEL_18:

    v46 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = *(*(a1 + 88) + 16);
  v12 = *MEMORY[0x1E69E9840];

  v11();
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v5 = _LSUnregisterPluginsInDirectory(*(a1 + 32));
  if (v5)
  {
    v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v5, 0, "_LSServer_RefreshContentInFrameworkAtURL_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 467);
    oslog = _LSInstallLog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_1();
    }
  }

  else
  {
    oslog = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v41 = 0;
    v42 = 0;
    inited = _LSContextInitReturningError(&v42, &v41);
    v29 = v41;
    if (inited)
    {
      [(_LSDatabase *)v42 store];
      v7 = *([(_LSDatabase *)v42 schema]+ 1588);
      v35 = MEMORY[0x1E69E9820];
      v36 = 3254779904;
      v37 = ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_2;
      v38 = &unk_1EEF61FE8;
      v40 = v42;
      v39 = oslog;
      _CSStoreEnumerateUnits();
      v8 = _LSExtensionPointUnregisterUnderFrameworkURL(v42, *(v28 + 32));
      if (v8)
      {
        v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "_LSServer_RefreshContentInFrameworkAtURL_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 451);

        v29 = v9;
      }

      v10 = v40;
    }

    else
    {
      v10 = _LSInstallLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_2();
      }
    }

    if (!v29)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = *(v28 + 40);
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v45 count:{16, v26, v27}];
      if (v12)
      {
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            v16 = [v15 objectForKey:@"ApplicationType"];
            if ([v16 isEqualToString:@"Framework"])
            {
              v17 = MEMORY[0x1E695DFF8];
              v18 = v15;
              v19 = [v17 alloc];
              v20 = [v18 objectForKey:@"Path"];

              v21 = [v19 initFileURLWithPath:v20 isDirectory:1];
              v22 = CFBundleCopyInfoDictionaryForURL(v21);
              v23 = v22;
              if (v22)
              {
                v24 = [(__CFDictionary *)v22 objectForKeyedSubscript:@"NSExtensionSDK"];
                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 3221225472;
                v43[2] = ___registerExtensionPointsFromMIFrameworkDictionary_block_invoke;
                v43[3] = &unk_1E6A1A3A0;
                v44 = v21;
                [v24 enumerateKeysAndObjectsUsingBlock:v43];
              }
            }

            else if ([v16 isEqualToString:@"PluginKitPlugin"])
            {
              _registerMIPluginDictionary(v15, oslog);
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v31 objects:v45 count:16];
        }

        while (v12);
      }
    }
  }

  (*(*(v28 + 48) + 16))();
  v25 = *MEMORY[0x1E69E9840];
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 168) & 4) != 0)
  {
    v5 = *(a3 + 176);
    [(_LSDatabase *)*(a1 + 40) store];
    v6 = _CSStringCopyCFString();
    [*(a1 + 32) addObject:v6];
  }
}

void ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v4 assertNotActiveForThisThread];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke_2;
  v8[3] = &unk_1E6A195B8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v7 = v3;
  [(LSRebuildStatisticsGatherer *)v6 performCryptexContentScan:v8];
}

void ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke_2(uint64_t a1)
{
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "calling into InstalledContentLibrary to register cryptex content", v3, 2u);
  }

  _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2;
  v5[3] = &unk_1E6A1A168;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [LSDatabaseRebuildContext withStatsGatherer:v3 runWithRebuildContext:v5];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v4 assertNotActiveForThisThread];

  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "calling into InstalledContentLibrary to register all content", buf, 2u);
  }

  *buf = 0;
  v40[0] = buf;
  v40[1] = 0x2020000000;
  v41 = 1;
  v6 = *(a1 + 32);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943;
  v36[3] = &unk_1E6A195B8;
  v38 = buf;
  v7 = v3;
  v37 = v7;
  [(LSRebuildStatisticsGatherer *)v6 performSystemContentScan:v36];
  v8 = _LSInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "finished enumerating system content.", v32, 2u);
  }

  *v32 = 0;
  v33 = v32;
  v34 = 0x2020000000;
  v35 = 0;
  v9 = *(a1 + 32);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947;
  v31[3] = &unk_1E6A19988;
  v31[4] = v32;
  [(LSRebuildStatisticsGatherer *)v9 performSystemContentSave:v31];
  v10 = *(a1 + 32);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_949;
  v29[3] = &unk_1E6A195E0;
  v11 = v7;
  v30 = v11;
  [(LSRebuildStatisticsGatherer *)v10 performCryptexContentScan:v29];
  v12 = _LSInstallLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Performing upcall to register containerized content.", v25, 2u);
  }

  *v25 = 0;
  v26 = v25;
  v27 = 0x2020000000;
  v28 = 1;
  v13 = _LSInstallLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "finished enumerating system content. Performing upcall to register containerized content", v24, 2u);
  }

  v14 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_950;
  v21[3] = &unk_1E6A195B8;
  v23 = v25;
  v15 = v11;
  v22 = v15;
  [(LSRebuildStatisticsGatherer *)v14 performContainerizedContentScan:v21];
  v16 = [(LSDatabaseRebuildContext *)v15 finishAndArmSaveTimer];
  v17 = v16;
  if (v26[24] == 1 && (*(v40[0] + 24) & 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    if (v16)
    {
      v19 = _LSInstallLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_1();
      }
    }

    v20 = _LSInstallLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_2(v40);
    }

    v18 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v18;

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(buf, 8);
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_945;
  v7[3] = &unk_1E6A1A190;
  v8 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 enumerateBuiltInSystemContentWithBlock:v7 error:&v6];
  v4 = v6;
  *(*(*(a1 + 40) + 8) + 24) = v3;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = _LSInstallLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943_cold_1();
    }

    [(LSDatabaseRebuildContext *)*(a1 + 32) noteRebuildError:v4];
  }
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = __Block_byref_object_copy__4;
  v9[3] = __Block_byref_object_dispose__4;
  v10 = 0;
  v2 = _LSServer_DatabaseExecutionContext();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_948;
  v7[3] = &unk_1E6A1A1B8;
  v3 = *(a1 + 32);
  v7[4] = &v8;
  v7[5] = v3;
  [(LSDBExecutionContext *)v2 syncRead:v7];

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = _LSInstallLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [__LSDefaultsGetSharedInstance() systemContentDatabaseStoreFileURL];
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Saved system content database to %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = _LSInstallLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947_cold_1(v9);
    }
  }

  _Block_object_dispose(&v8, 8);
  v6 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  obj = *(v7 + 40);
  v13 = 0;
  inited = _LSContextInitReturningError(&v13, &obj);
  objc_storeStrong((v7 + 40), obj);
  if (inited)
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = *(v9 + 40);
    v10 = _LSDatabaseSaveSystemContentDatabase(v13, &v11);
    objc_storeStrong((v9 + 40), v11);
    *(*(*(a1 + 40) + 8) + 24) = v10;
  }
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_950(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [objc_alloc(MEMORY[0x1E69A8D50]) initWithTargetUID:_CFGetEUID()];
  v4 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_952;
  v7[3] = &unk_1E6A1A1E0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = v2;
  v6 = v2;
  [v4 triggerRegistrationForContainerizedContentWithOptions:v3 completion:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_952(uint64_t a1, void *a2)
{
  if (a2)
  {
    ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_952_cold_1(a1, a2);
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void ___LSServer_RebuildApplicationDatabases_block_invoke(uint64_t a1)
{
  v2 = _LSDatabaseGetSeedingGroup();
  dispatch_group_enter(v2);

  v3 = _LSServer_CopyLocalDatabase(0);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(a1 + 56) || (v6 = *(*(*(a1 + 40) + 8) + 40)) == 0 || ([(_LSDatabase *)v6 isSeeded]& 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___LSServer_RebuildApplicationDatabases_block_invoke_2;
    v12[3] = &unk_1E6A1A230;
    v13 = *(a1 + 32);
    enumeratePlaceholderAndInstalledApplicationRecords(v12);
    v7 = +[_LSInstallProgressService sharedInstance];
    v8 = allAppexRecords();
    [v7 detachAndSendNotification:@"com.apple.LaunchServices.pluginswillberemoved" forApplicationExtensionRecords:v8];

    _LSResetServer();
    v9 = _LSServer_CopyLocalDatabase(0);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    _LSDatabaseSessionSetSeedingInProgress(1);
    _LSDatabaseSessionSetSeedingDueToManualRebuild(*(a1 + 57) != 0);
  }
}

void ___LSServer_RebuildApplicationDatabases_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 compatibilityObject];
  v3 = [_LSBundleIdentifierAndType createRepresentingProxy:?];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void ___LSServer_RebuildApplicationDatabases_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v35 = a3;
  _LSDatabaseSessionSetSeedingDueToManualRebuild(0);
  _LSDatabaseSessionSetSeedingInProgress(0);
  [(_LSDatabase *)*(*(*(a1 + 72) + 8) + 40) setSeeded:?];
  [(_LSDatabase *)*(*(*(a1 + 72) + 8) + 40) setSeedingComplete:?];
  _LSSaveImmediately(1);
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = +[_LSInstallProgressService sharedInstance];
  v7 = allAppexRecords();
  [v6 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v7];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = ___LSServer_RebuildApplicationDatabases_block_invoke_4;
  v49[3] = &unk_1E6A1A280;
  v8 = v5;
  v50 = v8;
  v51 = *(a1 + 32);
  v52 = *(a1 + 40);
  v53 = *(a1 + 48);
  enumeratePlaceholderAndInstalledApplicationRecords(v49);
  if ([*(a1 + 40) count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        v13 = 0;
        do
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v45 + 1) + 8 * v13++) plugInKitPlugins];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v11);
    }

    v15 = +[_LSInstallProgressService sharedInstance];
    [v15 sendNotification:7 forAppProxies:*(a1 + 40) Plugins:0 completion:0];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = *(a1 + 32);
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      v20 = 0;
      do
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v41 + 1) + 8 * v20);
        if (v21 && ([v8 containsObject:*(*(&v41 + 1) + 8 * v20)] & 1) == 0)
        {
          v22 = [*(a1 + 32) objectForKey:v21];
          [*(a1 + 56) addObject:v22];
          v23 = *(a1 + 64);
          v24 = [v22 bundleIdentifier];
          [v23 addObject:v24];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v18);
  }

  if ([*(a1 + 56) count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = *(a1 + 56);
    v26 = [v25 countByEnumeratingWithState:&v37 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        v29 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v37 + 1) + 8 * v29++) plugInKitPlugins];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v37 objects:v54 count:16];
      }

      while (v27);
    }

    v31 = +[_LSInstallProgressService sharedInstance];
    [v31 sendNotification:8 forAppProxies:*(a1 + 56) Plugins:0 completion:0];
  }

  objc_autoreleasePoolPop(context);
  v32 = +[_LSInstallProgressService sharedInstance];
  [v32 sendDatabaseRebuiltNotification];

  v33 = *MEMORY[0x1E69E9840];
}

void ___LSServer_RebuildApplicationDatabases_block_invoke_4(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [_LSBundleIdentifierAndType createRepresentingRecord:v3];
  [*(a1 + 32) addObject:v4];
  v5 = [*(a1 + 40) objectForKey:v4];
  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v8 = *(a1 + 48);
    v9 = [v3 compatibilityObject];
    [v8 addObject:v9];

    v10 = *(a1 + 56);
    v11 = [v3 bundleIdentifier];
    [v10 addObject:v11];

    goto LABEL_6;
  }

  v7 = [v5 bundleModTime];
  if (v7 != [v3 _bundleModTime])
  {
    if ([v3 isPlaceholder] && (objc_msgSend(v6, "isPlaceholder") & 1) == 0)
    {
      v13 = +[_LSInstallProgressService sharedInstance];
      v14 = [v3 compatibilityObject];
      v16[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v13 sendNotification:1 forAppProxies:v15 Plugins:0 completion:0];

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
}

void ___LSServer_SyncWithMobileInstallation_block_invoke(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v21 = [MEMORY[0x1E695DFA8] set];
  v3 = [__LSDefaultsGetSharedInstance() dbRecoveryFileURL];
  _LSDatabaseCreateRecoveryFile(v3);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Will begin MobileInstallation item enumeration now", buf, 2u);
  }

  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    MobileInstallationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    if (!MobileInstallationLibrary_frameworkLibrary)
    {
      v10 = _LSInstallLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_SyncWithMobileInstallation_block_invoke_cold_1();
      }

      v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 78, 0, "_LSServer_SyncWithMobileInstallation_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 6529);
      if (v6)
      {
        v7 = 0;
        goto LABEL_7;
      }
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_2;
  v13[3] = &unk_1E6A1A348;
  v14[1] = &v16;
  v14[2] = v20;
  v14[0] = *(a1 + 32);
  v1 = v14;
  v5 = softLinkMobileInstallationEnumerateAllInstalledItemDictionaries(0, v13);
  if (v5)
  {
    v6 = v5;
    v7 = 1;
LABEL_7:
    *(v17 + 24) = 0;
    goto LABEL_11;
  }

  if (*(v17 + 24))
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_5;
    v12[3] = &unk_1E6A1A320;
    v12[4] = v20;
    [(LSDBExecutionContext *)v8 syncWrite:v12];
  }

  v6 = 0;
  v7 = 1;
LABEL_11:
  v9 = _LSServer_DatabaseExecutionContext();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_6;
  v11[3] = &unk_1E6A1A320;
  v11[4] = &v16;
  [(LSDBExecutionContext *)v9 syncWrite:v11];

  _LSDatabaseClearSyncInterrupted();
  MEMORY[0x1865D7C50]();
  atomic_fetch_and(&sMISyncFlag, 0x7Fu);
  if (v7)
  {
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  v7 = [v5 objectForKey:@"ApplicationType"];
  v8 = [v5 objectForKey:*MEMORY[0x1E695E4F0]];
  if (([v7 isEqualToString:@"User"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"System") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"VPNPlugin"))
  {
    v37 = v6;
    v9 = [v5 objectForKey:@"IsPlaceholder"];
    v10 = [v9 BOOLValue];

    v11 = *(*(a1[6] + 8) + 40);
    v12 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v8 isPlaceholder:v10];
    [v11 addObject:v12];

    v13 = objc_alloc(MEMORY[0x1E695DFF8]);
    v14 = [v5 objectForKey:@"Path"];
    v15 = [v13 initFileURLWithPath:v14 isDirectory:1];

    v16 = [v5 objectForKey:@"ParallelPlaceholderPath"];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v16 isDirectory:1];
    }

    else
    {
      v17 = 0;
    }

    v18 = a1[4];
    if (v18)
    {
      if (v15)
      {
        (*(v18 + 16))(v18, v15);
      }

      if (v17)
      {
        (*(a1[4] + 16))();
      }
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1015;
    v62 = __Block_byref_object_dispose__1016;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__1015;
    v56 = __Block_byref_object_dispose__1016;
    v57 = 0;
    v19 = _LSServer_DatabaseExecutionContext();
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_1017;
    v45[3] = &unk_1E6A1A2D0;
    v46 = v5;
    v49 = &v58;
    v20 = v15;
    v47 = v20;
    v21 = v17;
    v22 = a1[6];
    v48 = v21;
    v50 = v22;
    v51 = &v52;
    [(LSDBExecutionContext *)v19 syncRead:v45];

    if (v59[5] || v53[5])
    {
      v23 = _LSServer_DatabaseExecutionContext();
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_2_1018;
      v44[3] = &unk_1E6A1A1B8;
      v44[4] = &v58;
      v44[5] = &v52;
      [(LSDBExecutionContext *)v23 syncWrite:v44];
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v58, 8);

    v6 = v37;
  }

  else if (([v7 isEqualToString:@"CoreServices"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"Internal"))
  {
    v24 = *(*(a1[6] + 8) + 40);
    v25 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v8 isPlaceholder:0];
    [v24 addObject:v25];

    v26 = objc_alloc(MEMORY[0x1E695DFF8]);
    v27 = [v5 objectForKey:@"Path"];
    v28 = [v26 initFileURLWithPath:v27 isDirectory:1];

    v29 = a1[4];
    if (v29 && v28)
    {
      (*(v29 + 16))(v29, v28);
    }
  }

  else if ([v7 isEqualToString:@"PluginKitPlugin"])
  {
    v30 = objc_alloc(MEMORY[0x1E695DFF8]);
    v31 = [v5 objectForKey:@"Path"];
    v32 = [v30 initFileURLWithPath:v31 isDirectory:1];

    v33 = a1[4];
    if (v33 && v32)
    {
      (*(v33 + 16))(v33, v32);
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1015;
    v62 = __Block_byref_object_dispose__1016;
    v63 = 0;
    v34 = _LSServer_DatabaseExecutionContext();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_3;
    v39[3] = &unk_1E6A1A2F8;
    v43 = &v58;
    v40 = v8;
    v35 = v32;
    v41 = v35;
    v42 = v5;
    [(LSDBExecutionContext *)v34 syncRead:v39];

    if (v59[5])
    {
      v36 = _LSServer_DatabaseExecutionContext();
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___LSServer_SyncWithMobileInstallation_block_invoke_4;
      v38[3] = &unk_1E6A1A320;
      v38[4] = &v58;
      [(LSDBExecutionContext *)v36 syncWrite:v38];
    }

    _Block_object_dispose(&v58, 8);
  }
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_1017(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  if (!_LSContextInit(&v19))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) objectForKey:*MEMORY[0x1E695E4F0]];
    v9 = _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged(&v19, v8, *(a1 + 40), *(a1 + 32));
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(a1 + 48))
    {
      v12 = *(*(*(a1 + 64) + 8) + 40);
      v13 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v8 isPlaceholder:1];
      [v12 addObject:v13];

      v14 = [*(a1 + 32) mutableCopy];
      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
      v15 = [*(a1 + 48) path];
      [v14 setObject:v15 forKeyedSubscript:@"Path"];

      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsParallelPlaceholder"];
      v16 = _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged(&v19, v8, *(a1 + 48), v14);
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    objc_autoreleasePoolPop(v7);
    _LSContextDestroy(&v19);
  }
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_2_1018(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v27 = 0;
  if (!_LSContextInit(&v27))
  {
    context = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Checking if %@ needs to be registered at %@", buf, 0x16u);
    }

    v29 = 0;
    v13 = [[FSNode alloc] initWithURL:v10 flags:0 error:0];
    if (v13)
    {
      v14 = _LSPluginFindWithInfo(v27, 0, 0, 0, v13, &v29, 0);
      if (v14)
      {
        *buf = 0;
        v28 = 0;
        v15 = [(FSNode *)v13 getContentModificationDate:buf error:&v28, context];
        v16 = v28;
        if (v15)
        {
          if (*(v14 + 24) >= *buf)
          {
            v21 = 0;
LABEL_20:
            v22 = MEMORY[0x1865D71B0](v21);

            v23 = *(*(a1 + 56) + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            objc_autoreleasePoolPop(context);
            _LSContextDestroy(&v27);
            goto LABEL_21;
          }

          v17 = @"stale";
LABEL_17:
          v20 = _LSDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            *&buf[22] = 2112;
            v31 = v17;
            _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Registering %@ (%@) because its record is %@", buf, 0x20u);
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke;
          v31 = &unk_1E6A1A3C8;
          v32 = v10;
          v33 = v9;
          v34 = v11;
          v21 = MEMORY[0x1865D71B0](buf);

          goto LABEL_20;
        }

        v19 = _LSDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_1();
        }

LABEL_16:
        v17 = @"missing";
        goto LABEL_17;
      }
    }

    else
    {
      v18 = _LSDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_2();
      }
    }

    v16 = 0;
    goto LABEL_16;
  }

LABEL_21:

  v25 = *MEMORY[0x1E69E9840];
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v34 = a3;
  v35 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x1E695DF70] array];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3812000000;
  v52 = __Block_byref_object_copy__1197;
  v53 = __Block_byref_object_dispose__1198;
  v54 = 256;
  v55 = 0;
  if (!_LSContextInit(&v55))
  {
    [(_LSDatabase *)v50[6] store];
    v6 = *([(_LSDatabase *)v50[6] schema]+ 4);
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___uninstallMIBundlesNotInSet_block_invoke;
    v45 = &unk_1E6A1A4D0;
    v48 = &v49;
    v46 = v35;
    v47 = v5;
    _CSStoreEnumerateUnits();
    _LSContextDestroy(v50 + 6);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v61 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      v13 = 0;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
        v37 = 0;
        if (v14)
        {
          v15 = *(v14 + 24);
          v16 = *(v14 + 16);
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }
        }

        else
        {
          v16 = 0;
          v17 = 2;
        }

        v18 = _LSUnregisterAppWithBundleID(0, v16, v17, &v37, v7, v8, v9, v10) == 0;

        if (v18)
        {
          v19 = _LSDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            if (v14)
            {
              v23 = *(v14 + 16);
              v24 = v23;
              if (*(v14 + 24))
              {
                v25 = @" (placeholder)";
              }

              else
              {
                v25 = &stru_1EEF65710;
              }
            }

            else
            {
              v24 = 0;
              v25 = &stru_1EEF65710;
            }

            *buf = 138412546;
            v58 = v24;
            v59 = 2112;
            v60 = v25;
            _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Unregistered %@%@", buf, 0x16u);
          }
        }

        else
        {
          v19 = _LSDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if (v14)
            {
              v20 = *(v14 + 16);
              v21 = v20;
              if (*(v14 + 24))
              {
                v22 = @" (placeholder)";
              }

              else
              {
                v22 = &stru_1EEF65710;
              }
            }

            else
            {
              v21 = 0;
              v22 = &stru_1EEF65710;
            }

            *buf = 138412546;
            v58 = v21;
            v59 = 2112;
            v60 = v22;
            _os_log_error_impl(&dword_18162D000, v19, OS_LOG_TYPE_ERROR, "Failed to unregister %@%@", buf, 0x16u);
          }
        }

        v26 = +[_LSInstallProgressService sharedInstance];
        if (v14)
        {
          v27 = *(v14 + 8);
        }

        else
        {
          v27 = 0;
        }

        v28 = v37;
        v29 = v27;
        v56 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
        [v26 sendNotification:v28 forAppProxies:v30 Plugins:0 completion:0];

        ++v13;
      }

      while (v11 != v13);
      v31 = [obj countByEnumeratingWithState:&v38 objects:v61 count:16];
      v11 = v31;
    }

    while (v31);
  }

  _Block_object_dispose(&v49, 8);
  v32 = *MEMORY[0x1E69E9840];
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "MobileInstallation reported PartialResultsReturned = YES, setting incomplete seed flag", buf, 2u);
    }

    v9 = 0;
    if (!_LSContextInit(&v9))
    {
      [(_LSDatabase *)v9 setSeedingComplete:?];
    }
  }

  _LSSaveImmediately(1);
  v8 = [__LSDefaultsGetSharedInstance() dbRecoveryFileURL];
  _LSDatabaseDeleteRecoveryFile(v8);
}

void ___LSServer_ExecuteSyncWithQuiescedInstallationActivity_block_invoke(uint64_t a1)
{
  v2 = _LSDatabaseGetInstallingGroup();
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v3);
}

void ___LSServer_DisplayRemovedAppPrompt_block_invoke(uint64_t a1, int a2, void *a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 88);
    v9 = *(*(*(a1 + 80) + 8) + 24);
    v10 = *(a1 + 32);
    v11 = v6;
    v12 = v7;
    v70 = v11;
    v71 = v12;
    if (v8)
    {
      responseFlags = *MEMORY[0x1E695EE58];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v8 + 16)];
      v14 = _LSGetAppRemovalPromptStringForKey(&cfstr_ApplicationNot.isa, v13);
      *buf = v14;
      v80 = *MEMORY[0x1E695EE60];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v8 + 24)];
      v16 = _LSGetAppRemovalPromptStringForKey(&cfstr_ToDoThisYouNee.isa, v15);
      v17 = *MEMORY[0x1E695EE68];
      *&buf[8] = v16;
      *&buf[16] = MEMORY[0x1E695E110];
      v81 = v17;
      v82 = @"SBUserNotificationDontDismissOnUnlock";
      v84 = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&responseFlags count:4];

      error[0] = -1;
      v19 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, error, v18);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v28 = error[0];
        v75 = *MEMORY[0x1E696A278];
        v77 = @"CFUserNotificationCreate() failed.";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v75 count:1];
        v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A5A0], v28, v29, "_LSCreateVagueRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 235);
        v30 = v20;
      }

      goto LABEL_35;
    }

    v21 = v12;
    v68 = v10;
    v69 = v11;
    v64 = v21;
    v22 = _LSDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v68;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      *&buf[22] = 2048;
      v84 = v9;
      _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "Showing removed app prompt for %@ (%@), restore source %ld", buf, 0x20u);
    }

    v66 = _LSGetAppRemovalPromptStringForKey(&cfstr_Restore_1.isa, &cfstr_AppRemovalProm.isa);
    if (v9 == 1)
    {
      v67 = v64;
      v23 = [v69 isEqual:@"com.apple.AppStore"];
      v24 = v23 == 0;
      if (v23)
      {
        v25 = @"“App Store” was deleted and needs to be restored.";
      }

      else
      {
        v25 = @"“App Store” was deleted and needs to be restored before you can download this app.";
      }

      if (v24)
      {
        v26 = @"APP_REMOVAL_PROMPT_DETAIL_APP_STORE_DELETED";
      }

      else
      {
        v26 = @"APP_REMOVAL_PROMPT_DETAIL_APP_STORE_DELETED_SELF";
      }

      v27 = _LSGetAppRemovalPromptStringForKey(&v25->isa, &v26->isa);
      if (![__LSDefaultsGetSharedInstance() isAppleInternal] || (_os_feature_enabled_impl() & 1) != 0)
      {
        v65 = v27;
        goto LABEL_22;
      }

      v65 = [v27 stringByAppendingString:@"\n\n[Apple Internal Engineering Note]\nFeature flags configuration indicates 135298349 is not complete. Therefore you will be brought to Settings instead of automatically kicking off the restore."];
    }

    else
    {
      v67 = v68;
      v27 = _LSGetAppRemovalPromptStringForKey(&cfstr_ToContinueDown.isa, &cfstr_AppRemovalProm_2.isa);
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:v27, v67, v64];
    }

LABEL_22:
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:v66, v67];
    v32 = *MEMORY[0x1E695EE60];
    responseFlags = *MEMORY[0x1E695EE58];
    v80 = v32;
    *buf = v31;
    *&buf[8] = v65;
    v81 = *MEMORY[0x1E695EE68];
    v82 = @"SBUserNotificationDontDismissOnUnlock";
    *&buf[16] = MEMORY[0x1E695E110];
    v84 = MEMORY[0x1E695E118];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&responseFlags count:4];
    v34 = _LSGetAppRemovalPromptStringForKey(&cfstr_Cancel.isa, &cfstr_CancelButton.isa);
    if (v9 == 1)
    {
      v35 = _LSGetAppRemovalPromptStringForKey(&cfstr_RestoreNow.isa, &cfstr_RestoreAppButt.isa);
      v36 = [v33 mutableCopy];
      v37 = *MEMORY[0x1E695EE70];
      v75 = *MEMORY[0x1E695EE78];
      v76 = v37;
      v77 = v35;
      v78 = v34;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v75 count:2];
      [v36 addEntriesFromDictionary:v38];
    }

    else
    {
      if (v9)
      {
        goto LABEL_27;
      }

      v35 = _LSGetAppRemovalPromptStringForKey(&cfstr_ShowInAppStore.isa, &cfstr_ShowInStoreBut.isa);
      v36 = [v33 mutableCopy];
      v39 = *MEMORY[0x1E695EE70];
      v75 = *MEMORY[0x1E695EE78];
      v76 = v39;
      v77 = v35;
      v78 = v34;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v75 count:2];
      [v36 addEntriesFromDictionary:v38];
    }

    v33 = v36;
LABEL_27:
    v72 = -1;
    v40 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &v72, v33);
    v41 = v40;
    if (v40)
    {
      if (!v72)
      {
        v19 = CFRetain(v40);
        v20 = 0;
        v45 = 0;
        goto LABEL_32;
      }

      CFRelease(v40);
    }

    v42 = v72;
    v73 = *MEMORY[0x1E696A278];
    *error = @"CFUserNotificationCreate() failed.";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:error forKeys:&v73 count:1];
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A5A0], v42, v43, "_LSCreateStandardRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 303);
    v44 = v20;

    v41 = 0;
    v19 = 0;
    v45 = 1;
LABEL_32:

    if ((v45 & 1) == 0)
    {
      CFRelease(v41);
    }

LABEL_35:
    _LSCreateRemovedAppPrompt(NSString *,NSString *,NSString *,LSVagueRemovedAppPromptData const*,LSAppRestoreSource,NSError * {__autoreleasing}*)::result = v19;

    v46 = v20;
    if (!v19)
    {
      (*(*(a1 + 72) + 16))();
LABEL_45:

      goto LABEL_46;
    }

    v47 = *(a1 + 72);
    v48 = *(*(*(a1 + 80) + 8) + 24);
    v49 = *(a1 + 56);
    v50 = v47;
    responseFlags = 0;
    v51 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v51 assertNotActiveForThisThread];

    v52 = CFUserNotificationReceiveResponse(v19, 0.0, &responseFlags);
    if (v52)
    {
      v77 = *MEMORY[0x1E696A278];
      *buf = @"CFUserNotificationReceiveResponse() failed.";
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v77 count:1];
      v54 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A5A0], v52, v53, "_LSDisplayRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 394);
      v50[2](v50, 0, v54);
    }

    else
    {
      if ((responseFlags & 3) != 0)
      {
        v55 = _LSDefaultLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *&buf[4] = v49;
          _os_log_impl(&dword_18162D000, v55, OS_LOG_TYPE_DEFAULT, "User cancelled restoring system app %{private}@", buf, 0xCu);
        }

        v50[2](v50, 1, 0);
        goto LABEL_44;
      }

      if (v48 == 1)
      {
        if (_os_feature_enabled_impl())
        {
          v62 = [MEMORY[0x1E695DFF8] URLWithString:@"appstore-ui://restoreAppStore"];
          v61 = @"com.apple.ios.StoreKitUIService";
        }

        else
        {
          v62 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.AppInstallation/#ADRestoreAppStore"];
          v61 = @"com.apple.Preferences";
        }

        v60 = v62;
      }

      else
      {
        if (v48)
        {
          goto LABEL_44;
        }

        v57 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v57 setScheme:@"itms-apps"];
        [v57 setHost:&stru_1EEF65710];
        v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v59 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleIdentifier" value:v49];
        [v58 addObject:v59];

        [v57 setQueryItems:v58];
        v60 = [v57 URL];

        v61 = @"com.apple.AppStore";
      }

      if (!v60)
      {
        goto LABEL_44;
      }

      v63 = _LSServer_DatabaseExecutionContext();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL26_LSDisplayRemovedAppPromptP20__CFUserNotificationP8NSStringP5NSURL18LSAppRestoreSourceU13block_pointerFvbP7NSErrorE_block_invoke;
      v84 = &unk_1E6A1A740;
      v85 = v61;
      v86 = v60;
      v87 = v50;
      v53 = v60;
      [(LSDBExecutionContext *)v63 syncRead:buf];

      v54 = v85;
    }

LABEL_44:
    CFRelease(v19);
    goto LABEL_45;
  }

  (*(*(a1 + 72) + 16))();
LABEL_46:

  v56 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  if ((*(a3 + 192) & 2) != 0)
  {
    v3 = a2;
    v9 = 0;
    if (_LSBundleCopyNode(**(a1 + 48), a2, 0, 0, &v9))
    {
      v5 = _LSDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ___LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot_block_invoke_cold_1(&v10);
      }

      std::vector<unsigned int>::push_back[abi:nn200100]((*(*(a1 + 40) + 8) + 48), &v10);
    }

    else
    {
      v6 = *(*(a1 + 32) + 8);
      v7 = v6[7];
      if (v7 >= v6[8])
      {
        v8 = std::vector<std::pair<unsigned int,FSNode * {__strong}>>::__emplace_back_slow_path<unsigned int &,FSNode * {__strong}&>(v6 + 6, &v10, &v9);
      }

      else
      {
        *v7 = v3;
        *(v7 + 8) = v9;
        v8 = v7 + 16;
      }

      v6[7] = v8;
    }
  }
}

void ___LSServer_BeginProvidingVisualizationArchives_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.internal.store-visualizations", v2);
  v1 = _LSServer_BeginProvidingVisualizationArchives::visualizationQueue;
  _LSServer_BeginProvidingVisualizationArchives::visualizationQueue = v0;
}

id ___LSServer_BeginProvidingVisualizationArchives_block_invoke_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__52;
  v8 = __Block_byref_object_dispose__53;
  v9 = 0;
  v0 = _LSServer_DatabaseExecutionContext();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___LSServer_BeginProvidingVisualizationArchives_block_invoke_54;
  v3[3] = &unk_1E6A1BB18;
  v3[4] = &v4;
  [(LSDBExecutionContext *)v0 syncRead:v3];

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void ___LSServer_BeginProvidingVisualizationArchives_block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v15, v6, 0);

  if (v7)
  {
    [(_LSDatabase *)*v7 store];
    MutableCopy = CSStoreCreateMutableCopy();
    if (MutableCopy)
    {
      v9 = _LSDatabaseGetNode(*v7);
      SessionKey = _LSDatabaseGetSessionKey(*v7);
      v11 = _LSDatabaseCreateWithAccessContext(v9, SessionKey, MutableCopy, 0, 0);

      if (v11)
      {
        v14 = v11;
        _LSContextCreateVisualizer(&v14);
      }

      CFRelease(MutableCopy);
    }
  }

  if (v15 && v17 == 1)
  {
    _LSContextDestroy(v15);
  }

  v12 = v16;
  v15 = 0;
  v16 = 0;

  v17 = 0;
  v13 = v18;
  v18 = 0;
}

void ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke(uint64_t a1)
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke_cold_1(v2);
  }

  _LSServer_RebuildApplicationDatabases(1, 1, 1, 1, 0);
  v3 = _LSServer_DatabaseExecutionContext();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke_3;
  v4[3] = &unk_1E6A18EB0;
  v5 = *(a1 + 32);
  [(LSDBExecutionContext *)v3 syncWrite:v4];
}

void ___LSServer_OpenApplication_block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _LSOpenLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) processIdentifier];
      v10 = 138412802;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "error opening %@ is being swallowed for pid %d because it cannot map the LS database and provided the launch option FBSOpenApplicationOptionKeyActivateSuspended: %@", &v10, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void ___LSServer_OpenUserActivity_block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 || *(a1 + 40))
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      if (*(a1 + 56))
      {
        v4 = *(a1 + 40);
        v5 = v2;
        v6 = v4;
        v7 = v3;
        if (UIKitLibrary(void)::frameworkLibrary || (UIKitLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2)) != 0)
        {
          if (!(v5 | v6))
          {
            v24 = *MEMORY[0x1E696A278];
            v25[0] = @"invalid input parameters";
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
            v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1513);

            goto LABEL_21;
          }

          v8 = [MEMORY[0x1E695DF90] dictionary];
          v9 = v8;
          if (v8)
          {
            if (v6)
            {
              [v8 setObject:v6 forKeyedSubscript:&unk_1EEF8F020];
            }

            else
            {
              v16 = [v5 UUIDString];
              [v9 setObject:v16 forKeyedSubscript:&unk_1EEF8F038];
            }

            [v9 setObject:v7 forKeyedSubscript:&unk_1EEF8F050];
            [v9 setObject:v7 forKeyedSubscript:&unk_1EEF8F068];
            v17 = [MEMORY[0x1E695DF00] date];
            [v9 setObject:v17 forKeyedSubscript:&unk_1EEF8F080];

            v12 = [objc_alloc(getUIActivityContinuationActionClass()) initWithSettings:v9];
            if (v12)
            {

              v18 = 0;
              v14 = 0;
              goto LABEL_22;
            }

            v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1505);

LABEL_21:
            v19 = v14;

            v12 = 0;
            v18 = 1;
LABEL_22:

            v11 = v14;
            if (v18)
            {
              v20 = *(a1 + 96);
              if (v20)
              {
                (*(v20 + 16))(v20, 0, v11);
              }
            }

            else
            {
              _LSServer_OpenApplicationCommon(*(a1 + 56), v12, *(a1 + 104), *(a1 + 64), *(a1 + 72), *(a1 + 80), 5uLL, *(a1 + 88), *(a1 + 96));
            }

            goto LABEL_26;
          }

          v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1509);
        }

        else
        {
          v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "_LSGetBSActionForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1517);
        }

        v14 = v15;
        goto LABEL_21;
      }
    }
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    v22 = *MEMORY[0x1E696A278];
    v23 = @"invalid input parameters";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "_LSServer_OpenUserActivity_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 349);
    (*(v10 + 16))(v10, 0, v12);
LABEL_26:
  }

  v21 = *MEMORY[0x1E69E9840];
}

void ___LSServer_GetIOQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.registrationIO", v2);
  v1 = _LSServer_GetIOQueue::result;
  _LSServer_GetIOQueue::result = v0;
}

void ___LSServer_GetAsyncWorkQueue_block_invoke()
{
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v0 = dispatch_queue_create("com.apple.lsd.server.asyncwork", v2);
    v1 = _LSServer_GetAsyncWorkQueue::result;
    _LSServer_GetAsyncWorkQueue::result = v0;
  }
}

void ___LSServer_RegisterItemInfo_block_invoke(uint64_t a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  name = [*(a1 + 32) name];
  v3 = [*(a1 + 32) userInfo];
  CFNotificationCenterPostNotification(DistributedCenter, name, 0, v3, 1u);
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_RefreshContentInFrameworkAtURL_block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_2_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v9 = *(v1 + 24) ^ 1;
  v10 = *(*v2 + 24) ^ 1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_943_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke_947_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0(&dword_18162D000, v3, v4, "could not write out system content database! %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_SyncWithMobileInstallation_block_invoke_3_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot_block_invoke_cold_1(unsigned int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&dword_18162D000, v3, OS_LOG_TYPE_ERROR, "couldn't copy node for unit %llx on cryptex, assuming it is gone: %d", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_2(_DWORD *a1, int a2)
{
  *a1 = 67109120;
  a1[1] = a2;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_3(_DWORD *a1, int a2)
{
  *a1 = 67109120;
  a1[1] = a2;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_4(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_2_10(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "pid %d cannot open URL with scheme %@", v4, 0x12u);
}

void ___LSServer_PerformOpenOperation_block_invoke_81_cold_5(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_2_10(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "pid %d cannot open URL with scheme %@ (no claimants)", v4, 0x12u);
}

void ___LSServer_PerformOpenOperation_block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Consuming sandbox extension failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___LSServer_PerformOpenOperation_block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "couldn't canonicalize URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end