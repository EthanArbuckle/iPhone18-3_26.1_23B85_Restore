@interface SpringGroupAnimation
- (SpringGroupAnimation)init;
- (void)dealloc;
- (void)runWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5 mass:(double)a6 stiffness:(double)a7 damping:(double)a8 initialVelocity:(double)a9;
@end

@implementation SpringGroupAnimation

- (SpringGroupAnimation)init
{
  v11.receiver = self;
  v11.super_class = SpringGroupAnimation;
  v2 = [(GroupAnimation *)&v11 init];
  if (v2)
  {
    v3 = sub_2DD54();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      return v2;
    }

    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SpringGroupAnimation *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}@] Initializing", buf, 0xCu);

    goto LABEL_9;
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SpringGroupAnimation *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = SpringGroupAnimation;
  [(GroupAnimation *)&v10 dealloc];
}

- (void)runWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5 mass:(double)a6 stiffness:(double)a7 damping:(double)a8 initialVelocity:(double)a9
{
  v17 = [(GroupAnimation *)self isAnimated];
  v18 = sub_2DD54();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (!v19)
    {
LABEL_20:

      [(GroupAnimation *)self prepare];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_30720;
      v34[3] = &unk_69228;
      v34[4] = self;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_30728;
      v33[3] = &unk_7FC30;
      v33[4] = self;
      [UIView _animateUsingSpringWithDuration:a5 delay:v34 options:v33 mass:a3 stiffness:a4 damping:a6 initialVelocity:a7 animations:a8 completion:a9];
      return;
    }

    v20 = self;
    if (!v20)
    {
      v25 = @"<nil>";
      goto LABEL_19;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(SpringGroupAnimation *)v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_9;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_9:

LABEL_19:
    *buf = 138545154;
    v36 = v25;
    v37 = 2048;
    v38 = a3;
    v39 = 2048;
    v40 = a4;
    v41 = 2048;
    v42 = a5;
    v43 = 2048;
    v44 = a6;
    v45 = 2048;
    v46 = a7;
    v47 = 2048;
    v48 = a8;
    v49 = 2048;
    v50 = a9;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[%{public}@] runWithDuration:%#.1lfs delay:%#.1lf options:%lu mass:%lf stiffness:%lf damping:%lf initialVelocity:%lf", buf, 0x52u);

    goto LABEL_20;
  }

  if (v19)
  {
    v26 = self;
    if (!v26)
    {
      v31 = @"<nil>";
      goto LABEL_22;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(SpringGroupAnimation *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_17;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v36 = v31;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[%{public}@] runWithoutAnimation", buf, 0xCu);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_30734;
  v32[3] = &unk_69228;
  v32[4] = self;
  [UIView performWithoutAnimation:v32];
}

@end