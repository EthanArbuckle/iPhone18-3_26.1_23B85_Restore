@interface UIView
@end

@implementation UIView

void __151__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_withDuration_delay_usingSpringWithDamping_initialVelocity_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D75D18];
  v13 = *(a1 + 32);
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = a2;
  v11 = [v8 arrayWithObjects:&v13 count:1];
  [v7 qlpu_animateViews:v11 withDuration:*(a1 + 64) delay:v10 usingSpringWithDamping:v9 initialSpringVelocity:*(a1 + 40) options:*(a1 + 48) animations:*(a1 + 56) completion:{a4, v13, v14}];

  v12 = *MEMORY[0x277D85DE8];
}

void __143__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_usingDefaultDampedSpringWithDelay_initialVelocity_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D75D18];
  v13 = *(a1 + 32);
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = a2;
  v11 = [v8 arrayWithObjects:&v13 count:1];
  [v7 qlpu_animateViews:v11 usingDefaultDampedSpringWithDelay:*(a1 + 48) initialSpringVelocity:v10 options:v9 animations:*(a1 + 40) completion:{a4, v13, v14}];

  v12 = *MEMORY[0x277D85DE8];
}

void __162__UIView_QLPUDisplayVelocity__qlpu_animateView_toCenter_bounds_transform_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D75D18];
  v13 = *(a1 + 32);
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = a2;
  v11 = [v8 arrayWithObjects:&v13 count:1];
  [v7 qlpu_animateViews:v11 usingSpringWithDuration:*(a1 + 56) delay:v10 options:v9 mass:*(a1 + 40) stiffness:*(a1 + 48) damping:*(a1 + 64) initialVelocity:*(a1 + 72) animations:*(a1 + 80) completion:{a4, v13, v14}];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4(double *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[5];
  v6 = a1[6];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  *&v11.a = v10;
  *&v11.c = v9;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  *&v11.tx = v8;
  *&v14.a = v10;
  *&v14.c = v9;
  *&v14.tx = v8;
  CGAffineTransformTranslate(&v11, &v14, v5, v6);
  *&t1.a = v10;
  *&t1.c = v9;
  *&t1.tx = v8;
  t2 = v11;
  CGAffineTransformConcat(&v14, &t1, &t2);
  v11 = v14;
  t1 = v14;
  CGAffineTransformRotate(&v14, &t1, v4);
  v11 = v14;
  t1 = v14;
  CGAffineTransformScale(&v14, &t1, v2, v3);
  v11 = v14;
  return [v1 setTransform:&v11];
}

void __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_5(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3_6(double *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[5];
  v6 = a1[6];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  *&v11.a = v10;
  *&v11.c = v9;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  *&v11.tx = v8;
  *&v14.a = v10;
  *&v14.c = v9;
  *&v14.tx = v8;
  CGAffineTransformTranslate(&v11, &v14, v5, v6);
  *&t1.a = v10;
  *&t1.c = v9;
  *&t1.tx = v8;
  t2 = v11;
  CGAffineTransformConcat(&v14, &t1, &t2);
  v11 = v14;
  t1 = v14;
  CGAffineTransformRotate(&v14, &t1, v4);
  v11 = v14;
  t1 = v14;
  CGAffineTransformScale(&v14, &t1, v2, v3);
  v11 = v14;
  return [v1 setTransform:&v11];
}

void __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_7(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5_8(double *a1)
{
  v1 = *(a1 + 4);
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[5];
  v6 = a1[6];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  *&v11.a = v10;
  *&v11.c = v9;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  *&v11.tx = v8;
  *&v14.a = v10;
  *&v14.c = v9;
  *&v14.tx = v8;
  CGAffineTransformTranslate(&v11, &v14, v5, v6);
  *&t1.a = v10;
  *&t1.c = v9;
  *&t1.tx = v8;
  t2 = v11;
  CGAffineTransformConcat(&v14, &t1, &t2);
  v11 = v14;
  t1 = v14;
  CGAffineTransformRotate(&v14, &t1, v4);
  v11 = v14;
  t1 = v14;
  CGAffineTransformScale(&v14, &t1, v2, v3);
  v11 = v14;
  return [v1 setTransform:&v11];
}

void __127__UIView_QLPUDisplayVelocity___qlpu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_9(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

@end