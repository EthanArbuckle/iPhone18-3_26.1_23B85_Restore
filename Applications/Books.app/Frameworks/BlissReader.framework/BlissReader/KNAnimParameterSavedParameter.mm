@interface KNAnimParameterSavedParameter
- (KNAnimParameterSavedParameter)initWithCoder:(id)coder;
- (id)p_bezierPathFromSavedPathElements:(id)elements;
- (id)p_savedPathFromPath:(id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNAnimParameterSavedParameter

- (KNAnimParameterSavedParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = KNAnimParameterSavedParameter;
  v5 = [(KNAnimParameterSavedParameter *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nm"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v5->_type = [coderCopy decodeIntegerForKey:@"tp"];
    [coderCopy decodeDoubleForKey:@"dblValue"];
    v5->_doubleValue = v9;
    [coderCopy decodeDoubleForKey:@"max"];
    v5->_maxValue = v10;
    [coderCopy decodeDoubleForKey:@"min"];
    v5->_minValue = v11;
    v5->_hasMaxValue = [coderCopy decodeBoolForKey:@"hmax"];
    v5->_hasMinValue = [coderCopy decodeBoolForKey:@"hmin"];
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"svdPth"];

    v15 = [(KNAnimParameterSavedParameter *)v5 p_bezierPathFromSavedPathElements:v14];
    pathValue = v5->_pathValue;
    v5->_pathValue = v15;

    v5->_removed = [coderCopy decodeBoolForKey:@"removed"];
    v5->_debugOnly = [coderCopy decodeBoolForKey:@"dbg"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desc"];
    v18 = [v17 copy];
    parameterDescription = v5->_parameterDescription;
    v5->_parameterDescription = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(KNAnimParameterSavedParameter *)self name];
  [coderCopy encodeObject:name forKey:@"nm"];

  [coderCopy encodeInteger:-[KNAnimParameterSavedParameter type](self forKey:{"type"), @"tp"}];
  [(KNAnimParameterSavedParameter *)self doubleValue];
  [coderCopy encodeDouble:@"dblValue" forKey:?];
  [(KNAnimParameterSavedParameter *)self maxValue];
  [coderCopy encodeDouble:@"max" forKey:?];
  [(KNAnimParameterSavedParameter *)self minValue];
  [coderCopy encodeDouble:@"min" forKey:?];
  [coderCopy encodeBool:-[KNAnimParameterSavedParameter hasMaxValue](self forKey:{"hasMaxValue"), @"hmax"}];
  [coderCopy encodeBool:-[KNAnimParameterSavedParameter hasMinValue](self forKey:{"hasMinValue"), @"hmin"}];
  pathValue = [(KNAnimParameterSavedParameter *)self pathValue];
  v7 = [(KNAnimParameterSavedParameter *)self p_savedPathFromPath:pathValue];
  [coderCopy encodeObject:v7 forKey:@"svdPth"];

  [coderCopy encodeBool:-[KNAnimParameterSavedParameter removed](self forKey:{"removed"), @"removed"}];
  [coderCopy encodeBool:-[KNAnimParameterSavedParameter debugOnly](self forKey:{"debugOnly"), @"dbg"}];
  parameterDescription = [(KNAnimParameterSavedParameter *)self parameterDescription];
  [coderCopy encodeObject:parameterDescription forKey:@"desc"];
}

- (id)p_savedPathFromPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = +[NSMutableArray array];
    if ([pathCopy elementCount] >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = [pathCopy elementAtIndex:v5 associatedPoints:&v11];
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

        if (++v5 >= [pathCopy elementCount])
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

- (id)p_bezierPathFromSavedPathElements:(id)elements
{
  elementsCopy = elements;
  if (elementsCopy)
  {
    v4 = objc_alloc_init(TSDBezierPath);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = elementsCopy;
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
          elementType = [v10 elementType];
          if (elementType > 1)
          {
            if (elementType == &dword_0 + 2)
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

            else if (elementType == &dword_0 + 3)
            {
              [v4 closePath];
            }
          }

          else if (elementType)
          {
            if (elementType == &dword_0 + 1)
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