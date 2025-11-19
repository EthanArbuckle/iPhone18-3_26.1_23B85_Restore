@interface _LTDisambiguationChangeSet
- (BOOL)hasAnyChangeOfType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addUserSelection:(id)a3;
@end

@implementation _LTDisambiguationChangeSet

- (void)addUserSelection:(id)a3
{
  if (!a3)
  {
    return;
  }

  v9 = [a3 edge];
  v4 = [v9 type];
  if (v4 == 1)
  {
    v5 = [v9 targetGender];
    v6 = 16;
    goto LABEL_7;
  }

  if (!v4)
  {
    v5 = [v9 menuDescription];
    v6 = 8;
LABEL_7:
    v7 = [v5 copy];
    v8 = *(&self->super.isa + v6);
    *(&self->super.isa + v6) = v7;
  }
}

- (BOOL)hasAnyChangeOfType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = [(_LTDisambiguationChangeSet *)self genderNumber];
  }

  else
  {
    v3 = [(_LTDisambiguationChangeSet *)self meaningDescription];
  }

  v4 = v3 != 0;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_LTDisambiguationChangeSet allocWithZone:](_LTDisambiguationChangeSet init];
  v6 = [(NSString *)self->_meaningDescription copyWithZone:a3];
  meaningDescription = v5->_meaningDescription;
  v5->_meaningDescription = v6;

  v8 = [(NSNumber *)self->_genderNumber copyWithZone:a3];
  genderNumber = v5->_genderNumber;
  v5->_genderNumber = v8;

  return v5;
}

@end