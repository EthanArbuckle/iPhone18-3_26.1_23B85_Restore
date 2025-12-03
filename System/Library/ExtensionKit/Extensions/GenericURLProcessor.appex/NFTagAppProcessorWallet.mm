@interface NFTagAppProcessorWallet
- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing;
@end

@implementation NFTagAppProcessorWallet

- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing
{
  tagCopy = tag;
  processingCopy = processing;
  *processing = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  records = [messsage records];
  v9 = [records countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = *v70;
  v12 = &_s19ExtensionFoundation03AppA0PAAE4mainyyKFZ_ptr;
  v67 = records;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v70 != v11)
      {
        objc_enumerationMutation(records);
      }

      v14 = *(*(&v69 + 1) + 8 * v13);
      if ([v14 isURIRecord])
      {
        decode = [v14 decode];
        v16 = [v12[90] componentsWithString:decode];
        v17 = v16;
        if (v16)
        {
          scheme = [v16 scheme];
          lowercaseString = [scheme lowercaseString];
          if ([lowercaseString isEqualToString:@"wallet"])
          {
            host = [v17 host];
            lowercaseString2 = [host lowercaseString];
            if ([lowercaseString2 isEqualToString:@"activate"])
            {
              v68 = decode;
              path = [v17 path];
              lowercaseString3 = [path lowercaseString];
              if ([lowercaseString3 isEqualToString:@"/nfc"])
              {
                user = [v17 user];
                if (!user)
                {
                  password = [v17 password];
                  if (!password)
                  {
                    port = [v17 port];
                    if (!port)
                    {
                      fragment = [v17 fragment];

                      records = v67;
                      decode = v68;
                      v12 = &_s19ExtensionFoundation03AppA0PAAE4mainyyKFZ_ptr;
                      if (!fragment)
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
                          tagID = [tagCopy tagID];
                          v36 = 45;
                          if (isMetaClass)
                          {
                            v36 = 43;
                          }

                          v30(6, "%c[%{public}s %{public}s]:%i Posting Wallet Tag notification with UID : %{public}@", v36, ClassName, Name, 70, tagID);
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
                          tagID2 = [tagCopy tagID];
                          *buf = 67110146;
                          v74 = v39;
                          v75 = 2082;
                          v76 = v40;
                          v77 = 2082;
                          v78 = v41;
                          v79 = 1024;
                          v80 = 70;
                          v81 = 2114;
                          v82 = tagID2;
                          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Posting Wallet Tag notification with UID : %{public}@", buf, 0x2Cu);
                        }

                        v43 = NFSharedSignpostLog();
                        if (os_signpost_enabled(v43))
                        {
                          *buf = 0;
                          _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", "", buf, 2u);
                        }

                        v44 = [NSString alloc];
                        tagID3 = [tagCopy tagID];
                        nF_asHexString = [tagID3 NF_asHexString];
                        v47 = [v44 initWithFormat:@"%@?uid=%@", v68, nF_asHexString];

                        v48 = objc_alloc_init(SFClient);
                        if (v48)
                        {
                          sub_100003770(self, v48, v47, 5);
                          v49 = processingCopy;
                        }

                        else
                        {
                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v50 = NFLogGetLogger();
                          v49 = processingCopy;
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

                        records = v67;
                        *v49 = 1;

                        goto LABEL_26;
                      }

                      goto LABEL_20;
                    }

                    password = 0;
                  }

                  user = 0;
                }
              }

              records = v67;
              decode = v68;
            }

            v12 = &_s19ExtensionFoundation03AppA0PAAE4mainyyKFZ_ptr;
          }
        }

LABEL_20:
      }

      v13 = v13 + 1;
    }

    while (v10 != v13);
    v27 = [records countByEnumeratingWithState:&v69 objects:v83 count:16];
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