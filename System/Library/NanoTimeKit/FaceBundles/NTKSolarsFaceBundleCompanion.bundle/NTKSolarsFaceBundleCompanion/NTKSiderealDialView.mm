@interface NTKSiderealDialView
- (NTKSiderealDialView)initWithFrame:(CGRect)a3 dialDiameter:(double)a4 device:(id)a5;
- (id)_replicatorLayerWithCenter:(CGPoint)a3 bounds:(CGRect)a4 dialDiameter:(double)a5 instanceCount:(int64_t)a6 instanceRotation:(double)a7 tickOpacity:(double)a8 tickSize:(CGSize)a9 tickCornerRadius:(double)a10;
@end

@implementation NTKSiderealDialView

- (NTKSiderealDialView)initWithFrame:(CGRect)a3 dialDiameter:(double)a4 device:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v69 = a5;
  v82.receiver = self;
  v82.super_class = NTKSiderealDialView;
  v10 = [(NTKSiderealDialView *)&v82 initWithFrame:x, y, width, height];
  if (v10)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    sub_15D00(v69, &v76);
    [(NTKSiderealDialView *)v10 setUserInteractionEnabled:0];
    v11 = [(NTKSiderealDialView *)v10 layer];
    [v11 setAllowsGroupOpacity:1];

    v12 = [UIView alloc];
    [(NTKSiderealDialView *)v10 bounds];
    v13 = [v12 initWithFrame:?];
    hourContainerView = v10->_hourContainerView;
    v10->_hourContainerView = v13;

    [(NTKSiderealDialView *)v10 addSubview:v10->_hourContainerView];
    v75 = objc_opt_new();
    [v75 setNumberStyle:0];
    v15 = +[NSLocale currentLocale];
    [v75 setLocale:v15];

    [v75 setMinimumIntegerDigits:2];
    [v75 setMaximumIntegerDigits:2];
    v83[0] = &off_2DCD0;
    v16 = [NSValue valueWithCGPoint:1.0, 0.0];
    v84[0] = v16;
    v83[1] = &off_2DCE8;
    v73 = [NSValue valueWithCGPoint:1.0, 0.0];
    v84[1] = v73;
    v83[2] = &off_2DD00;
    v17 = [NSValue valueWithCGPoint:*&v81, 0.0];
    v84[2] = v17;
    v83[3] = &off_2DD18;
    v18 = [NSValue valueWithCGPoint:1.0, 0.0];
    v84[3] = v18;
    v83[4] = &off_2DD30;
    v19 = [NSValue valueWithCGPoint:0.0, *(&v81 + 1)];
    v84[4] = v19;
    v83[5] = &off_2DD48;
    v20 = [NSValue valueWithCGPoint:-0.5, 0.0];
    v84[5] = v20;
    v83[6] = &off_2DD60;
    v21 = [NSValue valueWithCGPoint:-1.0, 0.0];
    v84[6] = v21;
    v83[7] = &off_2DD78;
    v22 = [NSValue valueWithCGPoint:0.0, 1.0];
    v84[7] = v22;
    v71 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:8];

    v23 = *(&v76 + 1);
    [(NTKSiderealDialView *)v10 bounds];
    CLKRectGetCenter();
    v72 = v24;
    v74 = v25;
    v26 = v23 * 0.5;
    v70 = CGRectZero.origin.y;
    v27 = CGRectZero.size.width;
    v28 = CGRectZero.size.height;
    v29 = *&v77;
    v30 = 1;
    for (i = 2; i != 26; i += 2)
    {
      v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v70, v27, v28}];
      v33 = [CLKFont systemFontOfSize:v29 weight:UIFontWeightSemibold];
      [v32 setFont:v33];

      v34 = [NSNumber numberWithUnsignedInteger:i];
      v35 = [v75 stringFromNumber:v34];
      [v32 setText:v35];

      v36 = sub_15AC8();
      [v32 setTextColor:v36];

      [v32 sizeToFit];
      v37 = __sincos_stret(v30 * 0.523598776 + 1.57079633);
      v38 = [NSNumber numberWithUnsignedInteger:i];
      v39 = [v71 objectForKeyedSubscript:v38];

      v40 = round(v72 + v26 * v37.__cosval);
      v41 = round(v74 + v26 * v37.__sinval);
      if (v39)
      {
        [v39 CGPointValue];
        v40 = v40 + v42;
        v41 = v41 + v43;
      }

      [v32 setCenter:{v40, v41}];
      [(UIView *)v10->_hourContainerView addSubview:v32];

      ++v30;
    }

    v44 = [(NTKSiderealDialView *)v10 layer];
    [(NTKSiderealDialView *)v10 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = *&v76;
    CLKDegreesToRadians();
    v55 = [(NTKSiderealDialView *)v10 _replicatorLayerWithCenter:144 bounds:v72 dialDiameter:v74 instanceCount:v46 instanceRotation:v48 tickOpacity:v50 tickSize:v52 tickCornerRadius:v53, v54, 0x3FE0000000000000, *(&v79 + 1), v80, *(&v79 + 1) * 0.5];
    [v44 addSublayer:v55];

    v56 = [(NTKSiderealDialView *)v10 layer];
    [(NTKSiderealDialView *)v10 bounds];
    v61 = [(NTKSiderealDialView *)v10 _replicatorLayerWithCenter:24 bounds:v72 dialDiameter:v74 instanceCount:v57 instanceRotation:v58 tickOpacity:v59 tickSize:v60 tickCornerRadius:v53, 0.261799388, 0x3FF0000000000000, *(&v78 + 1), v79, *(&v78 + 1) * 0.5];
    [v56 addSublayer:v61];

    v62 = [(NTKSiderealDialView *)v10 layer];
    [(NTKSiderealDialView *)v10 bounds];
    v67 = [(NTKSiderealDialView *)v10 _replicatorLayerWithCenter:12 bounds:v72 dialDiameter:v74 instanceCount:v63 instanceRotation:v64 tickOpacity:v65 tickSize:v66 tickCornerRadius:v53, 0.523598776, 0x3FF0000000000000, *(&v77 + 1), v78, *(&v77 + 1) * 0.5];
    [v62 addSublayer:v67];
  }

  return v10;
}

- (id)_replicatorLayerWithCenter:(CGPoint)a3 bounds:(CGRect)a4 dialDiameter:(double)a5 instanceCount:(int64_t)a6 instanceRotation:(double)a7 tickOpacity:(double)a8 tickSize:(CGSize)a9 tickCornerRadius:(double)a10
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3.y;
  v17 = a3.x;
  v18 = objc_opt_new();
  [v18 setFillMode:kCAFillModeBoth];
  [v18 setPosition:{v17, v16}];
  [v18 setBounds:{x, y, width, height}];
  [v18 setInstanceCount:a6];
  v19 = sub_15AC8();
  [v18 setInstanceColor:{objc_msgSend(v19, "CGColor")}];

  CATransform3DMakeRotation(&v25, a7, 0.0, 0.0, 1.0);
  [v18 setInstanceTransform:&v25];
  v20 = objc_opt_new();
  v21 = sub_15AC8();
  [v20 setBackgroundColor:{objc_msgSend(v21, "CGColor")}];

  [v20 setBounds:{0.0, 0.0, a10, v27}];
  HIDWORD(v22) = HIDWORD(a8);
  *&v22 = a8;
  [v20 setOpacity:v22];
  [v20 setCornerRadius:v28];
  [v20 setPosition:{v17, v16 - a5 * 0.5 + v27 * 0.5 + 1.0}];
  [v18 addSublayer:v20];

  return v18;
}

@end