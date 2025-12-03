@interface CALayer
+ (id)springAnimationWithDuration:(double)duration dampingRatio:(double)ratio velocity:(double)velocity;
@end

@implementation CALayer

+ (id)springAnimationWithDuration:(double)duration dampingRatio:(double)ratio velocity:(double)velocity
{
  v6 = fmin(fmax(ratio, 0.00000011920929), 1.0);
  v7 = fmin(fmax(duration, 0.01), 10.0);
  if (v6 >= 1.0)
  {
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_10007AE48;
    v38 = &unk_100621940;
    v39 = 0x3FF0000000000000;
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10007AE54;
    v28 = &unk_100621968;
    v10 = &v29;
    v29 = objc_retainBlock(&v35);
    v30 = 0.00100000005;
    v31 = *&v7;
    v11 = v29;
    v13 = objc_retainBlock(&v25);
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_10007AEC8;
    v45 = &unk_1006219B0;
    v46 = v7 * v7;
    v47 = 0x3FF0000000000000;
    v48 = *&v7;
    v15 = objc_retainBlock(&v42);
  }

  else
  {
    v8 = 1.0 - v6 * v6;
    v9 = sqrtf(v8);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10007ACFC;
    v49[3] = &unk_100621940;
    *&v49[4] = v9;
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_10007AD08;
    v45 = &unk_100621968;
    v47 = *&v6;
    v48 = 0x3FF0000000000000;
    v10 = &v46;
    v46 = COERCE_DOUBLE(objc_retainBlock(v49));
    v11 = *&v46;
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_10007AD40;
    v38 = &unk_100621968;
    v40 = 0x3F50624DE0000000;
    v41 = v7 * v6;
    v12 = objc_retainBlock(&v42);
    v39 = v12;
    v13 = objc_retainBlock(&v35);
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10007ADA8;
    v28 = &unk_100621990;
    v30 = v7 * v6;
    v29 = v12;
    v31 = 0x3FF0000000000000;
    v32 = v7 * v6;
    v33 = v7 * (v6 * v6);
    v34 = v9;
    v14 = v12;
    v15 = objc_retainBlock(&v25);
  }

  v16 = 1.0 / v7 * 5.0;
  v17 = 12;
  do
  {
    v18 = (v13[2])(v13, v16);
    v16 = v16 - v18 / (v15[2])(v15, v16);
    --v17;
  }

  while (v17);
  v19 = v16 * v16;
  v20 = sqrt(v19);
  v21 = v6 * (v20 + v20);

  v22 = +[CASpringAnimation animation];
  [v22 setMass:1.0];
  [v22 setVelocity:1.0];
  [v22 setStiffness:v19];
  [v22 setDamping:v21];
  v23 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v22 setTimingFunction:v23];

  [v22 setDuration:duration];

  return v22;
}

@end