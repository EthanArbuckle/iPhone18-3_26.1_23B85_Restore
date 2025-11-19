@interface ChromeMapSelectionHandler
- (BOOL)_checkAndPropagateSpecificCallbacksForAnnotationView:(id)a3;
- (BOOL)_checkAndPropagateSpecificCallbacksForMarker:(id)a3;
- (BOOL)_propagateDidSelectInvocation:(id)a3;
- (BOOL)_propagateShouldSelectInvocation:(id)a3;
- (BOOL)mapSelectionManager:(id)a3 shouldSelectAnnotationView:(id)a4;
- (BOOL)mapSelectionManager:(id)a3 shouldSelectVKLabelMarker:(id)a4;
- (ChromeMapSelectionHandler)initWithChromeViewController:(id)a3;
- (id)_invocationWithSelector:(SEL)a3 argument:(id)a4;
- (id)protocolMethodSignatureForSelector:(SEL)a3;
- (id)searchPinsManagerForMapSelectionManager:(id)a3;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)mapSelectionManager:(id)a3 selectAnnotationView:(id)a4;
- (void)mapSelectionManager:(id)a3 selectVKLabelMarker:(id)a4;
- (void)mapSelectionManagerClearSelection:(id)a3;
@end

@implementation ChromeMapSelectionHandler

- (BOOL)_propagateDidSelectInvocation:(id)a3
{
  v4 = a3;
  v95 = self;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained contexts];
  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 allObjects];

  v8 = [v4 selector];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v101 objects:v111 count:16];
  v98 = v4;
  v94 = v9;
  aSelector = v8;
  if (v10)
  {
    v11 = v10;
    v12 = *v102;
    v13 = &selRef__updatePIPLayout;
    do
    {
      v14 = 0;
      v15 = v13[456];
      v97 = v15;
      do
      {
        if (*v102 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v101 + 1) + 8 * v14);
        v17 = v16;
        if (objc_opt_respondsToSelector())
        {
          v17 = [v16 mapSelectionDelegate];
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = v11;
          v19 = [v98 _maps_copy];
          [v19 invokeWithTarget:v17];
          v100 = 0;
          v99 = v19;
          [v19 getReturnValue:&v100];
          LODWORD(v19) = v100;
          v20 = sub_10006C9F8();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
          if (v19 == 1)
          {
            if (v21)
            {
              v37 = v95;
              v38 = WeakRetained;
              if (v95)
              {
                v39 = objc_opt_class();
                v40 = NSStringFromClass(v39);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_43;
                }

                v41 = [(ChromeMapSelectionHandler *)v37 performSelector:v97];
                v42 = v41;
                if (v41 && ![v41 isEqualToString:v40])
                {
                  v43 = [NSString stringWithFormat:@"%@<%p, %@>", v40, v37, v42];
                }

                else
                {

LABEL_43:
                  v43 = [NSString stringWithFormat:@"%@<%p>", v40, v37];
                }
              }

              else
              {
                v43 = @"<nil>";
              }

              v60 = v43;
              v17 = v17;
              if (v17)
              {
                v61 = objc_opt_class();
                v62 = NSStringFromClass(v61);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_71;
                }

                v63 = [v17 performSelector:v97];
                v64 = v63;
                if (v63 && ![v63 isEqualToString:v62])
                {
                  v65 = [NSString stringWithFormat:@"%@<%p, %@>", v62, v17, v64];
                }

                else
                {

LABEL_71:
                  v65 = [NSString stringWithFormat:@"%@<%p>", v62, v17];
                }
              }

              else
              {
                v65 = @"<nil>";
              }

              v66 = NSStringFromSelector(aSelector);
              *buf = 138543874;
              v106 = v60;
              v107 = 2114;
              v108 = v65;
              v109 = 2114;
              v110 = v66;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ handled %{public}@", buf, 0x20u);

              v9 = v94;
            }

            else
            {
              v38 = WeakRetained;
            }

            v67 = 1;
            v44 = v9;
            goto LABEL_109;
          }

          if (v21)
          {
            v22 = v95;
            if (v95)
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_16;
              }

              v25 = [(ChromeMapSelectionHandler *)v22 performSelector:v15];
              v26 = v25;
              if (v25 && ![v25 isEqualToString:v24])
              {
                v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];
              }

              else
              {

LABEL_16:
                v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
              }
            }

            else
            {
              v27 = @"<nil>";
            }

            v28 = v27;
            v29 = v17;
            if (v29)
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_24;
              }

              v93 = v31;
              v32 = [v29 performSelector:v97];
              v33 = v32;
              if (v32 && ![v32 isEqualToString:v93])
              {
                v34 = [NSString stringWithFormat:@"%@<%p, %@>", v93, v29, v33];

                v31 = v93;
              }

              else
              {

                v31 = v93;
LABEL_24:
                v34 = [NSString stringWithFormat:@"%@<%p>", v31, v29];
              }
            }

            else
            {
              v34 = @"<nil>";
            }

            v35 = NSStringFromSelector(aSelector);
            *buf = 138543874;
            v106 = v28;
            v107 = 2114;
            v108 = v34;
            v109 = 2114;
            v110 = v35;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ did not handle %{public}@", buf, 0x20u);

            v9 = v94;
            v15 = v97;
          }

          v11 = v18;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 wantsMapSelectionControl])
        {

          goto LABEL_46;
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v36 = [v9 countByEnumeratingWithState:&v101 objects:v111 count:16];
      v11 = v36;
      v13 = &selRef__updatePIPLayout;
    }

    while (v36);
  }

LABEL_46:

  v38 = WeakRetained;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_98:
    v44 = sub_10006C9F8();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
LABEL_108:
      v67 = 0;
      goto LABEL_109;
    }

    v84 = v95;
    if (!v84)
    {
      v89 = @"<nil>";
      goto LABEL_107;
    }

    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    if (objc_opt_respondsToSelector())
    {
      v87 = [(ChromeMapSelectionHandler *)v84 performSelector:"accessibilityIdentifier"];
      v88 = v87;
      if (v87 && ![v87 isEqualToString:v86])
      {
        v89 = [NSString stringWithFormat:@"%@<%p, %@>", v86, v84, v88];

        goto LABEL_105;
      }
    }

    v89 = [NSString stringWithFormat:@"%@<%p>", v86, v84];
LABEL_105:

LABEL_107:
    v90 = NSStringFromSelector(aSelector);
    *buf = 138543618;
    v106 = v89;
    v107 = 2114;
    v108 = v90;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[%{public}@] Nothing handled %{public}@", buf, 0x16u);

    goto LABEL_108;
  }

  v44 = [v98 _maps_copy];
  [v44 invokeWithTarget:WeakRetained];
  v100 = 0;
  [v44 getReturnValue:&v100];
  v45 = v100;
  v46 = sub_10006C9F8();
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
  if (v45 != 1)
  {
    if (!v47)
    {
LABEL_97:

      goto LABEL_98;
    }

    v54 = v95;
    if (!v54)
    {
      v59 = @"<nil>";
LABEL_85:

      v75 = v59;
      v76 = WeakRetained;
      if (!v76)
      {
        v81 = @"<nil>";
        goto LABEL_96;
      }

      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      if (objc_opt_respondsToSelector())
      {
        v79 = [v76 performSelector:"accessibilityIdentifier"];
        v80 = v79;
        if (v79 && ![v79 isEqualToString:v78])
        {
          v81 = [NSString stringWithFormat:@"%@<%p, %@>", v78, v76, v80];

          v9 = v94;
          goto LABEL_91;
        }

        v9 = v94;
      }

      v81 = [NSString stringWithFormat:@"%@<%p>", v78, v76];
LABEL_91:

LABEL_96:
      v83 = NSStringFromSelector(aSelector);
      *buf = 138543874;
      v106 = v75;
      v107 = 2114;
      v108 = v81;
      v109 = 2114;
      v110 = v83;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ did not handle %{public}@", buf, 0x20u);

      goto LABEL_97;
    }

    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    if (objc_opt_respondsToSelector())
    {
      v57 = [(ChromeMapSelectionHandler *)v54 performSelector:"accessibilityIdentifier"];
      v58 = v57;
      if (v57 && ![v57 isEqualToString:v56])
      {
        v59 = [NSString stringWithFormat:@"%@<%p, %@>", v56, v54, v58];

        goto LABEL_63;
      }
    }

    v59 = [NSString stringWithFormat:@"%@<%p>", v56, v54];
LABEL_63:

    goto LABEL_85;
  }

  if (v47)
  {
    v48 = v95;
    if (!v48)
    {
      v53 = @"<nil>";
LABEL_77:

      v68 = v53;
      v69 = WeakRetained;
      if (!v69)
      {
        v74 = @"<nil>";
        goto LABEL_93;
      }

      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      if (objc_opt_respondsToSelector())
      {
        v72 = [v69 performSelector:"accessibilityIdentifier"];
        v73 = v72;
        if (v72 && ![v72 isEqualToString:v71])
        {
          v74 = [NSString stringWithFormat:@"%@<%p, %@>", v71, v69, v73];

          v9 = v94;
          goto LABEL_83;
        }

        v9 = v94;
      }

      v74 = [NSString stringWithFormat:@"%@<%p>", v71, v69];
LABEL_83:

LABEL_93:
      v82 = NSStringFromSelector(aSelector);
      *buf = 138543874;
      v106 = v68;
      v107 = 2114;
      v108 = v74;
      v109 = 2114;
      v110 = v82;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ handled %{public}@", buf, 0x20u);

      goto LABEL_94;
    }

    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    if (objc_opt_respondsToSelector())
    {
      v51 = [(ChromeMapSelectionHandler *)v48 performSelector:"accessibilityIdentifier"];
      v52 = v51;
      if (v51 && ![v51 isEqualToString:v50])
      {
        v53 = [NSString stringWithFormat:@"%@<%p, %@>", v50, v48, v52];

        goto LABEL_55;
      }
    }

    v53 = [NSString stringWithFormat:@"%@<%p>", v50, v48];
LABEL_55:

    goto LABEL_77;
  }

LABEL_94:

  v67 = 1;
LABEL_109:

  return v67;
}

- (BOOL)_propagateShouldSelectInvocation:(id)a3
{
  v4 = a3;
  v94 = 1;
  v83 = self;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained contexts];
  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 allObjects];

  aSelector = [v4 selector];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v7;
  v87 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
  v8 = 0;
  if (v87)
  {
    v9 = &selRef__updatePIPLayout;
    v86 = *v91;
    v82 = v4;
    do
    {
      v10 = 0;
      v85 = v9[456];
      do
      {
        if (*v91 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v90 + 1) + 8 * v10);
        v12 = v11;
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 mapSelectionDelegate];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v22 = sub_10006C9F8();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = v83;
            if (v83)
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_23;
              }

              v26 = [(ChromeMapSelectionHandler *)v23 performSelector:v85];
              v27 = v26;
              if (v26 && ![v26 isEqualToString:v25])
              {
                v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];
              }

              else
              {

LABEL_23:
                v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
              }
            }

            else
            {
              v28 = @"<nil>";
            }

            v36 = v28;
            v37 = v12;
            if (v37)
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_41;
              }

              v40 = [v37 performSelector:v85];
              v41 = v40;
              if (v40 && ![v40 isEqualToString:v39])
              {
                v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41];

                v4 = v82;
              }

              else
              {

                v4 = v82;
LABEL_41:
                v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
              }
            }

            else
            {
              v42 = @"<nil>";
            }

            v46 = NSStringFromSelector(aSelector);
            *buf = 138543874;
            v96 = v36;
            v97 = 2114;
            v98 = v42;
            v99 = 2114;
            v100 = v46;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ does not respond to %{public}@", buf, 0x20u);
          }

          goto LABEL_52;
        }

        v13 = [v4 _maps_copy];
        [v13 invokeWithTarget:v12];
        v89 = 1;
        [v13 getReturnValue:&v89];
        v14 = v94 & v89;
        v94 &= v89;
        v15 = sub_10006C9F8();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {

          v8 = 1;
          if ((v14 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_52;
        }

        v16 = v83;
        if (v83)
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_15;
          }

          v19 = [(ChromeMapSelectionHandler *)v16 performSelector:v85];
          v20 = v19;
          if (v19 && ![v19 isEqualToString:v18])
          {
            v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];
          }

          else
          {

LABEL_15:
            v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
          }

          goto LABEL_28;
        }

        v21 = @"<nil>";
LABEL_28:

        v29 = v21;
        v30 = v12;
        if (v30)
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_33;
          }

          v33 = [v30 performSelector:v85];
          v34 = v33;
          if (v33 && ![v33 isEqualToString:v32])
          {
            v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];
          }

          else
          {

LABEL_33:
            v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
          }

          goto LABEL_44;
        }

        v35 = @"<nil>";
LABEL_44:

        if (v89)
        {
          v43 = "allows";
        }

        else
        {
          v43 = "disallows";
        }

        v44 = NSStringFromSelector(aSelector);
        *buf = 138544130;
        v96 = v29;
        v97 = 2114;
        v98 = v35;
        v99 = 2080;
        v100 = v43;
        v101 = 2114;
        v102 = v44;
        v8 = 1;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ %s %{public}@ ", buf, 0x2Au);

        v45 = v94;
        v4 = v82;
        if ((v45 & 1) == 0)
        {
          goto LABEL_82;
        }

LABEL_52:
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 wantsMapSelectionControl])
        {
          v48 = sub_10006C9F8();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v49 = v83;
            if (v83)
            {
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_68;
              }

              v52 = [(ChromeMapSelectionHandler *)v49 performSelector:v85];
              v53 = v52;
              if (v52 && ![v52 isEqualToString:v51])
              {
                v54 = [NSString stringWithFormat:@"%@<%p, %@>", v51, v49, v53];
              }

              else
              {

LABEL_68:
                v54 = [NSString stringWithFormat:@"%@<%p>", v51, v49];
              }
            }

            else
            {
              v54 = @"<nil>";
            }

            v55 = v54;
            v12 = v12;
            if (v12)
            {
              v56 = objc_opt_class();
              v57 = NSStringFromClass(v56);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_76;
              }

              v58 = [v12 performSelector:v85];
              v59 = v58;
              if (v58 && ![v58 isEqualToString:v57])
              {
                v60 = [NSString stringWithFormat:@"%@<%p, %@>", v57, v12, v59];
              }

              else
              {

LABEL_76:
                v60 = [NSString stringWithFormat:@"%@<%p>", v57, v12];
              }
            }

            else
            {
              v60 = @"<nil>";
            }

            v61 = NSStringFromSelector(aSelector);
            *buf = 138543874;
            v96 = v55;
            v97 = 2114;
            v98 = v60;
            v99 = 2114;
            v100 = v61;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ wants map selection control (%{public}@)", buf, 0x20u);
          }

LABEL_81:
          v30 = v12;
LABEL_82:

          goto LABEL_83;
        }

        v10 = v10 + 1;
      }

      while (v87 != v10);
      v47 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
      v87 = v47;
      v9 = &selRef__updatePIPLayout;
    }

    while (v47);
  }

LABEL_83:

  if (v94 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v62 = [v4 _maps_copy];
    [v62 invokeWithTarget:WeakRetained];
    v89 = 1;
    [v62 getReturnValue:&v89];
    v94 = v89;
    v63 = sub_10006C9F8();
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
LABEL_108:

      goto LABEL_109;
    }

    v64 = v83;
    if (!v64)
    {
      v69 = @"<nil>";
LABEL_96:

      v71 = v69;
      v72 = WeakRetained;
      if (!v72)
      {
        v77 = @"<nil>";
        goto LABEL_104;
      }

      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      if (objc_opt_respondsToSelector())
      {
        v75 = [v72 performSelector:"accessibilityIdentifier"];
        v76 = v75;
        if (v75 && ![v75 isEqualToString:v74])
        {
          v77 = [NSString stringWithFormat:@"%@<%p, %@>", v74, v72, v76];

          goto LABEL_102;
        }
      }

      v77 = [NSString stringWithFormat:@"%@<%p>", v74, v72];
LABEL_102:

LABEL_104:
      if (v89)
      {
        v78 = "allows";
      }

      else
      {
        v78 = "disallows";
      }

      v79 = NSStringFromSelector(aSelector);
      *buf = 138544130;
      v96 = v71;
      v97 = 2114;
      v98 = v77;
      v99 = 2080;
      v100 = v78;
      v101 = 2114;
      v102 = v79;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ %s %{public}@ ", buf, 0x2Au);

      goto LABEL_108;
    }

    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    if (objc_opt_respondsToSelector())
    {
      v67 = [(ChromeMapSelectionHandler *)v64 performSelector:"accessibilityIdentifier"];
      v68 = v67;
      if (v67 && ![v67 isEqualToString:v66])
      {
        v69 = [NSString stringWithFormat:@"%@<%p, %@>", v66, v64, v68];

        goto LABEL_92;
      }
    }

    v69 = [NSString stringWithFormat:@"%@<%p>", v66, v64];
LABEL_92:

    goto LABEL_96;
  }

  if (v8)
  {
LABEL_109:
    [v4 setReturnValue:&v94];
    v70 = 1;
    goto LABEL_110;
  }

  v70 = 0;
LABEL_110:

  return v70;
}

- (id)protocolMethodSignatureForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(self->_protocol, a3, 0, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v7 = protocol_getMethodDescription(self->_protocol, a3, 1, 1), types = v7.types, v7.name))
  {
    v8 = [NSMethodSignature signatureWithObjCTypes:types];
  }

  else
  {
    [(ChromeMapSelectionHandler *)self doesNotRecognizeSelector:a3];
    v8 = 0;
  }

  return v8;
}

- (id)_invocationWithSelector:(SEL)a3 argument:(id)a4
{
  v6 = a4;
  v13 = v6;
  v7 = [(ChromeMapSelectionHandler *)self protocolMethodSignatureForSelector:a3];
  if (!v7)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "[ChromeMapSelectionHandler _invocationWithSelector:argument:]";
      v16 = 2080;
      v17 = "ChromeMapSelectionHandler.m";
      v18 = 1024;
      v19 = 275;
      v20 = 2080;
      v21 = "methodSignature != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v8 = [NSInvocation invocationWithMethodSignature:v7];
  [v8 setSelector:a3];
  if (v6)
  {
    [v8 setArgument:&v13 atIndex:2];
  }

  return v8;
}

- (int)currentMapViewTargetForAnalytics
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_chromeViewController);
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentMapViewTargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)currentUITargetForAnalytics
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_chromeViewController);
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentUITargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)searchPinsManagerForMapSelectionManager:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained searchPinsManager];

  return v4;
}

- (void)mapSelectionManagerClearSelection:(id)a3
{
  v4 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidClearMapSelection" argument:0];
  [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v4];
}

- (BOOL)_checkAndPropagateSpecificCallbacksForAnnotationView:(id)a3
{
  v4 = [a3 annotation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectUserLocationAnnotation:" argument:v4];
    v6 = [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mapSelectionManager:(id)a3 selectAnnotationView:(id)a4
{
  v6 = a4;
  if (![(ChromeMapSelectionHandler *)self _checkAndPropagateSpecificCallbacksForAnnotationView:?])
  {
    v5 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectAnnotationView:" argument:v6];
    [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v5];
  }
}

- (BOOL)mapSelectionManager:(id)a3 shouldSelectAnnotationView:(id)a4
{
  v5 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeShouldAllowSelectingAnnotationView:" argument:a4];
  v6 = [(ChromeMapSelectionHandler *)self _propagateShouldSelectInvocation:v5];
  v7 = 1;
  if (v6)
  {
    v9 = 1;
    [v5 getReturnValue:&v9];
    v7 = v9;
  }

  return v7 & 1;
}

- (BOOL)_checkAndPropagateSpecificCallbacksForMarker:(id)a3
{
  v4 = a3;
  if (![v4 _maps_hasCustomPOIAnnotation])
  {
    if ([v4 isRouteEta])
    {
      v10 = [v4 routeInfo];
      v5 = [v10 route];

      if (!v5)
      {
        v31 = sub_10006D178();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "[ChromeMapSelectionHandler _checkAndPropagateSpecificCallbacksForMarker:]";
          v45 = 2080;
          v46 = "ChromeMapSelectionHandler.m";
          v47 = 1024;
          v48 = 99;
          v49 = 2080;
          v50 = "route != nil";
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v32 = sub_10006D178();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v11 = "chromeDidSelectETAMarkerForRoute:";
      goto LABEL_8;
    }

    if ([v4 isFlyoverTour])
    {
      v5 = [v4 flyoverTourIdentifier];
      if (!v5)
      {
        v34 = sub_10006D178();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "[ChromeMapSelectionHandler _checkAndPropagateSpecificCallbacksForMarker:]";
          v45 = 2080;
          v46 = "ChromeMapSelectionHandler.m";
          v47 = 1024;
          v48 = 106;
          v49 = 2080;
          v50 = "identifier != nil";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v35 = sub_10006D178();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v11 = "chromeDidSelectFlyoverTourLabelMarker:";
LABEL_16:
      v12 = self;
      v13 = v4;
      goto LABEL_17;
    }

    if ([v4 isTransitLine])
    {
      v19 = "chromeDidSelectTransitLineMarker:";
LABEL_24:
      v5 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:v19 argument:v4];
      v17 = [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v5];
      goto LABEL_20;
    }

    if ([v4 isTrafficIncident])
    {
      v5 = [v4 incident];
      if (!v5)
      {
        v37 = sub_10006D178();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "[ChromeMapSelectionHandler _checkAndPropagateSpecificCallbacksForMarker:]";
          v45 = 2080;
          v46 = "ChromeMapSelectionHandler.m";
          v47 = 1024;
          v48 = 118;
          v49 = 2080;
          v50 = "trafficIncident";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v38 = sub_10006D178();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v7 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectTrafficIncident:latitude:longitude:" argument:v5];
      [v4 coordinate];
      v21 = v20;
      *buf = [NSNumber numberWithDouble:?];
      v43 = [NSNumber numberWithDouble:v21];
      [v7 setArgument:buf atIndex:3];
      [v7 setArgument:&v43 atIndex:4];
      v17 = [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v7];

      goto LABEL_19;
    }

    if ([v4 isRouteWaypoint])
    {
      v22 = [v4 waypointInfo];
      v5 = [v22 waypoint];

      if (![v5 hasFindMyHandleID])
      {
        v24 = [v5 addressBookAddress];
        v7 = v24;
        if (v24 && ([v24 isMeCard] & 1) == 0)
        {
          v14 = "chromeDidSelectWaypointMarkerForAddress:";
          v15 = self;
          v16 = v7;
        }

        else
        {
          if (![v4 featureID])
          {
            v9 = [v4 _maps_mapItem];
            if (v9)
            {
              v25 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectMarkerForMapItem:" argument:v9];
              v17 = [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v25];
            }

            else
            {
              v17 = 0;
            }

            goto LABEL_12;
          }

          v14 = "chromeDidSelectRouteWaypointMarker:";
          v15 = self;
          v16 = v4;
        }

        goto LABEL_10;
      }

      v23 = [v5 findMyHandleID];
      v7 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectWaypointMarkerForFindMyHandleIdentifier:" argument:v23];

LABEL_18:
      v17 = [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v7];
      goto LABEL_19;
    }

    if ([v4 isRouteAnnotation])
    {
      v5 = [v4 _maps_selectableRouteAnnotations];
      if (![v5 count])
      {
        v40 = sub_10006D178();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "[ChromeMapSelectionHandler _checkAndPropagateSpecificCallbacksForMarker:]";
          v45 = 2080;
          v46 = "ChromeMapSelectionHandler.m";
          v47 = 1024;
          v48 = 159;
          v49 = 2080;
          v50 = "selectableAnnotations.count > 0";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v41 = sub_10006D178();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v11 = "chromeDidSelectRouteAnnotations:";
      goto LABEL_8;
    }

    if (([v4 _maps_isOfflineAnnotation] & 1) != 0 || objc_msgSend(v4, "_maps_isOfflineClusterAnnotation"))
    {
      v19 = "chromeDidSelectOfflineAnnotationMarker:";
      goto LABEL_24;
    }

    if ([v4 isCluster])
    {
      v5 = [v4 clusterWaypointInfos];
      if ([v5 count] <= 1)
      {
        if (![v4 clusterFeatureCount] || (objc_msgSend(v4, "_maps_isOfflineClusterAnnotation") & 1) != 0)
        {
          v17 = 0;
          goto LABEL_20;
        }

        v26 = &selRef_chromeDidSelectClusteredFeatureAnnotationsMarker_;
      }

      else
      {
        v26 = &selRef_chromeDidSelectClusteredWaypointMarker_;
      }

      v11 = *v26;
      goto LABEL_16;
    }

    if (MapsFeature_IsEnabled_ShelbyvilleSearch())
    {
      if (([v4 _mapkit_hasMUID] & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (![v4 hasBusinessID])
    {
      goto LABEL_57;
    }

    v27 = [v4 _maps_mapItem];
    if (v27)
    {
      v5 = v27;
      v11 = "chromeDidSelectMarkerForMapItem:";
LABEL_8:
      v12 = self;
      v13 = v5;
LABEL_17:
      v7 = [(ChromeMapSelectionHandler *)v12 _invocationWithSelector:v11 argument:v13];
      goto LABEL_18;
    }

LABEL_57:
    v17 = 0;
    goto LABEL_21;
  }

  v5 = [v4 _maps_customPOIAnnotation];
  if (!v5)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[ChromeMapSelectionHandler _checkAndPropagateSpecificCallbacksForMarker:]";
      v45 = 2080;
      v46 = "ChromeMapSelectionHandler.m";
      v47 = 1024;
      v48 = 85;
      v49 = 2080;
      v50 = "customPOI != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v6 = [v5 searchResult];
  v7 = [v6 composedWaypoint];

  if (![v7 hasFindMyHandleID])
  {
    v14 = "chromeDidSelectCustomPOIAnnotation:";
    v15 = self;
    v16 = v5;
LABEL_10:
    v9 = [(ChromeMapSelectionHandler *)v15 _invocationWithSelector:v14 argument:v16];
    goto LABEL_11;
  }

  v8 = [v7 findMyHandleID];
  v9 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectWaypointMarkerForFindMyHandleIdentifier:" argument:v8];

LABEL_11:
  v17 = [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v9];
LABEL_12:

LABEL_19:
LABEL_20:

LABEL_21:
  return v17;
}

- (void)mapSelectionManager:(id)a3 selectVKLabelMarker:(id)a4
{
  v6 = a4;
  if (![(ChromeMapSelectionHandler *)self _checkAndPropagateSpecificCallbacksForMarker:?])
  {
    v5 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeDidSelectLabelMarker:" argument:v6];
    [(ChromeMapSelectionHandler *)self _propagateDidSelectInvocation:v5];
  }
}

- (BOOL)mapSelectionManager:(id)a3 shouldSelectVKLabelMarker:(id)a4
{
  v5 = [(ChromeMapSelectionHandler *)self _invocationWithSelector:"chromeShouldAllowSelectingLabelMarker:" argument:a4];
  v6 = [(ChromeMapSelectionHandler *)self _propagateShouldSelectInvocation:v5];
  v7 = 1;
  if (v6)
  {
    v9 = 1;
    [v5 getReturnValue:&v9];
    v7 = v9;
  }

  return v7 & 1;
}

- (ChromeMapSelectionHandler)initWithChromeViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ChromeMapSelectionHandler;
  v5 = [(ChromeMapSelectionHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chromeViewController, v4);
    objc_storeStrong(&v6->_protocol, &OBJC_PROTOCOL___ChromeMapSelectionDelegate);
  }

  return v6;
}

@end