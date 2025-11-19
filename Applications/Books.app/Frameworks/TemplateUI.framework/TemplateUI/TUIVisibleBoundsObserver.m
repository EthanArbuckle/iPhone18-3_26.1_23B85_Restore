@interface TUIVisibleBoundsObserver
+ (id)newHorizontalWithWindow:(id)a3 layout:(id)a4 offset:(double)a5;
+ (id)newVerticalWithWindow:(id)a3 layout:(id)a4 offset:(double)a5;
- (TUIVisibleBoundsObserver)initWithAxis:(unint64_t)a3 window:(id)a4 layout:(id)a5 offset:(double)a6;
- (void)_updateVisibleMin:(double)a3 max:(double)a4;
- (void)visibleBoundsUpdated:(CGRect)a3;
@end

@implementation TUIVisibleBoundsObserver

+ (id)newHorizontalWithWindow:(id)a3 layout:(id)a4 offset:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithAxis:1 window:v9 layout:v8 offset:a5];

  return v10;
}

+ (id)newVerticalWithWindow:(id)a3 layout:(id)a4 offset:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithAxis:2 window:v9 layout:v8 offset:a5];

  return v10;
}

- (TUIVisibleBoundsObserver)initWithAxis:(unint64_t)a3 window:(id)a4 layout:(id)a5 offset:(double)a6
{
  v11 = a4;
  v12 = a5;
  v49.receiver = self;
  v49.super_class = TUIVisibleBoundsObserver;
  v13 = [(TUIVisibleBoundsObserver *)&v49 init];
  if (v13)
  {
    v14 = [v12 computedLayoutDirection];
    objc_storeStrong(&v13->_window, a4);
    v13->_axis = a3;
    v15 = [v12 controller];
    objc_storeWeak(&v13->_controller, v15);

    v16 = a3 == 1;
    if (v14 != &dword_0 + 2)
    {
      v16 = 0;
    }

    v13->_flipped = v16;
    v17 = objc_storeWeak(&v13->_generationHost, v12);
    v13->_generation = [v12 visibleBoundsGeneration];
    v45 = v12;

    v18 = [v11 windowLowerLoadTriggerChildBoxFlipped:v13->_flipped];
    v19 = [v11 windowUpperLoadTriggerChildBoxFlipped:v13->_flipped];
    v20 = [v11 windowLowerUnloadTriggerChildBoxFlipped:v13->_flipped];
    v21 = v11;
    v22 = [v11 windowUpperUnloadTriggerChildBoxFlipped:v13->_flipped];
    WeakRetained = objc_loadWeakRetained(&v13->_controller);
    v48 = v18;
    v24 = [WeakRetained layoutForModel:v18];

    v25 = objc_loadWeakRetained(&v13->_controller);
    v47 = v19;
    v26 = [v25 layoutForModel:v19];

    v27 = objc_loadWeakRetained(&v13->_controller);
    v46 = v20;
    v28 = [v27 layoutForModel:v20];

    v29 = objc_loadWeakRetained(&v13->_controller);
    v30 = [v29 layoutForModel:v22];

    if (a3 == 1)
    {
      if (v14 == &dword_0 + 1)
      {
        v31 = v24;
        if (v24)
        {
          [v24 computedFrame];
          v32 = CGRectGetMinX(v50) + a6;
        }

        else
        {
          v32 = NAN;
        }

        v11 = v21;
        v13->_position.lowerLoad = v32;
        v12 = v45;
        if (v28)
        {
          [v28 computedFrame];
          v36 = CGRectGetMaxX(v53) + a6;
        }

        else
        {
          v36 = NAN;
        }

        v13->_position.lowerUnload = v36;
        if (v26)
        {
          [v26 computedFrame];
          v38 = CGRectGetMaxX(v55) + a6;
        }

        else
        {
          v38 = NAN;
        }

        v13->_position.upperLoad = v38;
        if (v30)
        {
          [v30 computedFrame];
          MinX = CGRectGetMinX(v57);
LABEL_42:
          v43 = MinX + a6;
LABEL_44:
          v13->_position.upperUnload = v43;
          goto LABEL_45;
        }
      }

      else
      {
        v31 = v24;
        v11 = v21;
        v12 = v45;
        if (v14 != &dword_0 + 2)
        {
LABEL_45:
          *&v13->_triggered &= 0xF0u;

          goto LABEL_46;
        }

        if (v31)
        {
          [v31 computedFrame];
          v35 = CGRectGetMaxX(v52) + a6;
        }

        else
        {
          v35 = NAN;
        }

        v13->_position.lowerLoad = v35;
        if (v28)
        {
          [v28 computedFrame];
          v41 = CGRectGetMinX(v59) + a6;
        }

        else
        {
          v41 = NAN;
        }

        v13->_position.lowerUnload = v41;
        if (v26)
        {
          [v26 computedFrame];
          v42 = CGRectGetMinX(v60) + a6;
        }

        else
        {
          v42 = NAN;
        }

        v13->_position.upperLoad = v42;
        if (v30)
        {
          [v30 computedFrame];
          MinX = CGRectGetMaxX(v61);
          goto LABEL_42;
        }
      }
    }

    else
    {
      v33 = a3 == 2;
      v31 = v24;
      v11 = v21;
      v12 = v45;
      if (!v33)
      {
        goto LABEL_45;
      }

      if (v31)
      {
        [v31 computedFrame];
        v34 = CGRectGetMinY(v51) + a6;
      }

      else
      {
        v34 = NAN;
      }

      v13->_position.lowerLoad = v34;
      if (v28)
      {
        [v28 computedFrame];
        v37 = CGRectGetMaxY(v54) + a6;
      }

      else
      {
        v37 = NAN;
      }

      v13->_position.lowerUnload = v37;
      if (v26)
      {
        [v26 computedFrame];
        v39 = CGRectGetMaxY(v56) + a6;
      }

      else
      {
        v39 = NAN;
      }

      v13->_position.upperLoad = v39;
      if (v30)
      {
        [v30 computedFrame];
        MinX = CGRectGetMinY(v58);
        goto LABEL_42;
      }
    }

    v43 = NAN;
    goto LABEL_44;
  }

LABEL_46:

  return v13;
}

- (void)visibleBoundsUpdated:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  axis = self->_axis;
  if (axis == 2)
  {
    MinY = CGRectGetMinY(a3);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    MaxY = CGRectGetMaxY(v13);
  }

  else
  {
    if (axis != 1)
    {
      return;
    }

    MinY = CGRectGetMinX(a3);
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    MaxY = CGRectGetMaxX(v12);
  }

  [(TUIVisibleBoundsObserver *)self _updateVisibleMin:MinY max:MaxY];
}

- (void)_updateVisibleMin:(double)a3 max:(double)a4
{
  lowerLoad = self->_position.lowerLoad;
  if (self->_flipped)
  {
    if (lowerLoad <= a4)
    {
      v6 = *&self->_triggered ^ 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_position.lowerUnload >= a4 && (*&self->_triggered & 2) == 0;
    v8 = self->_position.upperLoad >= a3 && (*&self->_triggered & 4) == 0;
    if (self->_position.upperUnload <= a3)
    {
LABEL_20:
      v9 = (*&self->_triggered & 8) == 0;
      goto LABEL_24;
    }
  }

  else
  {
    if (lowerLoad >= a3)
    {
      v6 = *&self->_triggered ^ 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_position.lowerUnload <= a3 && (*&self->_triggered & 2) == 0;
    v8 = self->_position.upperLoad <= a4 && (*&self->_triggered & 4) == 0;
    if (self->_position.upperUnload >= a4)
    {
      goto LABEL_20;
    }
  }

  v9 = 0;
LABEL_24:
  triggered = self->_triggered;
  v11 = v6 & 1;
  v12 = triggered & 2;
  if (v7)
  {
    v12 = 2;
  }

  v13 = triggered & 0xF1;
  v14 = triggered & 4;
  if (v8)
  {
    v14 = 4;
  }

  v15 = triggered & 8;
  if (v9)
  {
    v15 = 8;
  }

  *&self->_triggered = v13 | v14 | v12 | v15 | v11;
  if (v9 || (v6 & 1) != 0 || v7 || v8)
  {
    v16 = +[TUITransaction noAnimationTransaction];
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v18 = [WeakRetained transactionCoordinator];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_71A28;
    v19[3] = &unk_25F8D8;
    v19[4] = self;
    v20 = v11;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    [v18 scheduleLayoutUpdateWithTransaction:v16 block:v19];

    [v16 commit];
  }
}

@end