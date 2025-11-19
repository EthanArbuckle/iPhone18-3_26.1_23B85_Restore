@interface GCControllerMetaDefaultsObserver
- (GCControllerMetaDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation GCControllerMetaDefaultsObserver

- (GCControllerMetaDefaultsObserver)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = GCControllerMetaDefaultsObserver;
  v2 = [(GCControllerMetaDefaultsObserver *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", &stru_1F4E3B4E0, @"com.apple.gamecontroller.settings", @"meta"];
    v4 = getGCSettingsLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "Initializing user defaults with suite = %@", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v3];
    metaDefaults = v2->_metaDefaults;
    v2->_metaDefaults = v5;

    [(NSUserDefaults *)v2->_metaDefaults addObserver:v2 forKeyPath:@"settingsExist" options:3 context:kGCSettingsContext];
    [(NSUserDefaults *)v2->_metaDefaults addObserver:v2 forKeyPath:@"controllerSettingsExist" options:3 context:kGCSettingsContext];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (kGCSettingsContext == a6)
  {
    v12 = +[GCControllerSettings settingsDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__GCControllerMetaDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E8418C50;
    v15 = v10;
    v16 = v11;
    dispatch_sync(v12, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GCControllerMetaDefaultsObserver;
    [(GCControllerMetaDefaultsObserver *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

void __83__GCControllerMetaDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 == @"settingsExist")
  {
    v39 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v40 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v41 = [MEMORY[0x1E695DFB0] null];
    v42 = [v39 isEqual:v41];

    if (v42)
    {
      v43 = [MEMORY[0x1E695DF20] dictionary];

      v39 = v43;
    }

    v44 = [MEMORY[0x1E695DFB0] null];
    v45 = [v40 isEqual:v44];

    if (v45)
    {
      v46 = [MEMORY[0x1E695DF20] dictionary];

      v40 = v46;
    }

    v11 = [MEMORY[0x1E695DF70] array];
    v47 = [MEMORY[0x1E695DF70] array];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v38 = v40;
    v48 = [v38 countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v102;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v102 != v50)
          {
            objc_enumerationMutation(v38);
          }

          v52 = *(*(&v101 + 1) + 8 * i);
          v53 = [v39 objectForKeyedSubscript:v52];

          if (!v53)
          {
            [v11 addObject:v52];
          }
        }

        v49 = [v38 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v49);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v54 = v39;
    v55 = [v54 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v98;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v98 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v97 + 1) + 8 * j);
          v60 = [v38 objectForKeyedSubscript:v59];

          if (!v60)
          {
            [v47 addObject:v59];
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v97 objects:v110 count:16];
      }

      while (v56);
    }

    v72 = v54;

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v61 = +[GCControllerSettings settingsCustomizedChangedHandlers];
    v62 = [v61 countByEnumeratingWithState:&v93 objects:v109 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v94;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v94 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v93 + 1) + 8 * k);
          v67 = +[GCControllerSettings settingsCustomizedChangedHandlers];
          v68 = [v67 objectForKeyedSubscript:v66];
          (v68)[2](v68, v11, v47);
        }

        v63 = [v61 countByEnumeratingWithState:&v93 objects:v109 count:16];
      }

      while (v63);
    }

    v3 = v72;
    goto LABEL_72;
  }

  if (v2 == @"controllerSettingsExist")
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v3 isEqual:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF20] dictionary];

      v3 = v7;
    }

    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DF20] dictionary];

      v4 = v10;
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v11 = v4;
    v74 = [v11 countByEnumeratingWithState:&v89 objects:v108 count:16];
    if (v74)
    {
      v71 = v3;
      v73 = *v90;
      v70 = v11;
      do
      {
        for (m = 0; m != v74; ++m)
        {
          if (*v90 != v73)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v89 + 1) + 8 * m);
          v14 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (v15)
          {
            v76 = m;
            v16 = [v3 objectForKeyedSubscript:v13];
            v17 = [v11 objectForKeyedSubscript:v13];
            v18 = [MEMORY[0x1E695DF70] array];
            v19 = [MEMORY[0x1E695DF70] array];
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v20 = v17;
            v21 = [v20 countByEnumeratingWithState:&v85 objects:v107 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v86;
              do
              {
                for (n = 0; n != v22; ++n)
                {
                  if (*v86 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v85 + 1) + 8 * n);
                  if (([v16 containsObject:v25] & 1) == 0)
                  {
                    [v18 addObject:v25];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v85 objects:v107 count:16];
              }

              while (v22);
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v26 = v16;
            v27 = [v26 countByEnumeratingWithState:&v81 objects:v106 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v82;
              do
              {
                for (ii = 0; ii != v28; ++ii)
                {
                  if (*v82 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v81 + 1) + 8 * ii);
                  if (([v20 containsObject:v31] & 1) == 0)
                  {
                    [v19 addObject:v31];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v81 objects:v106 count:16];
              }

              while (v28);
            }

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = v15;
            v32 = v15;
            v33 = [v32 countByEnumeratingWithState:&v77 objects:v105 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v78;
              do
              {
                for (jj = 0; jj != v34; ++jj)
                {
                  if (*v78 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = [v32 objectForKeyedSubscript:*(*(&v77 + 1) + 8 * jj)];
                  (v37)[2](v37, v13, v18, v19);
                }

                v34 = [v32 countByEnumeratingWithState:&v77 objects:v105 count:16];
              }

              while (v34);
            }

            v11 = v70;
            v3 = v71;
            v15 = v75;
            m = v76;
          }
        }

        v74 = [v11 countByEnumeratingWithState:&v89 objects:v108 count:16];
      }

      while (v74);
    }

    v38 = v11;
LABEL_72:
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, a2, a3, "Dealloc: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end