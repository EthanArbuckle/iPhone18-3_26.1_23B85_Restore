@interface BLSBacklightFBSSceneEnvironmentDiffAction
- (BLSBacklightFBSSceneEnvironmentDiffActionDelegate)delegate;
- (NSObject)sceneUpdateForUpdatedFBSScene:(void *)a3 fromSettings:(void *)a4 transitionContext:(void *)a5 environment:;
- (id)desiredFidelityRequestForUpdatedFBSScene:(uint64_t)a3 fromSettings:(uint64_t)a4 transitionContext:;
- (id)frameSpecifiersRequestForUpdatedFBSScene:(uint64_t)a3 fromSettings:(uint64_t)a4 transitionContext:;
- (void)completeBLSActionsForUpdatedFBSScene:(void *)a3 transitionContext:;
- (void)environmentDiffInspector;
- (void)performActionsForUpdatedFBSScene:(id)a3 settingsDiff:(id)a4 fromSettings:(id)a5 transitionContext:(id)a6;
@end

@implementation BLSBacklightFBSSceneEnvironmentDiffAction

- (void)environmentDiffInspector
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      v4 = objc_alloc_init(BLSBacklightSceneSettingsDiffInspector);
      v5 = v2[1];
      v2[1] = v4;

      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (BLSBacklightFBSSceneEnvironmentDiffActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((a3 & 0x1C) != 0)
  {
    v6 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) sceneUpdateForUpdatedFBSScene:*(a1 + 48) fromSettings:v5 transitionContext:*(a1 + 56) environment:?];
    if (v6)
    {
      v13 = bls_scenes_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke_cold_1((a1 + 56));
      }

      v7 = OS_LOG_TYPE_INFO;
      if (a3)
      {
        goto LABEL_5;
      }

LABEL_11:
      [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) completeBLSActionsForUpdatedFBSScene:v5 transitionContext:?];
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = OS_LOG_TYPE_DEBUG;
  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = bls_scenes_log();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = *(a1 + 56);
    v27 = 134218498;
    v28 = v9;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_21FE25000, v8, v7, "%p updated with sceneUpdate:%{public}@ environment:%{public}@", &v27, 0x20u);
  }

  v10 = [*(a1 + 56) updater];
  [v10 updatedEnvironmentWithDelta:a3 backlightSceneUpdate:v6];

LABEL_12:
  v16 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) desiredFidelityRequestForUpdatedFBSScene:v11 fromSettings:v12 transitionContext:v5];
  if (v16)
  {
    v17 = bls_scenes_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 56);
      v19 = [v18 identifier];
      v27 = 134218498;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_21FE25000, v17, OS_LOG_TYPE_INFO, "%p environment:%{public}@ will perform desiredFidelityRequest:%@", &v27, 0x20u);
    }

    v20 = [*(a1 + 56) updater];
    [v20 performDesiredFidelityRequest:v16];
  }

  v21 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) frameSpecifiersRequestForUpdatedFBSScene:v14 fromSettings:v15 transitionContext:v5];
  if (v21)
  {
    v22 = bls_scenes_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 56);
      v24 = [v23 identifier];
      v27 = 134218498;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_21FE25000, v22, OS_LOG_TYPE_INFO, "%p environment:%{public}@ will perform frameSpecifiersRequest:%@", &v27, 0x20u);
    }

    v25 = [*(a1 + 56) updater];
    [v25 performFrameSpecifiersRequest:v21];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) canSendResponse];
  v4 = bls_scenes_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10_cold_1(a1, v2);
    }

    v6 = *v2;
    v5 = [MEMORY[0x277CF0B68] response];
    [v6 sendResponse:v5];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = [v7 identifier];
    v9 = *(a1 + 32);
    v11 = 134218498;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_21FE25000, v5, OS_LOG_TYPE_INFO, "%p:%{public}@ unable to send response to updateAction:%{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12(uint64_t a1)
{
  v2 = bls_scenes_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12_cold_1(a1);
  }
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_13(uint64_t a1, double a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) canSendResponse];
  v5 = bls_scenes_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = [v12 identifier];
      v14 = *(a1 + 32);
      v15 = 134218754;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = a2;
      v21 = 2114;
      v22 = v14;
      _os_log_debug_impl(&dword_21FE25000, &v6->super.super, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will send duration:%lf response to rampAction:%{public}@", &v15, 0x2Au);
    }

    v7 = *(a1 + 32);
    v6 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:a2];
    [v7 sendResponse:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = [v8 identifier];
    v10 = *(a1 + 32);
    v15 = 134218754;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2048;
    v20 = a2;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_21FE25000, &v6->super.super, OS_LOG_TYPE_INFO, "%p:%{public}@ unable to send duration:%lf response to rampAction:%{public}@", &v15, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) setAnimatingVisualState:0];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [v4 canSendResponse];
  v6 = bls_scenes_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15_cold_1(v2, v3);
    }

    v8 = *v3;
    v7 = [MEMORY[0x277CF0B68] response];
    [v8 sendResponse:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = *v2;
    v10 = [v9 identifier];
    v11 = *v3;
    v13 = 134218498;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_21FE25000, v7, OS_LOG_TYPE_INFO, "%p:%{public}@ unable to send response to animationCompleteAction:%{public}@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)performActionsForUpdatedFBSScene:(id)a3 settingsDiff:(id)a4 fromSettings:(id)a5 transitionContext:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)self environmentDiffInspector];
  v15 = [v14 inspectDiff:v11];
  v16 = [v10 backlightSceneEnvironment];
  v17 = bls_scenes_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v36 = [v16 identifier];
    v23 = BLSBacklightFBSSceneEnvironmentDeltaDescription(v15);
    v33 = MEMORY[0x277CCACA8];
    v35 = v23;
    v31 = [v16 visualState];
    v32 = [v16 presentationDate];
    v30 = [v32 bls_shortLoggingString];
    v34 = [v33 stringWithFormat:@"%@ %@", v31, v30];
    v26 = MEMORY[0x277CCACA8];
    v28 = [v12 bls_visualState];
    v29 = [v12 bls_presentationDate];
    v25 = [v29 bls_shortLoggingString];
    v27 = [v26 stringWithFormat:@"%@ %@", v28, v25];
    [v16 frameSpecifier];
    *buf = 134219522;
    v42 = v16;
    v43 = 2114;
    v44 = v36;
    v45 = 2114;
    v46 = v35;
    v47 = 2114;
    v48 = v11;
    v49 = 2114;
    v50 = v34;
    v51 = 2114;
    v52 = v27;
    v54 = v53 = 2114;
    v24 = v54;
    _os_log_debug_impl(&dword_21FE25000, v17, OS_LOG_TYPE_DEBUG, "%p environment updated:%{public}@\n  delta:%{public}@\n  diff:%{public}@\n  new:%{public}@\n  old:%{public}@\n  new:%{public}@", buf, 0x48u);
  }

  v18 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)self delegate];
  if (!v18)
  {
    v18 = objc_alloc_init(BLSBacklightFBSSceneEnvironmentDiffActionNullDelegate);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke;
  v37[3] = &unk_278428A68;
  v37[4] = self;
  v38 = v10;
  v39 = v12;
  v40 = v16;
  v19 = v16;
  v20 = v12;
  v21 = v10;
  [(BLSBacklightFBSSceneEnvironmentDiffActionNullDelegate *)v18 performChangesWithTransitionContext:v13 environmentDelta:v15 performActionsBlock:v37];

  v22 = *MEMORY[0x277D85DE8];
}

- (NSObject)sceneUpdateForUpdatedFBSScene:(void *)a3 fromSettings:(void *)a4 transitionContext:(void *)a5 environment:
{
  v125 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v96 = a5;
  if (a1)
  {
    v12 = [v9 settings];
    v13 = [v12 bls_visualState];
    if (!v13)
    {
      v24 = bls_scenes_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v96 identifier];
        *buf = 134218242;
        v117 = v96;
        OUTLINED_FUNCTION_5_0();
        v118 = v26;
        _os_log_impl(&dword_21FE25000, v24, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ settings visualState nil", buf, 0x16u);
      }

      v27 = 0;
      goto LABEL_71;
    }

    v91 = v12;
    v92 = v9;
    v93 = v11;
    v94 = v10;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v14 = [v11 actions];
    v15 = [v14 countByEnumeratingWithState:&v112 objects:v124 count:16];
    v95 = v13;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v97 = 0;
      v98 = 0;
      v18 = *v113;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v113 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v112 + 1) + 8 * i);
          objc_opt_class();
          if (OUTLINED_FUNCTION_6())
          {
            v21 = v98;
            v22 = v17;
            v98 = v20;
          }

          else
          {
            objc_opt_class();
            if (OUTLINED_FUNCTION_6())
            {
              v21 = v97;
              v22 = v17;
              v97 = v20;
            }

            else
            {
              objc_opt_class();
              v21 = v17;
              v22 = v20;
              if ((OUTLINED_FUNCTION_6() & 1) == 0)
              {
                continue;
              }
            }
          }

          v23 = v20;

          v17 = v22;
        }

        v16 = [v14 countByEnumeratingWithState:&v112 objects:v124 count:16];
        if (!v16)
        {
          goto LABEL_21;
        }
      }
    }

    v17 = 0;
    v97 = 0;
    v98 = 0;
LABEL_21:

    v28 = v98;
    v29 = [v98 isAnimated];
    v30 = v29;
    v13 = v95;
    v31 = v97;
    if (!v98 && v97 | v17)
    {
      v32 = bls_scenes_log();
      v9 = v92;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v69 = [v93 actions];
        v70 = [v69 bs_map:&__block_literal_global_4];
        *buf = 134218498;
        v117 = v96;
        OUTLINED_FUNCTION_5_0();
        v118 = v71;
        v119 = v72;
        v120 = v73;
        _os_log_error_impl(&dword_21FE25000, v32, OS_LOG_TYPE_ERROR, "%p scene settings change did not contain an update action, but did contain a ramp or animation complete action \nenvironment:%{public}@ \nactions:%{public}@", buf, 0x20u);

        v28 = 0;
      }

      if (v97)
      {
        v33 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:0.0];
        [v97 sendResponse:v33];
      }

      if (v17)
      {
        v34 = [MEMORY[0x277CF0B68] response];
        v35 = v17;
LABEL_39:
        [v35 sendResponse:v34];
        v39 = 0;
LABEL_69:

        goto LABEL_70;
      }

      goto LABEL_48;
    }

    if (v17)
    {
      v36 = 0;
    }

    else
    {
      v36 = v29;
    }

    v9 = v92;
    if (v36 == 1)
    {
      v37 = bls_scenes_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v60 = [v96 identifier];
        v61 = [v93 debugDescription];
        v62 = [v92 debugDescription];
        *buf = 134218754;
        v117 = v96;
        v31 = v97;
        OUTLINED_FUNCTION_5_0();
        *(v63 + 78) = v60;
        v119 = v64;
        v120 = v61;
        v121 = v64;
        *(v63 + 98) = v65;
        _os_log_error_impl(&dword_21FE25000, v37, OS_LOG_TYPE_ERROR, "%p:%{public}@ scene settings change animated but did not contain animationComplete action, transitionContext:%{public}@ scene:%{public}@", buf, 0x2Au);

        v28 = v98;
      }

      if (v28)
      {
        v38 = [MEMORY[0x277CF0B68] response];
        [v28 sendResponse:v38];
      }

      if (v31)
      {
        v34 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:0.0];
        v35 = v31;
        goto LABEL_39;
      }

LABEL_48:
      v39 = 0;
LABEL_70:
      v24 = v39;

      v27 = v24;
      v11 = v93;
      v12 = v91;
LABEL_71:

      goto LABEL_72;
    }

    v40 = [v10 bls_visualState];
    v41 = v96;
    v42 = [v96 frameSpecifier];
    [v42 setGrantedFidelity:{objc_msgSend(v95, "updateFidelity")}];
    v89 = [v98 event];
    v90 = v42;
    if (!v42)
    {
      v43 = [v96 presentationDate];
      if (v43)
      {
        v44 = bls_scenes_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v88 = [v96 identifier];
          v74 = [v43 bls_shortLoggingString];
          [v96 alwaysOnSession];
          objc_claimAutoreleasedReturnValue();
          *buf = 134218754;
          v117 = v96;
          OUTLINED_FUNCTION_5_0();
          *(v75 + 78) = v88;
          v119 = v76;
          v120 = v74;
          v121 = v76;
          *(v75 + 98) = v77;
          v78 = v77;
          _os_log_error_impl(&dword_21FE25000, v44, OS_LOG_TYPE_ERROR, "%p:%{public}@ unexpectedly nil frameSpecifier. presentationDate:%{public}@ alwaysOnSession:%{public}@", buf, 0x2Au);
        }

        v28 = v98;
      }
    }

    if (v28)
    {
      v45 = v109;
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10;
      v109[3] = &unk_278428688;
      v85 = &v110;
      v110 = v28;
      v46 = &v111;
      v47 = v96;
      v84 = &v111;
    }

    else
    {
      v45 = v105;
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12;
      v105[3] = &unk_278428AB0;
      v85 = &v106;
      v106 = v96;
      v84 = &v107;
      v107 = v95;
      v46 = &v108;
      v47 = v90;
    }

    *v46 = v47;
    v87 = MEMORY[0x223D716E0](v45);
    if (v97)
    {
      v48 = v102;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_13;
      v102[3] = &unk_278428AD8;
      v81 = &v103;
      v103 = v97;
      v80 = &v104;
      v104 = v96;
    }

    else
    {
      v48 = 0;
    }

    v49 = MEMORY[0x223D716E0](v48);
    if (v17)
    {
      v50 = v30;
    }

    else
    {
      v50 = 0;
    }

    v86 = v40;
    v82 = v46;
    if (v50 == 1)
    {
      [v96 setAnimatingVisualState:1];
    }

    else if (!v17)
    {
      v51 = 0;
      v52 = v96;
      goto LABEL_60;
    }

    v51 = v99;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15;
    v99[3] = &unk_278428688;
    v83 = &v100;
    v100 = v96;
    v52 = v96;
    v41 = &v101;
    v101 = v17;
LABEL_60:
    v53 = MEMORY[0x223D716E0](v51);
    v54 = [BLSBacklightSceneUpdate alloc];
    v55 = [v98 isTouchTargetable];
    BYTE1(v79) = [v98 isUpdateToDateSpecifier];
    LOBYTE(v79) = v55;
    v56 = v52;
    v13 = v95;
    v34 = v86;
    v39 = [(BLSBacklightSceneUpdate *)v54 initForEnvironment:v56 visualState:v95 previousVisualState:v86 frameSpecifier:v90 animated:v30 triggerEvent:v89 touchTargetable:v79 isUpdateToDateSpecifier:v87 sceneContentsUpdated:v49 performBacklightRamp:v53 sceneContentsAnimationComplete:?];
    v57 = bls_scenes_log();
    v31 = v97;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v66 = [v96 identifier];
      *buf = 134219266;
      v117 = v96;
      v34 = v86;
      OUTLINED_FUNCTION_5_0();
      *(v68 + 78) = v67;
      v119 = 2112;
      v120 = v39;
      v121 = 2112;
      *(v68 + 98) = v98;
      v122 = 2112;
      *(v68 + 108) = v97;
      v123 = 2112;
      *(v68 + 118) = v17;
      _os_log_debug_impl(&dword_21FE25000, v57, OS_LOG_TYPE_DEBUG, "%p:%{public}@ created sceneUpdate %@ from actions\n\t%@\n\t%@\n\t%@", buf, 0x3Eu);

      v13 = v95;
    }

    if (v17)
    {
    }

    v28 = v98;
    if (v97)
    {
    }

    v10 = v94;
    if (!v98)
    {
    }

    goto LABEL_69;
  }

  v27 = 0;
LABEL_72:

  v58 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)completeBLSActionsForUpdatedFBSScene:(void *)a3 transitionContext:
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_43;
  }

  v8 = [v6 actions];
  v9 = [v8 count];

  if (!v9)
  {
    goto LABEL_43;
  }

  v70 = a1;
  v71 = v7;
  v72 = v5;
  *v76 = 0u;
  v77 = 0u;
  *v74 = 0u;
  v75 = 0u;
  v10 = [v7 actions];
  v11 = [v10 countByEnumeratingWithState:v74 objects:v80 count:16];
  if (!v11)
  {
    v13 = 0;
    v73 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = 0;
  v73 = 0;
  v14 = 0;
  v15 = *v75;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v75 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(v74[1] + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v14;
        v19 = v13;
        v14 = v17;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v73;
          v19 = v13;
          v73 = v17;
        }

        else
        {
          objc_opt_class();
          v18 = v13;
          v19 = v17;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }
      }

      v20 = v17;

      v13 = v19;
    }

    v12 = [v10 countByEnumeratingWithState:v74 objects:v80 count:16];
  }

  while (v12);
LABEL_18:

  v21 = [v5 backlightSceneEnvironment];
  v22 = [v21 identifier];
  v23 = v73;
  if (v14)
  {
    v24 = [v14 canSendResponse];
    v25 = bls_scenes_log();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_1();
        v79 = v14;
        OUTLINED_FUNCTION_3_0(&dword_21FE25000, v52, v53, "%p nothing changed in updateAction for %{public}@, completing inline:%{public}@", v54, v55, v56, v57, v70, v71, v5, v73, v74[0], v74[1], v75, *(&v75 + 1), v76[0], v76[1], v77, *(&v77 + 1), v78);
      }

      v26 = [MEMORY[0x277CF0B68] response];
      [v14 sendResponse:v26];
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_0_1();
      v79 = v14;
      OUTLINED_FUNCTION_4_0(&dword_21FE25000, v27, v28, "%p nothing changed in updateAction for %{public}@, unable to send response:%{public}@", v29, v30, v31, v32, v70, v71, v5, v73, v74[0], v74[1], v75, *(&v75 + 1), v76[0], v76[1], v77, *(&v77 + 1), v78);
    }
  }

  v7 = v71;
  if (v23)
  {
    v33 = [v23 canSendResponse];
    v34 = bls_scenes_log();
    v35 = v34;
    if (v33)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_1();
        v79 = v23;
        OUTLINED_FUNCTION_3_0(&dword_21FE25000, v58, v59, "%p nothing changed in rampAction for %{public}@, completing inline:%{public}@", v60, v61, v62, v63, v70, v71, v72, v73, v74[0], v74[1], v75, *(&v75 + 1), v76[0], v76[1], v77, *(&v77 + 1), v78);
      }

      v35 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:0.0];
      [v23 sendResponse:v35];
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_0_1();
      v79 = v23;
      OUTLINED_FUNCTION_4_0(&dword_21FE25000, v36, v37, "%p nothing changed in rampAction for %{public}@, unable to send response:%{public}@", v38, v39, v40, v41, v70, v71, v72, v73, v74[0], v74[1], v75, *(&v75 + 1), v76[0], v76[1], v77, *(&v77 + 1), v78);
    }
  }

  if (v13)
  {
    v42 = [v13 canSendResponse];
    v43 = bls_scenes_log();
    v44 = v43;
    if (v42)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_1();
        v79 = v13;
        OUTLINED_FUNCTION_3_0(&dword_21FE25000, v64, v65, "%p nothing changed in animationCompleteAction for %{public}@, completing inline:%{public}@", v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1], v75, *(&v75 + 1), v76[0], v76[1], v77, *(&v77 + 1), v78);
      }

      v44 = [MEMORY[0x277CF0B68] response];
      [v13 sendResponse:v44];
    }

    else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_0_1();
      v79 = v13;
      OUTLINED_FUNCTION_4_0(&dword_21FE25000, v45, v46, "%p nothing changed in animationCompleteAction for %{public}@, unable to send response:%{public}@", v47, v48, v49, v50, v70, v71, v72, v73, v74[0], v74[1], v75, *(&v75 + 1), v76[0], v76[1], v77, *(&v77 + 1), v78);
    }
  }

LABEL_43:
  v51 = *MEMORY[0x277D85DE8];
}

- (id)desiredFidelityRequestForUpdatedFBSScene:(uint64_t)a3 fromSettings:(uint64_t)a4 transitionContext:
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_7_0(a1 a2];
    OUTLINED_FUNCTION_8_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v13 + 8 * i);
          objc_opt_class();
          if (OUTLINED_FUNCTION_6())
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_8_0();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v10 = [BLSBacklightFBSSceneEnvironmentActionHandler desiredFidelityRequestFromAction:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)frameSpecifiersRequestForUpdatedFBSScene:(uint64_t)a3 fromSettings:(uint64_t)a4 transitionContext:
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_7_0(a1 a2];
    OUTLINED_FUNCTION_8_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v13 + 8 * i);
          objc_opt_class();
          if (OUTLINED_FUNCTION_6())
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_8_0();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v10 = [BLSBacklightFBSSceneEnvironmentActionHandler frameSpecifiersRequestFromAction:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [*a1 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10_cold_1(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) identifier];
  v4 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) bls_shortLoggingString];
  v4 = *(a1 + 48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15_cold_1(id *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  v4 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end