@interface BRAccountNotificationPlugin
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation BRAccountNotificationPlugin

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  br_isEnabledForCloudDocs = [oldAccount br_isEnabledForCloudDocs];
  br_isEnabledForCloudDocs2 = [accountCopy br_isEnabledForCloudDocs];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"No";
    *v20 = 138413314;
    *&v20[4] = accountCopy;
    *&v20[12] = 1024;
    if (br_isEnabledForCloudDocs)
    {
      v19 = @"Yes";
    }

    else
    {
      v19 = @"No";
    }

    *&v20[14] = type;
    if (br_isEnabledForCloudDocs2)
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

  v16 = !(br_isEnabledForCloudDocs & 1 | ((br_isEnabledForCloudDocs2 & 1) == 0)) && [(BRAccountNotificationPlugin *)self isCloudDocsUnsupported:accountCopy inStore:storeCopy showUserNotification:type == 2, *v20, *&v20[16]];
  return v16;
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v12 = oldAccountCopy;
  if (accountCopy)
  {
    v13 = accountCopy;
  }

  else
  {
    v13 = oldAccountCopy;
  }

  v14 = v13;
  if ([v14 br_isEligibleiCloudAccount])
  {
    selfCopy = self;
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

    br_isEligibleiCloudAccount = [v12 br_isEligibleiCloudAccount];
    br_isEligibleiCloudAccount2 = [accountCopy br_isEligibleiCloudAccount];
    br_isEnabledForCloudDocs = [v12 br_isEnabledForCloudDocs];
    br_isEnabledForCloudDocs2 = [accountCopy br_isEnabledForCloudDocs];
    br_isEnabledForUbiquity = [v12 br_isEnabledForUbiquity];
    br_isEnabledForUbiquity2 = [accountCopy br_isEnabledForUbiquity];
    br_needsToVerifyTerms = [v12 br_needsToVerifyTerms];
    br_needsToVerifyTerms2 = [accountCopy br_needsToVerifyTerms];
    v21 = kAccountDataclassUbiquity;
    v140 = [v12 aa_useCellularForDataclass:kAccountDataclassUbiquity];
    v142 = [accountCopy aa_useCellularForDataclass:v21];
    v139 = [v12 aa_allowUnlimitedUpdatesForDataclass:v21];
    v141 = [accountCopy aa_allowUnlimitedUpdatesForDataclass:v21];
    if ([accountCopy isDataSeparatedAccount])
    {
      accountDescription = [v12 accountDescription];
      [accountCopy accountDescription];
      v24 = v23 = br_needsToVerifyTerms2;
      v150 = [accountDescription isEqualToString:v24];

      br_needsToVerifyTerms2 = v23;
    }

    else
    {
      v150 = 1;
    }

    if (qword_C550 == -1)
    {
      if (!br_isEnabledForCloudDocs2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_3184();
      if (!br_isEnabledForCloudDocs2)
      {
LABEL_16:
        v31 = 0;
        v152 = br_needsToVerifyTerms;
        v146 = br_isEnabledForCloudDocs;
        if (type > 2)
        {
          if (type == 3)
          {
            v32 = brc_bread_crumbs();
            v31 = 1;
            v33 = brc_default_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              br_dsid = [v12 br_dsid];
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
              v136 = br_isEnabledForCloudDocs2;
              v138 = br_needsToVerifyTerms2;
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

              br_isEligibleiCloudAccount3 = [v12 br_isEligibleiCloudAccount];
              *buf = 138414082;
              if (br_isEligibleiCloudAccount3)
              {
                v118 = 89;
              }

              else
              {
                v118 = 78;
              }

              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = br_dsid;
              *&buf[22] = 1024;
              *v177 = v130;
              *&v177[4] = 1024;
              *&v177[6] = v127;
              v178 = 1024;
              v179 = v115;
              br_isEnabledForCloudDocs2 = v136;
              v180 = 1024;
              v181 = v116;
              br_needsToVerifyTerms2 = v138;
              v182 = 1024;
              v183 = v118;
              v184 = 2112;
              v185 = v32;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[NOTICE] account deleted <%@ dsid:%@ managed:%c ub:%c br:%c desktop:%c eligible:%c>%@", buf, 0x3Eu);

              v31 = 1;
            }

            goto LABEL_73;
          }

          if (type != 4)
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

        else if (type == 1)
        {
          v32 = brc_bread_crumbs();
          v33 = brc_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            br_dsid2 = [accountCopy br_dsid];
            v137 = br_needsToVerifyTerms2;
            if ([accountCopy br_isManagedAppleID])
            {
              v45 = 89;
            }

            else
            {
              v45 = 78;
            }

            v129 = v45;
            if ([accountCopy br_isEnabledForUbiquity])
            {
              v46 = 89;
            }

            else
            {
              v46 = 78;
            }

            v126 = v46;
            v135 = br_isEnabledForCloudDocs2;
            v47 = br_isEnabledForCloudDocs;
            if ([accountCopy br_isEnabledForCloudDocs])
            {
              v48 = 89;
            }

            else
            {
              v48 = 78;
            }

            if ([accountCopy br_isEnabledForiCloudDesktop])
            {
              v49 = 89;
            }

            else
            {
              v49 = 78;
            }

            br_isEligibleiCloudAccount4 = [accountCopy br_isEligibleiCloudAccount];
            *buf = 138414082;
            if (br_isEligibleiCloudAccount4)
            {
              v51 = 89;
            }

            else
            {
              v51 = 78;
            }

            *&buf[4] = accountCopy;
            *&buf[12] = 2112;
            *&buf[14] = br_dsid2;
            *&buf[22] = 1024;
            *v177 = v129;
            *&v177[4] = 1024;
            *&v177[6] = v126;
            v178 = 1024;
            v179 = v48;
            br_isEnabledForCloudDocs = v47;
            br_isEnabledForCloudDocs2 = v135;
            v180 = 1024;
            v181 = v49;
            br_needsToVerifyTerms2 = v137;
            v182 = 1024;
            v183 = v51;
            v184 = 2112;
            v185 = v32;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[NOTICE] account added <%@ dsid:%@ managed:%c ub:%c br:%c desktop:%c eligible:%c>%@", buf, 0x3Eu);
          }
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_74;
          }

          v32 = brc_bread_crumbs();
          v33 = brc_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            br_dsid3 = [v12 br_dsid];
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
            br_dsid4 = [accountCopy br_dsid];
            if ([accountCopy br_isManagedAppleID])
            {
              v39 = 89;
            }

            else
            {
              v39 = 78;
            }

            v121 = v39;
            if ([accountCopy br_isEnabledForUbiquity])
            {
              v40 = 89;
            }

            else
            {
              v40 = 78;
            }

            v120 = v40;
            if ([accountCopy br_isEnabledForCloudDocs])
            {
              v41 = 89;
            }

            else
            {
              v41 = 78;
            }

            v134 = br_isEnabledForCloudDocs2;
            if ([accountCopy br_isEnabledForiCloudDesktop])
            {
              v42 = 89;
            }

            else
            {
              v42 = 78;
            }

            br_isEligibleiCloudAccount5 = [accountCopy br_isEligibleiCloudAccount];
            *buf = 138415874;
            if (br_isEligibleiCloudAccount5)
            {
              v44 = 89;
            }

            else
            {
              v44 = 78;
            }

            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = br_dsid3;
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
            v185 = accountCopy;
            v186 = 2112;
            v187 = br_dsid4;
            v188 = 1024;
            v189 = v121;
            v190 = 1024;
            v191 = v120;
            v192 = 1024;
            v193 = v41;
            br_isEnabledForCloudDocs = v146;
            v194 = 1024;
            v195 = v42;
            br_isEnabledForCloudDocs2 = v134;
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
          v119 = [accountCopy propertiesForDataclass:v21];
          *buf = 138412546;
          *&buf[4] = v119;
          *&buf[12] = 2112;
          *&buf[14] = v52;
          _os_log_debug_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] ubiquity dataclass: %@%@", buf, 0x16u);
        }

        if (!(br_isEnabledForUbiquity & 1 | ((br_isEnabledForUbiquity2 & 1) == 0)))
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

        if (br_isEnabledForCloudDocs == br_isEnabledForCloudDocs2 && (br_isEligibleiCloudAccount & 1 | ((br_isEnabledForCloudDocs2 & 1) == 0) || ((br_isEligibleiCloudAccount2 ^ 1) & 1) != 0))
        {
          if (!br_isEnabledForCloudDocs2)
          {
LABEL_106:
            if (br_needsToVerifyTerms != br_needsToVerifyTerms2)
            {
              v89 = +[BRDaemonConnection defaultConnection];
              newSyncProxy = [v89 newSyncProxy];

              v159[0] = _NSConcreteStackBlock;
              v159[1] = 3221225472;
              v159[2] = sub_2B18;
              v159[3] = &unk_82C0;
              v91 = newSyncProxy;
              v160 = v91;
              [v91 invalidateAccountCacheWithReply:v159];
              result = [v91 result];
              bOOLValue = [result BOOLValue];

              if ((bOOLValue & 1) == 0)
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

            if (!(v150 & 1 | ((br_isEnabledForCloudDocs & br_isEnabledForCloudDocs2 & 1) == 0)))
            {
              v96 = +[BRDaemonConnection defaultConnection];
              newSyncProxy2 = [v96 newSyncProxy];

              identifier = [accountCopy identifier];
              v99 = qword_C548;
              v156[0] = _NSConcreteStackBlock;
              v156[1] = 3221225472;
              v156[2] = sub_2B2C;
              v156[3] = &unk_8310;
              v157 = newSyncProxy2;
              v158 = identifier;
              v100 = identifier;
              v101 = newSyncProxy2;
              dispatch_async(v99, v156);
            }

            v102 = br_needsToVerifyTerms2 | ~br_needsToVerifyTerms;
            v14 = v151;
            if ((v102 & 1) == 0)
            {
              v103 = +[BRDaemonConnection defaultConnection];
              newSyncProxy3 = [v103 newSyncProxy];

              v154[0] = _NSConcreteStackBlock;
              v154[1] = 3221225472;
              v154[2] = sub_2CC0;
              v154[3] = &unk_82C0;
              v105 = newSyncProxy3;
              v155 = v105;
              [v105 userVerifiedTermsWithReply:v154];
              result2 = [v105 result];
              bOOLValue2 = [result2 BOOLValue];

              if ((bOOLValue2 & 1) == 0)
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

              br_dsid5 = [v12 br_dsid];
              BRUnsetMigrationStatusForDSIDInPref();

              sub_2F3C(buf);
            }

            sub_2F3C(v175);
            goto LABEL_125;
          }

          if (v140 == v142 && v139 == v141)
          {
LABEL_92:
            if ((br_isEnabledForCloudDocs2 & br_isEnabledForCloudDocs) == 1)
            {
              v78 = +[BRDaemonConnection defaultConnection];
              remoteObjectProxy = [v78 remoteObjectProxy];

              v161[0] = _NSConcreteStackBlock;
              v161[1] = 3221225472;
              v161[2] = sub_2A1C;
              v161[3] = &unk_8338;
              v161[4] = selfCopy;
              v162 = accountCopy;
              v163 = storeCopy;
              [remoteObjectProxy verifyAccountLoaded:v161];
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
          newSyncProxy4 = [v84 newSyncProxy];

          v164[0] = _NSConcreteStackBlock;
          v164[1] = 3221225472;
          v164[2] = sub_2A08;
          v164[3] = &unk_82C0;
          v70 = newSyncProxy4;
          v165 = v70;
          [v70 accountDidChangeWithCellularEnabled:v142 isUnlimitedUpdatesEnabled:v141 reply:v164];
          result3 = [v70 result];
          LOBYTE(newSyncProxy4) = [result3 BOOLValue];

          if ((newSyncProxy4 & 1) == 0)
          {
            v87 = brc_bread_crumbs();
            v88 = brc_default_log();
            if (os_log_type_enabled(v88, 0x90u))
            {
              sub_3390();
            }
          }

          br_dsid7 = v165;
        }

        else
        {
          v149 = v31;
          v59 = +[BRDaemonConnection defaultConnection];
          newSyncProxy5 = [v59 newSyncProxy];

          v61 = br_isEnabledForCloudDocs2;
          if (br_isEnabledForCloudDocs2)
          {
            v62 = br_needsToVerifyTerms2;
            identifier2 = [accountCopy identifier];
            br_dsid6 = [accountCopy br_dsid];
            v65 = brc_bread_crumbs();
            v66 = brc_default_log();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = identifier2;
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
            v170 = newSyncProxy5;
            v69 = &v171;
            v70 = identifier2;
            v171 = v70;
            br_dsid7 = br_dsid6;
            v172 = br_dsid7;
            v72 = newSyncProxy5;
            dispatch_async(v67, v169);
          }

          else
          {
            v62 = br_needsToVerifyTerms2;
            identifier3 = [v12 identifier];
            br_dsid7 = [v12 br_dsid];
            v74 = brc_bread_crumbs();
            v75 = brc_default_log();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = identifier3;
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
            v167 = newSyncProxy5;
            v69 = &v168;
            v70 = identifier3;
            v168 = v70;
            v77 = newSyncProxy5;
            dispatch_sync(v76, v166);
          }

          br_needsToVerifyTerms = v152;
          br_needsToVerifyTerms2 = v62;
          br_isEnabledForCloudDocs = v146;
          br_isEnabledForCloudDocs2 = v61;
          v31 = v149;
        }

        goto LABEL_92;
      }
    }

    br_dsid8 = [accountCopy br_dsid];
    v28 = qword_C548;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2574;
    block[3] = &unk_8238;
    v174 = br_dsid8;
    v29 = br_needsToVerifyTerms2;
    v30 = br_dsid8;
    dispatch_async(v28, block);

    br_needsToVerifyTerms2 = v29;
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