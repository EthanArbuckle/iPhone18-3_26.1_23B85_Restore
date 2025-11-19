@interface UIWindow
+ (void)music_setWantsLayoutInsetsUsingBlock:(id)a3;
@end

@implementation UIWindow

+ (void)music_setWantsLayoutInsetsUsingBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke;
  v68[3] = &unk_CEEE60;
  v70 = &v72;
  v71 = "layoutSubviews";
  v5 = v3;
  v69 = v5;
  v6 = objc_retainBlock(v68);
  v7 = imp_implementationWithBlock(v6);
  InstanceMethod = class_getInstanceMethod(v4, "layoutSubviews");
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  v10 = class_replaceMethod(v4, "layoutSubviews", v7, TypeEncoding);

  v73[3] = v10;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_2;
  v60[3] = &unk_CEEE88;
  v62 = &v64;
  v63 = "traitCollectionDidChange:";
  v11 = v5;
  v61 = v11;
  v12 = objc_retainBlock(v60);
  v13 = imp_implementationWithBlock(v12);
  v14 = class_getInstanceMethod(v4, "traitCollectionDidChange:");
  v15 = method_getTypeEncoding(v14);
  v16 = class_replaceMethod(v4, "traitCollectionDidChange:", v13, v15);

  v65[3] = v16;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_3;
  v52[3] = &unk_CEEEB0;
  v54 = &v56;
  v55 = "initWithCoder:";
  v17 = v11;
  v53 = v17;
  v18 = objc_retainBlock(v52);
  v19 = imp_implementationWithBlock(v18);
  v20 = class_getInstanceMethod(v4, "initWithCoder:");
  v21 = method_getTypeEncoding(v20);
  v22 = class_replaceMethod(v4, "initWithCoder:", v19, v21);

  v57[3] = v22;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_4;
  v44[3] = &unk_CEEED8;
  v46 = &v48;
  v47 = "initWithFrame:";
  v23 = v17;
  v45 = v23;
  v24 = objc_retainBlock(v44);
  v25 = imp_implementationWithBlock(v24);
  v26 = class_getInstanceMethod(v4, "initWithFrame:");
  v27 = method_getTypeEncoding(v26);
  v28 = class_replaceMethod(v4, "initWithFrame:", v25, v27);

  v49[3] = v28;
  if (music_setWantsLayoutInsetsUsingBlock__onceToken != -1)
  {
    +[UIWindow(MusicLayoutAdditions) music_setWantsLayoutInsetsUsingBlock:];
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v29 = music_setWantsLayoutInsetsUsingBlock__sPopoverViewClass;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_6;
  v36[3] = &unk_CEEF40;
  v38 = &v40;
  v39 = "initWithFrame:backgroundViewClass:embeddedInView:contentExtendsOverArrow:";
  v30 = v23;
  v37 = v30;
  v31 = objc_retainBlock(v36);
  v32 = imp_implementationWithBlock(v31);
  v33 = class_getInstanceMethod(v4, "initWithFrame:backgroundViewClass:embeddedInView:contentExtendsOverArrow:");
  v34 = method_getTypeEncoding(v33);
  v35 = class_replaceMethod(v29, "initWithFrame:backgroundViewClass:embeddedInView:contentExtendsOverArrow:", v32, v34);

  v41[3] = v35;
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v72, 8);
}

void __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v7 = v3;
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    MethodImplementation = class_getMethodImplementation([v7 superclass], *(a1 + 48));
    if (MethodImplementation)
    {
      v4 = MethodImplementation;
LABEL_2:
      v4();
    }
  }

  (*(*(a1 + 32) + 16))();
  [v7 music_setLayoutInsets:?];
}

void __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    v6(v9, *(a1 + 48), v5);
  }

  else
  {
    v7 = objc_opt_class();
    if (v7 == objc_opt_class())
    {
      MethodImplementation = class_getMethodImplementation([v9 superclass], *(a1 + 48));
      if (MethodImplementation)
      {
        (MethodImplementation)(v9, *(a1 + 48), v5);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
  [v9 music_setLayoutInsets:?];
}

id __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7)
  {
    v7(v5, *(a1 + 48), v6);
    v8 = LABEL_3:;

    v5 = v8;
    goto LABEL_5;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    MethodImplementation = class_getMethodImplementation([v5 superclass], *(a1 + 48));
    if (MethodImplementation)
    {
      (MethodImplementation)(v5, *(a1 + 48), v6);
      goto LABEL_3;
    }
  }

LABEL_5:
  (*(*(a1 + 32) + 16))();
  [v5 music_setLayoutInsets:?];

  return v5;
}

id __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = *(*(*(a1 + 40) + 8) + 24);
  if (v12)
  {
    v12(v11, *(a1 + 48), a3, a4, a5, a6);
    v13 = LABEL_3:;

    v11 = v13;
    goto LABEL_5;
  }

  v14 = objc_opt_class();
  if (v14 == objc_opt_class())
  {
    MethodImplementation = class_getMethodImplementation([v11 superclass], *(a1 + 48));
    if (MethodImplementation)
    {
      (MethodImplementation)(v11, *(a1 + 48), a3, a4, a5, a6);
      goto LABEL_3;
    }
  }

LABEL_5:
  (*(*(a1 + 32) + 16))();
  [v11 music_setLayoutInsets:?];

  return v11;
}

id __71__UIWindow_MusicLayoutAdditions__music_setWantsLayoutInsetsUsingBlock___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = a2;
  v18 = *(*(*(a1 + 40) + 8) + 24);
  if (v18)
  {
    v18(v17, *(a1 + 48), a3, a4, a5, a6, a7, a8, a9);
    v19 = LABEL_3:;

    v17 = v19;
    goto LABEL_5;
  }

  if (objc_opt_class() == music_setWantsLayoutInsetsUsingBlock__sPopoverViewClass)
  {
    MethodImplementation = class_getMethodImplementation([v17 superclass], *(a1 + 48));
    if (MethodImplementation)
    {
      (MethodImplementation)(v17, *(a1 + 48), a3, a4, a5, a6, a7, a8, a9);
      goto LABEL_3;
    }
  }

LABEL_5:
  (*(*(a1 + 32) + 16))();
  [v17 music_setLayoutInsets:?];

  return v17;
}

@end