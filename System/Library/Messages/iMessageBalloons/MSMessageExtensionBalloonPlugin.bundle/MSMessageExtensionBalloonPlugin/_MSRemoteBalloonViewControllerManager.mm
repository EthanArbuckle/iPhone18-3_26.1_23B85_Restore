@interface _MSRemoteBalloonViewControllerManager
+ (id)sharedInstance;
- (_MSRemoteBalloonViewControllerManager)init;
- (void)getRemoteViewControllerForExtension:(id)extension messageIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier item:(id)item connectionHandler:(id)handler;
- (void)removeShelfBalloonViewController;
- (void)removeViewControllerWithIdentifier:(id)identifier;
@end

@implementation _MSRemoteBalloonViewControllerManager

+ (id)sharedInstance
{
  if (qword_571B8 != -1)
  {
    sub_2CE54();
  }

  v3 = qword_571B0;

  return v3;
}

- (_MSRemoteBalloonViewControllerManager)init
{
  v8.receiver = self;
  v8.super_class = _MSRemoteBalloonViewControllerManager;
  v2 = [(_MSRemoteBalloonViewControllerManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    remoteViewControllersByMessageGUID = v2->_remoteViewControllersByMessageGUID;
    v2->_remoteViewControllersByMessageGUID = v3;

    v5 = objc_alloc_init(NSMutableOrderedSet);
    remoteViewControllerIdentifiersLRU = v2->_remoteViewControllerIdentifiersLRU;
    v2->_remoteViewControllerIdentifiersLRU = v5;
  }

  return v2;
}

- (void)removeViewControllerWithIdentifier:(id)identifier
{
  remoteViewControllerIdentifiersLRU = self->_remoteViewControllerIdentifiersLRU;
  identifierCopy = identifier;
  [(NSMutableOrderedSet *)remoteViewControllerIdentifiersLRU removeObject:identifierCopy];
  [(NSMutableDictionary *)self->_remoteViewControllersByMessageGUID removeObjectForKey:identifierCopy];
}

- (void)removeShelfBalloonViewController
{
  [(NSMutableOrderedSet *)self->_remoteViewControllerIdentifiersLRU removeObject:@"_MSRemoteBalloonViewControllerShelfIdentifier"];
  remoteViewControllersByMessageGUID = self->_remoteViewControllersByMessageGUID;

  [(NSMutableDictionary *)remoteViewControllersByMessageGUID removeObjectForKey:@"_MSRemoteBalloonViewControllerShelfIdentifier"];
}

- (void)getRemoteViewControllerForExtension:(id)extension messageIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier item:(id)item connectionHandler:(id)handler
{
  val = extension;
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  itemCopy = item;
  handlerCopy = handler;
  v38 = contextIdentifierCopy;
  v39 = identifierCopy;
  v44 = [_MSRemoteBalloonViewControllerManager viewControllerKeyForMessageIdentifier:identifierCopy contextIdentifier:contextIdentifierCopy];
  v43 = [(NSMutableDictionary *)self->_remoteViewControllersByMessageGUID objectForKeyedSubscript:v44];
  if (!val || v43)
  {
    objc_opt_class();
    v35 = v43;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v43, 0);
      goto LABEL_30;
    }

    v36 = ms_defaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v57 = v43;
      v58 = 2112;
      v59 = v44;
      v60 = 2112;
      v61 = val;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "LiveBubble Not fetching remoteViewController. cached viewController %@, GUID: %@, extension: %@", buf, 0x20u);
    }
  }

  else
  {
    v14 = [identifierCopy isEqualToString:@"_MSRemoteBalloonViewControllerShelfIdentifier"];
    if ((v14 & 1) == 0)
    {
      v15 = +[NSNull null];
      [(NSMutableDictionary *)self->_remoteViewControllersByMessageGUID setObject:v15 forKeyedSubscript:v44];
    }

    objc_initWeak(&location, val);
    v63 = itemCopy;
    v16 = [NSArray arrayWithObjects:&v63 count:1];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10468;
    v50[3] = &unk_4D3F0;
    v50[4] = self;
    v37 = v44;
    v51 = v37;
    objc_copyWeak(&v53, &location);
    v54 = v14 ^ 1;
    v52 = handlerCopy;
    [val instantiateViewControllerWithInputItems:v16 connectionHandler:v50];

    if ((v14 & 1) == 0)
    {
      [(NSMutableOrderedSet *)self->_remoteViewControllerIdentifiersLRU removeObject:v37];
      [(NSMutableOrderedSet *)self->_remoteViewControllerIdentifiersLRU addObject:v37];
      v17 = +[CKUIBehavior sharedBehaviors];
      maxNumExtensionRemoteViewControllers = [v17 maxNumExtensionRemoteViewControllers];

      v19 = [(NSMutableOrderedSet *)self->_remoteViewControllerIdentifiersLRU count];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v20 = [(NSMutableOrderedSet *)self->_remoteViewControllerIdentifiersLRU copy];
      v21 = [v20 countByEnumeratingWithState:&v46 objects:v62 count:16];
      obj = v20;
      if (v21)
      {
        v22 = v19 - maxNumExtensionRemoteViewControllers;
        v23 = *v47;
LABEL_8:
        v24 = 0;
        while (1)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(obj);
          }

          if (v22 < 1)
          {
            break;
          }

          v25 = *(*(&v46 + 1) + 8 * v24);
          v26 = [(NSMutableDictionary *)self->_remoteViewControllersByMessageGUID objectForKeyedSubscript:v25];
          v27 = +[NSNull null];
          v28 = [v26 isEqual:v27];

          if ((v28 & 1) == 0)
          {
            view = [v26 view];
            superview = [view superview];
            v31 = superview == 0;

            if (v31 && ([v25 isEqualToString:v37] & 1) == 0)
            {
              [(NSMutableDictionary *)self->_remoteViewControllersByMessageGUID removeObjectForKey:v25];
              [(NSMutableOrderedSet *)self->_remoteViewControllerIdentifiersLRU removeObject:v25];
              v32 = ms_defaultLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v57 = v25;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "LiveBubble. Evicted remoteViewController with messageGUID: %@", buf, 0xCu);
              }

              --v22;
            }
          }

          if (v21 == ++v24)
          {
            v21 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
            if (v21)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v33 = ms_defaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        remoteViewControllerIdentifiersLRU = self->_remoteViewControllerIdentifiersLRU;
        *buf = 138412290;
        v57 = remoteViewControllerIdentifiersLRU;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "LiveBubble. _remoteViewControllerIdentifiersLRU after update: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  v35 = v43;
LABEL_30:
}

@end