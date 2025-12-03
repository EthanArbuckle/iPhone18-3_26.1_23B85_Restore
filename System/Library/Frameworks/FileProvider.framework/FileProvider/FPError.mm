@interface FPError
- (FPError)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPError

- (FPError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v17 = [coderCopy decodeIntegerForKey:@"c"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ui"];

  v20.receiver = self;
  v20.super_class = FPError;
  v15 = [(FPError *)&v20 initWithDomain:v18 code:v17 userInfo:v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  domain = [(FPError *)self domain];
  [coderCopy encodeObject:domain forKey:@"d"];

  [coderCopy encodeInteger:-[FPError code](self forKey:{"code"), @"c"}];
  userInfo = [(FPError *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"ui"];
}

@end