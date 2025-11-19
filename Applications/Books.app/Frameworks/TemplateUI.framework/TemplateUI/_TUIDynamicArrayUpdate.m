@interface _TUIDynamicArrayUpdate
- (id)description;
@end

@implementation _TUIDynamicArrayUpdate

- (id)description
{
  kind = self->_kind;
  if (kind <= 1)
  {
    if (kind)
    {
      if (kind != 1)
      {
        goto LABEL_12;
      }

      v5 = [NSNumber numberWithUnsignedInteger:self->_oldIndex];
      [NSString stringWithFormat:@"delete %@", v5];
    }

    else
    {
      v5 = [NSNumber numberWithUnsignedInteger:self->_newIndex];
      [NSString stringWithFormat:@"insert %@", v5];
    }

    goto LABEL_10;
  }

  if (kind == 2)
  {
    v5 = [NSNumber numberWithUnsignedInteger:self->_oldIndex];
    [NSString stringWithFormat:@"update %@", v5];
    v2 = LABEL_10:;
    goto LABEL_11;
  }

  if (kind != 3)
  {
    goto LABEL_12;
  }

  v5 = [NSNumber numberWithUnsignedInteger:self->_oldIndex];
  v6 = [NSNumber numberWithUnsignedInteger:self->_newIndex];
  v2 = [NSString stringWithFormat:@"move %@ -> %@", v5, v6];

LABEL_11:
LABEL_12:

  return v2;
}

@end