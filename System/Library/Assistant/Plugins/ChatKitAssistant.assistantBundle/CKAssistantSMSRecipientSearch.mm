@interface CKAssistantSMSRecipientSearch
- (id)_oldSearch;
- (id)_perform;
- (id)_search;
- (id)_validate;
- (void)performWithCompletion:(id)completion;
@end

@implementation CKAssistantSMSRecipientSearch

- (id)_search
{
  v85 = objc_alloc_init(SASmsRecipientSearchCompleted);
  v107 = +[NSMutableArray array];
  v108 = +[NSMutableDictionary dictionary];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      recipients = [(CKAssistantSMSRecipientSearch *)self recipients];
      *buf = 138412290;
      *&buf[4] = recipients;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Performing fast search path with recipients: %@", buf, 0xCu);
    }
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = [(CKAssistantSMSRecipientSearch *)self recipients];
  v88 = [obj countByEnumeratingWithState:&v156 objects:v175 count:16];
  if (v88)
  {
    v86 = *v157;
    do
    {
      v5 = 0;
      do
      {
        if (*v157 != v86)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v87 = v5;
        v109 = *(*(&v156 + 1) + 8 * v5);
        v7 = +[IMContactStore sharedInstance];
        internalGUID = [v109 internalGUID];
        v90 = [v7 fetchCNContactWithIdentifier:internalGUID];

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            internalGUID2 = [v109 internalGUID];
            v11 = internalGUID2;
            *buf = 138412546;
            v12 = @"YES";
            if (!v90)
            {
              v12 = @"NO";
            }

            *&buf[4] = internalGUID2;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Found record for internal GUID %@: %@", buf, 0x16u);
          }
        }

        if ([v90 count])
        {
          v146 = 0uLL;
          v147 = 0uLL;
          v144 = 0uLL;
          v145 = 0uLL;
          emails2 = v90;
          v92 = [emails2 countByEnumeratingWithState:&v144 objects:v172 count:16];
          if (v92)
          {
            v91 = *v145;
            do
            {
              for (i = 0; i != v92; i = i + 1)
              {
                if (*v145 != v91)
                {
                  objc_enumerationMutation(emails2);
                }

                v97 = *(*(&v144 + 1) + 8 * i);
                phoneNumbers = [v97 phoneNumbers];
                v99 = +[NSMutableArray array];
                if ([phoneNumbers count])
                {
                  v142 = 0u;
                  v143 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v100 = phoneNumbers;
                  v104 = [v100 countByEnumeratingWithState:&v140 objects:v171 count:16];
                  if (v104)
                  {
                    v102 = *v141;
                    do
                    {
                      for (j = 0; j != v104; j = j + 1)
                      {
                        if (*v141 != v102)
                        {
                          objc_enumerationMutation(v100);
                        }

                        v14 = *(*(&v140 + 1) + 8 * j);
                        value = [v14 value];
                        stringValue = [value stringValue];

                        label = [v14 label];
                        if (IMOSLoggingEnabled())
                        {
                          v17 = OSLogHandleForIMFoundationCategory();
                          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412546;
                            *&buf[4] = stringValue;
                            *&buf[12] = 2112;
                            *&buf[14] = label;
                            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Found number %@ for label %@", buf, 0x16u);
                          }
                        }

                        if (stringValue)
                        {
                          v18 = [CKAssistantSearchUtilities canonicalizeNumber:stringValue];
                          [v107 addObject:v18];
                          [v108 setObject:v109 forKey:v18];
                          if (label)
                          {
                            v138 = 0u;
                            v139 = 0u;
                            v136 = 0u;
                            v137 = 0u;
                            phones = [v109 phones];
                            v20 = [phones countByEnumeratingWithState:&v136 objects:v170 count:16];
                            if (v20)
                            {
                              v21 = *v137;
                              while (2)
                              {
                                for (k = 0; k != v20; k = k + 1)
                                {
                                  if (*v137 != v21)
                                  {
                                    objc_enumerationMutation(phones);
                                  }

                                  v23 = *(*(&v136 + 1) + 8 * k);
                                  label2 = [v23 label];
                                  v25 = [label2 isEqualToString:label];

                                  if (v25)
                                  {
                                    [v23 setNumber:v18];
                                    [v99 addObject:v23];
                                    goto LABEL_44;
                                  }
                                }

                                v20 = [phones countByEnumeratingWithState:&v136 objects:v170 count:16];
                                if (v20)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

LABEL_44:
                          }
                        }
                      }

                      v104 = [v100 countByEnumeratingWithState:&v140 objects:v171 count:16];
                    }

                    while (v104);
                  }
                }

                [v109 setPhones:v99];
                emailAddresses = [v97 emailAddresses];
                v98 = +[NSMutableArray array];
                if ([emailAddresses count])
                {
                  v134 = 0u;
                  v135 = 0u;
                  v132 = 0u;
                  v133 = 0u;
                  v101 = emailAddresses;
                  v105 = [v101 countByEnumeratingWithState:&v132 objects:v169 count:16];
                  if (v105)
                  {
                    v103 = *v133;
                    do
                    {
                      for (m = 0; m != v105; m = m + 1)
                      {
                        if (*v133 != v103)
                        {
                          objc_enumerationMutation(v101);
                        }

                        v27 = *(*(&v132 + 1) + 8 * m);
                        value2 = [v27 value];
                        label3 = [v27 label];
                        if (IMOSLoggingEnabled())
                        {
                          v29 = OSLogHandleForIMFoundationCategory();
                          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412546;
                            *&buf[4] = value2;
                            *&buf[12] = 2112;
                            *&buf[14] = label3;
                            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Found email %@ for label %@", buf, 0x16u);
                          }
                        }

                        if (value2)
                        {
                          v30 = [CKAssistantSearchUtilities canonicalizeNumber:value2];
                          [v107 addObject:v30];
                          [v108 setObject:v109 forKey:v30];
                          if (label3)
                          {
                            v130 = 0u;
                            v131 = 0u;
                            v128 = 0u;
                            v129 = 0u;
                            emails = [v109 emails];
                            v32 = [emails countByEnumeratingWithState:&v128 objects:v168 count:16];
                            if (v32)
                            {
                              v33 = *v129;
                              while (2)
                              {
                                for (n = 0; n != v32; n = n + 1)
                                {
                                  if (*v129 != v33)
                                  {
                                    objc_enumerationMutation(emails);
                                  }

                                  v35 = *(*(&v128 + 1) + 8 * n);
                                  label4 = [v35 label];
                                  v37 = [label4 isEqualToString:label3];

                                  if (v37)
                                  {
                                    [v35 setEmailAddress:v30];
                                    [v98 addObject:v35];
                                    goto LABEL_71;
                                  }
                                }

                                v32 = [emails countByEnumeratingWithState:&v128 objects:v168 count:16];
                                if (v32)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

LABEL_71:
                          }
                        }
                      }

                      v105 = [v101 countByEnumeratingWithState:&v132 objects:v169 count:16];
                    }

                    while (v105);
                  }
                }

                [v109 setEmails:v98];
              }

              v92 = [emails2 countByEnumeratingWithState:&v144 objects:v172 count:16];
            }

            while (v92);
          }
        }

        else
        {
          v154 = 0uLL;
          v155 = 0uLL;
          v152 = 0uLL;
          v153 = 0uLL;
          phones2 = [v109 phones];
          v39 = [phones2 countByEnumeratingWithState:&v152 objects:v174 count:16];
          if (v39)
          {
            v40 = *v153;
            do
            {
              for (ii = 0; ii != v39; ii = ii + 1)
              {
                if (*v153 != v40)
                {
                  objc_enumerationMutation(phones2);
                }

                number = [*(*(&v152 + 1) + 8 * ii) number];
                v43 = [CKAssistantSearchUtilities canonicalizeNumber:number];

                if (v43)
                {
                  internalGUID3 = [v109 internalGUID];
                  if (internalGUID3)
                  {
                    [v109 setInternalGUID:internalGUID3];
                  }

                  else
                  {
                    v45 = +[NSUUID UUID];
                    uUIDString = [v45 UUIDString];
                    [v109 setInternalGUID:uUIDString];
                  }

                  [v108 setObject:v109 forKey:v43];
                  [v107 addObject:v43];
                }
              }

              v39 = [phones2 countByEnumeratingWithState:&v152 objects:v174 count:16];
            }

            while (v39);
          }

          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          emails2 = [v109 emails];
          v47 = [emails2 countByEnumeratingWithState:&v148 objects:v173 count:16];
          if (v47)
          {
            v48 = *v149;
            do
            {
              for (jj = 0; jj != v47; jj = jj + 1)
              {
                if (*v149 != v48)
                {
                  objc_enumerationMutation(emails2);
                }

                emailAddress = [*(*(&v148 + 1) + 8 * jj) emailAddress];
                v51 = [CKAssistantSearchUtilities canonicalizeNumber:emailAddress];

                if (v51)
                {
                  internalGUID4 = [v109 internalGUID];
                  if (internalGUID4)
                  {
                    [v109 setInternalGUID:internalGUID4];
                  }

                  else
                  {
                    v53 = +[NSUUID UUID];
                    uUIDString2 = [v53 UUIDString];
                    [v109 setInternalGUID:uUIDString2];
                  }

                  [v108 setObject:v109 forKey:v51];
                  [v107 addObject:v51];
                }
              }

              v47 = [emails2 countByEnumeratingWithState:&v148 objects:v173 count:16];
            }

            while (v47);
          }
        }

        v5 = v87 + 1;
      }

      while ((v87 + 1) != v88);
      v88 = [obj countByEnumeratingWithState:&v156 objects:v175 count:16];
    }

    while (v88);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v165 = sub_4FF8;
  v166 = sub_5008;
  v167 = 0;
  v122 = _NSConcreteStackBlock;
  v123 = 3221225472;
  v124 = sub_5010;
  v125 = &unk_104E8;
  v127 = buf;
  v106 = v107;
  v126 = v106;
  IMDPersistencePerformBlock();
  v110 = +[NSMutableArray array];
  v113 = +[NSMutableArray array];
  v55 = +[NSMutableArray array];
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v56 = *(*&buf[8] + 40);
  v57 = [v56 countByEnumeratingWithState:&v118 objects:v163 count:16];
  if (v57)
  {
    v58 = *v119;
    do
    {
      for (kk = 0; kk != v57; kk = kk + 1)
      {
        if (*v119 != v58)
        {
          objc_enumerationMutation(v56);
        }

        v60 = *(*(&v118 + 1) + 8 * kk);
        v61 = [v108 objectForKey:v60];
        internalGUID5 = [v61 internalGUID];
        v63 = [v55 containsObject:internalGUID5];

        if ((v63 & 1) == 0)
        {
          v64 = objc_alloc_init(SAPersonAttribute);
          [v64 setData:v60];
          if (IMOSLoggingEnabled())
          {
            v65 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              *v161 = 138412290;
              v162 = v61;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "Setting SAPerson as object on attribute: %@", v161, 0xCu);
            }
          }

          [v64 setObject:v61];
          fullName = [v61 fullName];
          [v64 setDisplayText:fullName];

          internalGUID6 = [v61 internalGUID];
          [v55 addObject:internalGUID6];

          [v113 addObject:v64];
          [v110 addObject:v60];
        }
      }

      v57 = [v56 countByEnumeratingWithState:&v118 objects:v163 count:16];
    }

    while (v57);
  }

  [v85 setRecipients:v113];
  if (IMOSLoggingEnabled())
  {
    v68 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *v161 = 138412290;
      v162 = v85;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "recipient search result %@", v161, 0xCu);
    }
  }

  if (+[IMDowntimeController isContactLimitsFeatureEnabled](IMDowntimeController, "isContactLimitsFeatureEnabled") && ((IMSharedDowntimeController(), v69 = objc_claimAutoreleasedReturnValue(), v70 = v69, v110) ? (v71 = v110) : (v71 = &__NSArray0__struct), v72 = [v69 allowedToShowConversationWithHandleIDs:v71 sync:1 context:0], v70, (v72 & 1) == 0))
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v74 = v110;
    v75 = [v74 countByEnumeratingWithState:&v114 objects:v160 count:16];
    v76 = SASmsSendErrorRecipientNotWhitelistedErrorCode;
    if (v75)
    {
      v77 = *v115;
      while (2)
      {
        for (mm = 0; mm != v75; mm = mm + 1)
        {
          if (*v115 != v77)
          {
            objc_enumerationMutation(v74);
          }

          v79 = *(*(&v114 + 1) + 8 * mm);
          v80 = +[IMContactStore sharedInstance];
          v81 = [v80 fetchCNContactForHandleID:v79 withKeys:&__NSArray0__struct];
          LOBYTE(v79) = v81 == 0;

          if ((v79 & 1) == 0)
          {
            v76 = SASmsSendErrorScreenTimeRestrictionEnabledErrorCode;
            goto LABEL_138;
          }
        }

        v75 = [v74 countByEnumeratingWithState:&v114 objects:v160 count:16];
        if (v75)
        {
          continue;
        }

        break;
      }
    }

LABEL_138:

    if (IMOSLoggingEnabled())
    {
      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *v161 = 134217984;
        v162 = v76;
        _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "blocking handles due to Screen Time policy, error code: %ld", v161, 0xCu);
      }
    }

    v73 = [[SACommandFailed alloc] initWithErrorCode:v76];
  }

  else
  {
    v73 = v85;
  }

  v83 = v73;

  _Block_object_dispose(buf, 8);

  return v83;
}

- (id)_oldSearch
{
  v62 = objc_alloc_init(SASmsRecipientSearchCompleted);
  v2 = +[NSMutableArray array];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      recipients = [(CKAssistantSMSRecipientSearch *)self recipients];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = recipients;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Performing old search path with recipients: %@", &buf, 0xCu);
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = [(CKAssistantSMSRecipientSearch *)self recipients];
  v72 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
  if (v72)
  {
    v70 = *v105;
    do
    {
      for (i = 0; i != v72; i = i + 1)
      {
        if (*v105 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v104 + 1) + 8 * i);
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        phones = [v6 phones];
        v8 = [phones countByEnumeratingWithState:&v100 objects:v120 count:16];
        if (v8)
        {
          v9 = *v101;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v101 != v9)
              {
                objc_enumerationMutation(phones);
              }

              v11 = *(*(&v100 + 1) + 8 * j);
              number = [v11 number];

              if (number)
              {
                number2 = [v11 number];
                CFArrayAppendValue(v2, [CKAssistantSearchUtilities canonicalizeNumber:number2]);
              }
            }

            v8 = [phones countByEnumeratingWithState:&v100 objects:v120 count:16];
          }

          while (v8);
        }

        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        emails = [v6 emails];
        v15 = [emails countByEnumeratingWithState:&v96 objects:v119 count:16];
        if (v15)
        {
          v16 = *v97;
          do
          {
            for (k = 0; k != v15; k = k + 1)
            {
              if (*v97 != v16)
              {
                objc_enumerationMutation(emails);
              }

              v18 = *(*(&v96 + 1) + 8 * k);
              emailAddress = [v18 emailAddress];

              if (emailAddress)
              {
                emailAddress2 = [v18 emailAddress];
                CFArrayAppendValue(v2, [CKAssistantSearchUtilities canonicalizeNumber:emailAddress2]);
              }
            }

            v15 = [emails countByEnumeratingWithState:&v96 objects:v119 count:16];
          }

          while (v15);
        }
      }

      v72 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
    }

    while (v72);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v115 = 0x3032000000;
  v116 = sub_4FF8;
  v117 = sub_5008;
  v118 = 0;
  v90 = _NSConcreteStackBlock;
  v91 = 3221225472;
  v92 = sub_5A28;
  v93 = &unk_104E8;
  p_buf = &buf;
  v61 = v2;
  v94 = v61;
  IMDPersistencePerformBlock();
  v63 = [[NSMutableArray alloc] initWithCapacity:0];
  for (m = 0; m < [*(*(&buf + 1) + 40) count]; ++m)
  {
    v21 = [*(*(&buf + 1) + 40) objectAtIndex:?];
    v22 = objc_alloc_init(SAPersonAttribute);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    recipients2 = [(CKAssistantSMSRecipientSearch *)self recipients];
    v24 = [recipients2 countByEnumeratingWithState:&v86 objects:v113 count:16];
    v73 = v22;
    if (v24)
    {
      v66 = recipients2;
      v67 = *v87;
      do
      {
        v25 = 0;
        obja = v24;
        do
        {
          if (*v87 != v67)
          {
            objc_enumerationMutation(v66);
          }

          v26 = *(*(&v86 + 1) + 8 * v25);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v71 = v26;
          emails2 = [v26 emails];
          v28 = [emails2 countByEnumeratingWithState:&v82 objects:v112 count:16];
          if (v28)
          {
            v29 = *v83;
            while (2)
            {
              for (n = 0; n != v28; n = n + 1)
              {
                if (*v83 != v29)
                {
                  objc_enumerationMutation(emails2);
                }

                v31 = *(*(&v82 + 1) + 8 * n);
                emailAddress3 = [v31 emailAddress];

                if (emailAddress3)
                {
                  emailAddress4 = [v31 emailAddress];
                  v34 = CFEqual([CKAssistantSearchUtilities canonicalizeNumber:emailAddress4], v21) == 0;

                  if (!v34)
                  {
                    emailAddress5 = [v31 emailAddress];
                    [v73 setData:emailAddress5];

                    [v73 setObject:v71];
                    fullName = [v71 fullName];
                    [v73 setDisplayText:fullName];

                    goto LABEL_48;
                  }
                }
              }

              v28 = [emails2 countByEnumeratingWithState:&v82 objects:v112 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_48:

          object = [v73 object];
          v38 = object == 0;

          if (v38)
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            phones2 = [v71 phones];
            v40 = [phones2 countByEnumeratingWithState:&v78 objects:v111 count:16];
            if (v40)
            {
              v41 = *v79;
              while (2)
              {
                for (ii = 0; ii != v40; ii = ii + 1)
                {
                  if (*v79 != v41)
                  {
                    objc_enumerationMutation(phones2);
                  }

                  v43 = *(*(&v78 + 1) + 8 * ii);
                  number3 = [v43 number];

                  if (number3)
                  {
                    number4 = [v43 number];
                    v46 = CFEqual([CKAssistantSearchUtilities canonicalizeNumber:number4], v21) == 0;

                    if (!v46)
                    {
                      number5 = [v43 number];
                      [v73 setData:number5];

                      [v73 setObject:v71];
                      fullName2 = [v71 fullName];
                      [v73 setDisplayText:fullName2];

                      goto LABEL_60;
                    }
                  }
                }

                v40 = [phones2 countByEnumeratingWithState:&v78 objects:v111 count:16];
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

LABEL_60:
          }

          v25 = v25 + 1;
        }

        while (v25 != obja);
        recipients2 = v66;
        v24 = [v66 countByEnumeratingWithState:&v86 objects:v113 count:16];
      }

      while (v24);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v49 = v63;
    v50 = [v49 countByEnumeratingWithState:&v74 objects:v110 count:16];
    if (v50)
    {
      v51 = *v75;
      while (2)
      {
        for (jj = 0; jj != v50; jj = jj + 1)
        {
          if (*v75 != v51)
          {
            objc_enumerationMutation(v49);
          }

          object2 = [*(*(&v74 + 1) + 8 * jj) object];
          object3 = [v73 object];
          v55 = [object2 isEqual:object3];

          if (v55)
          {

            v57 = v73;
            goto LABEL_73;
          }
        }

        v50 = [v49 countByEnumeratingWithState:&v74 objects:v110 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    v56 = v49;
    v57 = v73;
    [v56 addObject:v73];
LABEL_73:
  }

  [v62 setRecipients:v63];
  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *v108 = 138412290;
      v109 = v62;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Returning recipient old search result %@", v108, 0xCu);
    }
  }

  v59 = v62;

  _Block_object_dispose(&buf, 8);

  return v59;
}

- (id)_perform
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CKAssistantSMSRecipientSearch *)self clientShouldResolvePhonesAndEmails])
  {
    _search = [(CKAssistantSMSRecipientSearch *)self _search];
  }

  else
  {
    _search = [(CKAssistantSMSRecipientSearch *)self _oldSearch];
  }

  return _search;
}

- (id)_validate
{
  recipients = [(CKAssistantSMSRecipientSearch *)self recipients];
  if ([recipients count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SACommandFailed alloc] initWithReason:@"CKAssistantSMSRecipientSearch has nil or empty recipients."];
  }

  return v3;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSRecipientSearch performWithCompletion", buf, 2u);
    }
  }

  _validate = [(CKAssistantSMSRecipientSearch *)self _validate];
  if (_validate)
  {
    _perform = _validate;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "SMSRecipientSearch has nil or empty recipients", v10, 2u);
      }
    }
  }

  else
  {
    _perform = [(CKAssistantSMSRecipientSearch *)self _perform];
  }

  dictionary = [_perform dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end