@interface AACustodianDaemonInterface
+ (id)XPCInterface;
@end

@implementation AACustodianDaemonInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken_2 != -1)
  {
    +[AACustodianDaemonInterface XPCInterface];
  }

  v3 = XPCInterface_interface_2;

  return v3;
}

void __42__AACustodianDaemonInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F45350];
  v1 = XPCInterface_interface_2;
  XPCInterface_interface_2 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v160 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v159 = [v4 setWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  v9 = XPCInterface_interface_2;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  [v9 setClasses:v14 forSelector:sel_setupCustodianshipWithContext_completion_ argumentIndex:0 ofReply:0];

  v15 = XPCInterface_interface_2;
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
  [v15 setClasses:v19 forSelector:sel_setupCustodianshipWithContext_completion_ argumentIndex:0 ofReply:1];

  v20 = XPCInterface_interface_2;
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [v21 setWithObjects:{v22, v23, v24, objc_opt_class(), 0}];
  [v20 setClasses:v25 forSelector:sel_removeCustodianWithContext_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_removeCustodianWithContext_completion_ argumentIndex:0 ofReply:1];
  v26 = XPCInterface_interface_2;
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = [v27 setWithObjects:{v28, v29, v30, objc_opt_class(), 0}];
  [v26 setClasses:v31 forSelector:sel_stopBeingCustodianWithContext_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_stopBeingCustodianWithContext_completion_ argumentIndex:0 ofReply:1];
  v32 = XPCInterface_interface_2;
  v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_fetchTrustedContactsWithRequest_completion_ argumentIndex:0 ofReply:0];

  v34 = XPCInterface_interface_2;
  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = [v35 setWithObjects:{v36, v37, v38, v39, v40, v41, objc_opt_class(), 0}];
  [v34 setClasses:v42 forSelector:sel_fetchTrustedContactsWithRequest_completion_ argumentIndex:0 ofReply:1];

  v43 = XPCInterface_interface_2;
  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  [v43 setClasses:v46 forSelector:sel_fetchCustodianshipInfoWithUUID_completion_ argumentIndex:0 ofReply:0];

  v47 = XPCInterface_interface_2;
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = [v48 setWithObjects:{v49, v50, objc_opt_class(), 0}];
  [v47 setClasses:v51 forSelector:sel_fetchCustodianshipInfoWithUUID_completion_ argumentIndex:0 ofReply:1];

  v52 = XPCInterface_interface_2;
  v53 = MEMORY[0x1E695DFD8];
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = [v53 setWithObjects:{v54, v55, v56, objc_opt_class(), 0}];
  [v52 setClasses:v57 forSelector:sel_fetchCustodianshipInfoWithCompletion_ argumentIndex:0 ofReply:1];

  v58 = XPCInterface_interface_2;
  v59 = MEMORY[0x1E695DFD8];
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = [v59 setWithObjects:{v60, v61, v62, objc_opt_class(), 0}];
  [v58 setClasses:v63 forSelector:sel_fetchSuggestedCustodiansWithCompletion_ argumentIndex:0 ofReply:1];

  v64 = XPCInterface_interface_2;
  v65 = MEMORY[0x1E695DFD8];
  v66 = objc_opt_class();
  v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
  [v64 setClasses:v67 forSelector:sel_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion_ argumentIndex:0 ofReply:0];

  v68 = XPCInterface_interface_2;
  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = objc_opt_class();
  v73 = objc_opt_class();
  v74 = [v69 setWithObjects:{v70, v71, v72, v73, objc_opt_class(), 0}];
  [v68 setClasses:v74 forSelector:sel_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion_ argumentIndex:0 ofReply:1];

  v75 = XPCInterface_interface_2;
  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = [v76 setWithObjects:{v77, v78, v79, objc_opt_class(), 0}];
  [v75 setClasses:v80 forSelector:sel_fetchCustodianHealthStatusWithCompletion_ argumentIndex:0 ofReply:1];

  [XPCInterface_interface_2 setClasses:v159 forSelector:sel_respondToInviteWithContext_completion_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_respondToInviteWithContext_completion_ argumentIndex:0 ofReply:1];
  v81 = XPCInterface_interface_2;
  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
  [v81 setClasses:v84 forSelector:sel_fetchCustodianRecoveryConfigurationWithCompletion_ argumentIndex:0 ofReply:1];

  v85 = XPCInterface_interface_2;
  v86 = MEMORY[0x1E695DFD8];
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = objc_opt_class();
  v90 = [v86 setWithObjects:{v87, v88, v89, objc_opt_class(), 0}];
  [v85 setClasses:v90 forSelector:sel_generateCustodianRecoveryCodeWithContext_completion_ argumentIndex:0 ofReply:0];

  v91 = XPCInterface_interface_2;
  v92 = MEMORY[0x1E695DFD8];
  v93 = objc_opt_class();
  v94 = [v92 setWithObjects:{v93, objc_opt_class(), 0}];
  [v91 setClasses:v94 forSelector:sel_generateCustodianRecoveryCodeWithContext_completion_ argumentIndex:0 ofReply:1];

  v95 = XPCInterface_interface_2;
  v96 = MEMORY[0x1E695DFD8];
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = [v96 setWithObjects:{v97, v98, objc_opt_class(), 0}];
  [v95 setClasses:v99 forSelector:sel_fetchCustodianRecoveryKeysWithContext_completion_ argumentIndex:0 ofReply:0];

  v100 = XPCInterface_interface_2;
  v101 = MEMORY[0x1E695DFD8];
  v102 = objc_opt_class();
  v103 = objc_opt_class();
  v104 = objc_opt_class();
  v105 = objc_opt_class();
  v106 = objc_opt_class();
  v107 = [v101 setWithObjects:{v102, v103, v104, v105, v106, objc_opt_class(), 0}];
  [v100 setClasses:v107 forSelector:sel_fetchCustodianRecoveryKeysWithContext_completion_ argumentIndex:0 ofReply:1];

  v108 = XPCInterface_interface_2;
  v109 = MEMORY[0x1E695DFD8];
  v110 = objc_opt_class();
  v111 = [v109 setWithObjects:{v110, objc_opt_class(), 0}];
  [v108 setClasses:v111 forSelector:sel_fetchCustodianRecoveryKeysWithContext_completion_ argumentIndex:1 ofReply:1];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_startHealthCheckWithCompletion_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_startHealthCheckWithCompletion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_startManateeMigrationWithCompletion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_pullTrustedContactsFromCloudKitWithCompletion_ argumentIndex:0 ofReply:1];
  v112 = XPCInterface_interface_2;
  v113 = MEMORY[0x1E695DFD8];
  v114 = objc_opt_class();
  v115 = objc_opt_class();
  v116 = objc_opt_class();
  v117 = objc_opt_class();
  v118 = objc_opt_class();
  v119 = [v113 setWithObjects:{v114, v115, v116, v117, v118, objc_opt_class(), 0}];
  [v112 setClasses:v119 forSelector:sel_displayTrustedContactFlowWithModel_completion_ argumentIndex:0 ofReply:0];

  v120 = XPCInterface_interface_2;
  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = objc_opt_class();
  v124 = [v121 setWithObjects:{v122, v123, objc_opt_class(), 0}];
  [v120 setClasses:v124 forSelector:sel_displayTrustedContactFlowWithModel_completion_ argumentIndex:0 ofReply:1];

  v125 = XPCInterface_interface_2;
  v126 = MEMORY[0x1E695DFD8];
  v127 = objc_opt_class();
  v128 = objc_opt_class();
  v129 = [v126 setWithObjects:{v127, v128, objc_opt_class(), 0}];
  [v125 setClasses:v129 forSelector:sel_displayCustodianInviteWithUUID_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_displayCustodianInviteWithUUID_completion_ argumentIndex:0 ofReply:1];
  v130 = XPCInterface_interface_2;
  v131 = MEMORY[0x1E695DFD8];
  v132 = objc_opt_class();
  v133 = [v131 setWithObjects:{v132, objc_opt_class(), 0}];
  [v130 setClasses:v133 forSelector:sel_reSendCustodianInvitationWithCustodianID_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_reSendCustodianInvitationWithCustodianID_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_availableRecoveryFactorsWithCompletion_ argumentIndex:0 ofReply:1];
  v134 = XPCInterface_interface_2;
  v135 = MEMORY[0x1E695DFD8];
  v136 = objc_opt_class();
  v137 = objc_opt_class();
  v138 = [v135 setWithObjects:{v136, v137, objc_opt_class(), 0}];
  [v134 setClasses:v138 forSelector:sel_repairCustodians_remove_completion_ argumentIndex:0 ofReply:0];

  v139 = XPCInterface_interface_2;
  v140 = MEMORY[0x1E695DFD8];
  v141 = objc_opt_class();
  v142 = objc_opt_class();
  v143 = [v140 setWithObjects:{v141, v142, objc_opt_class(), 0}];
  [v139 setClasses:v143 forSelector:sel_repairCustodians_remove_completion_ argumentIndex:1 ofReply:0];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_repairCustodians_remove_completion_ argumentIndex:0 ofReply:1];
  v144 = XPCInterface_interface_2;
  v145 = MEMORY[0x1E695DFD8];
  v146 = objc_opt_class();
  v147 = objc_opt_class();
  v148 = [v145 setWithObjects:{v146, v147, objc_opt_class(), 0}];
  [v144 setClasses:v148 forSelector:sel_repairCustodians_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_repairCustodians_completion_ argumentIndex:0 ofReply:1];
  [XPCInterface_interface_2 setClasses:v160 forSelector:sel_preflightCustodianRecoveryWithCompletion_ argumentIndex:0 ofReply:1];
  v149 = XPCInterface_interface_2;
  v150 = MEMORY[0x1E695DFD8];
  v151 = objc_opt_class();
  v152 = objc_opt_class();
  v153 = [v150 setWithObjects:{v151, v152, objc_opt_class(), 0}];
  [v149 setClasses:v153 forSelector:sel_cancelCustodianRecoveryWithContext_completion_ argumentIndex:0 ofReply:0];

  v154 = XPCInterface_interface_2;
  v155 = MEMORY[0x1E695DFD8];
  v156 = objc_opt_class();
  v157 = objc_opt_class();
  v158 = [v155 setWithObjects:{v156, v157, objc_opt_class(), 0}];
  [v154 setClasses:v158 forSelector:sel_cancelCustodianRecoveryWithContext_completion_ argumentIndex:0 ofReply:1];
}

@end