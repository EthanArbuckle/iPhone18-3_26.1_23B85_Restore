@interface NSMutableCharacterSet
+ (NSMutableCharacterSet)alphanumericCharacterSet;
+ (NSMutableCharacterSet)capitalizedLetterCharacterSet;
+ (NSMutableCharacterSet)characterSetWithBitmapRepresentation:(NSData *)data;
+ (NSMutableCharacterSet)characterSetWithCharactersInString:(NSString *)aString;
+ (NSMutableCharacterSet)characterSetWithContentsOfFile:(NSString *)fName;
+ (NSMutableCharacterSet)characterSetWithRange:(NSRange)aRange;
+ (NSMutableCharacterSet)controlCharacterSet;
+ (NSMutableCharacterSet)decimalDigitCharacterSet;
+ (NSMutableCharacterSet)decomposableCharacterSet;
+ (NSMutableCharacterSet)illegalCharacterSet;
+ (NSMutableCharacterSet)letterCharacterSet;
+ (NSMutableCharacterSet)lowercaseLetterCharacterSet;
+ (NSMutableCharacterSet)newlineCharacterSet;
+ (NSMutableCharacterSet)nonBaseCharacterSet;
+ (NSMutableCharacterSet)punctuationCharacterSet;
+ (NSMutableCharacterSet)symbolCharacterSet;
+ (NSMutableCharacterSet)uppercaseLetterCharacterSet;
+ (NSMutableCharacterSet)whitespaceAndNewlineCharacterSet;
+ (NSMutableCharacterSet)whitespaceCharacterSet;
- (NSMutableCharacterSet)init;
- (NSMutableCharacterSet)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addCharactersInRange:(NSRange)aRange;
- (void)addCharactersInString:(NSString *)aString;
- (void)formIntersectionWithCharacterSet:(NSCharacterSet *)otherSet;
- (void)formUnionWithCharacterSet:(NSCharacterSet *)otherSet;
- (void)invert;
- (void)removeCharactersInRange:(NSRange)aRange;
- (void)removeCharactersInString:(NSString *)aString;
@end

@implementation NSMutableCharacterSet

- (NSMutableCharacterSet)init
{
  if (!init___NSMutableCharacterSetClass)
  {
    init___NSMutableCharacterSetClass = objc_opt_class();
  }

  if (![(NSMutableCharacterSet *)self isMemberOfClass:?])
  {
    return self;
  }

  Mutable = CFCharacterSetCreateMutable(0);

  return Mutable;
}

+ (NSMutableCharacterSet)whitespaceCharacterSet
{
  v2 = [+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)decimalDigitCharacterSet
{
  v2 = [+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)alphanumericCharacterSet
{
  v2 = [+[NSCharacterSet alphanumericCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)whitespaceAndNewlineCharacterSet
{
  v2 = [+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)characterSetWithRange:(NSRange)aRange
{
  length = aRange.length;
  location = aRange.location;
  Mutable = CFCharacterSetCreateMutable(0);
  v8.location = location;
  v8.length = length;
  CFCharacterSetAddCharactersInRange(Mutable, v8);

  return Mutable;
}

+ (NSMutableCharacterSet)characterSetWithCharactersInString:(NSString *)aString
{
  Mutable = CFCharacterSetCreateMutable(0);
  CFCharacterSetAddCharactersInString(Mutable, aString);

  return Mutable;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(NSMutableCharacterSet *)self mutableCopyWithZone:zone];
  [v3 makeImmutable];
  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);
  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (void)addCharactersInRange:(NSRange)aRange
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

- (void)removeCharactersInRange:(NSRange)aRange
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

- (void)addCharactersInString:(NSString *)aString
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

- (void)removeCharactersInString:(NSString *)aString
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

- (void)formUnionWithCharacterSet:(NSCharacterSet *)otherSet
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

- (void)formIntersectionWithCharacterSet:(NSCharacterSet *)otherSet
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

- (void)invert
{
  v4 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v4, Name);

  [(NSMutableCharacterSet *)self doesNotRecognizeSelector:a2];
}

+ (NSMutableCharacterSet)controlCharacterSet
{
  v2 = [+[NSCharacterSet controlCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)letterCharacterSet
{
  v2 = [+[NSCharacterSet letterCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)lowercaseLetterCharacterSet
{
  v2 = [+[NSCharacterSet lowercaseLetterCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)uppercaseLetterCharacterSet
{
  v2 = [+[NSCharacterSet uppercaseLetterCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)nonBaseCharacterSet
{
  v2 = [+[NSCharacterSet nonBaseCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)decomposableCharacterSet
{
  v2 = [+[NSCharacterSet decomposableCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)illegalCharacterSet
{
  v2 = [+[NSCharacterSet illegalCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)punctuationCharacterSet
{
  v2 = [+[NSCharacterSet punctuationCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)capitalizedLetterCharacterSet
{
  v2 = [+[NSCharacterSet capitalizedLetterCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)symbolCharacterSet
{
  v2 = [+[NSCharacterSet symbolCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)newlineCharacterSet
{
  v2 = [+[NSCharacterSet newlineCharacterSet](NSCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];

  return v2;
}

+ (NSMutableCharacterSet)characterSetWithBitmapRepresentation:(NSData *)data
{
  v3 = [[NSCharacterSet characterSetWithBitmapRepresentation:?], "mutableCopyWithZone:", 0];

  return v3;
}

+ (NSMutableCharacterSet)characterSetWithContentsOfFile:(NSString *)fName
{
  v3 = [[NSCharacterSet characterSetWithContentsOfFile:?], "mutableCopyWithZone:", 0];

  return v3;
}

- (NSMutableCharacterSet)initWithCoder:(id)coder
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSMutableCharacterSet;
  v4 = [(NSCharacterSet *)&v8 initWithCoder:?];
  v5 = [(NSMutableCharacterSet *)v4 mutableCopyWithZone:0];
  if (v5)
  {
  }

  else
  {
    v6 = [NSString stringWithFormat:@"Unable to create mutable copy of the character set %p!", v4];

    v9 = @"NSLocalizedDescription";
    v10[0] = v6;
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1))}];
  }

  return v5;
}

@end