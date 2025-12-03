@interface LSRegistrationInfo
- (LSRegistrationInfo)initWithCoder:(id)coder;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSRegistrationInfo

- (void)encodeWithCoder:(id)coder
{
  version = self->version;
  coderCopy = coder;
  [coderCopy encodeInt64:version forKey:@"version"];
  [coderCopy encodeInt64:self->action forKey:@"action"];
  [coderCopy encodeInt64:self->options forKey:@"options"];
  [coderCopy encodeInt64:self->itemFlags forKey:@"itemFlags"];
  [coderCopy encodeInt64:self->containerUnit forKey:@"containerUnit"];
  [coderCopy encodeInt64:self->bundleUnit forKey:@"bundleUnit"];
  [coderCopy encodeInt64:self->bundleClass forKey:@"bundleClass"];
  [coderCopy encodeInt64:self->inoBundle forKey:@"inoBundle"];
  [coderCopy encodeInt64:self->inoExec forKey:@"inoExec"];
  [coderCopy encodeDouble:@"contentModDate" forKey:self->contentModDate];
  [coderCopy encodeDouble:@"execContentModDate" forKey:self->executableModDate];
}

- (LSRegistrationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(LSRegistrationInfo *)self init];
  if (v5)
  {
    v5->version = [coderCopy decodeInt64ForKey:@"version"];
    v5->action = [coderCopy decodeInt64ForKey:@"action"];
    v5->options = [coderCopy decodeInt64ForKey:@"options"];
    v5->itemFlags = [coderCopy decodeInt64ForKey:@"itemFlags"];
    v5->containerUnit = [coderCopy decodeInt64ForKey:@"containerUnit"];
    v5->bundleUnit = [coderCopy decodeInt64ForKey:@"bundleUnit"];
    v5->bundleClass = [coderCopy decodeInt64ForKey:@"bundleClass"];
    v5->inoBundle = [coderCopy decodeInt64ForKey:@"inoBundle"];
    v5->inoExec = [coderCopy decodeInt64ForKey:@"inoExec"];
    [coderCopy decodeDoubleForKey:@"contentModDate"];
    v5->contentModDate = v6;
    [coderCopy decodeDoubleForKey:@"execContentModDate"];
    v5->executableModDate = v7;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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