@interface NSCorrectionCheckingResult
- (NSCorrectionCheckingResult)initWithCoder:(id)coder;
- (NSCorrectionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string alternativeStrings:(id)strings;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSCorrectionCheckingResult

- (NSCorrectionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string alternativeStrings:(id)strings
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSCorrectionCheckingResult;
  string = [(NSSubstitutionCheckingResult *)&v8 initWithRange:range.location replacementString:range.length, string];
  if (string)
  {
    string->_alternativeStrings = [strings copy];
  }

  return string;
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

- (void)encodeWithCoder:(id)coder
{
  replacementString = [(NSSubstitutionCheckingResult *)self replacementString];
  alternativeStrings = [(NSCorrectionCheckingResult *)self alternativeStrings];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:coder];
  if (allowsKeyedCoding)
  {
    [coder encodeObject:replacementString forKey:@"NSReplacementString"];

    [coder encodeObject:alternativeStrings forKey:@"NSAlternativeStrings"];
  }

  else
  {

    [coder encodeObject:replacementString];
  }
}

- (NSCorrectionCheckingResult)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v7;
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSReplacementString"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"NSAlternativeStrings"}];
  }

  else
  {
    v13 = [coder versionForClassName:@"NSTextCheckingResult"];
    if (v13 != 1)
    {
      v16 = v13;
      v17 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v17, 1, v16);
      [(NSCorrectionCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v14;
    decodeObject = [coder decodeObject];
    v12 = 0;
  }

  return [(NSCorrectionCheckingResult *)self initWithRange:v6 replacementString:v8 alternativeStrings:decodeObject, v12];
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)offset
{
  range = [(NSSubstitutionCheckingResult *)self range];
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (range != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (offset < 0 && range < -offset)
    {
      v12 = range;
      v13 = _NSFullMethodName(self, a2);
      v16.location = v12;
      v16.length = v8;
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v13, offset, NSStringFromRange(v16)), 0}];
      objc_exception_throw(v14);
    }

    v9 = range + offset;
  }

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 replacementString:v7 alternativeStrings:{-[NSSubstitutionCheckingResult replacementString](self, "replacementString"), -[NSCorrectionCheckingResult alternativeStrings](self, "alternativeStrings")}];

  return v10;
}

@end