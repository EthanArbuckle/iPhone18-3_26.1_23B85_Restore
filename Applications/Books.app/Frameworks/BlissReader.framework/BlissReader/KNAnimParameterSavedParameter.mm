@interface KNAnimParameterSavedParameter
- (KNAnimParameterSavedParameter)initWithCoder:(id)a3;
- (id)p_bezierPathFromSavedPathElements:(id)a3;
- (id)p_savedPathFromPath:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNAnimParameterSavedParameter

- (KNAnimParameterSavedParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = KNAnimParameterSavedParameter;
  v5 = [(KNAnimParameterSavedParameter *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nm"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v5->_type = [v4 decodeIntegerForKey:@"tp"];
    [v4 decodeDoubleForKey:@"dblValue"];
    v5->_doubleValue = v9;
    [v4 decodeDoubleForKey:@"max"];
    v5->_maxValue = v10;
    [v4 decodeDoubleForKey:@"min"];
    v5->_minValue = v11;
    v5->_hasMaxValue = [v4 decodeBoolForKey:@"hmax"];
    v5->_hasMinValue = [v4 decodeBoolForKey:@"hmin"];
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"svdPth"];

    v15 = [(KNAnimParameterSavedParameter *)v5 p_bezierPathFromSavedPathElements:v14];
    pathValue = v5->_pathValue;
    v5->_pathValue = v15;

    v5->_removed = [v4 decodeBoolForKey:@"removed"];
    v5->_debugOnly = [v4 decodeBoolForKey:@"dbg"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
    v18 = [v17 copy];
    parameterDescription = v5->_parameterDescription;
    v5->_parameterDescription = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KNAnimParameterSavedParameter *)self name];
  [v4 encodeObject:v5 forKey:@"nm"];

  [v4 encodeInteger:-[KNAnimParameterSavedParameter type](self forKey:{"type"), @"tp"}];
  [(KNAnimParameterSavedParameter *)self doubleValue];
  [v4 encodeDouble:@"dblValue" forKey:?];
  [(KNAnimParameterSavedParameter *)self maxValue];
  [v4 encodeDouble:@"max" forKey:?];
  [(KNAnimParameterSavedParameter *)self minValue];
  [v4 encodeDouble:@"min" forKey:?];
  [v4 encodeBool:-[KNAnimParameterSavedParameter hasMaxValue](self forKey:{"hasMaxValue"), @"hmax"}];
  [v4 encodeBool:-[KNAnimParameterSavedParameter hasMinValue](self forKey:{"hasMinValue"), @"hmin"}];
  v6 = [(KNAnimParameterSavedParameter *)self pathValue];
  v7 = [(KNAnimParameterSavedParameter *)self p_savedPathFromPath:v6];
  [v4 encodeObject:v7 forKey:@"svdPth"];

  [v4 encodeBool:-[KNAnimParameterSavedParameter removed](self forKey:{"removed"), @"removed"}];
  [v4 encodeBool:-[KNAnimParameterSavedParameter debugOnly](self forKey:{"debugOnly"), @"dbg"}];
  v8 = [(KNAnimParameterSavedParameter *)self parameterDescription];
  [v4 encodeObject:v8 forKey:@"desc"];
}

- (id)p_savedPathFromPath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSMutableArray array];
    if ([v3 elementCount] >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = [v3 elementAtIndex:v5 associatedPoints:&v11];
        v7 = objc_alloc_init(KNAnimParameterGroupSavedPathElement);
        v8 = v7;
        if (v6 > 1)
        {
          if (v6 == &dword_0 + 2)
          {
            [(KNAnimParameterGroupSavedPathElement *)v7 setElementType:2];
            [(KNAnimParameterGroupSavedPathElement *)v8 setToPoint:v15, v16];
            [(KNAnimParameterGroupSavedPathElement *)v8 setCp1:v11, v12];
            [(KNAnimParameterGroupSavedPathElement *)v8 setCp2:v13, v14];
          }

          else if (v6 == &dword_0 + 3)
          {
            [(KNAnimParameterGroupSavedPathElement *)v7 setElementType:3];
          }

          goto LABEL_14;
        }

        if (!v6)
        {
          break;
        }

        if (v6 == &dword_0 + 1)
        {
          v9 = 1;
LABEL_12:
          [(KNAnimParameterGroupSavedPathElement *)v7 setElementType:v9];
          [(KNAnimParameterGroupSavedPathElement *)v8 setToPoint:v11, v12];
        }

LABEL_14:
        [v4 addObject:v8];

        if (++v5 >= [v3 elementCount])
        {
          goto LABEL_17;
        }
      }

      v9 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_17:

  return v4;
}

- (id)p_bezierPathFromSavedPathElements:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(TSDBezierPath);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [v10 elementType];
          if (v11 > 1)
          {
            if (v11 == &dword_0 + 2)
            {
              [v10 toPoint];
              v13 = v12;
              v15 = v14;
              [v10 cp1];
              v17 = v16;
              v19 = v18;
              [v10 cp2];
              [v4 curveToPoint:v13 controlPoint1:v15 controlPoint2:{v17, v19, v20, v21}];
            }

            else if (v11 == &dword_0 + 3)
            {
              [v4 closePath];
            }
          }

          else if (v11)
          {
            if (v11 == &dword_0 + 1)
            {
              [v10 toPoint];
              [v4 lineToPoint:?];
            }
          }

          else
          {
            [v10 toPoint];
            [v4 moveToPoint:?];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end