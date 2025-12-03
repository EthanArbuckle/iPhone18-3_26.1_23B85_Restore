@interface ABPostalNameGroupItem
- (SEL)setter;
- (void)setSetter:(SEL)setter;
@end

@implementation ABPostalNameGroupItem

- (void)setSetter:(SEL)setter
{
  if (setter)
  {
    setterCopy = setter;
  }

  else
  {
    setterCopy = 0;
  }

  self->_setter = setterCopy;
}

- (SEL)setter
{
  if (self->_setter)
  {
    return self->_setter;
  }

  else
  {
    return 0;
  }
}

@end