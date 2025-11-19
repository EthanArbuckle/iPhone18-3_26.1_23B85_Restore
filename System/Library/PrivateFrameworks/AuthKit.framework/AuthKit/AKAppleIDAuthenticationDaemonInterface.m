@interface AKAppleIDAuthenticationDaemonInterface
+ (id)XPCInterface;
@end

@implementation AKAppleIDAuthenticationDaemonInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_13;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_54);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_12;

  return v2;
}

void __54__AKAppleIDAuthenticationDaemonInterface_XPCInterface__block_invoke(void *a1)
{
  v148[2] = a1;
  v148[1] = a1;
  v131 = 0x1E695D000uLL;
  v121 = MEMORY[0x1E695DFD8];
  v132 = 0x1E695D000uLL;
  v120 = objc_opt_class();
  v140 = 0x1E695D000uLL;
  v114 = objc_opt_class();
  v135 = 0x1E696A000uLL;
  v115 = objc_opt_class();
  v137 = 0x1E696A000uLL;
  v116 = objc_opt_class();
  v144 = 0x1E695D000uLL;
  v117 = objc_opt_class();
  v142 = 0x1E695D000uLL;
  v118 = objc_opt_class();
  v119 = objc_opt_class();
  v122 = &v41;
  v146 = 0;
  v148[0] = [v121 setWithObjects:{v120, v114, v115, v116, v117, v118, v119, objc_opt_class(), 0}];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DD048];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_12;
  XPCInterface_interface_12 = v1;
  MEMORY[0x1E69E5920](v2);
  v3 = p_info[80];
  v128 = 0;
  v129 = 1;
  [__objc2_class_ro setClasses:v3 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v148[0] ofReply:sel_fetchUserInformationForAltDSID_completion_];
  v124 = p_info[80];
  v123 = v148[0];
  v126 = 0x1E73D2000uLL;
  v125 = [v148[0] setByAddingObject:objc_opt_class()];
  [__objc2_class_ro setClasses:v124 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v125);
  v127 = p_info[80];
  v4 = *(v126 + 3496);
  [(__objc2_class_ro *)v127 setClass:objc_opt_class() forSelector:sel_getUserInformationWithContext_completion_ argumentIndex:v128 ofReply:v129 & 1];
  [(__objc2_class_ro *)p_info[80] setClasses:v148[0] forSelector:sel_setConfigurationInfo_forIdentifier_forAltDSID_completion_ argumentIndex:v128 ofReply:0];
  [(__objc2_class_ro *)p_info[80] setClasses:v148[0] forSelector:sel_configurationInfoWithIdentifiers_forAltDSID_completion_ argumentIndex:v128 ofReply:v129 & 1];
  v133 = p_info[80];
  v134 = *(v131 + 4056);
  v5 = *(v132 + 3872);
  v136 = objc_opt_class();
  v6 = *(v135 + 3776);
  v138 = objc_opt_class();
  v7 = *(v137 + 3480);
  v139 = objc_opt_class();
  v141 = objc_opt_class();
  v8 = *(v140 + 3784);
  v143 = objc_opt_class();
  v9 = *(v142 + 3840);
  v145 = objc_opt_class();
  v10 = *(v144 + 3824);
  v147 = objc_opt_class();
  if (KeychainCircleLibraryCore(v146))
  {
    KCAESGCMDuplexSessionClass = getKCAESGCMDuplexSessionClass();
  }

  else
  {
    KCAESGCMDuplexSessionClass = 0;
  }

  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v11 = objc_opt_class();
  obj = 0;
  v44 = [v134 setWithObjects:{v136, v138, v139, v141, v143, v145, v147, v42, v43, v11, 0}];
  v109 = 0;
  v110 = 1;
  [__objc2_class_ro setClasses:v133 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v44);
  v107 = &OBJC_METACLASS___AKAppleIDSession.info;
  v54 = XPCInterface_interface_12;
  v83 = 0x1E695D000uLL;
  v53 = MEMORY[0x1E695DFD8];
  v84 = 0x1E695D000uLL;
  v52 = objc_opt_class();
  v85 = 0x1E696A000uLL;
  v45 = objc_opt_class();
  v86 = 0x1E696A000uLL;
  v46 = objc_opt_class();
  v87 = 0x1E695D000uLL;
  v47 = objc_opt_class();
  v88 = 0x1E695D000uLL;
  v48 = objc_opt_class();
  v89 = 0x1E695D000uLL;
  v49 = objc_opt_class();
  v90 = 0x1E695D000uLL;
  v50 = objc_opt_class();
  v91 = 0x1E73D2000uLL;
  v51 = objc_opt_class();
  v92 = 0x1E73D2000uLL;
  v55 = [v53 setWithObjects:{v52, v45, v46, v47, v48, v49, v50, v51, objc_opt_class(), 0}];
  [v54 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v55);
  v61 = v107[80];
  v60 = *(v83 + 4056);
  v12 = *(v88 + 3784);
  v59 = objc_opt_class();
  v13 = *(v85 + 3776);
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v62 = [v60 setWithObjects:{v59, v56, v57, v58, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v61 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v62);
  v70 = v107[80];
  v69 = *(v83 + 4056);
  v14 = *(v84 + 3872);
  v68 = objc_opt_class();
  v15 = *(v85 + 3776);
  v63 = objc_opt_class();
  v16 = *(v86 + 3480);
  v64 = objc_opt_class();
  v17 = *(v87 + 4088);
  v65 = objc_opt_class();
  v18 = *(v88 + 3784);
  v66 = objc_opt_class();
  v19 = *(v89 + 3840);
  v67 = objc_opt_class();
  v20 = *(v90 + 3824);
  v71 = [v69 setWithObjects:{v68, v63, v64, v65, v66, v67, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v70 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v71);
  v81 = v107[80];
  v80 = *(v83 + 4056);
  v21 = *(v84 + 3872);
  v79 = objc_opt_class();
  v22 = *(v85 + 3776);
  v72 = objc_opt_class();
  v23 = *(v86 + 3480);
  v73 = objc_opt_class();
  v24 = *(v87 + 4088);
  v74 = objc_opt_class();
  v25 = *(v88 + 3784);
  v75 = objc_opt_class();
  v26 = *(v89 + 3840);
  v76 = objc_opt_class();
  v27 = *(v90 + 3824);
  v77 = objc_opt_class();
  v28 = *(v91 + 3360);
  v78 = objc_opt_class();
  v29 = *(v92 + 3080);
  v82 = [v80 setWithObjects:{v79, v72, v73, v74, v75, v76, v77, v78, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v81 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v82);
  v102 = v107[80];
  v101 = *(v83 + 4056);
  v30 = *(v84 + 3872);
  v100 = objc_opt_class();
  v31 = *(v85 + 3776);
  v93 = objc_opt_class();
  v32 = *(v86 + 3480);
  v94 = objc_opt_class();
  v33 = *(v87 + 4088);
  v95 = objc_opt_class();
  v34 = *(v88 + 3784);
  v96 = objc_opt_class();
  v35 = *(v89 + 3840);
  v97 = objc_opt_class();
  v36 = *(v90 + 3824);
  v98 = objc_opt_class();
  v37 = *(v91 + 3360);
  v99 = objc_opt_class();
  v38 = *(v92 + 3080);
  v103 = [v101 setWithObjects:{v100, v93, v94, v95, v96, v97, v98, v99, objc_opt_class(), 0}];
  [__objc2_class_ro setClasses:v102 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v103);
  v39 = v107[80];
  location = v148;
  [(__objc2_class_ro *)v39 setClasses:v148[0] forSelector:sel_fetchTokensWithAltDSID_tokenIdentifiers_completion_ argumentIndex:v109 ofReply:v110 & 1];
  [(__objc2_class_ro *)v107[80] setClasses:v148[0] forSelector:sel_deleteTokensFromCacheWithAltDSID_tokenIdentifiers_completion_ argumentIndex:v109 ofReply:v110 & 1];
  [(__objc2_class_ro *)v107[80] setClasses:v148[0] forSelector:sel_refreshBAADeviceTokenWithCompletion_ argumentIndex:v109 ofReply:v110 & 1];
  [(__objc2_class_ro *)v107[80] setClasses:v148[0] forSelector:sel_fetchBAADeviceTokenWithCompletion_ argumentIndex:v109 ofReply:v110 & 1];
  v40 = v107[80];
  v108 = 0x1FBDC9000uLL;
  [(__objc2_class_ro *)v40 setClasses:v148[0] forSelector:0x1FBDC934FuLL argumentIndex:1 ofReply:v110 & 1];
  v105 = v107[80];
  v104 = v148[0];
  v106 = [v148[0] setByAddingObject:objc_opt_class()];
  [__objc2_class_ro setClasses:v105 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v106);
  [(__objc2_class_ro *)v107[80] setClasses:v148[0] forSelector:v108 + 847 argumentIndex:v109 ofReply:v110 & 1];
  objc_storeStrong(location, obj);
}

@end