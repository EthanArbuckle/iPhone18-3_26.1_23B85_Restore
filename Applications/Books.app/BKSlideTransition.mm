@interface BKSlideTransition
+ (id)transitionWithDirection:(unint64_t)a3;
- (BKSlideTransition)init;
- (BKSlideTransition)initWithDirection:(unint64_t)a3;
- (void)animateTransition:(id)a3;
@end

@implementation BKSlideTransition

+ (id)transitionWithDirection:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithDirection:a3];

  return v3;
}

- (BKSlideTransition)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector("initWithDirection:");
  [NSException raise:NSInvalidArgumentException format:@"Please use the designated initializer [%@ %@]", v4, v5];

  return 0;
}

- (BKSlideTransition)initWithDirection:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BKSlideTransition;
  result = [(BKSlideTransition *)&v5 init];
  if (result)
  {
    result->_direction = a3;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewForKey:UITransitionContextFromViewKey];
  v6 = [v4 viewForKey:UITransitionContextToViewKey];
  v7 = [v4 containerView];
  [(BKSlideTransition *)self transitionDuration:v4];
  v9 = v8;
  if ([(BKSlideTransition *)self direction]== 2)
  {
    [v7 insertSubview:v6 belowSubview:v5];
  }

  else
  {
    [v7 insertSubview:v6 aboveSubview:v5];
  }

  [v5 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(BKSlideTransition *)self direction];
  if (!v18)
  {
    v45.origin.x = v11;
    v45.origin.y = v13;
    v45.size.width = v15;
    v45.size.height = v17;
    Width = CGRectGetWidth(v45);
    v46.origin.x = v11;
    v46.origin.y = v13;
    v46.size.width = v15;
    v46.size.height = v17;
    v19 = -CGRectGetWidth(v46);
    goto LABEL_10;
  }

  if (v18 == 2)
  {
    v44.origin.x = v11;
    v44.origin.y = v13;
    v44.size.width = v15;
    v44.size.height = v17;
    v20 = v13 + CGRectGetHeight(v44);
    v19 = v11;
    Width = v11;
  }

  else
  {
    v19 = v11;
    v20 = v13;
    Width = v11;
    if (v18 == 1)
    {
      v42.origin.x = v11;
      v42.origin.y = v13;
      v42.size.width = v15;
      v42.size.height = v17;
      Width = -CGRectGetWidth(v42);
      v43.origin.x = v11;
      v43.origin.y = v13;
      v43.size.width = v15;
      v43.size.height = v17;
      v19 = CGRectGetWidth(v43);
LABEL_10:
      v20 = v13;
    }
  }

  [v5 setFrame:{v11, v13, v15, v17}];
  [v6 setFrame:{v19, v13, v15, v17}];
  v22 = [v7 window];
  [v22 setUserInteractionEnabled:0];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000C9A14;
  v31[3] = &unk_100A06AA0;
  v34 = Width;
  v35 = v20;
  v36 = v15;
  v37 = v17;
  v32 = v5;
  v33 = v6;
  v38 = v11;
  v39 = v13;
  v40 = v15;
  v41 = v17;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000C9A60;
  v27[3] = &unk_100A05F98;
  v28 = v32;
  v29 = v7;
  v30 = v4;
  v23 = v4;
  v24 = v7;
  v25 = v32;
  v26 = v6;
  [UIView animateWithDuration:v31 animations:v27 completion:v9];
}

@end