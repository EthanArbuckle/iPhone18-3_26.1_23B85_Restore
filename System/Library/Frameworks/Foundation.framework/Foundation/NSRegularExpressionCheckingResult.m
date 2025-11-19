@interface NSRegularExpressionCheckingResult
- (NSRegularExpressionCheckingResult)initWithCoder:(id)a3;
- (_NSRange)rangeWithName:(id)a3;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSRegularExpressionCheckingResult

- (_NSRange)rangeWithName:(id)a3
{
  v5 = [(NSRegularExpressionCheckingResult *)self regularExpression];
  if (v5 && (v6 = v5, v7 = [(NSTextCheckingResult *)self numberOfRanges], v8 = [(NSRegularExpression *)v6 _captureGroupNumberWithName:a3], v8 < v7))
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

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSRegularExpressionCheckingResult *)self regularExpression];
  v6 = [(NSRegularExpressionCheckingResult *)self rangeArray];
  if ([a3 allowsKeyedCoding])
  {
    [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
    [a3 encodeObject:v5 forKey:@"NSRegularExpression"];

    [a3 encodeObject:v6 forKey:@"NSRangeArray"];
  }

  else
  {
    [a3 encodeObject:v5];

    [a3 encodeObject:v6];
  }
}

- (NSRegularExpressionCheckingResult)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSRegularExpression"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"NSRangeArray"}];
  }

  else
  {
    v10 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v10 != 1)
    {
      v12 = v10;
      v13 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v13, 1, v12);
      [(NSRegularExpressionCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [a3 decodeObject];
    v9 = [a3 decodeObject];
  }

  return [(NSRegularExpressionCheckingResult *)self initWithRangeArray:v9 regularExpression:v6];
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)a3
{
  v6 = [(NSRegularExpressionCheckingResult *)self rangeArray];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(NSTextCheckingResult *)self numberOfRanges];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [-[NSArray objectAtIndex:](v6 objectAtIndex:{i), "rangeValue"}];
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a3 < 0 && v11 < -a3)
        {
          v16 = v11;
          v17 = self;
          v18 = v12;
          v19 = _NSFullMethodName(v17, a2);
          v22.location = v16;
          v22.length = v18;
          v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v19, a3, NSStringFromRange(v22)), 0}];
          objc_exception_throw(v20);
        }

        v13 = v11 + a3;
      }

      [v7 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v13, v12)}];
    }
  }

  v14 = [objc_alloc(objc_opt_class()) initWithRangeArray:v7 regularExpression:{-[NSRegularExpressionCheckingResult regularExpression](self, "regularExpression")}];

  return v14;
}

@end