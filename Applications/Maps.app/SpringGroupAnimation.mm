@interface SpringGroupAnimation
- (SpringGroupAnimation)init;
- (void)dealloc;
- (void)runWithDuration:(double)duration delay:(double)delay options:(unint64_t)options mass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity;
@end

@implementation SpringGroupAnimation

- (void)runWithDuration:(double)duration delay:(double)delay options:(unint64_t)options mass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity
{
  isAnimated = [(GroupAnimation *)self isAnimated];
  v18 = sub_100019CDC();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (isAnimated)
  {
    if (!v19)
    {
LABEL_20:

      [(GroupAnimation *)self prepare];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100E3A1B4;
      v34[3] = &unk_101661B18;
      v34[4] = self;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100E3A1BC;
      v33[3] = &unk_101661738;
      v33[4] = self;
      [UIView _animateUsingSpringWithDuration:options delay:v34 options:v33 mass:duration stiffness:delay damping:mass initialVelocity:stiffness animations:damping completion:velocity];
      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_19;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [(SpringGroupAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy, v24];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy];
LABEL_9:

LABEL_19:
    *buf = 138545154;
    v36 = selfCopy;
    v37 = 2048;
    durationCopy = duration;
    v39 = 2048;
    delayCopy = delay;
    v41 = 2048;
    optionsCopy = options;
    v43 = 2048;
    massCopy = mass;
    v45 = 2048;
    stiffnessCopy = stiffness;
    v47 = 2048;
    dampingCopy = damping;
    v49 = 2048;
    velocityCopy = velocity;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] runWithDuration:%#.1lfs delay:%#.1lf options:%lu mass:%lf stiffness:%lf damping:%lf initialVelocity:%lf", buf, 0x52u);

    goto LABEL_20;
  }

  if (v19)
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_22;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(SpringGroupAnimation *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v28, selfCopy2, v30];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v28, selfCopy2];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v36 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] runWithoutAnimation", buf, 0xCu);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100E3A1C8;
  v32[3] = &unk_101661B18;
  v32[4] = self;
  [UIView performWithoutAnimation:v32];
}

- (void)dealloc
{
  v3 = sub_100019CDC();
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
      v7 = [(SpringGroupAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
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
  v10.super_class = SpringGroupAnimation;
  [(GroupAnimation *)&v10 dealloc];
}

- (SpringGroupAnimation)init
{
  v11.receiver = self;
  v11.super_class = SpringGroupAnimation;
  v2 = [(GroupAnimation *)&v11 init];
  if (v2)
  {
    v3 = sub_100019CDC();
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Initializing", buf, 0xCu);

    goto LABEL_9;
  }

  return v2;
}

@end