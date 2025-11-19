@interface BRAccountNotificationPlugin
- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation BRAccountNotificationPlugin

- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a6 br_isEnabledForCloudDocs];
  v13 = [v10 br_isEnabledForCloudDocs];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"No";
    *v20 = 138413314;
    *&v20[4] = v10;
    *&v20[12] = 1024;
    if (v12)
    {
      v19 = @"Yes";
    }

    else
    {
      v19 = @"No";
    }

    *&v20[14] = a4;
    if (v13)
    {
      v18 = @"Yes";
    }

    *&v20[18] = 2112;
    *&v20[20] = v19;
    v21 = 2112;
    v22 = v18;
    v23 = 2112;
    v24 = v14;
    _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Account %@ will change with type: %u. Was Enabled: %@, Is Enabled: %@%@", v20, 0x30u);
  }

  v16 = !(v12 & 1 | ((v13 & 1) == 0)) && [(BRAccountNotificationPlugin *)self isCloudDocsUnsupported:v10 inStore:v11 showUserNotification:a4 == 2, *v20, *&v20[16]];
  return v16;
}

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v10 = a3;
  v153 = a5;
  v11 = a6;
  v12 = v11;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  if ([v14 br_isEligibleiCloudAccount])
  {
    v144 = self;
    memset(v175, 0, sizeof(v175));
    sub_2D6C(0, "[BRAccountNotificationPlugin account:didChangeWithType:inStore:oldAccount:]", 183, 0, v175);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      *&buf[4] = v175[0];
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      *v177 = v15;
      _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx plugin notification about %@%@", buf, 0x20u);
    }

    v151 = v14;

    v145 = [v12 br_isEligibleiCloudAccount];
    v143 = [v10 br_isEligibleiCloudAccount];
    v17 = [v12 br_isEnabledForCloudDocs];
    v18 = [v10 br_isEnabledForCloudDocs];
    v148 = [v12 br_isEnabledForUbiquity];
    v147 = [v10 br_isEnabledForUbiquity];
    v19 = [v12 br_needsToVerifyTerms];
    v20 = [v10 br_needsToVerifyTerms];
    v21 = kAccountDataclassUbiquity;
    v140 = [v12 aa_useCellularForDataclass:kAccountDataclassUbiquity];
    v142 = [v10 aa_useCellularForDataclass:v21];
    v139 = [v12 aa_allowUnlimitedUpdatesForDataclass:v21];
    v141 = [v10 aa_allowUnlimitedUpdatesForDataclass:v21];
    if ([v10 isDataSeparatedAccount])
    {
      v22 = [v12 accountDescription];
      [v10 accountDescription];
      v24 = v23 = v20;
      v150 = [v22 isEqualToString:v24];

      v20 = v23;
    }

    else
    {
      v150 = 1;
    }

    if (qword_C550 == -1)
    {
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_3184();
      if (!v18)
      {
LABEL_16:
        v31 = 0;
        v152 = v19;
        v146 = v17;
        if (a4 > 2)
        {
          if (a4 == 3)
          {
            v32 = brc_bread_crumbs();
            v31 = 1;
            v33 = brc_default_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v133 = [v12 br_dsid];
              if ([v12 br_isManagedAppleID])
              {
                v113 = 89;
              }

              else
              {
                v113 = 78;
              }

              v130 = v113;
              if ([v12 br_isEnabledForUbiquity])
              {
                v114 = 89;
              }

              else
              {
                v114 = 78;
              }

              v127 = v114;
              v136 = v18;
              v138 = v20;
              if ([v12 br_isEnabledForCloudDocs])
              {
                v115 = 89;
              }

              else
              {
                v115 = 78;
              }

              if ([v12 br_isEnabledForiCloudDesktop])
              {
                v116 = 89;
              }

              else
              {
                v116 = 78;
              }

              v117 = [v12 br_isEligibleiCloudAccount];
              *buf = 138414082;
              if (v117)
              {
                v118 = 89;
              }

              else
              {
                v118 = 78;
              }

              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v133;
              *&buf[22] = 1024;
              *v177 = v130;
              *&v177[4] = 1024;
              *&v177[6] = v127;
              v178 = 1024;
              v179 = v115;
              v18 = v136;
              v180 = 1024;
              v181 = v116;
              v20 = v138;
              v182 = 1024;
              v183 = v118;
              v184 = 2112;
              v185 = v32;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[NOTICE] account deleted <%@ dsid:%@ managed:%c ub:%c br:%c desktop:%c eligible:%c>%@", buf, 0x3Eu);

              v31 = 1;
            }

            goto LABEL_73;
          }

          if (a4 != 4)
          {
            goto LABEL_74;
          }

          v32 = brc_bread_crumbs();
          v33 = brc_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            sub_31AC(v32, v33);
          }
        }

        else if (a4 == 1)
        {
          v32 = brc_bread_crumbs();
          v33 = brc_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v132 = [v10 br_dsid];
            v137 = v20;
            if ([v10 br_isManagedAppleID])
            {
              v45 = 89;
            }

            else
            {
              v45 = 78;
            }

            v129 = v45;
            if ([v10 br_isEnabledForUbiquity])
            {
              v46 = 89;
            }

            else
            {
              v46 = 78;
            }

            v126 = v46;
            v135 = v18;
            v47 = v17;
            if ([v10 br_isEnabledForCloudDocs])
            {
              v48 = 89;
            }

            else
            {
              v48 = 78;
            }

            if ([v10 br_isEnabledForiCloudDesktop])
            {
              v49 = 89;
            }

            else
            {
              v49 = 78;
            }

            v50 = [v10 br_isEligibleiCloudAccount];
            *buf = 138414082;
            if (v50)
            {
              v51 = 89;
            }

            else
            {
              v51 = 78;
            }

            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v132;
            *&buf[22] = 1024;
            *v177 = v129;
            *&v177[4] = 1024;
            *&v177[6] = v126;
            v178 = 1024;
            v179 = v48;
            v17 = v47;
            v18 = v135;
            v180 = 1024;
            v181 = v49;
            v20 = v137;
            v182 = 1024;
            v183 = v51;
            v184 = 2112;
            v185 = v32;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[NOTICE] account added <%@ dsid:%@ managed:%c ub:%c br:%c desktop:%c eligible:%c>%@", buf, 0x3Eu);
          }
        }

        else
        {
          if (a4 != 2)
          {
            goto LABEL_74;
          }

          v32 = brc_bread_crumbs();
          v33 = brc_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v131 = [v12 br_dsid];
            if ([v12 br_isManagedAppleID])
            {
              v34 = 89;
            }

            else
            {
              v34 = 78;
            }

            if ([v12 br_isEnabledForUbiquity])
            {
              v35 = 89;
            }

            else
            {
              v35 = 78;
            }

            v128 = v35;
            if ([v12 br_isEnabledForCloudDocs])
            {
              v36 = 89;
            }

            else
            {
              v36 = 78;
            }

            v125 = v36;
            if ([v12 br_isEnabledForiCloudDesktop])
            {
              v37 = 89;
            }

            else
            {
              v37 = 78;
            }

            v124 = v37;
            if ([v12 br_isEligibleiCloudAccount])
            {
              v38 = 89;
            }

            else
            {
              v38 = 78;
            }

            v123 = v38;
            v122 = [v10 br_dsid];
            if ([v10 br_isManagedAppleID])
            {
              v39 = 89;
            }

            else
            {
              v39 = 78;
            }

            v121 = v39;
            if ([v10 br_isEnabledForUbiquity])
            {
              v40 = 89;
            }

            else
            {
              v40 = 78;
            }

            v120 = v40;
            if ([v10 br_isEnabledForCloudDocs])
            {
              v41 = 89;
            }

            else
            {
              v41 = 78;
            }

            v134 = v18;
            if ([v10 br_isEnabledForiCloudDesktop])
            {
              v42 = 89;
            }

            else
            {
              v42 = 78;
            }

            v43 = [v10 br_isEligibleiCloudAccount];
            *buf = 138415874;
            if (v43)
            {
              v44 = 89;
            }

            else
            {
              v44 = 78;
            }

            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v131;
            *&buf[22] = 1024;
            *v177 = v34;
            *&v177[4] = 1024;
            *&v177[6] = v128;
            v178 = 1024;
            v179 = v125;
            v180 = 1024;
            v181 = v124;
            v182 = 1024;
            v183 = v123;
            v184 = 2112;
            v185 = v10;
            v186 = 2112;
            v187 = v122;
            v188 = 1024;
            v189 = v121;
            v190 = 1024;
            v191 = v120;
            v192 = 1024;
            v193 = v41;
            v17 = v146;
            v194 = 1024;
            v195 = v42;
            v18 = v134;
            v196 = 1024;
            v197 = v44;
            v198 = 2112;
            v199 = v32;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[NOTICE] account modified <%@ dsid:%@ managed:%c ub:%c br:%c desktop:%c eligible:%c> -> <%@ dsid:%@ managed:%c ub:%c br:%c desktop:%c eligible:%c>%@", buf, 0x70u);
          }
        }

        v31 = 0;
LABEL_73:

LABEL_74:
        v52 = brc_bread_crumbs();
        v53 = brc_default_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v119 = [v10 propertiesForDataclass:v21];
          *buf = 138412546;
          *&buf[4] = v119;
          *&buf[12] = 2112;
          *&buf[14] = v52;
          _os_log_debug_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] ubiquity dataclass: %@%@", buf, 0x16u);
        }

        if (!(v148 & 1 | ((v147 & 1) == 0)))
        {
          memset(buf, 0, sizeof(buf));
          sub_2D6C(0, "[BRAccountNotificationPlugin account:didChangeWithType:inStore:oldAccount:]", 266, 0, buf);
          v54 = brc_bread_crumbs();
          v55 = brc_default_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            sub_3224(buf);
          }

          v56 = +[BRDaemonConnection secondaryConnection];
          v57 = [v56 remoteObjectProxyWithErrorHandler:&stru_8278];
          [v57 jetsamCloudDocsAppsWithReply:&stru_8298];

          v58 = BRNotifyNameForAccountDidStartUsingUbiquityNotification();
          [v58 UTF8String];
          brc_notify_post();

          sub_2F3C(buf);
        }

        if (v17 == v18 && (v145 & 1 | ((v18 & 1) == 0) || ((v143 ^ 1) & 1) != 0))
        {
          if (!v18)
          {
LABEL_106:
            if (v19 != v20)
            {
              v89 = +[BRDaemonConnection defaultConnection];
              v90 = [v89 newSyncProxy];

              v159[0] = _NSConcreteStackBlock;
              v159[1] = 3221225472;
              v159[2] = sub_2B18;
              v159[3] = &unk_82C0;
              v91 = v90;
              v160 = v91;
              [v91 invalidateAccountCacheWithReply:v159];
              v92 = [v91 result];
              v93 = [v92 BOOLValue];

              if ((v93 & 1) == 0)
              {
                v94 = brc_bread_crumbs();
                v95 = brc_default_log();
                if (os_log_type_enabled(v95, 0x90u))
                {
                  sub_3420();
                }
              }

              BRPostAccountTokenChangedNotification();
            }

            if (!(v150 & 1 | ((v17 & v18 & 1) == 0)))
            {
              v96 = +[BRDaemonConnection defaultConnection];
              v97 = [v96 newSyncProxy];

              v98 = [v10 identifier];
              v99 = qword_C548;
              v156[0] = _NSConcreteStackBlock;
              v156[1] = 3221225472;
              v156[2] = sub_2B2C;
              v156[3] = &unk_8310;
              v157 = v97;
              v158 = v98;
              v100 = v98;
              v101 = v97;
              dispatch_async(v99, v156);
            }

            v102 = v20 | ~v19;
            v14 = v151;
            if ((v102 & 1) == 0)
            {
              v103 = +[BRDaemonConnection defaultConnection];
              v104 = [v103 newSyncProxy];

              v154[0] = _NSConcreteStackBlock;
              v154[1] = 3221225472;
              v154[2] = sub_2CC0;
              v154[3] = &unk_82C0;
              v105 = v104;
              v155 = v105;
              [v105 userVerifiedTermsWithReply:v154];
              v106 = [v105 result];
              v107 = [v106 BOOLValue];

              if ((v107 & 1) == 0)
              {
                v108 = brc_bread_crumbs();
                v109 = brc_default_log();
                if (os_log_type_enabled(v109, 0x90u))
                {
                  sub_34B0();
                }
              }
            }

            if (v31)
            {
              memset(buf, 0, sizeof(buf));
              sub_2D6C(0, "[BRAccountNotificationPlugin account:didChangeWithType:inStore:oldAccount:]", 387, 0, buf);
              v110 = brc_bread_crumbs();
              v111 = brc_default_log();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
              {
                sub_3540(buf);
              }

              v112 = [v12 br_dsid];
              BRUnsetMigrationStatusForDSIDInPref();

              sub_2F3C(buf);
            }

            sub_2F3C(v175);
            goto LABEL_125;
          }

          if (v140 == v142 && v139 == v141)
          {
LABEL_92:
            if ((v18 & v17) == 1)
            {
              v78 = +[BRDaemonConnection defaultConnection];
              v79 = [v78 remoteObjectProxy];

              v161[0] = _NSConcreteStackBlock;
              v161[1] = 3221225472;
              v161[2] = sub_2A1C;
              v161[3] = &unk_8338;
              v161[4] = v144;
              v162 = v10;
              v163 = v153;
              [v79 verifyAccountLoaded:v161];
            }

            goto LABEL_106;
          }

          v80 = brc_bread_crumbs();
          v81 = brc_default_log();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            sub_3290();
          }

          v82 = brc_bread_crumbs();
          v83 = brc_default_log();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            sub_3310();
          }

          v84 = +[BRDaemonConnection defaultConnection];
          v85 = [v84 newSyncProxy];

          v164[0] = _NSConcreteStackBlock;
          v164[1] = 3221225472;
          v164[2] = sub_2A08;
          v164[3] = &unk_82C0;
          v70 = v85;
          v165 = v70;
          [v70 accountDidChangeWithCellularEnabled:v142 isUnlimitedUpdatesEnabled:v141 reply:v164];
          v86 = [v70 result];
          LOBYTE(v85) = [v86 BOOLValue];

          if ((v85 & 1) == 0)
          {
            v87 = brc_bread_crumbs();
            v88 = brc_default_log();
            if (os_log_type_enabled(v88, 0x90u))
            {
              sub_3390();
            }
          }

          v71 = v165;
        }

        else
        {
          v149 = v31;
          v59 = +[BRDaemonConnection defaultConnection];
          v60 = [v59 newSyncProxy];

          v61 = v18;
          if (v18)
          {
            v62 = v20;
            v63 = [v10 identifier];
            v64 = [v10 br_dsid];
            v65 = brc_bread_crumbs();
            v66 = brc_default_log();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v63;
              *&buf[12] = 2112;
              *&buf[14] = v65;
              _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "[NOTICE] Initiating login for %@%@", buf, 0x16u);
            }

            v67 = qword_C548;
            v169[0] = _NSConcreteStackBlock;
            v169[1] = 3221225472;
            v169[2] = sub_26D8;
            v169[3] = &unk_82E8;
            v68 = &v170;
            v170 = v60;
            v69 = &v171;
            v70 = v63;
            v171 = v70;
            v71 = v64;
            v172 = v71;
            v72 = v60;
            dispatch_async(v67, v169);
          }

          else
          {
            v62 = v20;
            v73 = [v12 identifier];
            v71 = [v12 br_dsid];
            v74 = brc_bread_crumbs();
            v75 = brc_default_log();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v73;
              *&buf[12] = 2112;
              *&buf[14] = v74;
              _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "[NOTICE] Initiating logout for %@%@", buf, 0x16u);
            }

            v76 = qword_C548;
            v166[0] = _NSConcreteStackBlock;
            v166[1] = 3221225472;
            v166[2] = sub_2874;
            v166[3] = &unk_8310;
            v68 = &v167;
            v167 = v60;
            v69 = &v168;
            v70 = v73;
            v168 = v70;
            v77 = v60;
            dispatch_sync(v76, v166);
          }

          v19 = v152;
          v20 = v62;
          v17 = v146;
          v18 = v61;
          v31 = v149;
        }

        goto LABEL_92;
      }
    }

    v27 = [v10 br_dsid];
    v28 = qword_C548;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2574;
    block[3] = &unk_8238;
    v174 = v27;
    v29 = v20;
    v30 = v27;
    dispatch_async(v28, block);

    v20 = v29;
    goto LABEL_16;
  }

  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_30B4();
  }

LABEL_125:
}

@end