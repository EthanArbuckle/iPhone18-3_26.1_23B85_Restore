@interface PFXString
- (NSString)nsString;
- (PFXString)initWithXmlString:(const char *)string;
- (void)dealloc;
@end

@implementation PFXString

- (PFXString)initWithXmlString:(const char *)string
{
  if (string)
  {
    v6.receiver = self;
    v6.super_class = PFXString;
    v4 = [(PFXString *)&v6 init];
    if (v4)
    {
      v4->mXmlString = xmlStrdup(string);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  free(self->mXmlString);
  self->mXmlString = 0;

  self->mNSString = 0;
  v3.receiver = self;
  v3.super_class = PFXString;
  [(PFXString *)&v3 dealloc];
}

- (NSString)nsString
{
  result = self->mNSString;
  if (!result)
  {
    result = [[NSString alloc] initWithUTF8String:self->mXmlString];
    self->mNSString = result;
  }

  return result;
}

@end