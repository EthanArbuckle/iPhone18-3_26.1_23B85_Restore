@interface _SFContextualNamedEntitySource
- (_SFContextualNamedEntitySource)initWithCoder:(id)a3;
- (_SFContextualNamedEntitySource)initWithSourceApplications:(id)a3 fromDate:(id)a4 toDate:(id)a5 limit:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFContextualNamedEntitySource

- (_SFContextualNamedEntitySource)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFContextualNamedEntitySource;
  v5 = [(_SFContextualNamedEntitySource *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_sourceApplications"];
    sourceApplications = v5->_sourceApplications;
    v5->_sourceApplications = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fromDate"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_toDate"];
    toDate = v5->_toDate;
    v5->_toDate = v10;

    v5->_limit = [v4 decodeIntegerForKey:@"_limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceApplications = self->_sourceApplications;
  v5 = a3;
  [v5 encodeObject:sourceApplications forKey:@"_sourceApplications"];
  [v5 encodeObject:self->_fromDate forKey:@"_fromDate"];
  [v5 encodeObject:self->_toDate forKey:@"_toDate"];
  [v5 encodeInteger:self->_limit forKey:@"_limit"];
}

- (_SFContextualNamedEntitySource)initWithSourceApplications:(id)a3 fromDate:(id)a4 toDate:(id)a5 limit:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = _SFContextualNamedEntitySource;
  v13 = [(_SFContextualNamedEntitySource *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    sourceApplications = v13->_sourceApplications;
    v13->_sourceApplications = v14;

    v16 = [v11 copy];
    fromDate = v13->_fromDate;
    v13->_fromDate = v16;

    v18 = [v12 copy];
    toDate = v13->_toDate;
    v13->_toDate = v18;

    v13->_limit = a6;
  }

  return v13;
}

@end