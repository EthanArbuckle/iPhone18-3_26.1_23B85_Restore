@interface TUINavigationBarItemLayout
- (BOOL)collectHostingPropertiesWithCollector:(id)a3;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)computeLayout;
@end

@implementation TUINavigationBarItemLayout

- (void)computeLayout
{
  v10 = 0u;
  v11 = 0u;
  v3 = COERCE_FLOAT([(TUILayout *)self specifiedWidth]);
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUILayout *)self children];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setSpecifiedWidthComputeInherited:1];
        [v9 setContainingWidth:v3];
        [v9 validateLayout];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)collectHostingPropertiesWithCollector:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  v6 = [v5 hostingIdentifiers];

  if (v6)
  {
    v7 = [v5 hostingIdentifiers];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = [v5 hostingIdentifiers];
        v11 = [v10 objectAtIndexedSubscript:v9];

        v12 = [v5 hostingProperties];
        v13 = [v12 objectAtIndexedSubscript:v9];

        [v4 hostingCollectorAddProperties:v13 forIdentifier:v11];
        ++v9;
        v14 = [v5 hostingIdentifiers];
        v15 = [v14 count];
      }

      while (v9 < v15);
    }
  }

  return 0;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  v6 = [(TUILayout *)self box];
  v88 = [v6 width];
  v83 = v7;

  v8 = [(TUILayout *)self children];
  v9 = [v8 firstObject];

  if (v9)
  {
    v94 = [v5 renderModelForLayout:v9 kind:6];
  }

  else
  {
    v94 = 0;
  }

  v10 = [(TUILayout *)self box];
  v86 = v9;
  if ([v10 axHasNonDefaultAttributess])
  {
    v11 = [TUIAXAttributes alloc];
    v12 = [(TUILayout *)self box];
    v93 = [(TUIAXAttributes *)v11 initWithAXAttributes:v12];
  }

  else
  {
    v93 = 0;
  }

  v13 = [(TUILayout *)self box];
  v14 = [v13 actionHandler];

  v15 = [(TUILayout *)self box];
  v16 = [v15 menuContainer];
  v17 = [v16 menuModel];
  v18 = [(TUILayout *)self box];
  v19 = [v18 menuIsPrimary];
  v20 = [v14 actionObject];
  v92 = v14;
  v21 = [v14 actionDelegate];
  v91 = [v17 menuWithIsPrimary:v19 actionObject:v20 actionDelegate:v21];

  v22 = [(TUILayout *)self box];
  v23 = [v22 menuContainer];
  v24 = [v23 imageModelsToLoad];

  v87 = v5;
  v85 = v24;
  if ([v24 count])
  {
    v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v24 count]);
    [v5 contentsScale];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v24;
    v99 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    if (v99)
    {
      v97 = *v102;
      do
      {
        v27 = 0;
        do
        {
          if (*v102 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v101 + 1) + 8 * v27);
          v29 = [(TUILayout *)self controller];
          v30 = [v29 manager];
          v31 = [v30 imageResourceCache];
          v32 = [v28 urlString];
          [v28 baseURL];
          v34 = v33 = self;
          [v28 size];
          v35 = [v31 imageResourceForTemplatedURL:v32 baseURL:v34 naturalSize:? contentsScale:?];

          self = v33;
          v36 = [v28 identifier];
          [v26 setObject:v35 forKeyedSubscript:v36];

          v27 = v27 + 1;
        }

        while (v99 != v27);
        v99 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
      }

      while (v99);
    }

    v90 = v26;

    v5 = v87;
  }

  else
  {
    v90 = 0;
  }

  LODWORD(v25) = v88;
  v37 = v83;
  v38 = *(&v88 + 1);
  v39 = *&v88;
  v84 = [(TUILayout *)self box:0.0];
  v72 = [v84 itemType];
  v82 = [(TUILayout *)self box];
  v100 = [v82 identifier];
  v81 = [(TUILayout *)self box];
  obja = [v81 title];
  v80 = [(TUILayout *)self box];
  v70 = [v80 attributedTitle];
  v79 = [(TUILayout *)self box];
  v98 = [v79 image];
  v78 = [(TUILayout *)self box];
  v67 = [v78 isEnabled];
  v77 = [(TUILayout *)self box];
  v66 = [v77 buttonType];
  v76 = [(TUILayout *)self box];
  v64 = [v76 buttonRole];
  v75 = [(TUILayout *)self box];
  v89 = [v75 text];
  v73 = [(TUILayout *)self box];
  v61 = [v73 searchTextMaxLength];
  v71 = [(TUILayout *)self box];
  v60 = [v71 placeholderText];
  v69 = [v5 environment];
  v58 = TUIKeyboardAppearanceFromEnvironmentStyle([v69 style]);
  v68 = [(TUILayout *)self box];
  [v68 navigationBarBackgroundOpacity];
  v41 = v40;
  v65 = [(TUILayout *)self box];
  v57 = [v65 observeTrigger];
  v63 = [(TUILayout *)self box];
  v56 = [v63 observeTriggerValue];
  v62 = [(TUILayout *)self box];
  v42 = [v62 ignoreInsetsForOpacityTrigger];
  v59 = [(TUILayout *)self box];
  v43 = [v59 refId];
  v44 = [(TUILayout *)self box];
  [v44 refInstance];
  v46 = v45 = self;
  v47 = [(TUILayout *)v45 box];
  v48 = [v47 hostingIdentifiers];
  v49 = [(TUILayout *)v45 box];
  v50 = [v49 hostingProperties];
  v51 = [(TUILayout *)v45 box];
  LOBYTE(v55) = [v51 prefersNoPlatter];
  LOBYTE(v54) = v42;
  LOBYTE(v53) = v67;
  v74 = [TUIRenderModelNavigationItem renderModelWithItemType:v72 identifier:v100 imageModelIDToResource:v90 actionHandler:v92 title:obja attributedTitle:v70 image:v39 enabled:v38 buttonType:v37 buttonRole:v41 width:v98 minWidth:v53 maxWidth:v66 text:v64 searchTextMaxLength:v89 placeholderText:v61 keyboardAppearance:v60 navigationBarBackgroundOpacity:v58 observeTrigger:v57 observeTriggerValue:v56 ignoreInsetsForOpacityTrigger:v54 menu:v91 subview:v94 axAttributes:v93 refId:v43 refInstance:v46 hostingIdentifiers:v48 hostingProperties:v50 prefersNoPlatter:v55];

  return v74;
}

@end