@interface ABPostalNameGroupItem
- (SEL)setter;
- (void)setSetter:(SEL)a3;
@end

@implementation ABPostalNameGroupItem

- (void)setSetter:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_setter = v3;
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