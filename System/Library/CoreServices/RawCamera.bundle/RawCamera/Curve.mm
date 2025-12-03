@interface Curve
+ (id)curve;
+ (id)curveWith:(id)with of:(id)of;
+ (id)curveWithBlock:(id)block andInverse:(id)inverse;
+ (id)curveWithBlock:(id)block domainMin:(double)min domainMax:(double)max;
+ (id)curveWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values;
+ (id)curveWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues;
+ (id)curveWithGamma:(double)gamma;
+ (id)curveWithInverseOf:(id)of;
- (Curve)init;
- (Curve)initWith:(id)with of:(id)of;
- (Curve)initWithBlock:(id)block andInverse:(id)inverse;
- (Curve)initWithBlock:(id)block domainMin:(double)min domainMax:(double)max;
- (Curve)initWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values;
- (Curve)initWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues;
- (Curve)initWithGamma:(double)gamma;
- (Curve)initWithInverseOf:(id)of;
@end

@implementation Curve

+ (id)curve
{
  v2 = [Curve alloc];
  v7 = objc_msgSend_init(v2, v3, v4, v5, v6);

  return v7;
}

- (Curve)init
{
  v10.receiver = self;
  v10.super_class = Curve;
  v2 = [(Curve *)&v10 init];
  objc_msgSend_setFunction_(v2, v3, &unk_284923A60, v4, v5);
  objc_msgSend_setInverse_(v2, v6, &unk_284923A80, v7, v8);
  *(v2 + 24) = xmmword_233909AA0;
  *(v2 + 40) = xmmword_233909AA0;
  return v2;
}

+ (id)curveWithGamma:(double)gamma
{
  if (gamma == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v7 = [Curve alloc];
    v4 = objc_msgSend_initWithGamma_(v7, v8, v9, v10, v11, gamma);
  }

  return v4;
}

- (Curve)initWithGamma:(double)gamma
{
  if (gamma == 0.0)
  {
    selfCopy2 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = Curve;
    self = [(Curve *)&v14 init];
    selfCopy2 = self;
    if (self)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23384E628;
      v13[3] = &unk_2789EF308;
      *&v13[4] = gamma;
      objc_msgSend_setFunction_(self, v5, v13, v6, v7);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23384E664;
      v12[3] = &unk_2789EF308;
      *&v12[4] = gamma;
      objc_msgSend_setInverse_(selfCopy2, v8, v12, v9, v10);
      self = selfCopy2;
      selfCopy2 = self;
    }
  }

  return selfCopy2;
}

+ (id)curveWithInverseOf:(id)of
{
  if (of)
  {
    ofCopy = of;
    v4 = [Curve alloc];
    v8 = objc_msgSend_initWithInverseOf_(v4, v5, ofCopy, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (Curve)initWithInverseOf:(id)of
{
  ofCopy = of;
  if (ofCopy && (v38.receiver = self, v38.super_class = Curve, (self = [(Curve *)&v38 init]) != 0))
  {
    objc_msgSend_rangeMin(ofCopy, v5, v6, v7, v8);
    self->_domainMin = v9;
    objc_msgSend_rangeMax(ofCopy, v10, v11, v12, v13);
    self->_domainMax = v14;
    objc_msgSend_domainMin(ofCopy, v15, v16, v17, v18);
    self->_rangeMin = v19;
    objc_msgSend_domainMax(ofCopy, v20, v21, v22, v23);
    self->_rangeMax = v24;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_23384E878;
    v36[3] = &unk_2789EF330;
    v25 = ofCopy;
    v37 = v25;
    objc_msgSend_setFunction_(self, v26, v36, v27, v28);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_23384E8CC;
    v34[3] = &unk_2789EF330;
    v35 = v25;
    objc_msgSend_setInverse_(self, v29, v34, v30, v31);
    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)curveWith:(id)with of:(id)of
{
  v4 = 0;
  if (with && of)
  {
    ofCopy = of;
    withCopy = with;
    v8 = [Curve alloc];
    v4 = objc_msgSend_initWith_of_(v8, v9, withCopy, ofCopy, v10);
  }

  return v4;
}

- (Curve)initWith:(id)with of:(id)of
{
  withCopy = with;
  ofCopy = of;
  v8 = ofCopy;
  selfCopy = 0;
  if (withCopy && ofCopy)
  {
    v45.receiver = self;
    v45.super_class = Curve;
    self = [(Curve *)&v45 init];
    if (self)
    {
      objc_msgSend_domainMin(v8, v10, v11, v12, v13);
      self->_domainMin = v14;
      objc_msgSend_domainMax(v8, v15, v16, v17, v18);
      self->_domainMax = v19;
      objc_msgSend_rangeMin(withCopy, v20, v21, v22, v23);
      self->_rangeMin = v24;
      objc_msgSend_rangeMax(withCopy, v25, v26, v27, v28);
      self->_rangeMax = v29;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_23384EB50;
      v42[3] = &unk_2789EF358;
      v30 = withCopy;
      v43 = v30;
      v31 = v8;
      v44 = v31;
      objc_msgSend_setFunction_(self, v32, v42, v33, v34);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_23384EBCC;
      v39[3] = &unk_2789EF358;
      v40 = v31;
      v41 = v30;
      objc_msgSend_setInverse_(self, v35, v39, v36, v37);
      self = self;

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)curveWithBlock:(id)block andInverse:(id)inverse
{
  v4 = 0;
  if (block && inverse)
  {
    inverseCopy = inverse;
    blockCopy = block;
    v8 = [Curve alloc];
    v4 = objc_msgSend_initWithBlock_andInverse_(v8, v9, blockCopy, inverseCopy, v10);
  }

  return v4;
}

- (Curve)initWithBlock:(id)block andInverse:(id)inverse
{
  blockCopy = block;
  inverseCopy = inverse;
  v8 = inverseCopy;
  selfCopy = 0;
  if (blockCopy && inverseCopy)
  {
    v18.receiver = self;
    v18.super_class = Curve;
    v10 = [(Curve *)&v18 init];
    self = v10;
    if (v10)
    {
      objc_msgSend_setFunction_(v10, v11, blockCopy, v12, v13);
      objc_msgSend_setInverse_(self, v14, v8, v15, v16);
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)curveWithBlock:(id)block domainMin:(double)min domainMax:(double)max
{
  blockCopy = block;
  v9 = 0;
  if (blockCopy)
  {
    if ((*&min & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      if (max > min && (*&max & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v10 = [Curve alloc];
        v9 = objc_msgSend_initWithBlock_domainMin_domainMax_(v10, v11, blockCopy, v12, v13, min, max);
      }
    }
  }

  return v9;
}

- (Curve)initWithBlock:(id)block domainMin:(double)min domainMax:(double)max
{
  blockCopy = block;
  selfCopy = 0;
  if (blockCopy && (*&min & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&max & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21.receiver = self;
    v21.super_class = Curve;
    v12 = [(Curve *)&v21 init];
    self = v12;
    if (v12)
    {
      *(v12 + 3) = min;
      *(v12 + 4) = max;
      *(v12 + 40) = xmmword_233909AA0;
      objc_msgSend_setFunction_(v12, v13, blockCopy, v14, v15);
      v16 = sub_23384EF3C(blockCopy, min, max);
      objc_msgSend_setInverse_(self, v17, v16, v18, v19);

      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)curveWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values
{
  v8 = (*&min & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || count < 2 || values == 0;
  if (v8 || (max > min ? (v10 = (*&max & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v10 = 1), v10))
  {
    v16 = 0;
  }

  else
  {
    v12 = *&count;
    v13 = [Curve alloc];
    v16 = objc_msgSend_initWithCount_domainMin_domainMax_values_(v13, v14, v12, values, v15, min, max);
  }

  return v16;
}

- (Curve)initWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values
{
  selfCopy = self;
  v9 = (*&min & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || count < 2 || values == 0;
  if (v9 || (max > min ? (v11 = (*&max & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v11 = 1), v11 || (v76.receiver = self, v76.super_class = Curve, (selfCopy = [(Curve *)&v76 init]) == 0)))
  {
    v52 = 0;
  }

  else
  {
    v17 = 0;
    v18 = count - 1;
    v19 = values + 1;
    v20 = count - 1;
    v21 = v20;
    do
    {
      v23 = *(v19 - 1);
      v22 = *v19;
      if (*v19 >= v23)
      {
        v24 = 4;
      }

      else
      {
        v24 = 2;
      }

      if (*v19 > v23)
      {
        v24 = 1;
      }

      v17 |= v24;
      ++v19;
      --v21;
    }

    while (v21);
    v25 = 8 * count;
    v26 = objc_msgSend_dataWithCapacity_(MEMORY[0x277CBEB28], v14, v25, v15, v16, v22);
    v27 = v26;
    v32 = objc_msgSend_mutableBytes(v27, v28, v29, v30, v31);
    v33 = 0;
    do
    {
      *(v32 + v33) = values[v33 / 8];
      v33 += 8;
    }

    while (v25 != v33);
    selfCopy[3] = min;
    selfCopy[4] = max;
    v35 = *values;
    v34 = values + 1;
    v36 = v35;
    selfCopy[5] = v35;
    selfCopy[6] = v35;
    v37 = v35;
    do
    {
      v38 = *v34;
      if (v37 <= *v34)
      {
        v39 = *v34;
      }

      else
      {
        selfCopy[5] = v38;
        v39 = *v34;
        v37 = v38;
      }

      if (v36 < v39)
      {
        selfCopy[6] = v39;
        v36 = v39;
      }

      ++v34;
      --v20;
    }

    while (v20);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_23384F3BC;
    v71[3] = &unk_2789EF380;
    v40 = v26;
    v72 = v40;
    minCopy = min;
    maxCopy = max;
    v75 = v18;
    objc_msgSend_setFunction_(selfCopy, v41, v71, v42, v43);
    if (v17 == 1)
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_23384F454;
      v66[3] = &unk_2789EF380;
      v67 = v40;
      v70 = v18;
      minCopy2 = min;
      maxCopy2 = max;
      objc_msgSend_setInverse_(selfCopy, v54, v66, v55, v56);
      v51 = v67;
    }

    else if (v17 == 2)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_23384F4F4;
      v61[3] = &unk_2789EF380;
      v62 = v40;
      v65 = v18;
      minCopy3 = min;
      maxCopy3 = max;
      objc_msgSend_setInverse_(selfCopy, v48, v61, v49, v50);
      v51 = v62;
    }

    else
    {
      v51 = objc_msgSend_function(selfCopy, v44, v45, v46, v47);
      v57 = sub_23384EF3C(v51, min, max);
      objc_msgSend_setInverse_(selfCopy, v58, v57, v59, v60);
    }

    selfCopy = selfCopy;
    v52 = selfCopy;
  }

  return v52;
}

+ (id)curveWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues
{
  v7 = *&count;
  v8 = [Curve alloc];
  v10 = objc_msgSend_initWithCount_xvalues_yvalues_(v8, v9, v7, xvalues, yvalues);

  return v10;
}

- (Curve)initWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues
{
  v6 = 0;
  if (count >= 2 && xvalues && yvalues)
  {
    v8 = *&count;
    v9 = objc_msgSend_curveWithCount_domainMin_domainMax_values_(Curve, a2, *&count, xvalues, yvalues, 0.0, 1.0);
    v13 = objc_msgSend_curveWithInverseOf_(Curve, v10, v9, v11, v12);
    v16 = objc_msgSend_curveWithCount_domainMin_domainMax_values_(Curve, v14, v8, yvalues, v15, 0.0, 1.0);
    v6 = objc_msgSend_curveWith_of_(Curve, v17, v13, v16, v18);
  }

  return v6;
}

@end