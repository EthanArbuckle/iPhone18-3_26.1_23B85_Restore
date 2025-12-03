@interface _LTDisambiguationChangeSet
- (BOOL)hasAnyChangeOfType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addUserSelection:(id)selection;
@end

@implementation _LTDisambiguationChangeSet

- (void)addUserSelection:(id)selection
{
  if (!selection)
  {
    return;
  }

  edge = [selection edge];
  type = [edge type];
  if (type == 1)
  {
    targetGender = [edge targetGender];
    v6 = 16;
    goto LABEL_7;
  }

  if (!type)
  {
    targetGender = [edge menuDescription];
    v6 = 8;
LABEL_7:
    v7 = [targetGender copy];
    v8 = *(&self->super.isa + v6);
    *(&self->super.isa + v6) = v7;
  }
}

- (BOOL)hasAnyChangeOfType:(unint64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      return 0;
    }

    genderNumber = [(_LTDisambiguationChangeSet *)self genderNumber];
  }

  else
  {
    genderNumber = [(_LTDisambiguationChangeSet *)self meaningDescription];
  }

  v4 = genderNumber != 0;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_LTDisambiguationChangeSet allocWithZone:](_LTDisambiguationChangeSet init];
  v6 = [(NSString *)self->_meaningDescription copyWithZone:zone];
  meaningDescription = v5->_meaningDescription;
  v5->_meaningDescription = v6;

  v8 = [(NSNumber *)self->_genderNumber copyWithZone:zone];
  genderNumber = v5->_genderNumber;
  v5->_genderNumber = v8;

  return v5;
}

@end