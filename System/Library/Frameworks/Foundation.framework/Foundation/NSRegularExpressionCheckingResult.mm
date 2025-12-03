@interface NSRegularExpressionCheckingResult
- (NSRegularExpressionCheckingResult)initWithCoder:(id)coder;
- (_NSRange)rangeWithName:(id)name;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSRegularExpressionCheckingResult

- (_NSRange)rangeWithName:(id)name
{
  regularExpression = [(NSRegularExpressionCheckingResult *)self regularExpression];
  if (regularExpression && (v6 = regularExpression, v7 = [(NSTextCheckingResult *)self numberOfRanges], v8 = [(NSRegularExpression *)v6 _captureGroupNumberWithName:name], v8 < v7))
  {
    v9 = [(NSTextCheckingResult *)self rangeAtIndex:v8];
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSRegularExpressionCheckingResult;
  return [NSString stringWithFormat:@"%@{%@}", [(NSTextCheckingResult *)&v3 description], [(NSRegularExpressionCheckingResult *)self regularExpression]];
}

- (void)encodeWithCoder:(id)coder
{
  regularExpression = [(NSRegularExpressionCheckingResult *)self regularExpression];
  rangeArray = [(NSRegularExpressionCheckingResult *)self rangeArray];
  if ([coder allowsKeyedCoding])
  {
    [(NSTextCheckingResult *)self encodeRangeWithCoder:coder];
    [coder encodeObject:regularExpression forKey:@"NSRegularExpression"];

    [coder encodeObject:rangeArray forKey:@"NSRangeArray"];
  }

  else
  {
    [coder encodeObject:regularExpression];

    [coder encodeObject:rangeArray];
  }
}

- (NSRegularExpressionCheckingResult)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSRegularExpression"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    decodeObject2 = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"NSRangeArray"}];
  }

  else
  {
    v10 = [coder versionForClassName:@"NSTextCheckingResult"];
    if (v10 != 1)
    {
      v12 = v10;
      v13 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v13, 1, v12);
      [(NSRegularExpressionCheckingResult *)self dealloc];
      return 0;
    }

    decodeObject = [coder decodeObject];
    decodeObject2 = [coder decodeObject];
  }

  return [(NSRegularExpressionCheckingResult *)self initWithRangeArray:decodeObject2 regularExpression:decodeObject];
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)offset
{
  rangeArray = [(NSRegularExpressionCheckingResult *)self rangeArray];
  array = [MEMORY[0x1E695DF70] array];
  numberOfRanges = [(NSTextCheckingResult *)self numberOfRanges];
  if (numberOfRanges)
  {
    v9 = numberOfRanges;
    for (i = 0; i != v9; ++i)
    {
      v11 = [-[NSArray objectAtIndex:](rangeArray objectAtIndex:{i), "rangeValue"}];
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (offset < 0 && v11 < -offset)
        {
          v16 = v11;
          selfCopy = self;
          v18 = v12;
          v19 = _NSFullMethodName(selfCopy, a2);
          v22.location = v16;
          v22.length = v18;
          v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v19, offset, NSStringFromRange(v22)), 0}];
          objc_exception_throw(v20);
        }

        v13 = v11 + offset;
      }

      [array addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v13, v12)}];
    }
  }

  v14 = [objc_alloc(objc_opt_class()) initWithRangeArray:array regularExpression:{-[NSRegularExpressionCheckingResult regularExpression](self, "regularExpression")}];

  return v14;
}

@end