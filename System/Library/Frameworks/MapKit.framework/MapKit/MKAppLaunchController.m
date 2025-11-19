@interface MKAppLaunchController
+ (id)sharedController;
+ (void)launchAttributionURLs:(id)a3 withAttribution:(id)a4 usingTarget:(int)a5 completionHandler:(id)a6;
- (void)lookUpAppStoreURLForBundle:(id)a3 usingTarget:(int)a4 completionHandler:(id)a5;
@end

@implementation MKAppLaunchController

- (void)lookUpAppStoreURLForBundle:(id)a3 usingTarget:(int)a4 completionHandler:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    v10 = +[MKAppleMediaServices sharedInstance];
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__MKAppLaunchController_lookUpAppStoreURLForBundle_usingTarget_completionHandler___block_invoke;
    v12[3] = &unk_1E76C81B8;
    v12[4] = self;
    v13 = v9;
    v14 = a4;
    [v10 appleMediaServicesResultsWithBundleIdentifiers:v11 source:1 completion:v12];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

void __82__MKAppLaunchController_lookUpAppStoreURLForBundle_usingTarget_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (!v5)
  {
    v9 = [v18 firstObject];
    v8 = [v9 url];

    goto LABEL_5;
  }

  v6 = [*(a1 + 32) webURL];

  if (v6)
  {
    v7 = [*(a1 + 32) webURL];
    NSLog(&cfstr_Mkapplemediase_0.isa, v5, v7);

    v8 = [*(a1 + 32) webURL];
LABEL_5:
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v8, 0);
    }

    v11 = +[MKSystemController sharedInstance];
    [v11 openURL:v8 completionHandler:0];

    v12 = [v8 host];
    v13 = [v12 length];

    if (v13)
    {
      v14 = +[MKMapService sharedService];
      v15 = *(a1 + 48);
      v16 = [v8 host];
      [v14 captureUserAction:6050 onTarget:v15 eventValue:v16];
    }

    goto LABEL_12;
  }

  NSLog(&cfstr_ErrorLaunching.isa, v5);
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, 0, 0);
  }

  v8 = 0;
LABEL_12:
}

+ (void)launchAttributionURLs:(id)a3 withAttribution:(id)a4 usingTarget:(int)a5 completionHandler:(id)a6
{
  v157 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count])
  {
    v96 = a5;
    v89 = a1;
    v13 = [a1 sharedController];
    [v13 setWebURL:0];
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    obj = v10;
    v99 = v13;
    v100 = v11;
    v101 = [obj countByEnumeratingWithState:&v143 objects:v156 count:16];
    v97 = v10;
    v98 = v12;
    if (v101)
    {
      v104 = 0;
      v14 = *v144;
      v15 = *MEMORY[0x1E69A15E0];
      do
      {
        v16 = 0;
        v17 = v101;
        do
        {
          if (*v144 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v143 + 1) + 8 * v16)];
          v19 = [v18 scheme];
          if (([v19 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v18, "scheme"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"https"), v20, v21))
          {
            v22 = [v13 webURL];

            if (!v22)
            {
              [v13 setWebURL:v18];
            }
          }

          else if ([v19 isEqualToString:v15])
          {
            if (!v104)
            {
              v23 = [MEMORY[0x1E6963608] defaultWorkspace];
              v104 = [v23 applicationsAvailableForOpeningURL:v18];
            }

            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v105 = [v11 attributionApps];
            v90 = [v105 countByEnumeratingWithState:&v139 objects:v155 count:16];
            if (v90)
            {
              v24 = *v140;
              v83 = v15;
              v86 = v14;
              v82 = *v140;
              do
              {
                v25 = 0;
                do
                {
                  if (*v140 != v24)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v93 = v25;
                  v26 = [*(*(&v139 + 1) + 8 * v25) appBundleIdentifier];
                  v135 = 0u;
                  v136 = 0u;
                  v137 = 0u;
                  v138 = 0u;
                  v27 = v104;
                  v28 = [v27 countByEnumeratingWithState:&v135 objects:v154 count:16];
                  if (v28)
                  {
                    v29 = v28;
                    v30 = *v136;
                    do
                    {
                      for (i = 0; i != v29; ++i)
                      {
                        if (*v136 != v30)
                        {
                          objc_enumerationMutation(v27);
                        }

                        v32 = [*(*(&v135 + 1) + 8 * i) bundleIdentifier];
                        v33 = [v32 isEqualToString:v26];

                        if (v33)
                        {
                          v12 = v98;
                          if (v98)
                          {
                            v98[2](v98, v18, v26);
                          }

                          v36 = +[MKSystemController sharedInstance];
                          [v36 openURL:v18 bundleIdentifier:v26 completionHandler:0];

                          v37 = +[MKMapService sharedService];
                          v38 = [v18 absoluteString];
                          [v37 captureUserAction:6050 onTarget:v96 eventValue:v38];

                          v104 = v27;
                          v13 = v99;
                          v11 = v100;
LABEL_38:

                          goto LABEL_108;
                        }
                      }

                      v29 = [v27 countByEnumeratingWithState:&v135 objects:v154 count:16];
                    }

                    while (v29);
                  }

                  v25 = v93 + 1;
                  v13 = v99;
                  v11 = v100;
                  v15 = v83;
                  v14 = v86;
                  v17 = v101;
                  v24 = v82;
                }

                while (v93 + 1 != v90);
                v90 = [v105 countByEnumeratingWithState:&v139 objects:v155 count:16];
              }

              while (v90);
            }
          }

          else
          {
            v34 = [MEMORY[0x1E69DC668] sharedApplication];
            v35 = [v34 canOpenURL:v18];

            if (v35)
            {
              v12 = v98;
              if (v98)
              {
                v98[2](v98, v18, 0);
              }

              v80 = +[MKSystemController sharedInstance];
              [v80 openURL:v18 completionHandler:0];

              v81 = +[MKMapService sharedService];
              v26 = [v18 absoluteString];
              v105 = v81;
              [v81 captureUserAction:6050 onTarget:v96 eventValue:v26];
              goto LABEL_38;
            }

            v17 = v101;
          }

          ++v16;
        }

        while (v16 != v17);
        v101 = [obj countByEnumeratingWithState:&v143 objects:v156 count:16];
      }

      while (v101);
    }

    else
    {
      v104 = 0;
    }

    if (GEOConfigGetBOOL() && [v11 shouldOpenInAppStore])
    {
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v39 = obj;
      v40 = [v39 countByEnumeratingWithState:&v131 objects:v153 count:16];
      if (v40)
      {
        v41 = *v132;
        v42 = 0x1E695D000uLL;
        v84 = *v132;
        v87 = v39;
        do
        {
          v43 = 0;
          v91 = v40;
          do
          {
            if (*v132 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v18 = [*(v42 + 4088) URLWithString:*(*(&v131 + 1) + 8 * v43)];
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v19 = [v11 attributionApps];
            v102 = [v19 countByEnumeratingWithState:&v127 objects:v152 count:16];
            if (v102)
            {
              v44 = *v128;
              v94 = *v128;
              do
              {
                for (j = 0; j != v102; ++j)
                {
                  if (*v128 != v44)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v46 = *(*(&v127 + 1) + 8 * j);
                  v123 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v126 = 0u;
                  v105 = [v46 handledSchemes];
                  v47 = [v105 countByEnumeratingWithState:&v123 objects:v151 count:16];
                  if (v47)
                  {
                    v48 = v47;
                    v49 = *v124;
                    do
                    {
                      for (k = 0; k != v48; ++k)
                      {
                        if (*v124 != v49)
                        {
                          objc_enumerationMutation(v105);
                        }

                        v51 = *(*(&v123 + 1) + 8 * k);
                        v52 = [v18 scheme];
                        LODWORD(v51) = [v52 isEqualToString:v51];

                        if (v51)
                        {
LABEL_102:
                          v76 = [v89 sharedController];
                          v77 = [v46 appBundleIdentifier];
                          v12 = v98;
                          [v76 lookUpAppStoreURLForBundle:v77 usingTarget:v96 completionHandler:v98];

                          goto LABEL_107;
                        }
                      }

                      v48 = [v105 countByEnumeratingWithState:&v123 objects:v151 count:16];
                    }

                    while (v48);
                  }

                  v11 = v100;
                  v44 = v94;
                }

                v102 = [v19 countByEnumeratingWithState:&v127 objects:v152 count:16];
              }

              while (v102);
            }

            ++v43;
            v41 = v84;
            v39 = v87;
            v42 = 0x1E695D000;
          }

          while (v43 != v91);
          v40 = [v87 countByEnumeratingWithState:&v131 objects:v153 count:16];
        }

        while (v40);
      }
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v53 = obj;
    v54 = [v53 countByEnumeratingWithState:&v119 objects:v150 count:16];
    if (!v54)
    {
      goto LABEL_74;
    }

    v55 = v54;
    v56 = *v120;
LABEL_67:
    v57 = 0;
    while (1)
    {
      if (*v120 != v56)
      {
        objc_enumerationMutation(v53);
      }

      v18 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v119 + 1) + 8 * v57)];
      v58 = [v18 scheme];
      if ([v58 isEqualToString:@"http"])
      {
        break;
      }

      v59 = [v18 scheme];
      v60 = [v59 isEqualToString:@"https"];

      if (v60)
      {
        goto LABEL_104;
      }

      if (v55 == ++v57)
      {
        v55 = [v53 countByEnumeratingWithState:&v119 objects:v150 count:16];
        if (!v55)
        {
LABEL_74:

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v61 = v53;
          v103 = [v61 countByEnumeratingWithState:&v115 objects:v149 count:16];
          if (!v103)
          {
            v13 = v99;
            v11 = v100;
            v12 = v98;
            goto LABEL_109;
          }

          v62 = *v116;
          v63 = 0x1E695D000uLL;
          v12 = v98;
          v13 = v99;
          while (2)
          {
            v64 = 0;
LABEL_77:
            if (*v116 != v62)
            {
              objc_enumerationMutation(v61);
            }

            v18 = [*(v63 + 4088) URLWithString:*(*(&v115 + 1) + 8 * v64)];
            v19 = [v18 scheme];
            if ([v19 isEqualToString:@"http"])
            {
LABEL_80:
            }

            else
            {
              v65 = [v18 scheme];
              v66 = [v65 isEqualToString:@"https"];

              if ((v66 & 1) == 0)
              {
                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v19 = [v100 attributionApps];
                v95 = [v19 countByEnumeratingWithState:&v111 objects:v148 count:16];
                if (v95)
                {
                  v85 = v62;
                  v88 = v61;
                  v67 = *v112;
                  v92 = *v112;
                  while (2)
                  {
                    v68 = 0;
                    do
                    {
                      if (*v112 != v67)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v46 = *(*(&v111 + 1) + 8 * v68);
                      v107 = 0u;
                      v108 = 0u;
                      v109 = 0u;
                      v110 = 0u;
                      v105 = [v46 handledSchemes];
                      v69 = [v105 countByEnumeratingWithState:&v107 objects:v147 count:16];
                      if (v69)
                      {
                        v70 = v69;
                        v71 = *v108;
LABEL_91:
                        v72 = 0;
                        while (1)
                        {
                          if (*v108 != v71)
                          {
                            objc_enumerationMutation(v105);
                          }

                          v73 = *(*(&v107 + 1) + 8 * v72);
                          v74 = [v18 scheme];
                          LOBYTE(v73) = [v74 isEqualToString:v73];

                          if (v73)
                          {
                            goto LABEL_102;
                          }

                          if (v70 == ++v72)
                          {
                            v70 = [v105 countByEnumeratingWithState:&v107 objects:v147 count:16];
                            if (v70)
                            {
                              goto LABEL_91;
                            }

                            break;
                          }
                        }
                      }

                      ++v68;
                      v67 = v92;
                      v12 = v98;
                      v13 = v99;
                    }

                    while (v68 != v95);
                    v95 = [v19 countByEnumeratingWithState:&v111 objects:v148 count:16];
                    if (v95)
                    {
                      continue;
                    }

                    break;
                  }

                  v62 = v85;
                  v61 = v88;
                  v63 = 0x1E695D000;
                }

                goto LABEL_80;
              }
            }

            if (++v64 == v103)
            {
              v75 = [v61 countByEnumeratingWithState:&v115 objects:v149 count:16];
              v103 = v75;
              if (!v75)
              {
                v11 = v100;
                goto LABEL_109;
              }

              continue;
            }

            goto LABEL_77;
          }
        }

        goto LABEL_67;
      }
    }

LABEL_104:
    v78 = [v89 sharedController];
    [v78 setWebURL:v18];

    v12 = v98;
    if (v98)
    {
      v98[2](v98, v18, 0);
    }

    v79 = +[MKSystemController sharedInstance];
    [v79 openURL:v18 completionHandler:0];

    v19 = +[MKMapService sharedService];
    v105 = [v18 absoluteString];
    [v19 captureUserAction:6050 onTarget:v96 eventValue:?];
LABEL_107:
    v13 = v99;
    v11 = v100;
LABEL_108:

LABEL_109:
    v10 = v97;
  }
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, &__block_literal_global_12146);
  }

  v3 = sharedController_controller;

  return v3;
}

void __41__MKAppLaunchController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(MKAppLaunchController);
  v1 = sharedController_controller;
  sharedController_controller = v0;
}

@end