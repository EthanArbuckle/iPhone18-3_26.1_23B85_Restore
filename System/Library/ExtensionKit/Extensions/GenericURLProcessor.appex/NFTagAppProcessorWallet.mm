@interface NFTagAppProcessorWallet
- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6;
@end

@implementation NFTagAppProcessorWallet

- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6
{
  v65 = a5;
  v63 = a6;
  *a6 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v8 = [a3 records];
  v9 = [v8 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = *v70;
  v12 = &_s19ExtensionFoundation03AppA0PAAE4mainyyKFZ_ptr;
  v67 = v8;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v70 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v69 + 1) + 8 * v13);
      if ([v14 isURIRecord])
      {
        v15 = [v14 decode];
        v16 = [v12[90] componentsWithString:v15];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 scheme];
          v19 = [v18 lowercaseString];
          if ([v19 isEqualToString:@"wallet"])
          {
            v20 = [v17 host];
            v21 = [v20 lowercaseString];
            if ([v21 isEqualToString:@"activate"])
            {
              v68 = v15;
              v22 = [v17 path];
              v23 = [v22 lowercaseString];
              if ([v23 isEqualToString:@"/nfc"])
              {
                v24 = [v17 user];
                if (!v24)
                {
                  v25 = [v17 password];
                  if (!v25)
                  {
                    v26 = [v17 port];
                    if (!v26)
                    {
                      v66 = [v17 fragment];

                      v8 = v67;
                      v15 = v68;
                      v12 = &_s19ExtensionFoundation03AppA0PAAE4mainyyKFZ_ptr;
                      if (!v66)
                      {
                        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                        Logger = NFLogGetLogger();
                        if (Logger)
                        {
                          v30 = Logger;
                          Class = object_getClass(self);
                          isMetaClass = class_isMetaClass(Class);
                          ClassName = object_getClassName(self);
                          Name = sel_getName(a2);
                          v35 = [v65 tagID];
                          v36 = 45;
                          if (isMetaClass)
                          {
                            v36 = 43;
                          }

                          v30(6, "%c[%{public}s %{public}s]:%i Posting Wallet Tag notification with UID : %{public}@", v36, ClassName, Name, 70, v35);
                        }

                        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                        v37 = NFSharedLogGetLogger();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                        {
                          v38 = object_getClass(self);
                          if (class_isMetaClass(v38))
                          {
                            v39 = 43;
                          }

                          else
                          {
                            v39 = 45;
                          }

                          v40 = object_getClassName(self);
                          v41 = sel_getName(a2);
                          v42 = [v65 tagID];
                          *buf = 67110146;
                          v74 = v39;
                          v75 = 2082;
                          v76 = v40;
                          v77 = 2082;
                          v78 = v41;
                          v79 = 1024;
                          v80 = 70;
                          v81 = 2114;
                          v82 = v42;
                          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Posting Wallet Tag notification with UID : %{public}@", buf, 0x2Cu);
                        }

                        v43 = NFSharedSignpostLog();
                        if (os_signpost_enabled(v43))
                        {
                          *buf = 0;
                          _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", "", buf, 2u);
                        }

                        v44 = [NSString alloc];
                        v45 = [v65 tagID];
                        v46 = [v45 NF_asHexString];
                        v47 = [v44 initWithFormat:@"%@?uid=%@", v68, v46];

                        v48 = objc_alloc_init(SFClient);
                        if (v48)
                        {
                          sub_100003770(self, v48, v47, 5);
                          v49 = v63;
                        }

                        else
                        {
                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v50 = NFLogGetLogger();
                          v49 = v63;
                          if (v50)
                          {
                            v51 = v50;
                            v52 = object_getClass(self);
                            v53 = class_isMetaClass(v52);
                            v54 = object_getClassName(self);
                            v61 = sel_getName(a2);
                            v55 = 45;
                            if (v53)
                            {
                              v55 = 43;
                            }

                            v51(3, "%c[%{public}s %{public}s]:%i Resource error; dropping notification", v55, v54, v61, 79);
                          }

                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v56 = NFSharedLogGetLogger();
                          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                          {
                            v57 = object_getClass(self);
                            if (class_isMetaClass(v57))
                            {
                              v58 = 43;
                            }

                            else
                            {
                              v58 = 45;
                            }

                            v59 = object_getClassName(self);
                            v60 = sel_getName(a2);
                            *buf = 67109890;
                            v74 = v58;
                            v75 = 2082;
                            v76 = v59;
                            v77 = 2082;
                            v78 = v60;
                            v79 = 1024;
                            v80 = 79;
                            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Resource error; dropping notification", buf, 0x22u);
                          }
                        }

                        v8 = v67;
                        *v49 = 1;

                        goto LABEL_26;
                      }

                      goto LABEL_20;
                    }

                    v25 = 0;
                  }

                  v24 = 0;
                }
              }

              v8 = v67;
              v15 = v68;
            }

            v12 = &_s19ExtensionFoundation03AppA0PAAE4mainyyKFZ_ptr;
          }
        }

LABEL_20:
      }

      v13 = v13 + 1;
    }

    while (v10 != v13);
    v27 = [v8 countByEnumeratingWithState:&v69 objects:v83 count:16];
    v10 = v27;
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_26:

  return 0;
}

@end