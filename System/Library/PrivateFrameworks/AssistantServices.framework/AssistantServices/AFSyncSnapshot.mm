@interface AFSyncSnapshot
- (AFSyncSnapshot)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSyncSnapshot

- (AFSyncSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AFSyncSnapshot;
  v5 = [(AFSyncSnapshot *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_validity"];
    validity = v5->_validity;
    v5->_validity = v8;

    v5->_count = [coderCopy decodeIntegerForKey:@"_count"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  anchor = self->_anchor;
  coderCopy = coder;
  [coderCopy encodeObject:anchor forKey:@"_anchor"];
  [coderCopy encodeObject:self->_validity forKey:@"_validity"];
  [coderCopy encodeInteger:self->_count forKey:@"_count"];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
}

@end