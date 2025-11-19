@interface Curve
+ (id)curve;
+ (id)curveWith:(id)a3 of:(id)a4;
+ (id)curveWithBlock:(id)a3 andInverse:(id)a4;
+ (id)curveWithBlock:(id)a3 domainMin:(double)a4 domainMax:(double)a5;
+ (id)curveWithCount:(int)a3 domainMin:(double)a4 domainMax:(double)a5 values:(double *)a6;
+ (id)curveWithCount:(int)a3 xvalues:(double *)a4 yvalues:(double *)a5;
+ (id)curveWithGamma:(double)a3;
+ (id)curveWithInverseOf:(id)a3;
- (Curve)init;
- (Curve)initWith:(id)a3 of:(id)a4;
- (Curve)initWithBlock:(id)a3 andInverse:(id)a4;
- (Curve)initWithBlock:(id)a3 domainMin:(double)a4 domainMax:(double)a5;
- (Curve)initWithCount:(int)a3 domainMin:(double)a4 domainMax:(double)a5 values:(double *)a6;
- (Curve)initWithCount:(int)a3 xvalues:(double *)a4 yvalues:(double *)a5;
- (Curve)initWithGamma:(double)a3;
- (Curve)initWithInverseOf:(id)a3;
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

+ (id)curveWithGamma:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v7 = [Curve alloc];
    v4 = objc_msgSend_initWithGamma_(v7, v8, v9, v10, v11, a3);
  }

  return v4;
}

- (Curve)initWithGamma:(double)a3
{
  if (a3 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = Curve;
    self = [(Curve *)&v14 init];
    v3 = self;
    if (self)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23384E628;
      v13[3] = &unk_2789EF308;
      *&v13[4] = a3;
      objc_msgSend_setFunction_(self, v5, v13, v6, v7);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23384E664;
      v12[3] = &unk_2789EF308;
      *&v12[4] = a3;
      objc_msgSend_setInverse_(v3, v8, v12, v9, v10);
      self = v3;
      v3 = self;
    }
  }

  return v3;
}

+ (id)curveWithInverseOf:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [Curve alloc];
    v8 = objc_msgSend_initWithInverseOf_(v4, v5, v3, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (Curve)initWithInverseOf:(id)a3
{
  v4 = a3;
  if (v4 && (v38.receiver = self, v38.super_class = Curve, (self = [(Curve *)&v38 init]) != 0))
  {
    objc_msgSend_rangeMin(v4, v5, v6, v7, v8);
    self->_domainMin = v9;
    objc_msgSend_rangeMax(v4, v10, v11, v12, v13);
    self->_domainMax = v14;
    objc_msgSend_domainMin(v4, v15, v16, v17, v18);
    self->_rangeMin = v19;
    objc_msgSend_domainMax(v4, v20, v21, v22, v23);
    self->_rangeMax = v24;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_23384E878;
    v36[3] = &unk_2789EF330;
    v25 = v4;
    v37 = v25;
    objc_msgSend_setFunction_(self, v26, v36, v27, v28);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_23384E8CC;
    v34[3] = &unk_2789EF330;
    v35 = v25;
    objc_msgSend_setInverse_(self, v29, v34, v30, v31);
    self = self;

    v32 = self;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (id)curveWith:(id)a3 of:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [Curve alloc];
    v4 = objc_msgSend_initWith_of_(v8, v9, v7, v6, v10);
  }

  return v4;
}

- (Curve)initWith:(id)a3 of:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
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
      objc_msgSend_rangeMin(v6, v20, v21, v22, v23);
      self->_rangeMin = v24;
      objc_msgSend_rangeMax(v6, v25, v26, v27, v28);
      self->_rangeMax = v29;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_23384EB50;
      v42[3] = &unk_2789EF358;
      v30 = v6;
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

      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)curveWithBlock:(id)a3 andInverse:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [Curve alloc];
    v4 = objc_msgSend_initWithBlock_andInverse_(v8, v9, v7, v6, v10);
  }

  return v4;
}

- (Curve)initWithBlock:(id)a3 andInverse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v18.receiver = self;
    v18.super_class = Curve;
    v10 = [(Curve *)&v18 init];
    self = v10;
    if (v10)
    {
      objc_msgSend_setFunction_(v10, v11, v6, v12, v13);
      objc_msgSend_setInverse_(self, v14, v8, v15, v16);
      self = self;
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)curveWithBlock:(id)a3 domainMin:(double)a4 domainMax:(double)a5
{
  v8 = a3;
  v9 = 0;
  if (v8)
  {
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      if (a5 > a4 && (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v10 = [Curve alloc];
        v9 = objc_msgSend_initWithBlock_domainMin_domainMax_(v10, v11, v8, v12, v13, a4, a5);
      }
    }
  }

  return v9;
}

- (Curve)initWithBlock:(id)a3 domainMin:(double)a4 domainMax:(double)a5
{
  v10 = a3;
  v11 = 0;
  if (v10 && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21.receiver = self;
    v21.super_class = Curve;
    v12 = [(Curve *)&v21 init];
    self = v12;
    if (v12)
    {
      *(v12 + 3) = a4;
      *(v12 + 4) = a5;
      *(v12 + 40) = xmmword_233909AA0;
      objc_msgSend_setFunction_(v12, v13, v10, v14, v15);
      v16 = sub_23384EF3C(v10, a4, a5);
      objc_msgSend_setInverse_(self, v17, v16, v18, v19);

      self = self;
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)curveWithCount:(int)a3 domainMin:(double)a4 domainMax:(double)a5 values:(double *)a6
{
  v8 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || a3 < 2 || a6 == 0;
  if (v8 || (a5 > a4 ? (v10 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v10 = 1), v10))
  {
    v16 = 0;
  }

  else
  {
    v12 = *&a3;
    v13 = [Curve alloc];
    v16 = objc_msgSend_initWithCount_domainMin_domainMax_values_(v13, v14, v12, a6, v15, a4, a5);
  }

  return v16;
}

- (Curve)initWithCount:(int)a3 domainMin:(double)a4 domainMax:(double)a5 values:(double *)a6
{
  v7 = self;
  v9 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || a3 < 2 || a6 == 0;
  if (v9 || (a5 > a4 ? (v11 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v11 = 1), v11 || (v76.receiver = self, v76.super_class = Curve, (v7 = [(Curve *)&v76 init]) == 0)))
  {
    v52 = 0;
  }

  else
  {
    v17 = 0;
    v18 = a3 - 1;
    v19 = a6 + 1;
    v20 = a3 - 1;
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
    v25 = 8 * a3;
    v26 = objc_msgSend_dataWithCapacity_(MEMORY[0x277CBEB28], v14, v25, v15, v16, v22);
    v27 = v26;
    v32 = objc_msgSend_mutableBytes(v27, v28, v29, v30, v31);
    v33 = 0;
    do
    {
      *(v32 + v33) = a6[v33 / 8];
      v33 += 8;
    }

    while (v25 != v33);
    v7[3] = a4;
    v7[4] = a5;
    v35 = *a6;
    v34 = a6 + 1;
    v36 = v35;
    v7[5] = v35;
    v7[6] = v35;
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
        v7[5] = v38;
        v39 = *v34;
        v37 = v38;
      }

      if (v36 < v39)
      {
        v7[6] = v39;
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
    v73 = a4;
    v74 = a5;
    v75 = v18;
    objc_msgSend_setFunction_(v7, v41, v71, v42, v43);
    if (v17 == 1)
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_23384F454;
      v66[3] = &unk_2789EF380;
      v67 = v40;
      v70 = v18;
      v68 = a4;
      v69 = a5;
      objc_msgSend_setInverse_(v7, v54, v66, v55, v56);
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
      v63 = a4;
      v64 = a5;
      objc_msgSend_setInverse_(v7, v48, v61, v49, v50);
      v51 = v62;
    }

    else
    {
      v51 = objc_msgSend_function(v7, v44, v45, v46, v47);
      v57 = sub_23384EF3C(v51, a4, a5);
      objc_msgSend_setInverse_(v7, v58, v57, v59, v60);
    }

    v7 = v7;
    v52 = v7;
  }

  return v52;
}

+ (id)curveWithCount:(int)a3 xvalues:(double *)a4 yvalues:(double *)a5
{
  v7 = *&a3;
  v8 = [Curve alloc];
  v10 = objc_msgSend_initWithCount_xvalues_yvalues_(v8, v9, v7, a4, a5);

  return v10;
}

- (Curve)initWithCount:(int)a3 xvalues:(double *)a4 yvalues:(double *)a5
{
  v6 = 0;
  if (a3 >= 2 && a4 && a5)
  {
    v8 = *&a3;
    v9 = objc_msgSend_curveWithCount_domainMin_domainMax_values_(Curve, a2, *&a3, a4, a5, 0.0, 1.0);
    v13 = objc_msgSend_curveWithInverseOf_(Curve, v10, v9, v11, v12);
    v16 = objc_msgSend_curveWithCount_domainMin_domainMax_values_(Curve, v14, v8, a5, v15, 0.0, 1.0);
    v6 = objc_msgSend_curveWith_of_(Curve, v17, v13, v16, v18);
  }

  return v6;
}

@end