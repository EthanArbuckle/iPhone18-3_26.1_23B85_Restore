@interface FPDownloadInfo
- (FPDownloadInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPDownloadInfo

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FPDownloadInfo;
  coderCopy = coder;
  [(FPActionOperationInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_recursively forKey:{@"_recursively", v5.receiver, v5.super_class}];
}

- (FPDownloadInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FPDownloadInfo;
  v5 = [(FPActionOperationInfo *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_recursively = [coderCopy decodeBoolForKey:@"_recursively"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"{ "];
  [v3 appendString:@"download "];
  roots = [(FPActionOperationInfo *)self roots];
  [v3 appendFormat:@"roots:%@ ", roots];

  [v3 appendFormat:@"qos:%2.0x ", -[FPActionOperationInfo qos](self, "qos")];
  [v3 appendString:@"}"];

  return v3;
}

@end