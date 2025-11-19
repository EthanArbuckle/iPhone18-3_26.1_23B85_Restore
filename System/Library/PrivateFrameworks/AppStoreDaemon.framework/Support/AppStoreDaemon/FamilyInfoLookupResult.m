@interface FamilyInfoLookupResult
- (id)description;
@end

@implementation FamilyInfoLookupResult

- (id)description
{
  familyMembers = self;
  if (self)
  {
    cached = self->_cached;
    familyMembers = self->_familyMembers;
  }

  else
  {
    cached = 0;
  }

  return [NSString stringWithFormat:@"{ cached: %d familyMembers: %@ }", cached, familyMembers];
}

@end