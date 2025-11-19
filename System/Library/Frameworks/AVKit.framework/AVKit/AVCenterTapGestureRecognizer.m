@interface AVCenterTapGestureRecognizer
- (BOOL)shouldReceiveEvent:(id)a3;
@end

@implementation AVCenterTapGestureRecognizer

- (BOOL)shouldReceiveEvent:(id)a3
{
  v4 = a3;
  v5 = [(AVCenterTapGestureRecognizer *)self view];
  if (v5 && (v23.receiver = self, v23.super_class = AVCenterTapGestureRecognizer, [(AVCenterTapGestureRecognizer *)&v23 shouldReceiveEvent:v4]))
  {
    v6 = [v4 allTouches];
    v7 = [v6 anyObject];

    [v5 bounds];
    v9 = v8;
    v11 = v10;
    [v5 center];
    v13 = v12;
    v15 = v14;
    [v7 locationInView:v5];
    if (v11 >= v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = v11;
    }

    v19 = fmin(v18 * 0.1, 100.0);
    if (v19 <= 14.0)
    {
      v21 = 0;
    }

    else
    {
      v20 = vabdd_f64(v13, v16) <= v19;
      v21 = vabdd_f64(v15, v17) <= v19 && v20;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end