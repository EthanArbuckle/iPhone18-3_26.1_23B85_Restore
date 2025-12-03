@interface ChromeContextTransition
- (BOOL)hasStarted;
- (ChromeContext)nextTopContext;
- (ChromeContext)previousTopContext;
- (id)initForTransitionFromContexts:(id)contexts toContexts:(id)toContexts animated:(BOOL)animated;
- (void)dealloc;
- (void)runWithCompletion:(id)completion;
@end

@implementation ChromeContextTransition

- (ChromeContext)nextTopContext
{
  WeakRetained = objc_loadWeakRetained(&self->_nextTopContext);

  return WeakRetained;
}

- (ChromeContext)previousTopContext
{
  WeakRetained = objc_loadWeakRetained(&self->_previousTopContext);

  return WeakRetained;
}

- (BOOL)hasStarted
{
  if ([(GroupAnimation *)self->_leaveAnimation hasStarted])
  {
    return 1;
  }

  enterAnimation = self->_enterAnimation;

  return [(GroupAnimation *)enterAnimation hasStarted];
}

- (void)dealloc
{
  v3 = sub_100029734();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(ChromeContextTransition *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = ChromeContextTransition;
  [(ChromeContextTransition *)&v10 dealloc];
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_leaveAnimation;
  v6 = self->_enterAnimation;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100EA56E8;
  v20[3] = &unk_101661738;
  v7 = v6;
  v21 = v7;
  [(GroupAnimation *)v5 addCompletion:v20];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100EA56F0;
  v16[3] = &unk_101661108;
  objc_copyWeak(&v18, &location);
  v8 = completionCopy;
  v17 = v8;
  [(GroupAnimation *)v7 addCompletion:v16];
  v9 = sub_100029734();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(ChromeContextTransition *)selfCopy performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ([v13 isEqualToString:v12] & 1) == 0)
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy, v14];

        goto LABEL_7;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy];
LABEL_7:

    *buf = 138543362;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Starting transition", buf, 0xCu);
  }

  [(GroupAnimation *)v5 runWithCurrentOptions];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)initForTransitionFromContexts:(id)contexts toContexts:(id)toContexts animated:(BOOL)animated
{
  animatedCopy = animated;
  contextsCopy = contexts;
  toContextsCopy = toContexts;
  v98.receiver = self;
  v98.super_class = ChromeContextTransition;
  v10 = [(ChromeContextTransition *)&v98 init];
  if (v10)
  {
    lastObject = [contextsCopy lastObject];
    objc_storeWeak(&v10->_previousTopContext, lastObject);

    lastObject2 = [toContextsCopy lastObject];
    objc_storeWeak(&v10->_nextTopContext, lastObject2);

    objc_storeStrong(&v10->_pendingContexts, toContexts);
    v13 = [GroupAnimation animationForAnimatedFlag:animatedCopy];
    leaveAnimation = v10->_leaveAnimation;
    v10->_leaveAnimation = v13;

    v15 = [GroupAnimation animationForAnimatedFlag:animatedCopy];
    enterAnimation = v10->_enterAnimation;
    v10->_enterAnimation = v15;

    v17 = sub_100029734();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v18 = v10;
    v19 = v10;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(ChromeContextTransition *)v19 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

        goto LABEL_8;
      }
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_8:

    *buf = 138543362;
    v104 = v24;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Initialising", buf, 0xCu);

    v10 = v18;
LABEL_9:

    v25 = sub_100029734();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
LABEL_78:

      goto LABEL_79;
    }

    v96 = v25;
    v26 = v10;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(ChromeContextTransition *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

LABEL_15:
        v32 = v31;
        v33 = "not ";
        if (animatedCopy)
        {
          v33 = "";
        }

        v94 = v33;
        v34 = contextsCopy;
        v35 = v34;
        v97 = toContextsCopy;
        v95 = v32;
        if (v34)
        {
          v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          if ([v34 count])
          {
            v90 = v10;
            v92 = contextsCopy;
            v37 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v35 count]);
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v88 = v35;
            v38 = v35;
            v39 = [v38 countByEnumeratingWithState:&v99 objects:buf count:16];
            if (!v39)
            {
              goto LABEL_36;
            }

            v40 = v39;
            v41 = *v100;
            while (1)
            {
              v42 = 0;
              do
              {
                if (*v100 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v99 + 1) + 8 * v42);
                if (v43)
                {
                  v44 = objc_opt_class();
                  v45 = NSStringFromClass(v44);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v46 = [v43 performSelector:"accessibilityIdentifier"];
                  v47 = v46;
                  if (v46 && ![v46 isEqualToString:v45])
                  {
                    v48 = [NSString stringWithFormat:@"%@<%p, %@>", v45, v43, v47];

                    v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                  }

                  else
                  {

                    v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_29:
                    v48 = [NSString stringWithFormat:@"%@<%p>", v45, v43];
                  }

                  goto LABEL_32;
                }

                v48 = @"<nil>";
LABEL_32:

                [v37 addObject:v48];
                v42 = v42 + 1;
              }

              while (v40 != v42);
              v49 = [v38 countByEnumeratingWithState:&v99 objects:buf count:16];
              v40 = v49;
              if (!v49)
              {
LABEL_36:

                v50 = [v38 componentsJoinedByString:{@", "}];
                v51 = [NSString stringWithFormat:@"<%p> [%@]", v38, v50];

                v10 = v90;
                contextsCopy = v92;
                toContextsCopy = v97;
                v35 = v88;
                goto LABEL_39;
              }
            }
          }

          v51 = [NSString stringWithFormat:@"<%p> (empty)", v35];
        }

        else
        {
          v51 = @"<nil>";
          v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        }

LABEL_39:

        v52 = v51;
        v53 = toContextsCopy;
        v54 = v53;
        if (v53)
        {
          if ([v53 count])
          {
            v89 = v52;
            v91 = v10;
            v93 = contextsCopy;
            v55 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v54 count]);
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v87 = v54;
            v56 = v54;
            v57 = [v56 countByEnumeratingWithState:&v99 objects:buf count:16];
            if (!v57)
            {
              goto LABEL_58;
            }

            v58 = v57;
            v59 = *v100;
            while (1)
            {
              v60 = 0;
              do
              {
                if (*v100 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v99 + 1) + 8 * v60);
                if (v61)
                {
                  v62 = objc_opt_class();
                  v63 = NSStringFromClass(v62);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_51;
                  }

                  v64 = [v61 performSelector:"accessibilityIdentifier"];
                  v65 = v64;
                  if (v64 && ![v64 isEqualToString:v63])
                  {
                    v66 = [NSString stringWithFormat:@"%@<%p, %@>", v63, v61, v65];

                    v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                  }

                  else
                  {

                    v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
LABEL_51:
                    v66 = [v36[459] stringWithFormat:@"%@<%p>", v63, v61];
                  }

                  goto LABEL_54;
                }

                v66 = @"<nil>";
LABEL_54:

                [v55 addObject:v66];
                v60 = v60 + 1;
              }

              while (v58 != v60);
              v67 = [v56 countByEnumeratingWithState:&v99 objects:buf count:16];
              v58 = v67;
              if (!v67)
              {
LABEL_58:

                v68 = [v56 componentsJoinedByString:{@", "}];
                v69 = [v36[459] stringWithFormat:@"<%p> [%@]", v56, v68];

                v10 = v91;
                contextsCopy = v93;
                v54 = v87;
                v52 = v89;
                goto LABEL_61;
              }
            }
          }

          v69 = [v36[459] stringWithFormat:@"<%p> (empty)", v54];
        }

        else
        {
          v69 = @"<nil>";
        }

LABEL_61:

        v70 = v69;
        v71 = v10->_leaveAnimation;
        if (!v71)
        {
          v77 = @"<nil>";
LABEL_69:

          v78 = v77;
          v79 = v10->_enterAnimation;
          if (!v79)
          {
            v85 = @"<nil>";
            goto LABEL_77;
          }

          v80 = v10;
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          if (objc_opt_respondsToSelector())
          {
            v83 = [(GroupAnimation *)v79 performSelector:"accessibilityIdentifier"];
            v84 = v83;
            if (v83 && ![v83 isEqualToString:v82])
            {
              v85 = [NSString stringWithFormat:@"%@<%p, %@>", v82, v79, v84];

              goto LABEL_75;
            }
          }

          v85 = [NSString stringWithFormat:@"%@<%p>", v82, v79];
LABEL_75:

          v10 = v80;
LABEL_77:
          v25 = v96;

          *buf = 138544642;
          v104 = v95;
          v105 = 2080;
          v106 = v94;
          v107 = 2114;
          v108 = v52;
          v109 = 2114;
          v110 = v70;
          v111 = 2114;
          v112 = v78;
          v113 = 2114;
          v114 = v85;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "[%{public}@] Initialising transition (%sanimated)\n\tfrom: %{public}@\n\tto: %{public}@\nleaveAnimation: %{public}@\nenterAnimation: %{public}@", buf, 0x3Eu);

          toContextsCopy = v97;
          goto LABEL_78;
        }

        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        if (objc_opt_respondsToSelector())
        {
          v74 = v10;
          v75 = [(GroupAnimation *)v71 performSelector:"accessibilityIdentifier"];
          v76 = v75;
          if (v75 && ![v75 isEqualToString:v73])
          {
            v77 = [NSString stringWithFormat:@"%@<%p, %@>", v73, v71, v76];

            v10 = v74;
            goto LABEL_67;
          }

          v10 = v74;
          v36 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        }

        v77 = [v36[459] stringWithFormat:@"%@<%p>", v73, v71];
LABEL_67:

        goto LABEL_69;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
    goto LABEL_15;
  }

LABEL_79:

  return v10;
}

@end