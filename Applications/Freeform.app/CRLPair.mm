@interface CRLPair
+ (CRLPair)pairWithFirst:(id)first second:(id)second;
+ (CRLPair)pairWithPair:(id)pair;
+ (id)pair;
- (BOOL)isEqual:(id)equal;
- (CRLPair)initWithCoder:(id)coder;
- (CRLPair)initWithFirst:(id)first second:(id)second;
- (CRLPair)initWithPair:(id)pair;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)p_SetFirst:(id)first;
- (void)p_SetSecond:(id)second;
@end

@implementation CRLPair

+ (CRLPair)pairWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

+ (CRLPair)pairWithPair:(id)pair
{
  pairCopy = pair;
  v5 = [[self alloc] initWithPair:pairCopy];

  return v5;
}

+ (id)pair
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CRLPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v11.receiver = self;
  v11.super_class = CRLPair;
  v8 = [(CRLPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLPair *)v8 p_SetFirst:firstCopy];
    [(CRLPair *)v9 p_SetSecond:secondCopy];
  }

  return v9;
}

- (CRLPair)initWithPair:(id)pair
{
  pairCopy = pair;
  first = [pairCopy first];
  second = [pairCopy second];

  v7 = [(CRLPair *)self initWithFirst:first second:second];
  return v7;
}

- (CRLPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  decodeObject = [coderCopy decodeObject];
  decodeObject2 = [coderCopy decodeObject];

  v7 = [(CRLPair *)self initWithFirst:decodeObject second:decodeObject2];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  first = [(CRLPair *)self first];
  [coderCopy encodeObject:first];

  second = [(CRLPair *)self second];
  [coderCopy encodeObject:second];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      first = [(CRLPair *)self first];
      first2 = [(CRLPair *)equalCopy first];
      if (first | first2 && ![first isEqual:first2])
      {
        v9 = 0;
      }

      else
      {
        second = [(CRLPair *)self second];
        second2 = [(CRLPair *)equalCopy second];
        if (second | second2)
        {
          v9 = [second isEqual:second2];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = objc_opt_class();
  v6 = sub_100013F00(v5, compareCopy);

  if (!v6)
  {
    goto LABEL_33;
  }

  first = [(CRLPair *)self first];
  first2 = [v6 first];

  if (first == first2)
  {
    goto LABEL_7;
  }

  first3 = [(CRLPair *)self first];

  if (!first3)
  {
    goto LABEL_33;
  }

  first4 = [v6 first];

  if (!first4)
  {
    goto LABEL_12;
  }

  first5 = [(CRLPair *)self first];
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
    first6 = [(CRLPair *)self first];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:97 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
LABEL_32:

    goto LABEL_33;
  }

  first7 = [(CRLPair *)self first];
  first8 = [v6 first];
  v15 = [first7 compare:first8];

  if (!v15)
  {
LABEL_7:
    second = [(CRLPair *)self second];
    second2 = [v6 second];

    if (second == second2)
    {
      v15 = 0;
      goto LABEL_34;
    }

    second3 = [(CRLPair *)self second];

    if (second3)
    {
      second4 = [v6 second];

      if (second4)
      {
        second5 = [(CRLPair *)self second];
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          second6 = [(CRLPair *)self second];
          second7 = [v6 second];
          v15 = [second6 compare:second7];

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
        first6 = [(CRLPair *)self second];
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
  first = [(CRLPair *)self first];
  v4 = [first hash];
  second = [(CRLPair *)self second];
  v6 = [second hash];

  return v6 ^ v4;
}

- (id)description
{
  first = [(CRLPair *)self first];
  v4 = [first description];
  second = [(CRLPair *)self second];
  v6 = [second description];
  v7 = [NSString stringWithFormat:@"%@, %@", v4, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  first = [(CRLPair *)self first];
  v6 = [first copyWithZone:zone];

  second = [(CRLPair *)self second];
  v8 = [second copyWithZone:zone];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithFirst:second:", v6, v8}];
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  first = [(CRLPair *)self first];
  v6 = [first copyWithZone:zone];

  second = [(CRLPair *)self second];
  v8 = [second copyWithZone:zone];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithFirst:second:", v6, v8}];
  return v9;
}

- (void)p_SetFirst:(id)first
{
  firstCopy = first;
  mFirst = self->mFirst;
  p_mFirst = &self->mFirst;
  if (mFirst != firstCopy)
  {
    v8 = firstCopy;
    objc_storeStrong(p_mFirst, first);
    firstCopy = v8;
  }
}

- (void)p_SetSecond:(id)second
{
  secondCopy = second;
  mSecond = self->mSecond;
  p_mSecond = &self->mSecond;
  if (mSecond != secondCopy)
  {
    v8 = secondCopy;
    objc_storeStrong(p_mSecond, second);
    secondCopy = v8;
  }
}

@end