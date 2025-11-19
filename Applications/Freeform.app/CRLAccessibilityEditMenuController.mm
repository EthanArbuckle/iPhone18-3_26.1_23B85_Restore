@interface CRLAccessibilityEditMenuController
+ (id)sharedController;
- (BOOL)performActionTitled:(id)a3 forEditMenuProvider:(id)a4;
- (id)editMenuTitlesForItemProvider:(id)a3;
@end

@implementation CRLAccessibilityEditMenuController

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003BD460;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34DC8 != -1)
  {
    dispatch_once(&qword_101A34DC8, block);
  }

  v2 = qword_101A34DC0;

  return v2;
}

- (id)editMenuTitlesForItemProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 crlaxEditMenuItems];
  if ([v4 count])
  {
    v5 = +[NSMutableSet set];
    v25 = 0;
    v6 = [v3 crlaxWindow];
    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v25);
    if (v25 == 1)
    {
      abort();
    }

    v9 = v8;

    v20 = v9;
    v10 = [v9 crlaxFirstResponder];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v10 targetForAction:objc_msgSend(v3 withSender:{"crlaxSelectorForEditMenuItemName:", v16), 0}];

          if (v17)
          {
            [v5 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = [v5 allObjects];

  return v18;
}

- (BOOL)performActionTitled:(id)a3 forEditMenuProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 crlaxEditMenuItems];
  if ([v7 count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v45 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v8)
    {
      v9 = v8;
      v55 = 0;
      v10 = *v63;
      v46 = v5;
      v51 = v6;
      v52 = *v63;
      do
      {
        v11 = 0;
        v53 = v9;
        do
        {
          if (*v63 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v62 + 1) + 8 * v11);
          if ([v12 isEqualToString:v5])
          {
            v13 = [v6 crlaxSelectorForEditMenuItemName:v12];
            v61 = 0;
            v14 = [v6 crlaxWindow];
            v15 = objc_opt_class();
            v16 = __CRLAccessibilityCastAsSafeCategory(v15, v14, 1, &v61);
            if (v61 == 1)
            {
              goto LABEL_43;
            }

            v17 = v16;

            v18 = [v17 crlaxFirstResponder];

            v61 = 0;
            v19 = v18;
            v20 = objc_opt_class();
            v21 = __CRLAccessibilityCastAsClass(v20, v19, 1, &v61);
            if (v61 == 1)
            {
              goto LABEL_43;
            }

            v22 = v21;

            v56 = [v22 editor];
            if (objc_opt_respondsToSelector())
            {
              v23 = v19;
              v61 = 0;
              v24 = v56;
              v25 = objc_opt_class();
              v26 = __CRLAccessibilityCastAsClass(v25, v24, 1, &v61);
              if (v61 == 1)
              {
                goto LABEL_43;
              }

              v27 = v26;

              v28 = [v27 crlaxPerformSelector:v13 withObject:0];
              v55 = 1;
              v19 = v23;
              v6 = v51;
            }

            v61 = 0;
            v29 = v6;
            v30 = objc_opt_class();
            v31 = __CRLAccessibilityCastAsClass(v30, v29, 1, &v61);
            if (v61 == 1)
            {
LABEL_43:
              abort();
            }

            v32 = v31;

            if (!(v55 & 1 | (v32 == 0)))
            {
              v33 = [v32 valueForKey:@"interactiveCanvasController"];
              v34 = v33;
              if (v33)
              {
                v49 = v22;
                v50 = v19;
                v35 = [v33 editorController];
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v48 = v35;
                v36 = [v35 currentEditors];
                v37 = [v36 countByEnumeratingWithState:&v57 objects:v66 count:16];
                if (v37)
                {
                  v38 = v37;
                  v47 = v34;
                  v39 = *v58;
                  while (2)
                  {
                    for (i = 0; i != v38; i = i + 1)
                    {
                      if (*v58 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      v41 = *(*(&v57 + 1) + 8 * i);
                      if ([v41 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasEditor])
                      {
                        v42 = [v41 valueForKey:@"canvasEditorHelper"];
                        if (v42 && (objc_opt_respondsToSelector() & 1) != 0 && [v42 canPerformEditorAction:v13 withSender:0])
                        {
                          v43 = [v41 crlaxPerformSelector:v13 withObject:0];

                          v55 = 1;
                          goto LABEL_31;
                        }
                      }
                    }

                    v38 = [v36 countByEnumeratingWithState:&v57 objects:v66 count:16];
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }

                  v55 = 0;
LABEL_31:
                  v5 = v46;
                  v34 = v47;
                  v6 = v51;
                }

                else
                {
                  v55 = 0;
                }

                v22 = v49;
                v19 = v50;
              }

              else
              {
                v55 = 0;
              }
            }

            v10 = v52;
            v9 = v53;
          }

          v11 = v11 + 1;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v9);
    }

    else
    {
      v55 = 0;
    }

    v7 = v45;
  }

  else
  {
    v55 = 0;
  }

  return v55 & 1;
}

@end