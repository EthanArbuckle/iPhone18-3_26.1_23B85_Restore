@interface AppInstallPreambleTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation AppInstallPreambleTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(&self->super._finished + 1) databaseID]);
  v6 = sub_100402BD0(AppInstallInfo, v5);
  v7 = *(&self->_package + 2);
  *(&self->_package + 2) = v6;

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(&self->_package + 2);
    if (Property)
    {
      Property = objc_getProperty(Property, v9, 80, 1);
    }

    v11 = Property;
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Performing preamble checks", buf, 0xCu);
  }

  if (sub_10023E604(*(&self->_install + 2), @"archive_type") <= 1)
  {
    v12 = *(&self->super._finished + 1);
    v160[1] = 0;
    v13 = sub_1003A07F4(v12);
    v15 = 0;
    v16 = *(&self->_package + 2);
    if (v16)
    {
      v16 = objc_getProperty(v16, v14, 80, 1);
    }

    v18 = v16;
    if (v13)
    {
      objc_setProperty_atomic(v13, v17, v18, 48);
    }

    v160[0] = v15;
    v19 = sub_1003A040C(v13, v160);
    v147 = v160[0];

    if (!v19)
    {
      v20 = +[_TtC9appstored13RestoreKeeper shared];
      v21 = sub_10040908C(*(&self->super._finished + 1));
      v22 = sub_100408EB0(*(&self->super._finished + 1));
      v23 = [v20 restoringCoordinatorForBundleID:v21 logKey:v22];

      if (!v23)
      {
        v46 = v147;
        v47 = sub_100388188(AppInstallPreambleResponse, [*(&self->super._finished + 1) databaseID], v147);
LABEL_35:
        v49 = v47;
LABEL_36:

        selfCopy = self;
        objc_sync_enter(selfCopy);
        v51 = *(&selfCopy->_installInfo + 2);
        *(&selfCopy->_installInfo + 2) = v49;

        objc_sync_exit(selfCopy);
        handlerCopy[2](handlerCopy, 0);
        goto LABEL_37;
      }

      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v98 = *(&self->_package + 2);
        if (v98)
        {
          v98 = objc_getProperty(v98, v25, 80, 1);
        }

        v99 = v98;
        *buf = 138412290;
        *&buf[4] = v99;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@] Found an existing restoring coordinator", buf, 0xCu);
      }
    }

    v26 = sub_10023E0F8(*(&self->super._finished + 1), @"cancel_if_duplicate");
    bOOLValue = [v26 BOOLValue];

    v28 = sub_10023E0F8(*(&self->super._finished + 1), @"item_id");
    v29 = sub_10023E0F8(*(&self->super._finished + 1), @"bundle_id");
    v30 = v29;
    v145 = handlerCopy;
    v146 = v19;
    if (v28)
    {
      v31 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v28 error:{"unsignedLongLongValue"), 0}];
    }

    else
    {
      if (!v29)
      {
        v35 = 0;
        goto LABEL_31;
      }

      v31 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v29 allowPlaceholder:0 error:0];
    }

    v35 = v31;
    if (v31)
    {
      if (bOOLValue)
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v100 = *(&self->_package + 2);
          if (v100)
          {
            v100 = objc_getProperty(v100, v37, 80, 1);
          }

          v101 = v100;
          v102 = v101;
          *buf = 138412802;
          if (v28)
          {
            v103 = v28;
          }

          else
          {
            v103 = v30;
          }

          *&buf[4] = v101;
          v162 = 2114;
          v163 = v35;
          v164 = 2114;
          v165 = v103;
        }
        distributorID = ;
        v39 = ASDErrorWithDescription();
LABEL_28:

        goto LABEL_32;
      }

      if (sub_10040C5B4(v31))
      {
        v40 = *(&self->super._finished + 1);
        if (!v40 || sub_10023E604(v40, @"source_type") != 2)
        {
          iTunesMetadata = [v35 iTunesMetadata];
          distributorInfo = [iTunesMetadata distributorInfo];
          distributorID = [distributorInfo distributorID];

          v43 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v133 = *(&self->_package + 2);
            if (v133)
            {
              v133 = objc_getProperty(v133, v44, 80, 1);
            }

            v134 = v133;
            v135 = v134;
            *buf = 138413058;
            if (v28)
            {
              v136 = v28;
            }

            else
            {
              v136 = v30;
            }

            *&buf[4] = v134;
            v162 = 2114;
            v163 = v35;
            v164 = 2114;
            v165 = v136;
            v166 = 2114;
            v167 = distributorID;
          }
          v45 = ;
          v39 = ASDErrorWithDescription();

          goto LABEL_28;
        }
      }
    }

LABEL_31:
    v39 = 0;
LABEL_32:

    v48 = v39;
    if (v39)
    {
LABEL_33:
      v46 = v39;

      handlerCopy = v145;
LABEL_34:
      v19 = v146;
      v47 = sub_100388100(AppInstallPreambleResponse, [*(&self->super._finished + 1) databaseID], v146, v46);
      goto LABEL_35;
    }

    v52 = *(&self->super._finished + 1);
    if (!v52)
    {
      goto LABEL_53;
    }

    v53 = sub_10023E604(v52, @"automatic_type");
    if (v53 == 2)
    {
      v60 = [LSApplicationRecord alloc];
      v61 = sub_10040908C(*(&self->super._finished + 1));
      v57 = [v60 initWithBundleIdentifier:v61 allowPlaceholder:0 error:0];

      if (!v57 || ([v57 isBeta] & 1) == 0)
      {
        v58 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v131 = *(&self->_package + 2);
          if (v131)
          {
            v131 = objc_getProperty(v131, v63, 80, 1);
          }

          v132 = v131;
          *buf = 138412290;
          *&buf[4] = v132;
          _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[%@] Canceling automatic installation because beta version of app is not installed", buf, 0xCu);
        }

        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (v53 == 1)
    {
      if (sub_1003D6624())
      {
        if (sub_10030B504() && sub_10030B58C())
        {
          v54 = +[LSApplicationWorkspace defaultWorkspace];
          v55 = [v54 applicationIsInstalled:@"com.apple.AppStore"];

          if ((v55 & 1) == 0)
          {
            v56 = sub_10040969C(*(&self->super._finished + 1), 0);
            v57 = v56;
            if (v56 && ([v56 deviceBasedVPP] & 1) == 0 && (objc_msgSend(v57, "isB2BCustomApp") & 1) == 0)
            {
              v58 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v143 = *(&self->_package + 2);
                if (v143)
                {
                  v143 = objc_getProperty(v143, v59, 80, 1);
                }

                v144 = v143;
                *buf = 138412290;
                *&buf[4] = v144;
                _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[%@] Automatic download requires App Store to be installed", buf, 0xCu);
              }

LABEL_55:

              v39 = ASDErrorWithDescription();

              goto LABEL_60;
            }

LABEL_52:

            goto LABEL_53;
          }

          goto LABEL_53;
        }

        v64 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v139 = *(&self->_package + 2);
          if (v139)
          {
            v139 = objc_getProperty(v139, v66, 80, 1);
          }

          v140 = v139;
          *buf = 138412290;
          *&buf[4] = v140;
          _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%@] Automatic downloads are not permitted", buf, 0xCu);
        }
      }

      else
      {
        v64 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v137 = *(&self->_package + 2);
          if (v137)
          {
            v137 = objc_getProperty(v137, v65, 80, 1);
          }

          v138 = v137;
          *buf = 138412290;
          *&buf[4] = v138;
          _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%@] Automatic downloads have been disabled", buf, 0xCu);
        }
      }

      v39 = ASDErrorWithDescription();
LABEL_60:
      v67 = v39;
      if (v39)
      {
        goto LABEL_33;
      }

LABEL_61:
      v68 = sub_10023E0F8(*(&self->super._finished + 1), @"supports_32bit_only");
      bOOLValue2 = [v68 BOOLValue];

      if (bOOLValue2)
      {
        v70 = ASDLogHandleForCategory();
        handlerCopy = v145;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v129 = *(&self->_package + 2);
          if (v129)
          {
            v129 = objc_getProperty(v129, v71, 80, 1);
          }

          v130 = v129;
          *buf = 138412290;
          *&buf[4] = v130;
          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "[%@] Application only supports 32-bit architecture", buf, 0xCu);
        }

        v72 = ASDErrorWithDescription();
      }

      else
      {
        v72 = 0;
        handlerCopy = v145;
      }

      v73 = v72;
      v46 = v72;

      if (v72)
      {
        goto LABEL_34;
      }

      if (+[AMSDevice deviceIsAppleTV])
      {
        v74 = sub_10023E0F8(*(&self->super._finished + 1), @"restore_type");
        integerValue = [v74 integerValue];

        if (integerValue == 1)
        {
          v159 = 0;
          v76 = sub_1002499D4(v146, &v159);
          v77 = v159;
          v46 = v77;
          if ((v76 & 1) == 0)
          {
            v49 = sub_100388200(AppInstallPreambleResponse, [*(&self->super._finished + 1) databaseID], v146, v77);
            v19 = v146;
            goto LABEL_36;
          }

          v148 = v77;
          v78 = v146;
        }

        else
        {
          v148 = 0;
          v78 = v146;
        }
      }

      else
      {
        v148 = 0;
        v78 = v146;
      }

      if (!v78)
      {
        goto LABEL_90;
      }

      if ([v78 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPlaceholderPromise] && objc_msgSend(v78, "creatorIdentifier") == 1 && (sub_100248F9C(v78) & 1) == 0)
      {
        v79 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v81 = *(&self->_package + 2);
          if (v81)
          {
            v81 = objc_getProperty(v81, v80, 80, 1);
          }

          v82 = v81;
          *buf = 138412290;
          *&buf[4] = v82;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "[%@] Setting a placeholder promise in Preamble because the coordinator doesn't already have one", buf, 0xCu);
        }

        v83 = *(&self->super._finished + 1);
        v84 = *(&self->_install + 2);
        v158 = v148;
        v85 = sub_1002FFD28(v83, v84, &v158);
        v86 = v158;

        v157 = v86;
        v87 = sub_1002FE870(v85, &v157);
        v46 = v157;

        if (v87)
        {
          v156 = v46;
          v88 = sub_10024A138(v146, v87, &v156);
          v89 = v156;

          if (v88)
          {
            v148 = v89;

            v78 = v146;
            goto LABEL_83;
          }

          [v87 cancelForReason:v89 client:1 error:0];
          v46 = v89;
        }

        v19 = v146;
        v49 = sub_100388200(AppInstallPreambleResponse, [*(&self->super._finished + 1) databaseID], v146, v46);

        goto LABEL_36;
      }

LABEL_83:
      if ([v78 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithInitialODRAssetPromises])
      {
        if (sub_10023E604(*(&self->_install + 2), @"initial_odr_size") >= 1)
        {
          v90 = *(&self->super._finished + 1);
          v155 = 0;
          v91 = sub_10040969C(v90, &v155);
          v92 = v155;
          if (!v92)
          {
            v104 = sub_100270EE8(ODRInstallContext, v91);
            v105 = sub_10023E644(*(&self->super._finished + 1), @"log_code");
            v106 = [v105 isEqualToString:@"APR"];
            if (v104)
            {
              v104[16] = v106;
            }

            v108 = sub_10023E644(*(&self->super._finished + 1), @"client_id");
            if (v104)
            {
              objc_setProperty_atomic_copy(v104, v107, v108, 80);
            }

            uniqueIdentifier = [v78 uniqueIdentifier];
            if (v104)
            {
              objc_setProperty_atomic_copy(v104, v109, uniqueIdentifier, 40);
            }

            v111 = sub_10023E604(*(&self->super._finished + 1), @"restore_type");
            if (v104)
            {
              v104[19] = v111 != 0;
            }

            v113 = sub_10023E644(*(&self->_install + 2), @"variant_id");
            if (v104)
            {
              objc_setProperty_atomic_copy(v104, v112, v113, 96);
            }

            v114 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              v116 = *(&self->_package + 2);
              if (v116)
              {
                v116 = objc_getProperty(v116, v115, 80, 1);
              }

              v118 = v116;
              if (v104)
              {
                v119 = objc_getProperty(v104, v117, 64, 1);
              }

              else
              {
                v119 = 0;
              }

              v120 = v119;
              *buf = 138412546;
              *&buf[4] = v118;
              v162 = 2114;
              v163 = v120;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[%@] Checking for initial/prefetch downloads with key %{public}@", buf, 0x16u);
            }

            v121 = sub_1003F281C();
            sub_1003F6C18(v121, v104);

LABEL_118:
            v97 = v148;

            v78 = v146;
LABEL_119:
            sub_1002554E8(AppProgressCoordinator, *(&self->super._finished + 1), *(&self->_install + 2), @"Restart");
            v122 = sub_10023E0F8(*(&self->_install + 2), @"data_promise_id");
            if (v122)
            {
              v154 = v97;
              v123 = sub_10029B3B8([CoordinatorPromiseProvider alloc], v78, &v154);
              v124 = v154;

              v125 = sub_10029B4F0(v123, v122, 0);
              if ([v125 isComplete])
              {
                databaseID = [*(&self->super._finished + 1) databaseID];
                v127 = v78;
                objc_opt_self();
                v49 = sub_100389614([AppInstallPreambleResponse alloc], databaseID, 3, v127, 0);

                handlerCopy = v145;
LABEL_125:

                v46 = v124;
                v19 = v146;
                goto LABEL_36;
              }
            }

            else
            {
              v124 = v97;
            }

            databaseID2 = [*(&self->super._finished + 1) databaseID];
            v123 = v146;
            objc_opt_self();
            v49 = sub_100389614([AppInstallPreambleResponse alloc], databaseID2, 1, v123, 0);
            goto LABEL_125;
          }

          v93 = v92;
          v94 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v141 = *(&self->_package + 2);
            if (v141)
            {
              v141 = objc_getProperty(v141, v95, 80, 1);
            }

            v142 = v141;
            *buf = 138412546;
            *&buf[4] = v142;
            v162 = 2114;
            v163 = v93;
            _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "[%@] Error getting store metadata: %{public}@", buf, 0x16u);

            v78 = v146;
          }
        }

        *buf = 0;
        v96 = sub_100249914(v78, buf);
        v91 = *buf;
        if ((v96 & 1) == 0)
        {
          v49 = sub_100388188(AppInstallPreambleResponse, [*(&self->super._finished + 1) databaseID], v91);

          v19 = v146;
          v46 = v148;
          goto LABEL_36;
        }

        goto LABEL_118;
      }

LABEL_90:
      v97 = v148;
      goto LABEL_119;
    }

LABEL_53:
    v62 = 0;
    goto LABEL_61;
  }

  v149[0] = _NSConcreteStackBlock;
  v149[1] = 3221225472;
  v150 = sub_1003894FC;
  v151 = &unk_100525F20;
  selfCopy2 = self;
  v153 = handlerCopy;
  v32 = v149;
  v33 = ASDErrorWithDescription();
  v34 = sub_100388100(AppInstallPreambleResponse, [*(&self->super._finished + 1) databaseID], 0, v33);
  v150(v32, v34);

LABEL_37:
}

@end