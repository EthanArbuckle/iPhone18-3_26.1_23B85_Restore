@interface NSCorrectionCheckingResult
- (NSCorrectionCheckingResult)initWithCoder:(id)a3;
- (NSCorrectionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 alternativeStrings:(id)a5;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSCorrectionCheckingResult

- (NSCorrectionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 alternativeStrings:(id)a5
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSCorrectionCheckingResult;
  v6 = [(NSSubstitutionCheckingResult *)&v8 initWithRange:a3.location replacementString:a3.length, a4];
  if (v6)
  {
    v6->_alternativeStrings = [a5 copy];
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSCorrectionCheckingResult;
  [(NSSubstitutionCheckingResult *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSCorrectionCheckingResult;
  return [NSString stringWithFormat:@"%@{%@}", [(NSSubstitutionCheckingResult *)&v3 description], [(NSCorrectionCheckingResult *)self alternativeStrings]];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSSubstitutionCheckingResult *)self replacementString];
  v6 = [(NSCorrectionCheckingResult *)self alternativeStrings];
  v7 = [a3 allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
  if (v7)
  {
    [a3 encodeObject:v5 forKey:@"NSReplacementString"];

    [a3 encodeObject:v6 forKey:@"NSAlternativeStrings"];
  }

  else
  {

    [a3 encodeObject:v5];
  }
}

- (NSCorrectionCheckingResult)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSReplacementString"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"NSAlternativeStrings"}];
  }

  else
  {
    v13 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v13 != 1)
    {
      v16 = v13;
      v17 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v17, 1, v16);
      [(NSCorrectionCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v14;
    v9 = [a3 decodeObject];
    v12 = 0;
  }

  return [(NSCorrectionCheckingResult *)self initWithRange:v6 replacementString:v8 alternativeStrings:v9, v12];
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)a3
{
  v6 = [(NSSubstitutionCheckingResult *)self range];
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 < 0 && v6 < -a3)
    {
      v12 = v6;
      v13 = _NSFullMethodName(self, a2);
      v16.location = v12;
      v16.length = v8;
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v13, a3, NSStringFromRange(v16)), 0}];
      objc_exception_throw(v14);
    }

    v9 = v6 + a3;
  }

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 replacementString:v7 alternativeStrings:{-[NSSubstitutionCheckingResult replacementString](self, "replacementString"), -[NSCorrectionCheckingResult alternativeStrings](self, "alternativeStrings")}];

  return v10;
}

@end