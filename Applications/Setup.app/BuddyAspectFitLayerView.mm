@interface BuddyAspectFitLayerView
- (CGRect)originalManagerLayerBounds;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setManagedLayer:(id)a3;
@end

@implementation BuddyAspectFitLayerView

- (void)setFrame:(CGRect)a3
{
  v6 = a3;
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyAspectFitLayerView;
  [(BuddyAspectFitLayerView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(BuddyAspectFitLayerView *)v5 setNeedsLayout];
}

- (void)setBounds:(CGRect)a3
{
  v6 = a3;
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyAspectFitLayerView;
  [(BuddyAspectFitLayerView *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(BuddyAspectFitLayerView *)v5 setNeedsLayout];
}

- (void)setManagedLayer:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v12->_managedLayer, location[0]);
  [location[0] bounds];
  [(BuddyAspectFitLayerView *)v12 setOriginalManagerLayerBounds:v3, v4, v5, v6];
  v9 = 0;
  if (location[0])
  {
    v13 = location[0];
    v7 = [NSArray arrayWithObjects:&v13 count:1];
    v10 = v7;
    v9 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BuddyAspectFitLayerView *)v12 layer];
  [v8 setSublayers:v7];

  if (v9)
  {
  }

  [(BuddyAspectFitLayerView *)v12 setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  v145 = self;
  v144 = a2;
  v143.receiver = self;
  v143.super_class = BuddyAspectFitLayerView;
  [(BuddyAspectFitLayerView *)&v143 layoutSubviews];
  v2 = [(BuddyAspectFitLayerView *)v145 managedLayer];

  if (v2)
  {
    v3 = [(BuddyAspectFitLayerView *)v145 managedLayer];
    [(CALayer *)v3 bounds];
    v139 = v4;
    v138 = v5;
    v141 = v6;
    v140 = v7;
    v8 = v7;
    v9 = [(BuddyAspectFitLayerView *)v145 managedLayer];
    [(CALayer *)v9 bounds];
    v135 = v10;
    v134 = v11;
    v137 = v12;
    v136 = v13;
    v14 = v8 / v12;

    v142 = v14;
    [(BuddyAspectFitLayerView *)v145 frame];
    v130 = v15;
    v129 = v16;
    v132 = v17;
    v131 = v18;
    v19 = v18;
    [(BuddyAspectFitLayerView *)v145 frame];
    v126 = v20;
    v125 = v21;
    v128 = v22;
    v127 = v23;
    v133 = v19 / v22;
    v124 = 0.0;
    v123 = 0.0;
    if (v142 <= v19 / v22)
    {
      [(BuddyAspectFitLayerView *)v145 frame];
      v104 = v44;
      v103 = v45;
      v106 = v46;
      v105 = v47;
      v124 = v46;
      v48 = [(BuddyAspectFitLayerView *)v145 managedLayer];
      [(CALayer *)v48 bounds];
      v100 = v49;
      v99 = v50;
      v102 = v51;
      v101 = v52;
      v53 = v52;
      [(BuddyAspectFitLayerView *)v145 frame];
      v96 = v54;
      v95 = v55;
      v98 = v56;
      v97 = v57;
      v58 = v53 * v56;
      v59 = [(BuddyAspectFitLayerView *)v145 managedLayer];
      [(CALayer *)v59 bounds];
      v92 = v60;
      v91 = v61;
      v94 = v62;
      v93 = v63;
      v123 = v58 / v62;
    }

    else
    {
      v24 = [(BuddyAspectFitLayerView *)v145 managedLayer];
      [(CALayer *)v24 bounds];
      v120 = v25;
      v119 = v26;
      v122 = v27;
      v121 = v28;
      v29 = v27;
      [(BuddyAspectFitLayerView *)v145 frame];
      v116 = v30;
      v115 = v31;
      v118 = v32;
      v117 = v33;
      v34 = v29 * v33;
      v35 = [(BuddyAspectFitLayerView *)v145 managedLayer];
      [(CALayer *)v35 bounds];
      v112 = v36;
      v111 = v37;
      v114 = v38;
      v113 = v39;
      v124 = v34 / v39;

      [(BuddyAspectFitLayerView *)v145 frame];
      v108 = v40;
      v107 = v41;
      v110 = v42;
      v109 = v43;
      v123 = v43;
    }

    [(BuddyAspectFitLayerView *)v145 bounds];
    rect = v146;
    CGRectGetMidX(v146);
    [(BuddyAspectFitLayerView *)v145 bounds];
    v88 = v147;
    CGRectGetMidY(v147);
    sub_100218FFC();
    *&v90 = v64;
    *(&v90 + 1) = v65;
    v66 = [(BuddyAspectFitLayerView *)v145 managedLayer];
    v87 = v90;
    [(CALayer *)v66 setPosition:v90];

    [(BuddyAspectFitLayerView *)v145 originalManagerLayerBounds];
    v83 = v67;
    v82 = v68;
    v85 = v69;
    v84 = v70;
    v71 = v123 / v70;
    [(BuddyAspectFitLayerView *)v145 originalManagerLayerBounds];
    v79 = v72;
    v78 = v73;
    v81 = v74;
    v80 = v75;
    CATransform3DMakeScale(&__src, v71, v124 / v74, 1.0);
    v76 = [(BuddyAspectFitLayerView *)v145 managedLayer];
    memcpy(v77, &__src, sizeof(v77));
    [(CALayer *)v76 setTransform:v77];
  }
}

- (CGRect)originalManagerLayerBounds
{
  y = self->_originalManagerLayerBounds.origin.y;
  x = self->_originalManagerLayerBounds.origin.x;
  height = self->_originalManagerLayerBounds.size.height;
  width = self->_originalManagerLayerBounds.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end