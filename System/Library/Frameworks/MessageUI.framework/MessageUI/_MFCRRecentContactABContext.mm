@interface _MFCRRecentContactABContext
- (_MFCRRecentContactABContext)init;
- (void)dealloc;
- (void)setExistingPerson:(void *)person;
- (void)setInterimPerson:(void *)person;
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

- (void)setExistingPerson:(void *)person
{
  existingPerson = self->_existingPerson;
  if (existingPerson != person)
  {
    if (existingPerson)
    {
      CFRelease(existingPerson);
    }

    self->_existingPerson = CFRetain(person);
  }
}

- (void)setInterimPerson:(void *)person
{
  interimPerson = self->_interimPerson;
  if (interimPerson != person)
  {
    if (interimPerson)
    {
      CFRelease(interimPerson);
    }

    self->_interimPerson = CFRetain(person);
  }
}

@end