@interface BuddyAspectFitLayerView
- (CGRect)originalManagerLayerBounds;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setManagedLayer:(id)layer;
@end

@implementation BuddyAspectFitLayerView

- (void)setFrame:(CGRect)frame
{
  frameCopy = frame;
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyAspectFitLayerView;
  [(BuddyAspectFitLayerView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(BuddyAspectFitLayerView *)selfCopy setNeedsLayout];
}

- (void)setBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyAspectFitLayerView;
  [(BuddyAspectFitLayerView *)&v3 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(BuddyAspectFitLayerView *)selfCopy setNeedsLayout];
}

- (void)setManagedLayer:(id)layer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layer);
  objc_storeStrong(&selfCopy->_managedLayer, location[0]);
  [location[0] bounds];
  [(BuddyAspectFitLayerView *)selfCopy setOriginalManagerLayerBounds:v3, v4, v5, v6];
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

  layer = [(BuddyAspectFitLayerView *)selfCopy layer];
  [layer setSublayers:v7];

  if (v9)
  {
  }

  [(BuddyAspectFitLayerView *)selfCopy setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v144 = a2;
  v143.receiver = self;
  v143.super_class = BuddyAspectFitLayerView;
  [(BuddyAspectFitLayerView *)&v143 layoutSubviews];
  managedLayer = [(BuddyAspectFitLayerView *)selfCopy managedLayer];

  if (managedLayer)
  {
    managedLayer2 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
    [(CALayer *)managedLayer2 bounds];
    v139 = v4;
    v138 = v5;
    v141 = v6;
    v140 = v7;
    v8 = v7;
    managedLayer3 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
    [(CALayer *)managedLayer3 bounds];
    v135 = v10;
    v134 = v11;
    v137 = v12;
    v136 = v13;
    v14 = v8 / v12;

    v142 = v14;
    [(BuddyAspectFitLayerView *)selfCopy frame];
    v130 = v15;
    v129 = v16;
    v132 = v17;
    v131 = v18;
    v19 = v18;
    [(BuddyAspectFitLayerView *)selfCopy frame];
    v126 = v20;
    v125 = v21;
    v128 = v22;
    v127 = v23;
    v133 = v19 / v22;
    v124 = 0.0;
    v123 = 0.0;
    if (v142 <= v19 / v22)
    {
      [(BuddyAspectFitLayerView *)selfCopy frame];
      v104 = v44;
      v103 = v45;
      v106 = v46;
      v105 = v47;
      v124 = v46;
      managedLayer4 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
      [(CALayer *)managedLayer4 bounds];
      v100 = v49;
      v99 = v50;
      v102 = v51;
      v101 = v52;
      v53 = v52;
      [(BuddyAspectFitLayerView *)selfCopy frame];
      v96 = v54;
      v95 = v55;
      v98 = v56;
      v97 = v57;
      v58 = v53 * v56;
      managedLayer5 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
      [(CALayer *)managedLayer5 bounds];
      v92 = v60;
      v91 = v61;
      v94 = v62;
      v93 = v63;
      v123 = v58 / v62;
    }

    else
    {
      managedLayer6 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
      [(CALayer *)managedLayer6 bounds];
      v120 = v25;
      v119 = v26;
      v122 = v27;
      v121 = v28;
      v29 = v27;
      [(BuddyAspectFitLayerView *)selfCopy frame];
      v116 = v30;
      v115 = v31;
      v118 = v32;
      v117 = v33;
      v34 = v29 * v33;
      managedLayer7 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
      [(CALayer *)managedLayer7 bounds];
      v112 = v36;
      v111 = v37;
      v114 = v38;
      v113 = v39;
      v124 = v34 / v39;

      [(BuddyAspectFitLayerView *)selfCopy frame];
      v108 = v40;
      v107 = v41;
      v110 = v42;
      v109 = v43;
      v123 = v43;
    }

    [(BuddyAspectFitLayerView *)selfCopy bounds];
    rect = v146;
    CGRectGetMidX(v146);
    [(BuddyAspectFitLayerView *)selfCopy bounds];
    v88 = v147;
    CGRectGetMidY(v147);
    sub_100218FFC();
    *&v90 = v64;
    *(&v90 + 1) = v65;
    managedLayer8 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
    v87 = v90;
    [(CALayer *)managedLayer8 setPosition:v90];

    [(BuddyAspectFitLayerView *)selfCopy originalManagerLayerBounds];
    v83 = v67;
    v82 = v68;
    v85 = v69;
    v84 = v70;
    v71 = v123 / v70;
    [(BuddyAspectFitLayerView *)selfCopy originalManagerLayerBounds];
    v79 = v72;
    v78 = v73;
    v81 = v74;
    v80 = v75;
    CATransform3DMakeScale(&__src, v71, v124 / v74, 1.0);
    managedLayer9 = [(BuddyAspectFitLayerView *)selfCopy managedLayer];
    memcpy(v77, &__src, sizeof(v77));
    [(CALayer *)managedLayer9 setTransform:v77];
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