@interface SKReach
+ (id)reachTo:(CGPoint)to rootNode:(id)node duration:(double)duration;
+ (id)reachTo:(CGPoint)to rootNode:(id)node duration:(double)duration maxZRotationSpeed:(double)speed;
+ (id)reachTo:(CGPoint)to rootNode:(id)node velocity:(double)velocity;
- (SKReach)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)solveIKWithTarget:(id)target;
- (void)updateWithTarget:(id)target forTime:(double)time;
- (void)willStartWithTarget:(id)target atTime:(double)time;
@end

@implementation SKReach

- (SKReach)init
{
  v6.receiver = self;
  v6.super_class = SKReach;
  v2 = [(SKAction *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_ikRoot, 0);
    v3->_goalPosition = *MEMORY[0x277CBF348];
    ikChain = v3->_ikChain;
    v3->_ikChain = 0;

    v3->_velocity = 0.0;
    v3->_timeConstrained = 1;
  }

  return v3;
}

+ (id)reachTo:(CGPoint)to rootNode:(id)node duration:(double)duration maxZRotationSpeed:(double)speed
{
  y = to.y;
  x = to.x;
  nodeCopy = node;
  v11 = objc_alloc_init(SKReach);
  v11->_goalPosition.x = x;
  v11->_goalPosition.y = y;
  objc_storeWeak(&v11->_ikRoot, nodeCopy);
  v11->_zRotationSpeed = speed;
  [(SKAction *)v11 setDuration:duration];

  return v11;
}

- (void)willStartWithTarget:(id)target atTime:(double)time
{
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_ikRoot);

  if (WeakRetained == targetCopy)
  {
    NSLog(&cfstr_WarningReachto.isa);
  }

  v8.receiver = self;
  v8.super_class = SKReach;
  [(SKAction *)&v8 willStartWithTarget:targetCopy atTime:time];
  [(SKReach *)self solveIKWithTarget:targetCopy];
}

+ (id)reachTo:(CGPoint)to rootNode:(id)node duration:(double)duration
{
  y = to.y;
  x = to.x;
  nodeCopy = node;
  v9 = objc_alloc_init(SKReach);
  v9->_goalPosition.x = x;
  v9->_goalPosition.y = y;
  objc_storeWeak(&v9->_ikRoot, nodeCopy);
  [(SKAction *)v9 setDuration:duration];

  return v9;
}

+ (id)reachTo:(CGPoint)to rootNode:(id)node velocity:(double)velocity
{
  y = to.y;
  x = to.x;
  nodeCopy = node;
  v9 = objc_alloc_init(SKReach);
  v9->_goalPosition.x = x;
  v9->_goalPosition.y = y;
  objc_storeWeak(&v9->_ikRoot, nodeCopy);
  v9->_velocity = velocity;
  v9->_timeConstrained = 0;
  v10 = nodeCopy;
  for (i = v10; ; i = v15)
  {
    children = [i children];
    v13 = [children count];

    if (!v13)
    {
      break;
    }

    children2 = [i children];
    v15 = [children2 objectAtIndexedSubscript:0];
  }

  [(SKReach *)v9 solveIKWithTarget:i];

  return v9;
}

- (void)solveIKWithTarget:(id)target
{
  targetCopy = target;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  ikChain = self->_ikChain;
  self->_ikChain = v4;

  v6 = targetCopy;
  v151 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277CBF348];
    v9 = v6;
    while (1)
    {
      reachConstraints = [v9 reachConstraints];

      if (reachConstraints)
      {
        reachConstraints2 = [v9 reachConstraints];
        [reachConstraints2 lowerAngleLimit];
        v13 = v12;

        reachConstraints3 = [v9 reachConstraints];
        [reachConstraints3 upperAngleLimit];
        v16 = v15;

        [v9 zRotation];
        v18 = v13;
        if (v18 < 0.0 || v18 > 6.2832)
        {
          v18 = v18 - (floorf(v18 / 6.2832) * 6.2832);
        }

        v19 = v16;
        v20 = v19 - v18;
        if (v20 < 0.0 || v20 > 6.2832)
        {
          v20 = v20 - (floorf(v20 / 6.2832) * 6.2832);
        }

        v21 = v17;
        v22 = v21 - v18;
        if (v22 < 0.0 || v22 > 6.2832)
        {
          v22 = v22 - (floorf(v22 / 6.2832) * 6.2832);
        }

        if (v22 > v20)
        {
          if (6.28318531 - v22 <= (v22 - v20))
          {
            reachConstraints4 = [v9 reachConstraints];
            [reachConstraints4 lowerAngleLimit];
          }

          else
          {
            reachConstraints4 = [v9 reachConstraints];
            [reachConstraints4 upperAngleLimit];
          }

          [v9 setZRotation:?];
        }
      }

      v24 = [[IKLink alloc] initWithNode:v9];
      v25 = *v8;
      v26 = v8[1];
      WeakRetained = objc_loadWeakRetained(&self->_ikRoot);
      parent = [WeakRetained parent];
      [v9 convertPoint:parent toNode:{v25, v26}];
      v30 = v29;
      v32 = v31;

      *&v33 = v30;
      *&v34 = v32;
      [(IKLink *)v24 setPosition:v33, v34];
      if (v7)
      {
        [(IKLink *)v7 position];
        v154 = v36;
        v159 = v35;
        [(IKLink *)v24 position];
        v38.i32[1] = v37;
        v39 = vsub_f32(v38, __PAIR64__(v154, v159));
        v40 = vmul_f32(v39, v39);
        v41 = COERCE_DOUBLE(vpadd_f32(v40, v40));
        *&v41 = sqrtf(*&v41);
        [(IKLink *)v24 setLength:v41];
        node = [(IKLink *)v7 node];
        [node position];
        v44 = v43;
        node2 = [(IKLink *)v7 node];
        [node2 position];
        *&v46 = v44;
        *&v47 = v47;
        [(IKLink *)v24 setSize:v46, v47];
      }

      [(NSMutableArray *)self->_ikChain insertObject:v24 atIndex:0];
      v48 = objc_loadWeakRetained(&self->_ikRoot);

      if (v9 == v48)
      {
        break;
      }

      parent2 = [v9 parent];

      v9 = parent2;
      v7 = v24;
      if (!parent2)
      {
        goto LABEL_25;
      }
    }

    v24 = v7;
  }

  else
  {
    v24 = 0;
  }

LABEL_25:
  v50 = v24;
  if ([(NSMutableArray *)self->_ikChain count]< 2)
  {
    goto LABEL_54;
  }

  v51 = [(NSMutableArray *)self->_ikChain count];
  v52 = [(NSMutableArray *)self->_ikChain objectAtIndexedSubscript:v51 - 1];
  [v52 setLength:0.0];
  v152 = v52;
  v53 = objc_loadWeakRetained(&self->_ikRoot);
  parent3 = [v53 parent];
  x = self->_goalPosition.x;
  y = self->_goalPosition.y;
  v57 = objc_loadWeakRetained(&self->_ikRoot);
  scene = [v57 scene];
  [parent3 convertPoint:scene fromNode:{x, y}];
  v155 = v60;
  v160 = v59;

  v61 = 0;
  v62.f64[0] = v160;
  v62.f64[1] = v155;
  v63 = vcvt_f32_f64(v62);
  v64 = v51 - 2;
  v65 = v51 - 2;
  do
  {
    v66 = objc_loadWeakRetained(&self->_ikRoot);
    [v66 position];
    v161 = v67;
    v68 = objc_loadWeakRetained(&self->_ikRoot);
    [v68 position];
    v69.f64[0] = v161;
    v69.f64[1] = v70;
    *&v69.f64[0] = vcvt_f32_f64(v69);
    v162 = v69;

    v71 = 0;
    v72 = 0.0;
    while (1)
    {
      v73 = [(NSMutableArray *)self->_ikChain count];
      v74 = self->_ikChain;
      if (v71 >= v73)
      {
        break;
      }

      v75 = [(NSMutableArray *)v74 objectAtIndexedSubscript:v71];
      LODWORD(v76) = HIDWORD(v162.f64[0]);
      [v75 setPosition:{v162.f64[0], v76}];
      [v75 angle];
      v78 = v77;
      [v75 size];
      v80 = v79;
      v72 = v72 + v78;
      v81 = v72;
      v82 = cosf(v81);
      [v75 size];
      v84 = v83;
      v85 = v72;
      v86 = sinf(v85);
      [v75 size];
      v88 = v87;
      [v75 size];
      v89.f32[0] = (v80 * v82) - (v84 * v86);
      v89.f32[1] = (v86 * v90) + (v88 * v82);
      v91.f64[1] = v162.f64[1];
      *&v91.f64[0] = vadd_f32(*&v162.f64[0], v89);
      v162 = v91;

      ++v71;
    }

    v92 = [(NSMutableArray *)v74 objectAtIndexedSubscript:v65];
    if (v65)
    {
      v93 = [(NSMutableArray *)self->_ikChain objectAtIndexedSubscript:v65 - 1];
      [v93 node];
    }

    else
    {
      v93 = objc_loadWeakRetained(&self->_ikRoot);
      [v93 parent];
    }
    v94 = ;

    v95 = v152;
    if (!v94)
    {
      goto LABEL_41;
    }

    v96 = vsub_f32(v63, *&v162.f64[0]);
    v97 = vmul_f32(v96, v96);
    if (sqrtf(vpadd_f32(v97, v97).f32[0]) <= 1.0)
    {
      goto LABEL_41;
    }

    [v92 position];
    v156 = v98;
    [v92 position];
    v100 = vsub_f32(*&v162.f64[0], __PAIR64__(v99, v156));
    v101 = vsub_f32(v63, __PAIR64__(v99, v156));
    v102 = vmul_f32(v101, v101);
    v103 = vmul_f32(v100, v100);
    v104 = vmul_f32(vmul_n_f32(v101, 1.0 / sqrtf(vpadd_f32(v102, v102).f32[0])), vmul_n_f32(v100, 1.0 / sqrtf(vpadd_f32(v103, v103).f32[0])));
    v105 = vpadd_f32(v104, v104).f32[0];
    if (v105 >= 0.99999)
    {
      goto LABEL_41;
    }

    v106 = (-v101.f32[1] * v100.f32[0]) + (v101.f32[0] * v100.f32[1]);
    if (v106 > 0.0)
    {
      *&v107 = -acosf(v105);
LABEL_40:
      [v92 rotateByAngle:v107];
      goto LABEL_41;
    }

    if (v106 < 0.0)
    {
      *&v107 = acosf(v105);
      goto LABEL_40;
    }

LABEL_41:

    if (v61 == 250)
    {
      break;
    }

    ++v61;
    if (v65)
    {
      --v65;
    }

    else
    {
      v65 = v64;
    }

    v108 = vsub_f32(v63, *&v162.f64[0]);
    v109 = vmul_f32(v108, v108);
  }

  while (sqrtf(vpadd_f32(v109, v109).f32[0]) > 1.0);
  if (!self->_timeConstrained)
  {
    v110 = objc_loadWeakRetained(&self->_ikRoot);
    parent4 = [v110 parent];
    node3 = [v152 node];
    [node3 position];
    v114 = v113;
    v116 = v115;
    node4 = [v152 node];
    parent5 = [node4 parent];
    [parent4 convertPoint:parent5 fromNode:{v114, v116}];
    v157 = v120;
    v163 = v119;

    v121 = 0;
    v122.f64[0] = v163;
    v122.f64[1] = v157;
    v123 = vcvt_f32_f64(v122);
    v124 = 0.0;
    v95 = v152;
    do
    {
      v125 = objc_loadWeakRetained(&self->_ikRoot);
      [v125 position];
      v164 = v126;
      v153 = v123;
      v158 = v124;
      v127 = objc_loadWeakRetained(&self->_ikRoot);
      [v127 position];
      v128 = vcvtd_n_f64_u64(v121, 3uLL);
      v129.f64[0] = v164;
      v129.f64[1] = v130;
      v123 = vcvt_f32_f64(v129);

      v131 = 0;
      v132 = 0.0;
      while (v131 < [(NSMutableArray *)self->_ikChain count])
      {
        v133 = [(NSMutableArray *)self->_ikChain objectAtIndexedSubscript:v131];
        [v133 angleInitial];
        v135 = v134;
        [v133 angle];
        v137 = v136;
        [v133 angleInitial];
        v139 = v138;
        [v133 length];
        v141 = v140;
        [v133 length];
        v143 = v142;
        v144 = v135 + v128 * (v137 - v139);
        v132 = v132 + v144;
        v145 = v132;
        v146 = __sincosf_stret(v145);
        v147.f32[0] = v146.__cosval * v141;
        v147.f32[1] = v146.__sinval * v143;
        v123 = vadd_f32(v123, v147);

        ++v131;
      }

      v148 = vsub_f32(v123, v153);
      v149 = vmul_f32(v148, v148);
      v124 = v158 + sqrtf(vpadd_f32(v149, v149).f32[0]);
      ++v121;
    }

    while (v121 != 8);
    [(SKAction *)self setDuration:v124 / self->_velocity];
  }

LABEL_54:
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  v20.receiver = self;
  v20.super_class = SKReach;
  [(SKAction *)&v20 updateWithTarget:target forTime:?];
  [(SKAction *)self ratioForTime:time];
  v7 = v6;
  v8 = [(NSMutableArray *)self->_ikChain count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = v7;
    do
    {
      v12 = [(NSMutableArray *)self->_ikChain objectAtIndexedSubscript:v10];
      [v12 angleInitial];
      v14 = v13;
      [v12 angle];
      v16 = v15;
      [v12 angleInitial];
      v18 = v17;
      node = [v12 node];
      [node setZRotation:(v14 + (v11 * (v16 - v18)))];

      ++v10;
    }

    while (v9 != v10);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SKReach;
  v4 = [(SKAction *)&v9 copyWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_ikRoot);
  objc_storeWeak(v4 + 2, WeakRetained);

  *(v4 + 24) = self->_goalPosition;
  v6 = [(NSMutableArray *)self->_ikChain copy];
  v7 = *(v4 + 5);
  *(v4 + 5) = v6;

  *(v4 + 6) = *&self->_velocity;
  v4[56] = self->_timeConstrained;
  return v4;
}

@end