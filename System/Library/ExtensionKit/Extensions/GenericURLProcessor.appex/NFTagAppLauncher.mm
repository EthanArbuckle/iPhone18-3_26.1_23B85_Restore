@interface NFTagAppLauncher
- (NFTagAppLauncher)init;
- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing;
@end

@implementation NFTagAppLauncher

- (NFTagAppLauncher)init
{
  v6.receiver = self;
  v6.super_class = NFTagAppLauncher;
  v2 = [(NFTagAppLauncher *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithObjects:{v2, 0}];
    tagApps = v2->_tagApps;
    v2->_tagApps = v3;
  }

  return v2;
}

- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing
{
  messsageCopy = messsage;
  *processing = 0;
  *message = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  records = [messsageCopy records];
  v12 = [records countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v14 = *v41;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(records);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        if ([v16 isURIRecord])
        {
          decode = [v16 decode];
          v18 = [NSURLComponents componentsWithString:decode];
          if (v18)
          {
            v20 = v18;
            v21 = messsageCopy;
            *message = messsageCopy;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v23 = Logger;
              Class = object_getClass(selfCopy);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(selfCopy);
              v27 = a2;
              Name = sel_getName(a2);
              v29 = [v20 URL];
              v38 = Name;
              a2 = v27;
              v30 = 45;
              if (isMetaClass)
              {
                v30 = 43;
              }

              v23(6, "%c[%{public}s %{public}s]:%i Found App URL: %@, Orig msg: %@", v30, ClassName, v38, 69, v29, messsageCopy);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = object_getClass(selfCopy);
              if (class_isMetaClass(v32))
              {
                v33 = 43;
              }

              else
              {
                v33 = 45;
              }

              v34 = object_getClassName(selfCopy);
              v35 = sel_getName(a2);
              v36 = [v20 URL];
              *buf = 67110402;
              v45 = v33;
              v46 = 2082;
              v47 = v34;
              v48 = 2082;
              v49 = v35;
              v50 = 1024;
              v51 = 69;
              v52 = 2112;
              v53 = v36;
              v54 = 2112;
              v55 = messsageCopy;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found App URL: %@, Orig msg: %@", buf, 0x36u);
            }

            v19 = [v20 URL];

            goto LABEL_22;
          }
        }
      }

      v13 = [records countByEnumeratingWithState:&v40 objects:v56 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_22:

  return v19;
}

@end