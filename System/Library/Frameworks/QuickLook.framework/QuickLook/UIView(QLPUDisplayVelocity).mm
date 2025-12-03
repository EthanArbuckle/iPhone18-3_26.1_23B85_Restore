@interface UIView(QLPUDisplayVelocity)
+ (void)_qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:;
+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:;
+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:completion:;
+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:;
@end

@implementation UIView(QLPUDisplayVelocity)

+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:
{
  v29 = a11;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __151__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_withDuration_delay_usingSpringWithDamping_initialVelocity_options_completion___block_invoke;
  v36[3] = &unk_278B58638;
  v37 = v29;
  v38 = a8;
  v39 = a9;
  v40 = a17;
  v41 = a13;
  v30 = a12[1];
  v35[0] = *a12;
  v35[1] = v30;
  v35[2] = a12[2];
  v31 = v29;
  [self _qlpu_animateView:v31 toCenter:v35 bounds:v36 transform:a14 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a18, a19, a20}];
}

+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:
{
  v28 = a10;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __143__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_usingDefaultDampedSpringWithDelay_initialVelocity_options_completion___block_invoke;
  v33[3] = &unk_278B58660;
  v34 = v28;
  v35 = a8;
  v36 = a12;
  v29 = a11[1];
  v32[0] = *a11;
  v32[1] = v29;
  v32[2] = a11[2];
  v30 = v28;
  [self _qlpu_animateView:v30 toCenter:v32 bounds:v33 transform:a13 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a16, a17, a18}];
}

+ (void)qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:completion:
{
  v30 = a11;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __162__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_completion___block_invoke;
  v37[3] = &unk_278B58688;
  v38 = v30;
  v39 = a8;
  v40 = a9;
  v41 = a13;
  v42 = a17;
  v43 = a18;
  v31 = a12[1];
  v36[0] = *a12;
  v36[1] = v31;
  v36[2] = a12[2];
  v32 = v30;
  [self _qlpu_animateView:v32 toCenter:v36 bounds:v37 transform:a14 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a19, a20, a21}];
}

+ (void)_qlpu_animateView:()QLPUDisplayVelocity toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:
{
  v144 = *MEMORY[0x277D85DE8];
  v27 = a9;
  v28 = a11;
  v29 = a12;
  [v27 center];
  v31 = v30;
  v33 = v32;
  [v27 bounds];
  v79 = v35;
  v81 = v34;
  v75 = v37;
  v77 = v36;
  memset(&v142, 0, sizeof(v142));
  if (v27)
  {
    [v27 transform];
  }

  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2020000000;
  v141 = 1;
  v38 = dispatch_group_create();
  dispatch_group_enter(v38);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke;
  block[3] = &unk_278B586B0;
  v39 = v29;
  v138 = v39;
  v139 = v140;
  dispatch_group_notify(v38, MEMORY[0x277D85CD0], block);
  if (self == v31)
  {
    self = v31;
  }

  else
  {
    dispatch_group_enter(v38);
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2;
    v133[3] = &unk_278B575B8;
    v134 = v27;
    selfCopy = self;
    v136 = v33;
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3;
    v130[3] = &unk_278B586D8;
    v132 = v140;
    v131 = v38;
    (*(v28 + 2))(v28, v133, v130, a15 / (self - v31));
  }

  if (a2 != v33)
  {
    dispatch_group_enter(v38);
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4;
    v126[3] = &unk_278B575B8;
    v127 = v27;
    selfCopy2 = self;
    v129 = a2;
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5;
    v123[3] = &unk_278B586D8;
    v125 = v140;
    v124 = v38;
    (*(v28 + 2))(v28, v126, v123, a16 / (a2 - v33));
  }

  v145.origin.x = a3;
  v145.origin.y = a4;
  v145.size.width = a5;
  v145.size.height = a6;
  v150.origin.y = v79;
  v150.origin.x = v81;
  v150.size.height = v75;
  v150.size.width = v77;
  if (!CGRectEqualToRect(v145, v150))
  {
    v146.origin.x = a3;
    v146.origin.y = a4;
    v146.size.width = a5;
    v146.size.height = a6;
    Width = CGRectGetWidth(v146);
    v147.origin.y = v79;
    v147.origin.x = v81;
    v147.size.height = v75;
    v147.size.width = v77;
    v41 = CGRectGetWidth(v147);
    v148.origin.x = a3;
    v148.origin.y = a4;
    v148.size.width = a5;
    v148.size.height = a6;
    Height = CGRectGetHeight(v148);
    v149.origin.y = v79;
    v149.origin.x = v81;
    v149.size.height = v75;
    v149.size.width = v77;
    v43 = Height / CGRectGetHeight(v149);
    v44 = 0.0;
    v45 = 0.0;
    if (Width / v41 != 1.0)
    {
      v45 = a17 / (Width / v41 + -1.0);
    }

    if (v43 != 1.0)
    {
      v44 = a17 / (v43 + -1.0);
    }

    v46 = (v45 + v44) * 0.5;
    dispatch_group_enter(v38);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6;
    v117[3] = &unk_278B575E0;
    v118 = v27;
    v119 = a3;
    v120 = a4;
    v121 = a5;
    v122 = a6;
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7;
    v114[3] = &unk_278B586D8;
    v116 = v140;
    v115 = v38;
    (*(v28 + 2))(v28, v117, v114, v46);
  }

  v47 = *(a10 + 16);
  *&t1.a = *a10;
  *&t1.c = v47;
  *&t1.tx = *(a10 + 32);
  t2 = v142;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v48 = *&v142.a;
    ty = v142.ty;
    tx = v142.tx;
    v49 = atan2(v142.b, v142.a);
    v50 = __sincos_stret(v49);
    if (fabs(v50.__cosval) <= fabs(v50.__sinval))
    {
      v51 = *(&v48 + 1) / v50.__sinval;
      v52 = -v142.c / v50.__sinval;
    }

    else
    {
      v51 = *&v48 / v50.__cosval;
      v52 = v142.d / v50.__cosval;
    }

    v53 = *a10;
    v54 = *(a10 + 8);
    v56 = *(a10 + 32);
    v55 = *(a10 + 40);
    v78 = atan2(v54, *a10);
    v57 = __sincos_stret(v78);
    if (fabs(v57.__cosval) <= fabs(v57.__sinval))
    {
      v58 = v54 / v57.__sinval;
      v59 = -*(a10 + 16) / v57.__sinval;
    }

    else
    {
      v58 = v53 / v57.__cosval;
      v59 = *(a10 + 24) / v57.__cosval;
    }

    v60 = v78;
    if (vabdd_f64(tx, v56) > 0.00000999999975 || vabdd_f64(ty, v55) > 0.00000999999975)
    {
      v61 = MEMORY[0x277D43EF8];
      v62 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v62 = *v61;
      }

      v63 = v62;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        t1 = v142;
        v64 = NSStringFromCGAffineTransform(&t1);
        v65 = *(a10 + 16);
        *&t1.a = *a10;
        *&t1.c = v65;
        *&t1.tx = *(a10 + 32);
        v66 = NSStringFromCGAffineTransform(&t1);
        LODWORD(t2.a) = 138412546;
        *(&t2.a + 4) = v64;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v66;
        _os_log_impl(&dword_23A714000, v63, OS_LOG_TYPE_INFO, "animation of translational transforms is not supported (%@ => %@) #Generic", &t2, 0x16u);
      }
    }

    if (v58 == v51 && v59 == v52)
    {
      v59 = v52;
      v58 = v51;
    }

    else
    {
      v67 = v59 / v52;
      v68 = 0.0;
      v69 = 0.0;
      if (v58 / v51 != 1.0)
      {
        v69 = a17 / (v58 / v51 + -1.0);
      }

      if (v67 != 1.0)
      {
        v68 = a17 / (v67 + -1.0);
      }

      v76 = v68;
      v70 = vabdd_f64(v69, v68);
      if (v70 > 0.00000999999975)
      {
        v71 = v52;
      }

      else
      {
        v71 = v59;
      }

      dispatch_group_enter(v38);
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4;
      v106[3] = &unk_278B58700;
      v72 = v27;
      v107 = v72;
      v108 = tx;
      v109 = ty;
      v110 = v58;
      v111 = v71;
      v112 = v49;
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_5;
      v103[3] = &unk_278B586D8;
      v105 = v140;
      v73 = v38;
      v104 = v73;
      (*(v28 + 2))(v28, v106, v103, v69);
      v60 = v78;
      if (v70 > 0.00000999999975)
      {
        dispatch_group_enter(v73);
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3_6;
        v96[3] = &unk_278B58700;
        v97 = v72;
        v98 = tx;
        v99 = ty;
        v100 = v58;
        v101 = v59;
        v102 = v49;
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_7;
        v93[3] = &unk_278B586D8;
        v95 = v140;
        v94 = v73;
        (*(v28 + 2))(v28, v96, v93, v76);
      }
    }

    if (v60 != v49)
    {
      dispatch_group_enter(v38);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5_8;
      v86[3] = &unk_278B58700;
      v87 = v27;
      v88 = tx;
      v89 = ty;
      v90 = v58;
      v91 = v59;
      v92 = v60;
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_9;
      v83[3] = &unk_278B586D8;
      v85 = v140;
      v84 = v38;
      (*(v28 + 2))(v28, v86, v83, a18 / (v60 - v49));
    }
  }

  dispatch_group_leave(v38);

  _Block_object_dispose(v140, 8);
  v74 = *MEMORY[0x277D85DE8];
}

@end