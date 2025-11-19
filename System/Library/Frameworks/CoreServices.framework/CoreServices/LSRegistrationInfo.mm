@interface LSRegistrationInfo
- (LSRegistrationInfo)initWithCoder:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSRegistrationInfo

- (void)encodeWithCoder:(id)a3
{
  version = self->version;
  v5 = a3;
  [v5 encodeInt64:version forKey:@"version"];
  [v5 encodeInt64:self->action forKey:@"action"];
  [v5 encodeInt64:self->options forKey:@"options"];
  [v5 encodeInt64:self->itemFlags forKey:@"itemFlags"];
  [v5 encodeInt64:self->containerUnit forKey:@"containerUnit"];
  [v5 encodeInt64:self->bundleUnit forKey:@"bundleUnit"];
  [v5 encodeInt64:self->bundleClass forKey:@"bundleClass"];
  [v5 encodeInt64:self->inoBundle forKey:@"inoBundle"];
  [v5 encodeInt64:self->inoExec forKey:@"inoExec"];
  [v5 encodeDouble:@"contentModDate" forKey:self->contentModDate];
  [v5 encodeDouble:@"execContentModDate" forKey:self->executableModDate];
}

- (LSRegistrationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LSRegistrationInfo *)self init];
  if (v5)
  {
    v5->version = [v4 decodeInt64ForKey:@"version"];
    v5->action = [v4 decodeInt64ForKey:@"action"];
    v5->options = [v4 decodeInt64ForKey:@"options"];
    v5->itemFlags = [v4 decodeInt64ForKey:@"itemFlags"];
    v5->containerUnit = [v4 decodeInt64ForKey:@"containerUnit"];
    v5->bundleUnit = [v4 decodeInt64ForKey:@"bundleUnit"];
    v5->bundleClass = [v4 decodeInt64ForKey:@"bundleClass"];
    v5->inoBundle = [v4 decodeInt64ForKey:@"inoBundle"];
    v5->inoExec = [v4 decodeInt64ForKey:@"inoExec"];
    [v4 decodeDoubleForKey:@"contentModDate"];
    v5->contentModDate = v6;
    [v4 decodeDoubleForKey:@"execContentModDate"];
    v5->executableModDate = v7;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 2) = self->version;
    *(result + 3) = self->action;
    *(result + 4) = self->options;
    *(result + 5) = self->itemFlags;
    *(result + 6) = self->containerUnit;
    *(result + 7) = self->bundleUnit;
    *(result + 8) = self->bundleClass;
    *(result + 5) = self->inoBundle;
    *(result + 6) = self->inoExec;
    *(result + 7) = *&self->contentModDate;
    *(result + 8) = *&self->executableModDate;
  }

  return result;
}

@end