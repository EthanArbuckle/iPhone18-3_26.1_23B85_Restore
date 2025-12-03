@interface ChromeDelegateProxy
+ (BOOL)_selectorIsProxiedDelegateMethod:(SEL)method protocol:(id *)protocol isRequiredMethod:(BOOL *)requiredMethod methodDescription:(objc_method_description *)description;
- (BOOL)respondsToSelector:(SEL)selector;
- (ChromeDelegateProxy)initWithChromeViewController:(id)controller;
- (ChromeDelegateProxyListening)listener;
- (ChromeViewController)chromeViewController;
- (id)_protocolForSelector:(SEL)selector;
- (id)initForTesting;
- (id)methodSignatureForSelector:(SEL)selector targets:(id *)targets;
- (void)addAdditionalDelegate:(id)delegate forProtocol:(id)protocol;
- (void)forwardInvocation:(id)invocation;
- (void)removeAdditionalDelegate:(id)delegate forProtocol:(id)protocol;
- (void)setChromeViewController:(id)controller;
@end

@implementation ChromeDelegateProxy

+ (BOOL)_selectorIsProxiedDelegateMethod:(SEL)method protocol:(id *)protocol isRequiredMethod:(BOOL *)requiredMethod methodDescription:(objc_method_description *)description
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  protocols = [self protocols];
  v11 = [protocols countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v11)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v12 = v11;
  protocolCopy = protocol;
  requiredMethodCopy = requiredMethod;
  v13 = *v26;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(protocols);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      MethodDescription = protocol_getMethodDescription(v15, method, 0, 1);
      if (MethodDescription.name)
      {
        types = MethodDescription.types;
        name = MethodDescription.name;
LABEL_14:
        if (protocolCopy)
        {
          v21 = v15;
          *protocolCopy = v15;
        }

        if (requiredMethodCopy)
        {
          *requiredMethodCopy = MethodDescription.name == 0;
        }

        if (description)
        {
          description->name = name;
          description->types = types;
        }

        v18 = 1;
        goto LABEL_21;
      }

      v17 = protocol_getMethodDescription(v15, method, 1, 1);
      if (v17.name)
      {
        name = v17.name;
        types = v17.types;
        goto LABEL_14;
      }
    }

    v12 = [protocols countByEnumeratingWithState:&v25 objects:v29 count:16];
    v18 = 0;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_21:

  return v18;
}

- (ChromeDelegateProxyListening)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (id)initForTesting
{
  v3 = objc_opt_new();
  v4 = [(ChromeDelegateProxy *)self initWithChromeViewController:v3];

  if (v4)
  {
    v4->_forTesting = 1;
  }

  return v4;
}

- (void)setChromeViewController:(id)controller
{
  objc_storeWeak(&self->_chromeViewController, controller);
  chromeMethodSignatures = self->_chromeMethodSignatures;

  [(NSMapTable *)chromeMethodSignatures removeAllObjects];
}

- (void)removeAdditionalDelegate:(id)delegate forProtocol:(id)protocol
{
  delegateCopy = delegate;
  protocolCopy = protocol;
  if (!protocolCopy)
  {
    protocols = [objc_opt_class() protocols];
    protocolCopy = [protocols firstObject];
  }

  v8 = [(NSMapTable *)self->_additionalDelegatesByProtocol objectForKey:protocolCopy];
  v9 = v8;
  if (v8)
  {
    [v8 removeObject:delegateCopy];
    if (![v9 count])
    {
      [(NSMapTable *)self->_additionalDelegatesByProtocol removeObjectForKey:protocolCopy];
    }
  }
}

- (void)addAdditionalDelegate:(id)delegate forProtocol:(id)protocol
{
  delegateCopy = delegate;
  protocolCopy = protocol;
  if (!protocolCopy)
  {
    protocols = [objc_opt_class() protocols];
    protocolCopy = [protocols firstObject];
  }

  v8 = [(NSMapTable *)self->_additionalDelegatesByProtocol objectForKey:protocolCopy];
  if (!v8)
  {
    v8 = +[NSHashTable weakObjectsHashTable];
    [(NSMapTable *)self->_additionalDelegatesByProtocol setObject:v8 forKey:protocolCopy];
  }

  if (([v8 containsObject:delegateCopy] & 1) == 0)
  {
    [v8 addObject:delegateCopy];
  }
}

- (id)_protocolForSelector:(SEL)selector
{
  v5 = NSMapGet(self->_protocolsForSelectors, selector);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (!NSMapGet(self->_nilProtocolsForSelectors, selector))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      protocols = [objc_opt_class() protocols];
      v9 = [protocols countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(protocols);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if (protocol_getMethodDescription(v13, selector, 0, 1).name || protocol_getMethodDescription(v13, selector, 1, 1).name)
            {
              NSMapInsert(self->_protocolsForSelectors, selector, v13);
              v7 = v13;

              goto LABEL_16;
            }
          }

          v10 = [protocols countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      NSMapInsert(self->_nilProtocolsForSelectors, selector, &__kCFBooleanTrue);
    }

    v7 = 0;
  }

LABEL_16:

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector targets:(id *)targets
{
  v52 = 0;
  v50 = 0;
  v51 = 0;
  if (![objc_opt_class() _selectorIsProxiedDelegateMethod:selector protocol:0 isRequiredMethod:&v52 methodDescription:&v50])
  {
    v7 = 0;
    goto LABEL_43;
  }

  if (!targets && (v52 & 1) != 0)
  {
    v7 = [NSMethodSignature signatureWithObjCTypes:v51];
    goto LABEL_43;
  }

  if (targets)
  {
    v8 = [[NSMutableOrderedSet alloc] initWithCapacity:2];
  }

  else
  {
    v8 = 0;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100E8F7E0;
  v48 = sub_100E8F7F0;
  v49 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100E8F7F8;
  v40[3] = &unk_101657248;
  v42 = &v44;
  selectorCopy = selector;
  v31 = v8;
  v41 = v31;
  v9 = objc_retainBlock(v40);
  v30 = [(ChromeDelegateProxy *)self _protocolForSelector:selector];
  [(ChromeDelegateProxy *)self delegatesForSelector:selector protocol:?];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v10 = v37 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v54 count:16];
  if (v11)
  {
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (v9[2])(v9, *(*(&v36 + 1) + 8 * i));
      }

      v11 = [v10 countByEnumeratingWithState:&v36 objects:v54 count:16];
    }

    while (v11);
  }

  [(NSMapTable *)self->_additionalDelegatesByProtocol objectForKey:v30];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v14 = v33 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v53 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        (v9[2])(v9, *(*(&v32 + 1) + 8 * j));
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v53 count:16];
    }

    while (v15);
  }

  v18 = NSMapGet(self->_chromeMethodSignatures, selector);
  if (v18 || (v19 = objc_loadWeakRetained(&self->_chromeViewController), [v19 methodSignatureForSelector:selector], v18 = objc_claimAutoreleasedReturnValue(), v19, NSMapInsert(self->_chromeMethodSignatures, selector, v18), v18))
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(ChromeDelegateProxy *)self preferChromeForSelector:selector protocol:v30];
      v23 = objc_loadWeakRetained(&self->_chromeViewController);
      if (v22)
      {
        [v31 insertObject:v23 atIndex:0];
      }

      else
      {
        [v31 addObject:v23];
      }
    }

    v24 = 1;
    if (targets)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v24 = 0;
    if (targets)
    {
LABEL_31:
      v25 = v31;
      *targets = v31;
    }
  }

  v26 = v45[5];
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  if (!v26)
  {
    v26 = v18;
  }

  if ((v27 & 1) == 0)
  {
    if (v52 == 1 && ![v31 count])
    {
      v28 = [NSMethodSignature signatureWithObjCTypes:v51];
      goto LABEL_42;
    }

    v26 = 0;
  }

  v28 = v26;
LABEL_42:
  v7 = v28;

  _Block_object_dispose(&v44, 8);
LABEL_43:

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v10 = 0;
  v5 = 0;
  if ([objc_opt_class() _selectorIsProxiedDelegateMethod:selector isRequiredMethod:&v10])
  {
    if (v10)
    {
      return 1;
    }

    else
    {
      v9 = 0;
      v6 = [(ChromeDelegateProxy *)self methodSignatureForSelector:selector targets:&v9];
      v7 = v9;
      v5 = v6 && ![v6 methodReturnLength] || objc_msgSend(v7, "count") != 0;
    }
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v93 = 0;
  v92 = 0;
  v5 = [objc_opt_class() _selectorIsProxiedDelegateMethod:objc_msgSend(invocationCopy protocol:"selector") isRequiredMethod:{&v92, &v93}];
  v6 = v92;
  if (v5)
  {
    lastProxiedTargets = self->_lastProxiedTargets;
    self->_lastProxiedTargets = 0;

    v91 = 0;
    v8 = -[ChromeDelegateProxy methodSignatureForSelector:targets:](self, "methodSignatureForSelector:targets:", [invocationCopy selector], &v91);
    v9 = v91;
    v10 = v9;
    if (!v8)
    {
LABEL_71:

      goto LABEL_72;
    }

    if (self->_forTesting)
    {
      v11 = [v9 copy];
      v12 = self->_lastProxiedTargets;
      self->_lastProxiedTargets = v11;
    }

    methodReturnLength = [v8 methodReturnLength];
    v77 = invocationCopy;
    selfCopy = self;
    v83 = v10;
    if ([v10 count])
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = v10;
      v85 = [obj countByEnumeratingWithState:&v87 objects:v104 count:16];
      if (!v85)
      {
        goto LABEL_70;
      }

      v76 = v8;
      v14 = *v88;
      v15 = "return";
      if (!methodReturnLength)
      {
        v15 = "no return";
      }

      v78 = v15;
      v16 = &selRef__updatePIPLayout;
      v79 = *v88;
      v80 = methodReturnLength;
      v81 = v6;
      while (1)
      {
        v17 = 0;
        v86 = v16[456];
        do
        {
          if (*v88 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v87 + 1) + 8 * v17);
          v19 = sub_10000E5D0();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            selfCopy2 = self;
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_18;
            }

            v23 = [(ChromeDelegateProxy *)selfCopy2 performSelector:v86];
            v24 = v23;
            if (v23 && ![v23 isEqualToString:v22])
            {
              selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy2, v24];
            }

            else
            {

LABEL_18:
              selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy2];
            }

            v26 = selfCopy2;
            v27 = NSStringFromProtocol(v6);
            v28 = NSStringFromSelector([invocationCopy selector]);
            v29 = v18;
            if (v29)
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_24;
              }

              v32 = [v29 performSelector:v86];
              v33 = v32;
              if (v32 && ![v32 isEqualToString:v31])
              {
                v34 = [NSString stringWithFormat:@"%@<%p, %@>", v31, v29, v33];
              }

              else
              {

LABEL_24:
                v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
              }

              v14 = v79;

              invocationCopy = v77;
            }

            else
            {
              v34 = @"<nil>";
              v14 = v79;
            }

            *buf = 138413314;
            v95 = v26;
            v96 = 2112;
            v97 = v27;
            v98 = 2112;
            v99 = v28;
            v100 = 2112;
            v101 = v34;
            v102 = 2080;
            v103 = v78;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ %@ | %@ on %@ (%s)", buf, 0x34u);

            v6 = v81;
            self = selfCopy;
            v10 = v83;
            methodReturnLength = v80;
          }

          if (-[ChromeDelegateProxy shouldNotifyListenerForInvokedSelector:forProtocol:](self, "shouldNotifyListenerForInvokedSelector:forProtocol:", [invocationCopy selector], v6))
          {
            listener = [(ChromeDelegateProxy *)self listener];
            [listener chromeDelegateProxy:self willInvoke:invocationCopy onTarget:v18];
          }

          [invocationCopy invokeWithTarget:v18];
          if (methodReturnLength)
          {
            goto LABEL_36;
          }

          v17 = v17 + 1;
        }

        while (v85 != v17);
        v36 = [obj countByEnumeratingWithState:&v87 objects:v104 count:16];
        v85 = v36;
        v16 = &selRef__updatePIPLayout;
        if (!v36)
        {
LABEL_36:
          v8 = v76;
          goto LABEL_70;
        }
      }
    }

    if (methodReturnLength)
    {
      if (v93)
      {
        v37 = sub_10000E5D0();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          v45 = v8;
          v43 = v6;
LABEL_64:

          v66 = selfCopy;
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          if (objc_opt_respondsToSelector())
          {
            v69 = [(ChromeDelegateProxy *)v66 performSelector:"accessibilityIdentifier"];
            v70 = v69;
            if (v69 && ![v69 isEqualToString:v68])
            {
              v71 = [NSString stringWithFormat:@"%@<%p, %@>", v68, v66, v70];

              goto LABEL_69;
            }
          }

          v71 = [NSString stringWithFormat:@"%@<%p>", v68, v66];
LABEL_69:

          v6 = v43;
          v72 = NSStringFromProtocol(v43);
          v73 = NSStringFromSelector([invocationCopy selector]);
          v74 = [NSString stringWithFormat:@"%@ %@ | %@ (required, with return) - no targets", v71, v72, v73];
          v75 = [NSException exceptionWithName:NSInvalidArgumentException reason:v74 userInfo:0];

          obj = v75;
          [v75 raise];
          v8 = v45;
          v10 = v83;
          goto LABEL_70;
        }

        selfCopy3 = self;
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        if (objc_opt_respondsToSelector())
        {
          v41 = [(ChromeDelegateProxy *)selfCopy3 performSelector:"accessibilityIdentifier"];
          v42 = v41;
          if (v41 && ![v41 isEqualToString:v40])
          {
            v43 = v6;
            selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v40, selfCopy3, v42];

            goto LABEL_45;
          }
        }

        v43 = v6;
        selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v40, selfCopy3];
LABEL_45:
        v45 = v8;

        v46 = NSStringFromProtocol(v43);
        v47 = NSStringFromSelector([invocationCopy selector]);
        *buf = 138412802;
        v95 = selfCopy3;
        v96 = 2112;
        v97 = v46;
        v98 = 2112;
        v99 = v47;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "%@ %@ | %@ (required, with return) - no targets", buf, 0x20u);

        goto LABEL_64;
      }

LABEL_54:
      obj = sub_10000E5D0();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        selfCopy4 = self;
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        if (objc_opt_respondsToSelector())
        {
          v59 = [(ChromeDelegateProxy *)selfCopy4 performSelector:"accessibilityIdentifier"];
          v60 = v59;
          if (v59 && ![v59 isEqualToString:v58])
          {
            selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v58, selfCopy4, v60];

            goto LABEL_60;
          }
        }

        selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v58, selfCopy4];
LABEL_60:

        v62 = NSStringFromProtocol(v6);
        v63 = NSStringFromSelector([invocationCopy selector]);
        v64 = v63;
        v65 = "with return";
        *buf = 138413058;
        v95 = selfCopy4;
        v96 = 2112;
        if (!methodReturnLength)
        {
          v65 = "no return";
        }

        v97 = v62;
        v98 = 2112;
        v99 = v63;
        v100 = 2080;
        v101 = v65;
        _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEBUG, "%@ %@ | %@ (optional, %s) - no targets", buf, 0x2Au);
      }

LABEL_70:

      goto LABEL_71;
    }

    if ((v93 & 1) == 0)
    {
      goto LABEL_54;
    }

    obj = sub_10000E5D0();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_70;
    }

    selfCopy5 = self;
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    if (objc_opt_respondsToSelector())
    {
      v51 = [(ChromeDelegateProxy *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v52 = v51;
      if (v51 && ![v51 isEqualToString:v50])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v50, selfCopy5, v52];

        goto LABEL_53;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v50, selfCopy5];
LABEL_53:

    v54 = NSStringFromProtocol(v6);
    v55 = NSStringFromSelector([invocationCopy selector]);
    *buf = 138412802;
    v95 = selfCopy5;
    v96 = 2112;
    v97 = v54;
    v98 = 2112;
    v99 = v55;
    _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEBUG, "%@ %@ | %@ (required, no return) - no targets", buf, 0x20u);

    goto LABEL_70;
  }

LABEL_72:
}

- (ChromeDelegateProxy)initWithChromeViewController:(id)controller
{
  if (self)
  {
    objc_storeWeak(&self->_chromeViewController, controller);
    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    additionalDelegatesByProtocol = self->_additionalDelegatesByProtocol;
    self->_additionalDelegatesByProtocol = v4;

    v6 = [[NSMapTable alloc] initWithKeyOptions:258 valueOptions:0 capacity:8];
    chromeMethodSignatures = self->_chromeMethodSignatures;
    self->_chromeMethodSignatures = v6;

    v8 = [[NSMapTable alloc] initWithKeyOptions:258 valueOptions:0 capacity:8];
    protocolsForSelectors = self->_protocolsForSelectors;
    self->_protocolsForSelectors = v8;

    v10 = [[NSMapTable alloc] initWithKeyOptions:258 valueOptions:258 capacity:8];
    nilProtocolsForSelectors = self->_nilProtocolsForSelectors;
    self->_nilProtocolsForSelectors = v10;
  }

  return self;
}

@end