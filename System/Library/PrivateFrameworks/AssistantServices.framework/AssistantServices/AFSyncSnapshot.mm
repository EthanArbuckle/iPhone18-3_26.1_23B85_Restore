@interface AFSyncSnapshot
- (AFSyncSnapshot)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSyncSnapshot

- (AFSyncSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFSyncSnapshot;
  v5 = [(AFSyncSnapshot *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_validity"];
    validity = v5->_validity;
    v5->_validity = v8;

    v5->_count = [v4 decodeIntegerForKey:@"_count"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  anchor = self->_anchor;
  v5 = a3;
  [v5 encodeObject:anchor forKey:@"_anchor"];
  [v5 encodeObject:self->_validity forKey:@"_validity"];
  [v5 encodeInteger:self->_count forKey:@"_count"];
  [v5 encodeObject:self->_key forKey:@"_key"];
}

@end