@interface _MFCRRecentContactABContext
- (_MFCRRecentContactABContext)init;
- (void)dealloc;
- (void)setExistingPerson:(void *)a3;
- (void)setInterimPerson:(void *)a3;
@end

@implementation _MFCRRecentContactABContext

- (_MFCRRecentContactABContext)init
{
  v6.receiver = self;
  v6.super_class = _MFCRRecentContactABContext;
  v2 = [(_MFCRRecentContactABContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_identifier = -1;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  existingPerson = self->_existingPerson;
  if (existingPerson)
  {
    CFRelease(existingPerson);
  }

  interimPerson = self->_interimPerson;
  if (interimPerson)
  {
    CFRelease(interimPerson);
  }

  v5.receiver = self;
  v5.super_class = _MFCRRecentContactABContext;
  [(_MFCRRecentContactABContext *)&v5 dealloc];
}

- (void)setExistingPerson:(void *)a3
{
  existingPerson = self->_existingPerson;
  if (existingPerson != a3)
  {
    if (existingPerson)
    {
      CFRelease(existingPerson);
    }

    self->_existingPerson = CFRetain(a3);
  }
}

- (void)setInterimPerson:(void *)a3
{
  interimPerson = self->_interimPerson;
  if (interimPerson != a3)
  {
    if (interimPerson)
    {
      CFRelease(interimPerson);
    }

    self->_interimPerson = CFRetain(a3);
  }
}

@end