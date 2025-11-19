@interface NFTagAppLauncher
- (NFTagAppLauncher)init;
- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6;
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

- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6
{
  v10 = a3;
  *a6 = 0;
  *a4 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = [v10 records];
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v39 = self;
    v14 = *v41;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        if ([v16 isURIRecord])
        {
          v17 = [v16 decode];
          v18 = [NSURLComponents componentsWithString:v17];
          if (v18)
          {
            v20 = v18;
            v21 = v10;
            *a4 = v10;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v23 = Logger;
              Class = object_getClass(v39);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v39);
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

              v23(6, "%c[%{public}s %{public}s]:%i Found App URL: %@, Orig msg: %@", v30, ClassName, v38, 69, v29, v10);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = object_getClass(v39);
              if (class_isMetaClass(v32))
              {
                v33 = 43;
              }

              else
              {
                v33 = 45;
              }

              v34 = object_getClassName(v39);
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
              v55 = v10;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found App URL: %@, Orig msg: %@", buf, 0x36u);
            }

            v19 = [v20 URL];

            goto LABEL_22;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v40 objects:v56 count:16];
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