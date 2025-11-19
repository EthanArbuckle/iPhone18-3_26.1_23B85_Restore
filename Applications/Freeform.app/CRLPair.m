@interface CRLPair
+ (CRLPair)pairWithFirst:(id)a3 second:(id)a4;
+ (CRLPair)pairWithPair:(id)a3;
+ (id)pair;
- (BOOL)isEqual:(id)a3;
- (CRLPair)initWithCoder:(id)a3;
- (CRLPair)initWithFirst:(id)a3 second:(id)a4;
- (CRLPair)initWithPair:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)p_SetFirst:(id)a3;
- (void)p_SetSecond:(id)a3;
@end

@implementation CRLPair

+ (CRLPair)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFirst:v7 second:v6];

  return v8;
}

+ (CRLPair)pairWithPair:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPair:v4];

  return v5;
}

+ (id)pair
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CRLPair)initWithFirst:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLPair;
  v8 = [(CRLPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLPair *)v8 p_SetFirst:v6];
    [(CRLPair *)v9 p_SetSecond:v7];
  }

  return v9;
}

- (CRLPair)initWithPair:(id)a3
{
  v4 = a3;
  v5 = [v4 first];
  v6 = [v4 second];

  v7 = [(CRLPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (CRLPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObject];
  v6 = [v4 decodeObject];

  v7 = [(CRLPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRLPair *)self first];
  [v4 encodeObject:v5];

  v6 = [(CRLPair *)self second];
  [v4 encodeObject:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CRLPair *)self first];
      v6 = [(CRLPair *)v4 first];
      if (v5 | v6 && ![v5 isEqual:v6])
      {
        v9 = 0;
      }

      else
      {
        v7 = [(CRLPair *)self second];
        v8 = [(CRLPair *)v4 second];
        if (v7 | v8)
        {
          v9 = [v7 isEqual:v8];
        }

        else
        {
          v9 = 1;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100013F00(v5, v4);

  if (!v6)
  {
    goto LABEL_33;
  }

  v7 = [(CRLPair *)self first];
  v8 = [v6 first];

  if (v7 == v8)
  {
    goto LABEL_7;
  }

  v9 = [(CRLPair *)self first];

  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = [v6 first];

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [(CRLPair *)self first];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327648();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132765C(v24, self);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101327734();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v25);
    }

    v26 = [NSString stringWithUTF8String:"[CRLPair compare:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPair.m"];
    v28 = [(CRLPair *)self first];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:97 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
LABEL_32:

    goto LABEL_33;
  }

  v13 = [(CRLPair *)self first];
  v14 = [v6 first];
  v15 = [v13 compare:v14];

  if (!v15)
  {
LABEL_7:
    v16 = [(CRLPair *)self second];
    v17 = [v6 second];

    if (v16 == v17)
    {
      v15 = 0;
      goto LABEL_34;
    }

    v18 = [(CRLPair *)self second];

    if (v18)
    {
      v19 = [v6 second];

      if (v19)
      {
        v20 = [(CRLPair *)self second];
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = [(CRLPair *)self second];
          v23 = [v6 second];
          v15 = [v22 compare:v23];

          goto LABEL_34;
        }

        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132775C();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101327770(v29, self);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101327848();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v30);
        }

        v26 = [NSString stringWithUTF8String:"[CRLPair compare:]"];
        v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPair.m"];
        v28 = [(CRLPair *)self second];
        [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:114 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
        goto LABEL_32;
      }

LABEL_12:
      v15 = 1;
      goto LABEL_34;
    }

LABEL_33:
    v15 = -1;
  }

LABEL_34:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(CRLPair *)self first];
  v4 = [v3 hash];
  v5 = [(CRLPair *)self second];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [(CRLPair *)self first];
  v4 = [v3 description];
  v5 = [(CRLPair *)self second];
  v6 = [v5 description];
  v7 = [NSString stringWithFormat:@"%@, %@", v4, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(CRLPair *)self first];
  v6 = [v5 copyWithZone:a3];

  v7 = [(CRLPair *)self second];
  v8 = [v7 copyWithZone:a3];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v6, v8}];
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(CRLPair *)self first];
  v6 = [v5 copyWithZone:a3];

  v7 = [(CRLPair *)self second];
  v8 = [v7 copyWithZone:a3];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v6, v8}];
  return v9;
}

- (void)p_SetFirst:(id)a3
{
  v5 = a3;
  mFirst = self->mFirst;
  p_mFirst = &self->mFirst;
  if (mFirst != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mFirst, a3);
    v5 = v8;
  }
}

- (void)p_SetSecond:(id)a3
{
  v5 = a3;
  mSecond = self->mSecond;
  p_mSecond = &self->mSecond;
  if (mSecond != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mSecond, a3);
    v5 = v8;
  }
}

@end