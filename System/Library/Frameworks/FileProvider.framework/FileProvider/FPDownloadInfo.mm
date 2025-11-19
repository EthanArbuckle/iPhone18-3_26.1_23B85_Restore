@interface FPDownloadInfo
- (FPDownloadInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPDownloadInfo

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FPDownloadInfo;
  v4 = a3;
  [(FPActionOperationInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_recursively forKey:{@"_recursively", v5.receiver, v5.super_class}];
}

- (FPDownloadInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FPDownloadInfo;
  v5 = [(FPActionOperationInfo *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_recursively = [v4 decodeBoolForKey:@"_recursively"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"{ "];
  [v3 appendString:@"download "];
  v4 = [(FPActionOperationInfo *)self roots];
  [v3 appendFormat:@"roots:%@ ", v4];

  [v3 appendFormat:@"qos:%2.0x ", -[FPActionOperationInfo qos](self, "qos")];
  [v3 appendString:@"}"];

  return v3;
}

@end